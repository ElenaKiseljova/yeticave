CREATE DATABASE yeticave
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title CHAR(128),
  name CHAR(128)
);

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name CHAR(64),
  email CHAR(128),
  password CHAR(64),
  avatar_path CHAR(128),
  contacts TEXT,
  date_registration DATETIME,
  lot_list INT,
  rate_list INT
);

CREATE TABLE lots (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title CHAR(128),
  description TEXT,
  image_path CHAR(128),
  date_create DATETIME,
  date_end DATETIME,
  count_like INT,
  price_begin INT,
  price_step INT,
  category_id INT,
  user_id INT,
  winner INT
);

CREATE TABLE rates (
  id INT AUTO_INCREMENT PRIMARY KEY,
  date_rate DATETIME,
  cost_rate INT,
  user_id INT,
  lot_id INT
);

CREATE TABLE favorite (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  lot_id INT
);
