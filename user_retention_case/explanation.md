# 📖 Explanation: Day 1 Retention Logic

This query answers: "Did users return to the app one day after registration?"

---

### ✅ Steps:

1. **CTE `registrations`**  
   Selects users who registered in the last 30 days.

2. **CTE `day1_sessions`**  
   Filters all sessions by all users — will be joined to check if user returned.

3. **LEFT JOIN + Filtering on `s.session_date = r.registration_date + 1`**  
   Checks for a session exactly one day after registration.

4. **GROUP BY registration_date**  
   To calculate daily retention stats.

5. **Final SELECT**  
   Adds `retention_rate_day1` using a simple formula:  
   `retained_users_day1 / total_users_registered * 100`

---

### 💡 Notes:

- We use `LEFT JOIN` to keep users who didn’t return.
- This logic is useful for product teams to understand early engagement.
