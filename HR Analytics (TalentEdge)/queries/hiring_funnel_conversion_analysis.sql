-- ─────────────────────────────────────────
-- Hiring Funnel Conversion
-- ─────────────────────────────────────────
SELECT
    stage,
    COUNT(*) AS candidate_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hiring), 2)         AS pct_of_total
FROM hiring
GROUP BY stage
ORDER BY candidate_count DESC;