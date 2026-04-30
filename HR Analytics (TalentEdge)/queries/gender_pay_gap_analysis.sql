-- ─────────────────────────────────────────
-- Gender Pay Gap by Job Title
-- ─────────────────────────────────────────
SELECT
    job_title,
    COUNT(CASE WHEN gender = 'Male'   THEN 1 END) AS male_count,
    COUNT(CASE WHEN gender = 'Female' THEN 1 END) AS female_count,
    ROUND(AVG(CASE WHEN gender = 'Male'   THEN salary END), 0) AS avg_male_salary,
    ROUND(AVG(CASE WHEN gender = 'Female' THEN salary END), 0) AS avg_female_salary,
    ROUND(
		(AVG(CASE WHEN gender = 'Male'   THEN salary END) -
         AVG(CASE WHEN gender = 'Female' THEN salary END)) * 100.0 / NULLIF(AVG(CASE WHEN gender = 'Male' THEN salary END), 0), 2
    ) AS gender_pay_gap_pct
FROM employees
WHERE employment_status = 'Active'
GROUP BY job_title
HAVING male_count > 0 AND female_count > 0
ORDER BY gender_pay_gap_pct DESC;