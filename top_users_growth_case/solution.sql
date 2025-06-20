WITH monthly_revenue AS (
  SELECT user_id,
         DATE_TRUNC('month', order_date) AS month,
         SUM(amount) AS revenue
  FROM orders
  GROUP BY user_id, month
),
revenue_with_lag AS (
  SELECT user_id,
         month,
         revenue,
         LAG(revenue) OVER (PARTITION BY user_id ORDER BY month) AS prev_month_revenue
  FROM monthly_revenue
),
growth_filtered AS (
  SELECT *,
         ROUND((revenue - prev_month_revenue) * 100.0 / prev_month_revenue, 2) AS growth_pct
  FROM revenue_with_lag
  WHERE prev_month_revenue IS NOT NULL AND prev_month_revenue > 0
)
SELECT *
FROM growth_filtered
WHERE month = DATE_TRUNC('month', CURRENT_DATE)
ORDER BY growth_pct DESC
LIMIT 10;
