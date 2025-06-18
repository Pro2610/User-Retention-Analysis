# 📖 Explanation: Session Duration

This case calculates the time difference between `login` and `logout` events to estimate session duration.

---

### 🧠 Key ideas:

1. **Pairing rows** using `ROW_NUMBER()`  
2. **Self-join** the table to match login → logout events
3. **TIMESTAMP_DIFF** returns duration in minutes

---

💡 You can extend this:
- Use `AVG(duration)` per user
- Filter only sessions > 60 mins (power users)
