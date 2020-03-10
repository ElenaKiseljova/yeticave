CREATE DATABASE yeticave
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE categories (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name CHAR(128)
);

INSERT INTO categories (name) VALUES ("Доски и лыжи"), ("Крепления"), ("Ботинки"), ("Одежда"), ("Инструменты"), ("Разное");

SELECT * FROM categories ORDER BY name ASC;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name CHAR(64),
  email CHAR(128),
  password CHAR(64),
  avatar_path CHAR(128),
  contacts TEXT,
  date_registration DATETIME
);

INSERT INTO users
SET name='Игнат', email='ignat.v@gmail.com', password='$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka', avatar_path='img/user-1.png', contacts='city, street, apartment, door', date_registration='2020-03-10 14:01:00';

INSERT INTO users
SET name='Леночка', email='kitty_93@li.ru', password='$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa', avatar_path='img/user-2.png', contacts='city, street, apartment, door', date_registration='2019-03-10 11:00:00';

INSERT INTO users
SET name='Руслан', email='warrior07@mail.ru', password='$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW', avatar_path='img/user-3.png', contacts='city, street, apartment, door', date_registration='2018-07-15 14:15:20';

SELECT * FROM users;

CREATE TABLE lots (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title CHAR(128),
  description TEXT,
  image_path CHAR(128),
  date_create DATETIME,
  date_end DATETIME,
  count_like INT,
  price_begin INT,
  price_step INT
);
