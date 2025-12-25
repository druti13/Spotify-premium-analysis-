-- BASIC ANALYSIS QUERIES

-- Query 1: Overall Statistics
-- ============================================================
SELECT 
    COUNT(*) as total_users,
    SUM(is_premium_user) as premium_users,
    SUM(CASE WHEN is_premium_user = 0 THEN 1 ELSE 0 END) as free_users,
    ROUND(AVG(is_premium_user) * 100, 2) as premium_rate_pct,
    SUM(is_premium_willing) as willing_to_upgrade,
    ROUND(AVG(is_premium_willing) * 100, 2) as overall_willingness_pct
FROM spotify_users;


-- Query 2: Premium Willingness by Current Plan
-- ============================================================
SELECT 
    spotify_subscription_plan,
    COUNT(*) as user_count,
    SUM(is_premium_willing) as willing_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
GROUP BY spotify_subscription_plan
ORDER BY willingness_rate_pct DESC;


-- Query 3: Age Group Analysis
-- ============================================================
SELECT 
    age,
    COUNT(*) as total_users,
    SUM(is_premium_user) as current_premium,
    SUM(is_premium_willing) as willing_to_upgrade,
    ROUND(AVG(is_premium_user) * 100, 2) as premium_rate_pct,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
GROUP BY age
ORDER BY willingness_rate_pct DESC;


-- Query 4: Gender Breakdown
-- ============================================================
SELECT 
    gender,
    COUNT(*) as total_users,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct,
    ROUND(AVG(is_premium_user) * 100, 2) as current_premium_rate_pct
FROM spotify_users
GROUP BY gender
ORDER BY willingness_rate_pct DESC;


-- Query 5: Device Preference Impact
-- ============================================================
SELECT 
    spotify_listening_device,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct,
    ROUND(AVG(music_recc_rating), 2) as avg_satisfaction_rating
FROM spotify_users
GROUP BY spotify_listening_device
ORDER BY willingness_rate_pct DESC;


-- Query 6: Listening Frequency Impact
-- ============================================================
SELECT 
    music_lis_frequency,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct,
    ROUND(AVG(engagement_score), 1) as avg_engagement_score
FROM spotify_users
GROUP BY music_lis_frequency
ORDER BY willingness_rate_pct DESC;


-- Query 7: Content Type Preference
-- ============================================================
SELECT 
    content_diversity,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
GROUP BY content_diversity
ORDER BY willingness_rate_pct DESC;


-- Query 8: Top Music Genres
-- ============================================================
SELECT 
    fav_music_genre,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
WHERE fav_music_genre IS NOT NULL
GROUP BY fav_music_genre
HAVING COUNT(*) >= 10  -- Only genres with 10+ users
ORDER BY user_count DESC
LIMIT 10;


-- Query 9: Recommendation Rating Impact
-- ============================================================
SELECT 
    music_recc_rating,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
WHERE music_recc_rating IS NOT NULL
GROUP BY music_recc_rating
ORDER BY music_recc_rating DESC;


-- Query 10: Podcast Engagement Impact
-- ============================================================
SELECT 
    pod_lis_frequency,
    COUNT(*) as user_count,
    ROUND(AVG(is_premium_willing) * 100, 2) as willingness_rate_pct
FROM spotify_users
GROUP BY pod_lis_frequency
ORDER BY willingness_rate_pct DESC;

