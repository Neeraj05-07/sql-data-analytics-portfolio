-- ─────────────────────────────────────────
-- Attrition Rate by Department
-- ─────────────────────────────────────────
SELECT
    d.dept_name,
    COUNT(e.emp_id) AS total_employees,
    COUNT(a.record_id) AS total_exits,
    ROUND(COUNT(a.record_id) * 100.0
        / NULLIF(COUNT(e.emp_id), 0), 2) AS attrition_rate_pct
FROM departments d
LEFT JOIN employees e  ON d.dept_id = e.dept_id
LEFT JOIN attrition a  ON e.emp_id = a.emp_id
GROUP BY d.dept_name
ORDER BY attrition_rate_pct DESC;
 
 
-- ─────────────────────────────────────────
-- Attrition by Tenure Band
-- ─────────────────────────────────────────
SELECT
    CASE
        WHEN DATEDIFF(a.exit_date, e.hire_date) < 365  THEN 'Less than 1 year'
        WHEN DATEDIFF(a.exit_date, e.hire_date) < 730  THEN '1 to 2 years'
        WHEN DATEDIFF(a.exit_date, e.hire_date) < 1825 THEN '2 to 5 years'
        ELSE '5 plus years'
    END AS tenure_band,
    COUNT(*) AS exits,
    ROUND(AVG(DATEDIFF(a.exit_date, e.hire_date)) / 365.0, 1)
                                                  AS avg_tenure_years
FROM attrition a
JOIN employees e ON a.emp_id = e.emp_id
GROUP BY tenure_band
ORDER BY exits DESC;