-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 28 2019 г., 15:10
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `27102018_3project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `sku` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sale` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `description`, `price`, `photo`, `active`, `sale`) VALUES
(1, 'Синяя куртка', 234235, 'Синяя куртка', 1999.9, '/images/catalog/1.jpg', 1, 0),
(2, 'Серая куртка', 93412, 'Серая куртка', 11900, '/images/catalog/2.jpg', 1, 0),
(3, 'Черная куртка', 88889, 'Черная куртка', 14900, '/images/catalog/4.jpg', 1, 0),
(4, 'Коричневая куртка', 11118, 'Коричневая куртка', 21800, '/images/catalog/5.jpg', 1, 0),
(5, 'Кеды', 119994, 'Красивые кеды', 7900, '/images/catalog/7.jpg', 1, 0.15),
(6, 'Джинсы', 32428, 'Джинсы', 3900, '/images/catalog/11.jpg', 1, 0),
(7, 'Зеленая рубашка', 234, 'Зеленая рубашка', 1499, '/images/catalog/3.png', 1, 0),
(8, 'Черная куртка', 934, 'Черная куртка', 16900, '/images/catalog/6.jpg', 1, 0),
(9, 'Черные кеды', 88, 'Черные кеды', 1900, '/images/catalog/8.jpg', 1, 0),
(10, 'Коричневые кеды', 11, 'Коричневые кеды', 2800, '/images/catalog/9.jpg', 1, 0),
(11, 'Серые кеды', 119, 'Серые кеды', 7900, '/images/catalog/10.jpg', 1, 0),
(12, 'Светлые джинсы', 324, 'Светлые джинсы', 3500, '/images/catalog/12.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size`, `quantity`) VALUES
(1, 1, 'XL', 10),
(2, 1, 'L', 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
