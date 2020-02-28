<?php
require_once('functions.php');
require_once('data.php');

session_start();

$title = 'Вход на сайт';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $required = ['email', 'password'];
    $errors = [];

    foreach ($required as $key) {
		if (empty($_POST[$key])) {
            $errors[$key] = 'form__item--invalid';
		}
	}

    $user = searchUserByEmail($_POST['email'], $users);

    if (!count($errors) and $user) {
        if (password_verify($_POST['password'], $user['password'])) {
			$_SESSION['user'] = $user;
		} else {
			$errors['password'] = 'form__item--invalid';

            $errors['form'] = 'form--invalid';

            $page_content = include_template('login', [
                'categories' => $categories,
                'errors' =>  $errors
            ]);
		}
    } else {
        $errors['form'] = 'form--invalid';

        $errors['email'] = 'form__item--invalid';
    }

    if (count($errors)) {
        $errors['form'] = 'form--invalid';

        $page_content = include_template('login', [
            'categories' => $categories,
            'errors' =>  $errors
        ]);
    } else {
        $_SESSION['is_auth'] = true;

        header("Location: /index.php");
        exit();
    }
} else {
    $page_content = include_template('login', [
        'categories' => $categories
    ]);
}

$layout_content = include_template('layout', [
    'content' => $page_content,
    'categories' => $categories,
    'user_name' => $_SESSION['user']['name'],
    'user_avatar' => $_SESSION['user']['avatar'],
    'title' => $title
]);

print($layout_content);
?>
