-- Top 5 best-selling products by revenue
SELECT product_id,
       SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 5;

-- Average order value per month
SELECT DATE_TRUNC('month', order_date) AS month,
       ROUND(SUM(quantity * price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM orders
GROUP BY month
ORDER BY month;

-- Revenue per category per month
SELECT DATE_TRUNC('month', order_date) AS month,
       category,
       SUM(quantity * price) AS category_revenue
FROM orders
GROUP BY month, category
ORDER BY month, category;
