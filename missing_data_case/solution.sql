-- Users with any missing profile fields
SELECT user_id, email, phone, profile_picture
FROM users
WHERE email IS NULL OR phone IS NULL OR profile_picture IS NULL;

-- Count of incomplete users
SELECT COUNT(*) AS incomplete_users
FROM users
WHERE email IS NULL OR phone IS NULL OR profile_picture IS NULL;

-- Most commonly missing field
SELECT 'email' AS field, COUNT(*) AS missing_count FROM users WHERE email IS NULL
UNION ALL
SELECT 'phone', COUNT(*) FROM users WHERE phone IS NULL
UNION ALL
SELECT 'profile_picture', COUNT(*) FROM users WHERE profile_picture IS NULL
ORDER BY missing_count DESC;
