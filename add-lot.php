<?php
require_once('functions.php');
require_once('data.php');

session_start();

$title = 'Добавление лота';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $required = ['lot-name', 'category', 'message', 'lot-rate', 'lot-step', 'lot-date'];
    $errors = [];

    foreach ($required as $key) {
		if (empty($_POST[$key]) or $_POST[$key] == 'Выберите категорию') {
            $errors[$key] = 'form__item--invalid';
		}
	}

    if (isset($_FILES['photo2']['name'])) {
        $tmp_name = $_FILES['photo2']['tmp_name'];
		$path = basename($_FILES['photo2']['name']);

		$finfo = finfo_open(FILEINFO_MIME_TYPE);

        if ($tmp_name) {
            $file_type = finfo_file($finfo, $tmp_name);
        }

		if ($file_type !== "image/gif" and $file_type !== "image/png" and $file_type !== "image/jpeg") {
			$errors['file'] = 'form__item--invalid';
		} else {
            $image_lot = 'img/' . $path;

			move_uploaded_file($tmp_name, $image_lot);

			$uploaded = 'form__item--uploaded';
		}
	}

    if (count($errors)) {
        $errors['form'] = 'form--invalid';

        $page_content = include_template('add-lot', [
            'categories' => $categories,
            'errors' =>  $errors,
            'uploaded' => $uploaded,
            'image_lot' => $image_lot
        ]);
    } else {
        $lot = [
            'categories' => htmlspecialchars($_POST['category']),
            'title' => htmlspecialchars($_POST['lot-name']),
            'price' => htmlspecialchars($_POST['lot-rate']),
            'step' => htmlspecialchars($_POST['lot-step']),
            'curtime' => htmlspecialchars($_POST['lot-date']),
            'img' => $image_lot,
            'description' => htmlspecialchars($_POST['message']),
            'id' => 555
        ];

        $page_content = include_template('lot', [
            'categories' => $categories,
            'lot' => $lot
        ]);
    }
} else {
    $page_content = include_template('add-lot', [
        'categories' => $categories
    ]);
}

if ($_SESSION['is_auth']) {
    $layout_content = include_template('layout', [
    	'content' => $page_content,
    	'categories' => $categories,
        'user_name' => $_SESSION['user']['name'],
        'user_avatar' => $_SESSION['user']['avatar'],
    	'title' => $title
    ]);

    print($layout_content);
} else {
    http_response_code(403);
}
?>
