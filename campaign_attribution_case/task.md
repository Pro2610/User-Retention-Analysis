# 📢 Case: Marketing Campaign Attribution

You want to evaluate how effective different marketing campaigns are at generating user conversions.

---

## 🎯 Business Questions

1. How many users were acquired by each campaign?
2. How many of those users actually converted?
3. What is the conversion rate per campaign?
4. Which campaign had the highest revenue per user?

---

## 📂 Tables

### `users`
| Column        | Type    | Description                      |
|---------------|---------|----------------------------------|
| user_id       | STRING  | Unique ID of the user            |
| campaign_id   | STRING  | Campaign that acquired the user  |
| signup_date   | DATE    | Date of registration             |

### `conversions`
| Column        | Type    | Description                      |
|---------------|---------|----------------------------------|
| user_id       | STRING  | ID of the user who converted     |
| conversion_date | DATE  | Date of conversion               |
| amount        | FLOAT   | Revenue from the conversion      |
