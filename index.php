<?php
require_once('functions.php');
require_once('data.php');

$page_content = include_template('index', [
    'categories' => $categories,
    'lots' => $lots
]);

$layout_content = include_template('layout', [
	'content' => $page_content,
	'categories' => $categories,
	'title' => 'Главная'
]);

print($layout_content);
?>
