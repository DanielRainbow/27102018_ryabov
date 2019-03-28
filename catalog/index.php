<?php
    $cssFiles = [
        '/css/catalog.css'
    ];
    include($_SERVER['DOCUMENT_ROOT'].'/parts/header.php');
?>
<div class="wrapper">
    <main class="main">
        <h1 class="main-header">Мужчинам</h1>
        <div class="catalog">
            
        </div>
        <div class="pagination"></div>
    </main>
    <footer class="footer">
        <div class="footer__column">
            <h3 class="footer__title">Коллекции</h3>
            <a class="footer__item" href="#">Женщинам</a>
            <a class="footer__item" href="#">Мужчинам</a>
            <a class="footer__item" href="#">Детям</a>
            <a class="footer__item" href="#">Новинки</a>
        </div>
        <div class="footer__column">
            <h3 class="footer__title">Магазин</h3>
            <a class="footer__item" href="#">О нас</a>
            <a class="footer__item" href="#">Доставка</a>
            <a class="footer__item" href="#">Работай с нами</a>
            <a class="footer__item" href="#">Контакты</a>
        </div>
        <div class="footer__column">
            <h3 class="footer__title">Мы в социальных сетях</h3>
            <p class="footer__item">Сайт разработан в inordic.ru</p>
            <p class="footer__item">2018 &copy; все права защищены</p>
            <div class="social">
                <a class="social__icon twitter" href="#"></a>
                <a class="social__icon facebook" href="#"></a>
                <a class="social__icon instagram" href="#"></a>
            </div>
        </div>
        </div>
    </footer>
</div>
<script src="/js/catalog.js"></script>
<?php 
    include($_SERVER['DOCUMENT_ROOT'].'/parts/footer.php');
?> 
