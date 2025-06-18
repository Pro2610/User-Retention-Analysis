WITH events_ranked AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY event_time) AS rn
  FROM session_events
),
paired_events AS (
  SELECT
    e1.user_id,
    e1.event_time AS login_time,
    e2.event_time AS logout_time,
    TIMESTAMP_DIFF(e2.event_time, e1.event_time, MINUTE) AS duration_min
  FROM events_ranked e1
  JOIN events_ranked e2
    ON e1.user_id = e2.user_id
   AND e1.rn = e2.rn - 1
   AND e1.event_type = 'login'
   AND e2.event_type = 'logout'
)
SELECT *
FROM paired_events;
