-- ─────────────────────────────────────────
-- Org Hierarchy  (self-join, 3 levels)
-- ─────────────────────────────────────────
SELECT
    e1.emp_id AS l1_id,
    e1.full_name AS l1_executive,
    e1.job_title AS l1_title,
    e2.full_name AS l2_manager,
    e2.job_title AS l2_title,
    e3.full_name AS l3_employee,
    e3.job_title AS l3_title,
    d.dept_name
FROM employees e1
LEFT JOIN employees e2 ON e2.manager_id = e1.emp_id
LEFT JOIN employees e3 ON e3.manager_id = e2.emp_id
JOIN departments d ON e1.dept_id = d.dept_id
WHERE e1.manager_id IS NULL
  AND e1.employment_status = 'Active'
ORDER BY d.dept_name, e1.full_name, e2.full_name, e3.full_name;