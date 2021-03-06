DROP DATABASE IF EXISTS takeaway_db;
CREATE DATABASE takeaway_db;

USE takeaway_db;

CREATE TABLE foods (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE devoured_foods (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  is_devoured BOOLEAN NOT NULL,
  food_id INT UNSIGNED NOT NULL,
  CONSTRAINT fk_food FOREIGN KEY (food_id) REFERENCES foods(id) ON DELETE CASCADE
);