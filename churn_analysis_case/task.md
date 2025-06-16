# 🧨 Case: Customer Churn Analysis

Your company wants to identify **churned users** — customers who haven't made any purchases in the last 30 days.

---

## 🎯 Business Questions

1. Who are the customers that churned (no orders in the last 30 days)?
2. What is the churn rate for each month?
3. How long did active customers stay before churning?

---

## 📂 Table: `orders`

| Column Name    | Type    | Description                       |
|----------------|---------|-----------------------------------|
| order_id       | STRING  | Unique ID for the order           |
| customer_id    | STRING  | ID of the customer                |
| order_date     | DATE    | Date of purchase                  |

---
✅ Assume `CURRENT_DATE` is today.

A user is considered **churned** if they:
- placed their **last order** more than 30 days ago
