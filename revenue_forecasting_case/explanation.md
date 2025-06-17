# 📖 Explanation: Revenue Forecasting Logic

This case focuses on understanding current and past revenue performance, and building logic for basic forecasting.

---

### 💰 Monthly Revenue

```sql
SELECT DATE_TRUNC('month', order_date), SUM(amount)

Used for trends, reporting, and dashboards.

MTD & YTD
-- MTD: revenue in current month only
-- YTD: revenue from Jan 1 to today
These KPIs are used by finance/ops teams for tracking progress.

Monthly Comparison
We use a LAG() window function to compare current revenue to the previous month.
This helps evaluate:

growth/decline in %

whether current month is on track to beat last one

You can extend this by:
Adding forecasted_revenue with daily average × remaining days

Visualizing with cumulative revenue curves
