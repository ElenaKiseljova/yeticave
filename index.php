<?php
require_once('functions.php');
require_once('data.php');

$page_content = include_template('index', [
    'categories' => $categories,
    'lots' => $lots,
    'curtime' => $curtime
]);

$layout_content = include_template('layout', [
	'content' => $page_content,
	'categories' => $categories,
    'user_name' => $user_name,
    'user_avatar' => $user_avatar,
    'is_auth' => $is_auth,
	'title' => 'Главная'
]);

print($layout_content);
?>
