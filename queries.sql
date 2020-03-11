INSERT INTO categories (name) VALUES ("Доски и лыжи"), ("Крепления"), ("Ботинки"), ("Одежда"), ("Инструменты"), ("Разное");

INSERT INTO users
SET name='Игнат',
    email='ignat.v@gmail.com',
    password='$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka',
    avatar_path='img/user-1.png',
    contacts='city, street, apartment, door',
    date_registration='2020-03-10 14:01:00',
    lot_list='',
    rate_list='';

INSERT INTO users
SET name='Леночка',
    email='kitty_93@li.ru',
    password='$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa',
    avatar_path='img/user-2.png',
    contacts='city, street, apartment, door',
    date_registration='2019-03-10 11:00:00',
    lot_list='',
    rate_list='';

INSERT INTO users
SET name='Руслан',
    email='warrior07@mail.ru',
    password='$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW',
    avatar_path='img/user-3.png',
    contacts='city, street, apartment, door',
    date_registration='2018-07-15 14:15:20',
    lot_list='',
    rate_list='';


INSERT INTO lots
SET title='2014 Rossignol District Snowboard',
    description='',
    image_path='img/lot-1.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=10999,
    price_step=500,
    category_id=1,
    user_id=1;

INSERT INTO lots
SET title='DC Ply Mens 2016/2017 Snowboard',
    description='',
    image_path='img/lot-2.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=15999,
    price_step=500,
    category_id=1,
    user_id=2;

INSERT INTO lots
SET title='Крепления Union Contact Pro 2015 года размер L/XL',
    description='',
    image_path='img/lot-3.jpg',
    date_create='2020-03-10 14:01:00',
    price_begin=8000,
    price_step=500,
    category_id=2,
    user_id=3;

INSERT INTO lots
SET title='Ботинки для сноуборда DC Mutiny Charocal',
    description='',
    image_path='img/lot-4.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=10999,
    price_step=500,
    category_id=3,
    user_id=1;

INSERT INTO lots
SET title='Куртка для сноуборда DC Mutiny Charocal',
    description='',
    image_path='img/lot-5.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=10999,
    price_step=500,
    category_id=4,
    user_id=2;

INSERT INTO lots
SET title='Маска Oakley Canopy',
    description='',
    image_path='img/lot-6.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=5500,
    price_step=500,
    category_id=5,
    user_id=3;

INSERT INTO lots
SET title='Ботинки для сноуборда DC Mutiny Charocal',
    description='',
    image_path='img/lot-7.jpg',
    date_create='2018-09-15 3:15:20',
    price_begin=10999,
    price_step=500,
    category_id=3,
    user_id=1;

INSERT INTO lots
SET title='Куртка для сноуборда DC Mutiny Charocal',
    description='',
    image_path='img/lot-8.jpg',
    date_create='2015-07-15 20:15:20',
    price_begin=10999,
    price_step=500,
    category_id=4,
    user_id=2;

INSERT INTO lots
SET title='Маска Oakley Canopy',
    description='',
    image_path='img/lot-9.jpg',
    date_create='2019-07-15 14:15:20',
    price_begin=5500,
    price_step=500,
    category_id=5,
    user_id=3;


INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id= 2,
    lot_id= 1;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=3,
    lot_id=4;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=1,
    lot_id=2;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=2,
    lot_id=3;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=3,
    lot_id=7;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=2,
    lot_id=9;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=1,
    lot_id=5;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=2,
    lot_id=7;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=1,
    lot_id=8;

INSERT INTO rates
SET date_rate='2020-03-11 11:00:00',
    cost_rate=10999,
    user_id=3,
    lot_id=9;

INSERT INTO favorite
SET user_id=2,
    lot_id=9;

INSERT INTO favorite
SET user_id=1,
    lot_id=9;

INSERT INTO favorite
SET user_id=2,
    lot_id=5;

INSERT INTO favorite
SET user_id=1,
    lot_id=3;

INSERT INTO favorite
SET user_id=3,
    lot_id=1;

INSERT INTO favorite
SET user_id=3,
    lot_id=7;

INSERT INTO favorite
SET user_id=2,
    lot_id=9;

INSERT INTO favorite
SET user_id=1,
    lot_id=2;

INSERT INTO favorite
SET user_id=2,
    lot_id=5;

CREATE UNIQUE INDEX r_id ON rates(id);
CREATE UNIQUE INDEX l_id ON lots(id);
CREATE UNIQUE INDEX u_id ON users(id);
CREATE UNIQUE INDEX c_id ON categories(id);
CREATE UNIQUE INDEX f_id ON favorite(id);


SELECT * FROM categories ORDER BY name ASC;
SELECT * FROM users;

SELECT * FROM lots l JOIN users u
ON l.user_id = u.id;

SELECT user_id, SUM(cost_rate) FROM rates GROUP BY user_id;

SELECT lot_id, COUNT(*) FROM favorite GROUP BY lot_id ORDER BY lot_id Desc;
