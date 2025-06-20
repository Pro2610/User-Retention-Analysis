# 📖 Explanation: Revenue Growth per User

We want to compare each user's revenue this month vs the previous one.

---

### Step-by-step:

1. `monthly_revenue`: get total revenue per user per month
2. `LAG()` adds previous month's revenue for each user
3. We calculate `growth_pct = (new - old) / old`
4. Final query filters to current month, sorts by growth %, and limits to top 10

---

✅ We exclude users with 0 last month revenue to avoid divide-by-zero

💡 Great for identifying power users or candidates for loyalty campaigns
