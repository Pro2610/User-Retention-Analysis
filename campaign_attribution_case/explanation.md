# 📖 Explanation: Campaign Attribution

We’re linking `users` to `conversions` by `user_id` to track how well each campaign performed.

---

### Key Metrics:

- `users_acquired`: total users from a campaign
- `users_converted`: how many converted (joined to `conversions`)
- `conversion_rate_pct`: simple ratio of converted to acquired
- `revenue_per_user`: monetization effectiveness

✅ We use `LEFT JOIN` to ensure we don’t miss non-converting users  
💡 You can extend this by filtering by signup month or campaign type.
