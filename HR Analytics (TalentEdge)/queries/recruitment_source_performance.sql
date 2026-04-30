-- ─────────────────────────────────────────
-- Recruitment Source Performance
-- ─────────────────────────────────────────
SELECT
    source,
    COUNT(*) AS total_applications,
    COUNT(CASE WHEN joined_date IS NOT NULL THEN 1 END) AS total_hires,
    ROUND( COUNT(CASE WHEN joined_date IS NOT NULL THEN 1 END) * 100.0 / NULLIF(COUNT(*), 0), 1) AS hire_rate_pct,
    ROUND(AVG(CASE WHEN offer_date IS NOT NULL THEN DATEDIFF(offer_date, applied_date) END), 0) AS avg_days_to_offer,
    ROUND(AVG(CASE WHEN joined_date IS NOT NULL THEN DATEDIFF(joined_date, applied_date) END), 0) AS avg_days_to_join
FROM hiring
GROUP BY source
ORDER BY hire_rate_pct DESC;