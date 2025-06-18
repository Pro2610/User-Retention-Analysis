-- Products below reorder point
SELECT product_id, product_name, stock_level, reorder_point
FROM products
WHERE stock_level < reorder_point;

-- Out-of-stock products
SELECT product_id, product_name
FROM products
WHERE stock_level = 0;

-- Average stock level by category
SELECT category,
       ROUND(AVG(stock_level), 2) AS avg_stock
FROM products
GROUP BY category;
