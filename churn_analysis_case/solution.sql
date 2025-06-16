-- 1. List churned customers (no purchases in last 30 days)
SELECT customer_id,
       MAX(order_date) AS last_order_date
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) < CURRENT_DATE - INTERVAL 30 DAY;

-- 2. Churn rate by month (optional simplified approach)
WITH monthly_activity AS (
  SELECT customer_id,
         DATE_TRUNC('month', order_date) AS activity_month,
         MAX(order_date) AS last_order_date
  FROM orders
  GROUP BY customer_id, activity_month
),
churn_flagged AS (
  SELECT *,
         CASE
           WHEN last_order_date < CURRENT_DATE - INTERVAL 30 DAY THEN 1
           ELSE 0
         END AS is_churned
  FROM monthly_activity
)
SELECT activity_month,
       COUNT(*) AS total_customers,
       SUM(is_churned) AS churned_customers,
       ROUND(SUM(is_churned) * 100.0 / COUNT(*), 2) AS churn_rate
FROM churn_flagged
GROUP BY activity_month
ORDER BY activity_month;

-- 3. Estimate customer "lifetime" (number of days between first and last order)
SELECT customer_id,
       MIN(order_date) AS first_order,
       MAX(order_date) AS last_order,
       DATE_DIFF(MAX(order_date), MIN(order_date), DAY) AS lifetime_days
FROM orders
GROUP BY customer_id;
