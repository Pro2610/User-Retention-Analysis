# 📖 Explanation: Sales Performance Logic

This case answers three key product and revenue questions for an e-commerce business.

---

### 🛍 Top 5 Products by Revenue

```sql
SELECT product_id, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 5;
Simple aggregation using SUM(quantity * price)

Sorted by total_revenue, with LIMIT 5

Average Order Value (AOV) by Month

SELECT DATE_TRUNC('month', order_date) AS month,
       ROUND(SUM(quantity * price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM orders
GROUP BY month
Total revenue ÷ number of orders per month

Great KPI for marketing or campaign analysis

Monthly Revenue per Category

SELECT DATE_TRUNC('month', order_date) AS month,
       category,
       SUM(quantity * price) AS category_revenue
FROM orders
GROUP BY month, category
Breakdown of revenue trends across product types

Useful for forecasting and portfolio review

Bonus:

Use HAVING to filter months with low revenue

Add RANK() to find top category per month
