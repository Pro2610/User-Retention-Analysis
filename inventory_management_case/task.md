# 📦 Case: Inventory Management

You're working for a retail company. The operations team wants to monitor stock levels and identify low-stock items that need reordering.

---

## 🎯 Business Questions

1. Which products are **below the reorder point**?
2. Which products are **out of stock**?
3. What is the **average stock level** by category?

---

## 📂 Table: `products`

| Column Name     | Type    | Description                        |
|------------------|---------|------------------------------------|
| product_id       | STRING  | Unique product ID                  |
| product_name     | STRING  | Product name                       |
| category         | STRING  | Product category                   |
| stock_level      | INTEGER | Units currently in stock           |
| reorder_point    | INTEGER | When to reorder (minimum threshold)|

✅ Stock is considered **low** if `stock_level < reorder_point`
✅ Stock is **out** if `stock_level = 0`
