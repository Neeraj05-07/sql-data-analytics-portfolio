-- ─────────────────────────────────────────
-- Salary Distribution by Job Title
-- ─────────────────────────────────────────
SELECT
    job_title,
    COUNT(*) AS headcount,
    ROUND(MIN(salary), 0) AS min_salary,
    ROUND(AVG(salary), 0) AS avg_salary,
    ROUND(MAX(salary), 0) AS max_salary,
    ROUND(MAX(salary) - MIN(salary), 0) AS salary_range
FROM employees
WHERE employment_status = 'Active'
GROUP BY job_title
ORDER BY avg_salary DESC;