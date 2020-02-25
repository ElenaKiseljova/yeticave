<?php
require_once('functions.php');
require_once('data.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $required = ['lot-name', 'category', 'message', 'lot-rate', 'lot-step', 'lot-date'];
    $errors = [];

    foreach ($required as $key) {
		if (empty($_POST[$key]) or $_POST[$key] == 'Выберите категорию') {
            $errors[$key] = 'form__item--invalid';
		}
	}

    if (isset($_FILES['photo2']['name'])) {
		$path = $_FILES['photo2']['name'];
		$res = move_uploaded_file($_FILES['photo2']['tmp_name'], 'img/' . $path);
        $image_lot = 'img/' . basename($_FILES['photo2']['name']);
        $uploaded = 'form__item--uploaded';
	} else {
		$errors['file'] = 'form__item--invalid';
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

$layout_content = include_template('layout', [
	'content' => $page_content,
	'categories' => $categories,
    'user_name' => $user_name,
    'user_avatar' => $user_avatar,
    'is_auth' => $is_auth,
	'title' => 'Добавление лота'
]);

print($layout_content);
?>
