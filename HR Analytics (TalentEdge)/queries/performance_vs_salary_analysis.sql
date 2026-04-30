-- ─────────────────────────────────────────
-- High Performers vs Salary
-- ─────────────────────────────────────────
SELECT
    e.emp_id,
    e.full_name,
    d.dept_name,
    e.job_title,
    e.salary,
    ROUND(AVG(pr.rating), 2) AS avg_rating,
    ROUND(AVG(e2.salary), 0) AS avg_salary_same_title,
    CASE
        WHEN AVG(pr.rating) >= 4.5
         AND e.salary < AVG(e2.salary) THEN 'Underpaid Star - Flight Risk'
        WHEN AVG(pr.rating) < 3.0
         AND e.salary > AVG(e2.salary) THEN 'Overpaid Underperformer'
        ELSE 'Fairly Compensated'
    END AS compensation_flag
FROM employees e
JOIN departments d  ON e.dept_id = d.dept_id
JOIN performance_reviews pr ON e.emp_id = pr.emp_id
JOIN employees e2 ON e.job_title = e2.job_title
    AND e2.employment_status = 'Active'
WHERE e.employment_status = 'Active'
GROUP BY e.emp_id, e.full_name, d.dept_name, e.job_title, e.salary
ORDER BY avg_rating DESC;