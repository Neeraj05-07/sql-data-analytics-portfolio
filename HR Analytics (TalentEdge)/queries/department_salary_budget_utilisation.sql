-- ─────────────────────────────────────────
-- BONUS: Department Salary Budget Utilisation
-- ─────────────────────────────────────────
SELECT
    d.dept_name,
    d.annual_budget,
    ROUND(SUM(e.salary), 0) AS total_salary_cost,
    ROUND(SUM(e.salary) * 100.0
        / NULLIF(d.annual_budget, 0), 2) AS budget_utilisation_pct,
    COUNT(e.emp_id) AS headcount,
    ROUND(AVG(e.salary), 0) AS avg_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
    AND e.employment_status = 'Active'
GROUP BY d.dept_id, d.dept_name, d.annual_budget
ORDER BY budget_utilisation_pct DESC;