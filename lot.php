<?php
require_once('functions.php');
require_once('data.php');

session_start();

$lot = null;

if (isset($_GET['lot_id'])) {
	$lot_id = $_GET['lot_id'];

    /* cookie list of lots */

    $expire = strtotime("+30 days");
    $path = "/";

    if (isset($_COOKIE['history'])) {
        $lot_id_list = json_decode($_COOKIE['history']);

        if (!in_array($lot_id, $lot_id_list)) {
            $lot_id_list[] = $lot_id;

            setcookie('history', json_encode($lot_id_list), $expire, $path);
        }
    } else {
        $lot_id_list = [];
        $lot_id_list[] = $lot_id;

        setcookie('history', json_encode($lot_id_list), $expire, $path);
    }

    /* end cookie */

	foreach ($lots as $item) {
		if ($item['id'] == $lot_id) {
			$lot = $item;
			break;
		}
	}
}

if (!$lot) {
	http_response_code(404);
} else {
    $page_content = include_template('lot', [
        'is_auth' => $_SESSION['is_auth'],
        'categories' => $categories,
        'lot' => $lot
    ]);

    $layout_content = include_template('layout', [
    	'content' => $page_content,
    	'categories' => $categories,
        'user_name' => $_SESSION['user']['name'],
        'user_avatar' => $_SESSION['user']['avatar'],
        'is_auth' => $_SESSION['is_auth'],
    	'title' => $lot['title']
    ]);

    print($layout_content);
}
?>
