<?php
$is_auth = (bool) rand(0, 1);

$user_name = 'Константин';
$user_avatar = 'img/user.jpg';

$categories = [
    [
        'title' => 'Доски и лыжи',
        'name' => 'boards'
    ],
    [
        'title' => 'Крепления',
        'name' => 'attachment'
    ],
    [
        'title' => 'Ботинки',
        'name' => 'boots'
    ],
    [
        'title' => 'Одежда',
        'name' => 'clothing'
    ],
    [
        'title' => 'Инструменты',
        'name' => 'tools'
    ],
    [
        'title' => 'Разное',
        'name' => 'other'
    ]
];

$lots = [
    [
        'categories' => 'Доски и лыжи',
        'title' => '2014 Rossignol District Snowboard',
        'price' => 10999,
        'img' => 'img/lot-1.jpg'
    ],
    [
        'categories' => 'Доски и лыжи',
        'title' => 'DC Ply Mens 2016/2017 Snowboard',
        'price' => 159999,
        'img' => 'img/lot-2.jpg'
    ],
    [
        'categories' => 'Крепления',
        'title' => 'Крепления Union Contact Pro 2015 года размер L/XL',
        'price' => 8000,
        'img' => 'img/lot-3.jpg'
    ],
    [
        'categories' => 'Ботинки',
        'title' => 'Ботинки для сноуборда DC Mutiny Charocal',
        'price' => 10999,
        'img' => 'img/lot-4.jpg'
    ],
    [
        'categories' => 'Одежда',
        'title' => 'Куртка для сноуборда DC Mutiny Charocal',
        'price' => 7500,
        'img' => 'img/lot-5.jpg'
    ],
    [
        'categories' => 'Разное',
        'title' => 'Маска Oakley Canopy',
        'price' => 5400,
        'img' => 'img/lot-6.jpg'
    ]
];

date_default_timezone_set("Europe/Moscow");

$time = strtotime('tomorrow') - time();
$hour = floor($time/3600);
$minute = floor(($time - $hour*3600)/60);
if ($hour < 10) {
    $zero = '0';
} else {
    $zero = '';
}

if ($minute < 10) {
    $zeroM = '0';
} else {
    $zeroM = '';
}

$curtime = $zero . $hour . ' : ' . $zeroM . $minute;

// ставки пользователей, которыми надо заполнить таблицу
$bets = [
    ['name' => 'Иван', 'price' => 11500, 'ts' => strtotime('-' . rand(1, 50) .' minute')],
    ['name' => 'Константин', 'price' => 11000, 'ts' => strtotime('-' . rand(1, 18) .' hour')],
    ['name' => 'Евгений', 'price' => 10500, 'ts' => strtotime('-' . rand(25, 50) .' hour')],
    ['name' => 'Семён', 'price' => 10000, 'ts' => strtotime('last week')]
];

?>
