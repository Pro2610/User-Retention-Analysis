# 📈 Case: Top Users by Purchase Growth

The business team wants to know which users have **increased their spending the most** compared to the previous month.

---

## 🎯 Business Questions

1. Which users had the biggest growth in revenue this month vs last?
2. What is the % growth per user?
3. Who are the top 10 fastest-growing customers?

---

## 📂 Table: `orders`

| Column Name   | Type    | Description             |
|----------------|---------|--------------------------|
| order_id       | STRING  | ID of the order          |
| user_id        | STRING  | ID of the customer       |
| order_date     | DATE    | Date of the order        |
| amount         | FLOAT   | Purchase amount in €     |

✅ Revenue is aggregated per user per month.
✅ Users with 0 revenue last month are excluded (to avoid division by 0).
