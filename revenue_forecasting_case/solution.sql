-- Total revenue per month
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month DESC;

-- MTD (Month-to-Date) revenue for current month
SELECT SUM(amount) AS mtd_revenue
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = EXTRACT(YEAR FROM CURRENT_DATE)
  AND EXTRACT(MONTH FROM order_date) = EXTRACT(MONTH FROM CURRENT_DATE);

-- YTD (Year-to-Date) revenue
SELECT SUM(amount) AS ytd_revenue
FROM orders
WHERE order_date >= DATE_TRUNC('year', CURRENT_DATE);

-- Revenue comparison: current vs previous month
WITH monthly_revenue AS (
  SELECT DATE_TRUNC('month', order_date) AS month,
         SUM(amount) AS revenue
  FROM orders
  GROUP BY month
),
comparison AS (
  SELECT month,
         revenue,
         LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue
  FROM monthly_revenue
)
SELECT month,
       revenue,
       previous_month_revenue,
       ROUND((revenue - previous_month_revenue) * 100.0 / previous_month_revenue, 2) AS growth_pct
FROM comparison
WHERE month = DATE_TRUNC('month', CURRENT_DATE);
