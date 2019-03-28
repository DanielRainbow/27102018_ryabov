<?php
    session_start();

    $response = [
        'count' => 0
    ];

    // добавление товара в корзину, если есть productsId
    if( isset( $_GET['productId'] ) ){
        if( !isset( $_SESSION['basket'] ) ){
            $_SESSION['basket'] = [];
            $_SESSION['basket'][] = [
                'id'=>$_GET['productId'],
                'count'=> 1
            ];
        }
    }

    // Подсчет кол-ва товаров в корзине
    $count = 0;
    foreach( $_SESSION['basket'] as $basketItem ){
        $count += $basketItem['count'];
    }
    $response['count'] = $count;

    echo json_encode( $response );

    // if( isset( $_SESSION['count'] ) ){
    //     $_SESSION['count']++;
    // }else{
    //     $_SESSION['count'] = 1;
    // }

    // print_r( $_SESSION );
?>