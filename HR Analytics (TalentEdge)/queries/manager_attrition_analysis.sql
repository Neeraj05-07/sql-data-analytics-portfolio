-- ─────────────────────────────────────────
-- Manager Attrition Impact
-- ─────────────────────────────────────────
SELECT
    m.full_name AS manager_name,
    m.job_title AS manager_title,
    d.dept_name,
    COUNT(DISTINCT e.emp_id) AS current_team_size,
    COUNT(DISTINCT a.record_id) AS team_exits,
    ROUND(COUNT(DISTINCT a.record_id) * 100.0 / NULLIF(COUNT(DISTINCT e.emp_id), 0), 1) AS team_attrition_pct
FROM employees m
JOIN employees e   ON e.manager_id = m.emp_id
JOIN departments d ON m.dept_id    = d.dept_id
LEFT JOIN attrition a ON a.emp_id  = e.emp_id
    AND a.exit_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
WHERE m.employment_status = 'Active'
GROUP BY m.emp_id, m.full_name, m.job_title, d.dept_name
ORDER BY team_attrition_pct DESC;