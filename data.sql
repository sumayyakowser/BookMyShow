USE bookmyshow_db;

-- =========================
-- Movie Data
-- =========================
INSERT INTO Movie (title, duration_minutes, language, genre, certificate)
VALUES 
('Avengers: Endgame', 180, 'English', 'Action', 'UA'),
('RRR', 180, 'Telugu', 'Action/Drama', 'UA'),
('Inception', 150, 'English', 'Sci-Fi', 'UA');

-- =========================
-- Theatre Data
-- =========================
INSERT INTO Theatre (name, city)
VALUES 
('PVR Cinemas', 'Hyderabad'),
('INOX', 'Hyderabad');

-- =========================
-- Screen Data
-- =========================
INSERT INTO Screen (theatre_id, screen_name, total_seats)
VALUES 
(1, 'Screen 1', 150),
(1, 'Screen 2', 120),
(2, 'Screen 1', 100);

-- =========================
-- Show Data
-- =========================
INSERT INTO Show (movie_id, screen_id, show_date, start_time, end_time)
VALUES
(1, 1, '2026-04-25', '10:00:00', '13:00:00'),
(1, 1, '2026-04-25', '14:00:00', '17:00:00'),
(2, 2, '2026-04-25', '11:00:00', '14:00:00'),
(3, 2, '2026-04-25', '18:00:00', '21:00:00'),
(2, 3, '2026-04-26', '15:00:00', '18:00:00');

-- =========================
-- Seat Data (Optional)
-- =========================
INSERT INTO Seat (screen_id, seat_number, seat_type)
VALUES
(1, 'A1', 'Regular'),
(1, 'A2', 'Regular'),
(1, 'B1', 'Premium'),
(2, 'A1', 'Regular'),
(3, 'A1', 'Regular');