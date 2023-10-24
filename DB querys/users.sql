CREATE DATABASE hft_fitness;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(120) NOT NULL,
    pwd VARCHAR(128) NOT NULL
);

INSERT INTO users (email, pwd) VALUES ( 'gayatri@gmail.com', '12345');

CREATE TABLE activity (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    activity_type VARCHAR(255) NOT NULL,
    duration INT NOT NULL,
    intensity INT NOT NULL,
    calories_burned INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

ALTER TABLE users
ADD COLUMN age INT,
ADD COLUMN height DECIMAL(5, 2),
ADD COLUMN weight DECIMAL(5, 2),
ADD COLUMN gender ENUM('Male', 'Female', 'Other');

ALTER TABLE users
ADD COLUMN name VARCHAR(255);

CREATE TABLE sleep (
    sleep_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    hours_slept DECIMAL(4, 2),
    sleepiness_level VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE mood (
    mood_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mood_rating VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(id)
);



