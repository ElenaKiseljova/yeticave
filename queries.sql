/* CATEGORIES ------------------------------------------------------------- */

INSERT INTO categories
SET title='Доски и лыжи',
    name='boards';

INSERT INTO categories
SET title='Крепления',
    name='attachment';

INSERT INTO categories
SET title='Ботинки',
    name='boots';

INSERT INTO categories
SET title='Одежда',
    name='clothing';

INSERT INTO categories
SET title='Инструменты',
    name='tools';

INSERT INTO categories
SET title='Разное',
    name='other';

/* USERS ------------------------------------------------------------------ */

INSERT INTO users
SET name='Игнат',
    email='ignat.v@gmail.com',
    password='$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka',
    avatar_path='img/user-1.png',
    contacts='city, street, apartment, door',
    date_registration='2020-03-10 14:01:00';

INSERT INTO users
SET name='Леночка',
    email='kitty_93@li.ru',
    password='$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa',
    avatar_path='img/user-2.png',
    contacts='city, street, apartment, door',
    date_registration='2019-03-10 11:00:00';

INSERT INTO users
SET name='Руслан',
    email='warrior07@mail.ru',
    password='$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW',
    avatar_path='img/user-3.png',
    contacts='city, street, apartment, door',
    date_registration='2018-04-15 14:15:20';

/* LOTS ------------------------------------------------------------------ */

INSERT INTO lots
SET title='2014 Rossignol District Snowboard',
    description='Описание 2014 Rossignol District Snowboard',
    image_path='img/lot-1.jpg',
    date_create='2018-09-15 14:15:20',
    price_begin=10999,
    price_step=500,
    category_id=1,
    user_id=1;

INSERT INTO lots
SET title='DC Ply Mens 2016/2017 Snowboard',
    description='Описание DC Ply Mens 2016/2017 Snowboard',
    image_path='img/lot-2.jpg',
    date_create='2018-07-20 14:15:20',
    price_begin=15999,
    price_step=300,
    category_id=1,
    user_id=2;

INSERT INTO lots
SET title='Крепления Union Contact Pro 2015 года размер L/XL',
    description='Описание Крепления Union Contact Pro 2015 года размер L/XL',
    image_path='img/lot-3.jpg',
    date_create='2020-03-10 14:01:00',
    price_begin=8000,
    price_step=100,
    category_id=2,
    user_id=3;

INSERT INTO lots
SET title='Ботинки для сноуборда DC Mutiny Charocal',
    description='Описание Ботинки для сноуборда DC Mutiny Charocal',
    image_path='img/lot-4.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=10999,
    price_step=20,
    category_id=3,
    user_id=1;

INSERT INTO lots
SET title='Куртка для сноуборда DC Mutiny Charocal',
    description='Описание Куртка для сноуборда DC Mutiny Charocal',
    image_path='img/lot-5.jpg',
    date_create='2015-07-15 14:15:20',
    price_begin=10999,
    price_step=40,
    category_id=4,
    user_id=2;

INSERT INTO lots
SET title='Маска Oakley Canopy',
    description='Описание Маска Oakley Canopy',
    image_path='img/lot-6.jpg',
    date_create='2018-07-15 14:15:20',
    price_begin=5500,
    price_step=510,
    category_id=5,
    user_id=3;

INSERT INTO lots
SET title='Ботинки для сноуборда DC Mutiny Charocal',
    description='Описание Ботинки для сноуборда DC Mutiny Charocal',
    image_path='img/lot-7.jpg',
    date_create='2018-09-15 3:15:20',
    price_begin=10999,
    price_step=1100,
    category_id=3,
    user_id=1;

INSERT INTO lots
SET title='Куртка для сноуборда DC Mutiny Charocal',
    description='Описание Куртка для сноуборда DC Mutiny Charocal',
    image_path='img/lot-8.jpg',
    date_create='2015-07-15 20:15:20',
    price_begin=10999,
    price_step=580,
    category_id=4,
    user_id=2;

INSERT INTO lots
SET title='Маска Oakley Canopy',
    description='Описание Маска Oakley Canopy',
    image_path='img/lot-9.jpg',
    date_create='2019-07-15 14:15:20',
    price_begin=5500,
    price_step=503,
    category_id=5,
    user_id=3;

/* RATES ------------------------------------------------------------------ */


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

/* FAVORITES -------------------------------------------------------------- */

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

/* UNIQUE INDEX -----------------------------------------------------------*/

CREATE UNIQUE INDEX r_id ON rates(id);
CREATE UNIQUE INDEX l_id ON lots(id);
CREATE UNIQUE INDEX u_id ON users(id);
CREATE UNIQUE INDEX c_id ON categories(id);
CREATE UNIQUE INDEX f_id ON favorite(id);

/*
  Вывод таблицы с категориями. Сортировка по возрастанию по имени
*/

SELECT * FROM categories ORDER BY name ASC;

/*
  Вывод таблицы с пользователями
*/

SELECT * FROM users;

/*
  Вывод таблицы с лотами. ОбЪединение с таблицей пользователей по полю ИД
*/

SELECT * FROM lots l JOIN users u
ON l.user_id = u.id;

/*
  Вывод таблицы со ставками
*/

SELECT user_id FROM rates;

/*
  Вывод таблицы с избранными лотами. Подсчет лайков каждого лота
*/

SELECT lot_id, COUNT(*) FROM favorite GROUP BY lot_id ORDER BY lot_id Desc;


/*
  Обновление данных
*/

UPDATE lots SET title='yyyyyyy' WHERE lots.id = 5;
SELECT category_id FROM lots WHERE lots.id = 3;
SELECT title FROM categories WHERE id=2;
SELECT * FROM rates WHERE lot_id = 1 AND rates.id <9 ORDER BY date_rate ASC;
