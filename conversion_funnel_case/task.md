# 🔄 Case: Conversion Funnel Analysis

You work for an e-commerce platform. Your goal is to analyze **how users move through the purchase funnel**:

1. **Page View** — user viewed a product
2. **Add to Cart** — user added a product to their cart
3. **Purchase** — user completed the purchase

---

## 🎯 Business Questions

1. How many users reached each funnel step?
2. What is the **conversion rate** between each step?
3. What is the **overall conversion rate** (view → purchase)?

---

## 📂 Table: `events`

| Column Name   | Type    | Description                          |
|---------------|---------|--------------------------------------|
| user_id       | STRING  | ID of the user                       |
| event_type    | STRING  | 'view', 'add_to_cart', or 'purchase' |
| event_date    | DATE    | Date of the event                    |

✅ Each user can have multiple events.

---

## ✅ Expected Output

| funnel_step   | users_count | conversion_rate |
|---------------|-------------|-----------------|
| viewed        | 1000        | 100.0%          |
| added_to_cart | 600         | 60.0%           |
| purchased     | 250         | 25.0%           |
