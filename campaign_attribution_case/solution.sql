WITH campaign_stats AS (
  SELECT u.campaign_id,
         COUNT(DISTINCT u.user_id) AS users_acquired,
         COUNT(DISTINCT c.user_id) AS users_converted,
         SUM(c.amount) AS total_revenue
  FROM users u
  LEFT JOIN conversions c ON u.user_id = c.user_id
  GROUP BY u.campaign_id
)
SELECT campaign_id,
       users_acquired,
       users_converted,
       ROUND(users_converted * 100.0 / users_acquired, 2) AS conversion_rate_pct,
       ROUND(total_revenue / users_acquired, 2) AS revenue_per_user
FROM campaign_stats
ORDER BY conversion_rate_pct DESC;
