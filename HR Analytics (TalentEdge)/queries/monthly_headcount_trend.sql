-- ─────────────────────────────────────────
-- Monthly Headcount Trend
-- ─────────────────────────────────────────

WITH joiners AS (
    SELECT 
        DATE_FORMAT(hire_date, '%Y-%m') AS month,
        COUNT(*) AS joiners
    FROM employees
    GROUP BY month
),
leavers AS (
    SELECT 
        DATE_FORMAT(exit_date, '%Y-%m') AS month,
        COUNT(*) AS leavers
    FROM attrition
    GROUP BY month
)

SELECT 
    j.month,
    j.joiners,
    COALESCE(l.leavers, 0) AS leavers,
    j.joiners - COALESCE(l.leavers, 0) AS net_change
FROM joiners j
LEFT JOIN leavers l 
    ON j.month = l.month
ORDER BY j.month;