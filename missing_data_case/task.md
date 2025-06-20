# 🕳️ Case: Missing Data Alert

Your team wants to identify users who didn’t complete their profile — missing contact info or profile photo.

---

## 🎯 Business Questions

1. Which users are missing critical information?
2. How many users have incomplete profiles?
3. Which fields are most frequently missing?

---

## 📂 Table: `users`

| Column Name       | Type    | Description                  |
|-------------------|---------|------------------------------|
| user_id           | STRING  | ID of the user               |
| email             | STRING  | Email address (nullable)     |
| phone             | STRING  | Phone number (nullable)      |
| profile_picture   | STRING  | URL or NULL                  |
| profile_completed | BOOLEAN | Indicates if profile is done |

✅ Incomplete = any of the fields is NULL
