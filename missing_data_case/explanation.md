# 📖 Explanation: Missing Data

We check for `NULL` values in key profile fields.

- First query shows which users have missing info
- Second counts all users with incomplete profiles
- Third aggregates missing field counts to prioritize fixes

💡 You can add `COALESCE()` to set default labels like "No email".
