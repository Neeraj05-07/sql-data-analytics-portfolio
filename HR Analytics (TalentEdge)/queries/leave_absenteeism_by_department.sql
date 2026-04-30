-- ─────────────────────────────────────────
-- BONUS: Leave Absenteeism by Department
-- ─────────────────────────────────────────
SELECT
    d.dept_name,
    COUNT(l.leave_id) AS total_requests,
    SUM(DATEDIFF(l.end_date, l.start_date) + 1) AS total_leave_days,
    ROUND(AVG(DATEDIFF(l.end_date, l.start_date) + 1), 1) AS avg_leave_days,
    SUM(CASE WHEN l.leave_type = 'sick' THEN DATEDIFF(l.end_date,l.start_date)+1 ELSE 0 END) AS sick_days,
    SUM(CASE WHEN l.leave_type = 'casual' THEN DATEDIFF(l.end_date,l.start_date)+1 ELSE 0 END) AS casual_days,
    SUM(CASE WHEN l.leave_type = 'earned' THEN DATEDIFF(l.end_date,l.start_date)+1 ELSE 0 END) AS earned_days,
    SUM(CASE WHEN l.leave_type = 'maternity' THEN DATEDIFF(l.end_date,l.start_date)+1 ELSE 0 END) AS maternity_days,
    SUM(CASE WHEN l.leave_type = 'unpaid' THEN DATEDIFF(l.end_date,l.start_date)+1 ELSE 0 END) AS unpaid_days
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
LEFT JOIN leaves l    ON e.emp_id  = l.emp_id
    AND l.status = 'approved'
GROUP BY d.dept_name
ORDER BY total_leave_days DESC;