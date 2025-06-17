# 📈 Case: Revenue Forecasting

Your manager wants to track **monthly revenue performance** and estimate whether the company is on track to hit its goals.

---

## 🎯 Business Questions

1. What is the total revenue per month?
2. What is the MTD (Month-to-Date) revenue for the current month?
3. What is the YTD (Year-to-Date) revenue?
4. How does current month’s revenue compare to last month?
5. Is the company on pace to beat last month's revenue?

---

## 📂 Table: `orders`

| Column Name    | Type    | Description                   |
|----------------|---------|-------------------------------|
| order_id       | STRING  | Unique order ID               |
| order_date     | DATE    | Date of order                 |
| amount         | FLOAT   | Order revenue in €            |

✅ Use `CURRENT_DATE` for all calculations.
