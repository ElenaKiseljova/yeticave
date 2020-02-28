<?php
require_once('functions.php');
require_once('data.php');

session_start();

$title = 'Главная';

$page_content = include_template('index', [
    'categories' => $categories,
    'lots' => $lots
]);

$layout_content = include_template('layout', [
	'content' => $page_content,
	'categories' => $categories,
    'user_name' => $_SESSION['user']['name'],
    'user_avatar' => $_SESSION['user']['avatar'],
	'title' => $title
]);

print($layout_content);
?>
