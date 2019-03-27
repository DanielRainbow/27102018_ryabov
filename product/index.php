<?php
    $cssFiles = [];
    include($_SERVER['DOCUMENT_ROOT'].'/parts/header.php');
?>

<button class='add-to-basket' data-product-id='<?=$template['product']['id']?>'>Добавить в корзину</button>

<script src="/js/product.js"></script>
<?php 
    include($_SERVER['DOCUMENT_ROOT'].'/parts/footer.php');
?> 