USE bookmyshow_db;

-- =========================
-- P2: Shows by Theatre & Date
-- =========================
SELECT 
    t.name AS theatre_name,
    m.title AS movie_name,
    s.screen_name,
    sh.show_date,
    sh.start_time,
    sh.end_time
FROM Show sh
JOIN Movie m ON sh.movie_id = m.movie_id
JOIN Screen s ON sh.screen_id = s.screen_id
JOIN Theatre t ON s.theatre_id = t.theatre_id
WHERE t.theatre_id = 1
  AND sh.show_date = '2026-04-25'
ORDER BY sh.start_time;

-- =========================
-- Bonus: Next 7 days shows
-- =========================
SELECT 
    t.name,
    m.title,
    sh.show_date,
    sh.start_time
FROM Show sh
JOIN Movie m ON sh.movie_id = m.movie_id
JOIN Screen s ON sh.screen_id = s.screen_id
JOIN Theatre t ON s.theatre_id = t.theatre_id
WHERE sh.show_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
ORDER BY sh.show_date, sh.start_time;

-- =========================
-- Bonus: Shows per Movie Count
-- =========================
SELECT 
    m.title,
    COUNT(*) AS total_shows
FROM Show sh
JOIN Movie m ON sh.movie_id = m.movie_id
GROUP BY m.title;