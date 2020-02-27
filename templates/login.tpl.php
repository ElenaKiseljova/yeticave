<main>
  <?php include("templates/nav.tpl.php"); ?>
  <form class="form container <?= $form ?>" action="login.php" method="post"> <!-- form--invalid -->
    <h2>Вход</h2>
    <div class="form__item <?= $errors['email'] ?>"> <!-- form__item--invalid -->
      <label for="email">E-mail*</label>
      <input id="email" type="text" name="email" placeholder="Введите e-mail">
      <span class="form__error">Введите e-mail</span>
    </div>
    <div class="form__item form__item--last <?= $errors['password'] ?>">
      <label for="password">Пароль*</label>
      <input id="password" type="text" name="password" placeholder="Введите пароль">
      <span class="form__error">Введите пароль</span>
    </div>
    <button type="submit" class="button">Войти</button>
  </form>
</main>
