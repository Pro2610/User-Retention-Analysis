# ⏱️ Case: Session Duration Analysis

You're analyzing user engagement in a mobile app. You want to estimate **how long each user session lasts**.

---

## 🎯 Business Questions

1. What is the duration of each session?
2. What is the average session length per user?
3. What’s the longest session overall?

---

## 📂 Table: `session_events`

| Column Name   | Type    | Description               |
|---------------|---------|---------------------------|
| user_id       | STRING  | User identifier           |
| event_time    | DATETIME| Timestamp of the event    |
| event_type    | STRING  | 'login' or 'logout'       |

✅ Each session starts with a `login` and ends with the next `logout`.
