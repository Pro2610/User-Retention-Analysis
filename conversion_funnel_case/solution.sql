WITH funnel_steps AS (
  SELECT DISTINCT user_id,
         MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS viewed,
         MAX(CASE WHEN event_type = 'add_to_cart' THEN 1 ELSE 0 END) AS added,
         MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchased
  FROM events
  GROUP BY user_id
),
aggregated AS (
  SELECT
    COUNT(*) AS viewed_users,
    COUNT(CASE WHEN added = 1 THEN 1 END) AS added_users,
    COUNT(CASE WHEN purchased = 1 THEN 1 END) AS purchased_users
  FROM funnel_steps
)
SELECT 'viewed' AS funnel_step, viewed_users AS users_count, 100.0 AS conversion_rate
FROM aggregated
UNION ALL
SELECT 'added_to_cart', added_users, ROUND(added_users * 100.0 / viewed_users, 2)
FROM aggregated
UNION ALL
SELECT 'purchased', purchased_users, ROUND(purchased_users * 100.0 / viewed_users, 2)
FROM aggregated;
