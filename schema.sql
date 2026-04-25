-- Create Database
CREATE DATABASE IF NOT EXISTS bookmyshow_db;
USE bookmyshow_db;

-- Drop tables if re-running
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Seat;
DROP TABLE IF EXISTS Show;
DROP TABLE IF EXISTS Screen;
DROP TABLE IF EXISTS Theatre;
DROP TABLE IF EXISTS Movie;

SET FOREIGN_KEY_CHECKS = 1;

-- =========================
-- Movie Table
-- =========================
CREATE TABLE Movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    duration_minutes INT NOT NULL,
    language VARCHAR(50),
    genre VARCHAR(100),
    certificate VARCHAR(10)
);

-- =========================
-- Theatre Table
-- =========================
CREATE TABLE Theatre (
    theatre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- =========================
-- Screen Table
-- =========================
CREATE TABLE Screen (
    screen_id INT AUTO_INCREMENT PRIMARY KEY,
    theatre_id INT NOT NULL,
    screen_name VARCHAR(50),
    total_seats INT,
    CONSTRAINT fk_screen_theatre
        FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
        ON DELETE CASCADE
);

-- =========================
-- Show Table
-- =========================
CREATE TABLE Show (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    screen_id INT NOT NULL,
    show_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    CONSTRAINT fk_show_movie
        FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_show_screen
        FOREIGN KEY (screen_id) REFERENCES Screen(screen_id)
        ON DELETE CASCADE
);

-- =========================
-- Seat Table
-- =========================
CREATE TABLE Seat (
    seat_id INT AUTO_INCREMENT PRIMARY KEY,
    screen_id INT NOT NULL,
    seat_number VARCHAR(10),
    seat_type VARCHAR(50),
    CONSTRAINT fk_seat_screen
        FOREIGN KEY (screen_id) REFERENCES Screen(screen_id)
        ON DELETE CASCADE
);

-- =========================
-- Indexes (Performance)
-- =========================
CREATE INDEX idx_show_date ON Show(show_date);
CREATE INDEX idx_theatre_id ON Screen(theatre_id);