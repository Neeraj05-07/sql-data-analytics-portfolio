-- ───────────────────────────────────────
-- Query 1: Monthly Revenue Trend
-- ───────────────────────────────────────
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m')       AS order_month,
    COUNT(DISTINCT o.order_id)               AS total_orders,
    SUM(oi.quantity)                         AS total_units,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY order_month;


-- ───────────────────────────────────────
-- Query 2: Revenue by Category
-- ───────────────────────────────────────
SELECT
    p.category,
    COUNT(DISTINCT o.order_id)               AS total_orders,
    SUM(oi.quantity)                         AS units_sold,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue,
    ROUND(SUM(oi.quantity * (oi.unit_price - p.cost_price)),2) AS profit
FROM order_items oi
JOIN orders   o ON oi.order_id  = o.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status != 'cancelled'
GROUP BY p.category
ORDER BY revenue DESC;


-- ───────────────────────────────────────
-- Query 3: Top 5 Products by Revenue
-- ───────────────────────────────────────
SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity)                          AS units_sold,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue,
    ROUND(SUM(oi.quantity * (oi.unit_price - p.cost_price)),2) AS profit
FROM order_items oi
JOIN orders   o ON oi.order_id   = o.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.status != 'cancelled'
GROUP BY p.product_name, p.category
ORDER BY revenue DESC
LIMIT 5;


-- ───────────────────────────────────────
-- Query 4: Customer Purchase Summary
-- ───────────────────────────────────────
SELECT
    c.customer_id,
    c.full_name,
    c.city,
    COUNT(DISTINCT o.order_id)                AS total_orders,
    ROUND(SUM(oi.quantity * oi.unit_price),2) AS total_spent,
    ROUND(AVG(oi.quantity * oi.unit_price),2) AS avg_order_value,
    MAX(o.order_date)                         AS last_order_date
FROM customers c
JOIN orders     o  ON c.customer_id  = o.customer_id
JOIN order_items oi ON o.order_id    = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY c.customer_id, c.full_name, c.city
ORDER BY total_spent DESC;


-- ───────────────────────────────────────
-- Query 5: RFM Segmentation
-- ───────────────────────────────────────
SELECT
    c.customer_id,
    c.full_name,
    DATEDIFF(CURDATE(), MAX(o.order_date))     AS recency_days,
    COUNT(DISTINCT o.order_id)                 AS frequency,
    ROUND(SUM(oi.quantity * oi.unit_price),2)  AS monetary,
    CASE
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) <= 90
             AND COUNT(DISTINCT o.order_id) >= 3  THEN 'Champion'
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) <= 180
             AND COUNT(DISTINCT o.order_id) >= 2  THEN 'Loyal Customer'
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) <= 90  THEN 'New Customer'
        WHEN DATEDIFF(CURDATE(), MAX(o.order_date)) > 365  THEN 'Lost Customer'
        ELSE                                               'At Risk'
    END AS rfm_segment
FROM customers c
JOIN orders      o  ON c.customer_id  = o.customer_id
JOIN order_items oi ON o.order_id     = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY c.customer_id, c.full_name
ORDER BY monetary DESC;


-- ───────────────────────────────────────
-- Query 6: Order Fulfillment Funnel
-- ───────────────────────────────────────
SELECT
    status,
    COUNT(*)                                   AS total_orders,
    ROUND(COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM orders), 2)      AS pct_of_total
FROM orders
GROUP BY status
ORDER BY total_orders DESC;


-- ───────────────────────────────────────
-- Query 7: Product Return Rate
-- ───────────────────────────────────────
SELECT
    p.product_name,
    p.category,
    SUM(oi.quantity)                           AS units_sold,
    COUNT(r.return_id)                         AS total_returns,
    ROUND(COUNT(r.return_id) * 100.0 /
        NULLIF(SUM(oi.quantity), 0), 2)        AS return_rate_pct
FROM products p
JOIN order_items oi ON p.product_id  = oi.product_id
JOIN orders      o  ON oi.order_id   = o.order_id
LEFT JOIN returns r ON p.product_id  = r.product_id
WHERE o.status != 'cancelled'
GROUP BY p.product_name, p.category
ORDER BY return_rate_pct DESC;


-- ───────────────────────────────────────
-- Query 8: Revenue by City
-- ───────────────────────────────────────
SELECT
    c.city,
    c.state,
    COUNT(DISTINCT o.order_id)                 AS total_orders,
    ROUND(SUM(oi.quantity * oi.unit_price),2)  AS total_revenue
FROM customers   c
JOIN orders      o  ON c.customer_id  = o.customer_id
JOIN order_items oi ON o.order_id     = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY c.city, c.state
ORDER BY total_revenue DESC;


-- ───────────────────────────────────────
-- Query 9: Monthly Revenue YoY Growth
-- ───────────────────────────────────────
SELECT
    YEAR(o.order_date)                          AS yr,
    MONTH(o.order_date)                         AS mn,
    DATE_FORMAT(o.order_date,'%b %Y')           AS month_label,
    ROUND(SUM(oi.quantity * oi.unit_price),2)   AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY YEAR(o.order_date), MONTH(o.order_date),
         DATE_FORMAT(o.order_date,'%b %Y')
ORDER BY yr, mn;


-- ───────────────────────────────────────
-- Query 10: Customer Lifetime Value (CLV)
-- ───────────────────────────────────────
SELECT
    c.customer_id,
    c.full_name,
    c.city,
    DATEDIFF(CURDATE(), c.signup_date)           AS customer_age_days,
    COUNT(DISTINCT o.order_id)                   AS total_orders,
    ROUND(SUM(oi.quantity * oi.unit_price), 2)   AS total_revenue,
    ROUND(SUM(oi.quantity * oi.unit_price)/ NULLIF(DATEDIFF(CURDATE(), c.signup_date), 0) * 365, 2) AS annual_clv
FROM customers  c
JOIN orders o  ON c.customer_id  = o.customer_id
JOIN order_items oi ON o.order_id     = oi.order_id
WHERE o.status != 'cancelled'
GROUP BY c.customer_id, c.full_name, c.city, c.signup_date
ORDER BY annual_clv DESC;