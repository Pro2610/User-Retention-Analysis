# 📖 Explanation: Funnel Logic

This funnel analysis tracks how many users pass through 3 key stages: view → add to cart → purchase.

---

### ✅ Step-by-step

1. **funnel_steps CTE**:
   - Groups user events into one row per user
   - Flags whether each user reached each step using `CASE WHEN`

2. **aggregated CTE**:
   - Counts how many users passed each stage
   - Uses conditional `COUNT(CASE WHEN ...)`

3. **Final SELECT**:
   - Outputs each step with:
     - Total users
     - Conversion rate from the first step (viewed)

---

### 📌 Business Value

- Identifies biggest drop-off points
- Helps product teams optimize the funnel
- Basis for A/B testing and onboarding improvements

💡 You can extend this logic by:
- Breaking down by `device_type`, `region`, or `product_category`
- Tracking average time between steps using `LAG()` or `DATEDIFF()`
