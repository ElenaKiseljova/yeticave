<main class="container">
    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?php $index = 0; ?>
            <?php while ($index < count($categories)): ?>
            <li class="promo__item promo__item--<?= $categories[$index]['name'] ?>">
                <a class="promo__link" href="all-lots.php"><?= $categories[$index]['title'] ?></a>
            </li>
            <?php $index++; ?>
            <?php endwhile; ?>
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
            <?php foreach ($lots as $key => $item): ?>
            <li class="lots__item lot">
                <div class="lot__image">
                    <img src="<?= htmlspecialchars($item['img']); ?>" width="350" height="260" alt="<?= htmlspecialchars($item['title']); ?>">
                </div>
                <div class="lot__info">
                    <span class="lot__category"><?= htmlspecialchars($item['categories']); ?></span>
                    <h3 class="lot__title"><a class="text-link" href="lot.php?lot_id=<?= $item['id'] ?>"><?= htmlspecialchars($item['title']); ?></a></h3>
                    <div class="lot__state">
                        <div class="lot__rate">
                            <span class="lot__amount">Стартовая цена</span>
                            <span class="lot__cost"><?= rub($item['price']); ?></span>
                        </div>
                        <div class="lot__timer timer">
                            <?= end_date($item['curtime']) ?>
                        </div>
                    </div>
                </div>
            </li>

            <?php endforeach; ?>
        </ul>
    </section>
</main>
