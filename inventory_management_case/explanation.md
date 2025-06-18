# 📖 Explanation: Inventory Logic

This case focuses on identifying stock risks and summarizing inventory performance.

---

✅ `stock_level < reorder_point`  
→ Products that may soon run out.

✅ `stock_level = 0`  
→ Out of stock — urgent attention.

✅ `AVG(stock_level)` by category  
→ Helps detect which categories are understocked on average.

You can extend this with `CASE` logic to create custom status labels.
