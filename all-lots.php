<?php
require_once('functions.php');
require_once('data.php');

if (isset($_COOKIE['history'])) {
    $lot_id_list = json_decode($_COOKIE['history']);
} else {
    $lot_id_list = [];
}

foreach ($lots as $item) {
    for ($i=0; $i < count($lot_id_list); $i++) {
        if ($item['id'] == $lot_id_list[$i]) {
            $lot_list[$i] = $item;
        }
    }
}

$page_content = include_template('all-lots', [
    'categories' => $categories,
    'lot_list' => $lot_list
]);

$layout_content = include_template('layout', [
	'content' => $page_content,
	'categories' => $categories,
    'user_name' => $user_name,
    'user_avatar' => $user_avatar,
    'is_auth' => $is_auth,
	'title' => 'История просмотров'
]);

print($layout_content);
 ?>
