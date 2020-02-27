<nav class="nav">
  <ul class="nav__list container">
      <?php $index = 0; ?>
      <?php while ($index < count($categories)): ?>
        <li class="nav__item">
          <a href="all-lots.php"><?= $categories[$index]['title'] ?></a>
        </li>
      <?php $index++; ?>
      <?php endwhile; ?>
  </ul>
</nav>
