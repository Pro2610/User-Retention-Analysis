# 📖 Explanation: Customer Churn Logic

This case helps identify users who became inactive and estimate their behavior over time.

---

### 1. Churned Customers

```sql
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) < CURRENT_DATE - INTERVAL 30 DAY;
We group orders by customer

Use MAX(order_date) to find their last order

If last order is older than 30 days → marked as churned

Churn Rate per Month
We use a CTE:

monthly_activity: gets last order per user per month

Then we classify each user as churned or not based on that

Finally, we aggregate churned vs. active users monthly

Customer Lifetime

DATE_DIFF(MAX(order_date), MIN(order_date), DAY)
This gives you how long a customer remained active. Useful for understanding user lifecycle.

💡 Advanced idea:

Join with users table to compare churn across cohorts, countries, or subscription types

Apply WINDOW FUNCTIONS to track repeated churn/resurrection patterns


