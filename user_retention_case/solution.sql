WITH registrations AS (
  SELECT user_id, event_date AS registration_date
  FROM events
  WHERE event_type = 'registration'
    AND event_date >= CURRENT_DATE - INTERVAL 30 DAY
),
day1_sessions AS (
  SELECT user_id, event_date AS session_date
  FROM events
  WHERE event_type = 'session'
),
retention_check AS (
  SELECT r.registration_date,
         COUNT(DISTINCT r.user_id) AS total_users_registered,
         COUNT(DISTINCT s.user_id) AS retained_users_day1
  FROM registrations r
  LEFT JOIN day1_sessions s
    ON r.user_id = s.user_id
   AND s.session_date = r.registration_date + INTERVAL 1 DAY
  GROUP BY r.registration_date
)

SELECT *,
       ROUND(retained_users_day1 * 100.0 / total_users_registered, 2) AS retention_rate_day1
FROM retention_check
ORDER BY registration_date;
