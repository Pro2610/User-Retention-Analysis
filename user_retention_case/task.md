# 🧪 Case: User Retention Analysis

You are working as a data analyst for a mobile app.

Your task is to calculate **Day 1 Retention** for users who registered in the last 30 days.

---

## 🎯 Business Question

How many users came back and used the app again the day after they registered?

---

## 📂 Available Table: `events`

| column name     | type      | description                          |
|-----------------|-----------|--------------------------------------|
| user_id         | INTEGER   | ID of the user                       |
| event_type      | STRING    | 'registration' or 'session'         |
| event_date      | DATE      | Date of the event                    |

---

## ✅ Requirements

1. Filter only users who **registered in the last 30 days**
2. Check if they had a `session` exactly one day after registration
3. Return:
   - `registration_date`
   - `total_users_registered`
   - `retained_users_day1`
   - `retention_rate_day1` (in %)
