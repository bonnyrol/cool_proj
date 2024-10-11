-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Окт 11 2024 г., 21:14
-- Версия сервера: 8.0.29
-- Версия PHP: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ais_karachihin7661_lab_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `consumable_invoice`
--

CREATE TABLE `consumable_invoice` (
  `id` bigint NOT NULL,
  `ci_datetime` datetime NOT NULL,
  `buyer` varchar(255) NOT NULL COMMENT 'Покупатель'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Расходная накладная';

--
-- Дамп данных таблицы `consumable_invoice`
--

INSERT INTO `consumable_invoice` (`id`, `ci_datetime`, `buyer`) VALUES
(1, '2024-01-20 12:00:00', 'Покупатель 1'),
(2, '2024-01-21 13:30:00', 'Покупатель 2'),
(3, '2024-01-22 14:45:00', 'Покупатель 3'),
(4, '2024-01-23 12:30:00', 'Покупатель 4'),
(5, '2024-01-24 15:15:00', 'Покупатель 5');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Название товара',
  `category_id` bigint NOT NULL,
  `weight` float NOT NULL COMMENT 'Вес товара',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'https://steamuserimages-a.akamaihd.net/ugc/1833523007051086274/54BDCF1B48DF4C515D628FAB7CFC7048F9D729EE/?imw=512&amp;imh=386&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товары';

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `product_name`, `category_id`, `weight`, `img`) VALUES
(1, 'Яблоки', 1, 1, 'https://main-cdn.sbermegamarket.ru/big1/hlr-system/412/054/595/819/171/4/100033206141b0.jpg'),
(2, 'Кофта', 2, 0.5, 'https://static.street-beat.ru/upload/iblock/8d5/8d57236d91ff6a848ce93937101fb5e4.jpg'),
(3, 'Смартфон', 3, 0.2, 'https://cdn1.ozone.ru/s3/multimedia-1-u/6973669182.jpg'),
(4, 'Роман', 4, 0.3, 'https://cdn1.ozone.ru/multimedia/1010257708.jpg'),
(5, 'Моющее средство', 5, 1, 'https://avatars.mds.yandex.net/i?id=fa858cb290eb279064a30c897d1710936f55c911-7043984-images-thumbs&n=13'),
(6, 'Крем для лица', 6, 0.1, 'https://avatars.mds.yandex.net/get-mpic/5352299/img_id8498377837217166802.jpeg/orig'),
(7, 'Футбольный мяч', 7, 0.4, 'https://img.razrisyika.ru/kart/19/72628-dop-12.jpg'),
(8, 'Конструктор', 8, 0.8, 'https://bootlegbricks.ru/image/catalog/brick4/2017_09_21_07_20_02_94822500_45f37b07ecfa48e11e56de55fe79f9b1.jpg'),
(9, 'Диван', 9, 52, 'https://avatars.mds.yandex.net/i?id=4f706707e0a591f5bf21c5b5291d4cce_l-5362606-images-thumbs&n=13'),
(10, 'Автомобильные шины', 10, 10, 'https://avatars.mds.yandex.net/i?id=0d451547fdb683bf99c84639f07d8c31_l-5401700-images-thumbs&n=13'),
(11, 'Груши', 1, 1, 'https://avatars.mds.yandex.net/i?id=80896dfe9675dc42f2a2816788886a81_l-10814742-images-thumbs&n=13'),
(12, 'Платье', 2, 0.4, 'https://kartinki.pics/uploads/posts/2021-07/1625492141_46-kartinkin-com-p-kostyum-gornichnoi-anime-anime-krasivo-55.jpg'),
(13, 'Ноутбук', 3, 2.3, 'https://wallegro.ru/pimg/a/original/03091d/a243c8c14ae7b5016a0e5606d0a5/KINDERPLAY-LAPTOP-DLA-DZIECI-EDUKACYJNY-120-OPCJI'),
(14, 'Кулинарная книга', 4, 0.5, 'https://static2.my-shop.ru/products117/1161459/cover.jpg'),
(15, 'Порошок для стирки', 5, 1.5, 'https://ir.ozone.ru/s3/multimedia-0/c1000/6025034436.jpg'),
(16, 'Помада для губ', 6, 0.05, 'https://static.beloris.ru/content/catalog_image/67403/original/white_950_950572.png.jpg'),
(17, 'Ракетка для бадминтона', 7, 0.5, 'https://www.pandashop.md/i/products/49/492310.jpg'),
(18, 'Плюшевый медведь', 8, 0.24, 'https://steamuserimages-a.akamaihd.net/ugc/2044121906845946233/42CE6D749999143BB493E2CA1927F34E16C539A2/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
(19, 'Шкаф', 9, 27.5, 'https://dobrayamebel.ru/wp611/wp-content/uploads/SHkaf-trehstvorchatyj-raspashnoj-SHelli-27A-Napolnenie-768x768.jpg'),
(20, 'Незамерзайка', 10, 0.99, 'https://kurgan.express-shina.ru/images/model/Stekloomyivayushhaya_zhidkostj/OIL_RIGHT/-20C/-20C.jpg'),
(21, 'Апельсины', 1, 1.2, 'https://storum.ru/image/products/152775.png'),
(22, 'Джинсы', 2, 0.7, 'https://avatars.mds.yandex.net/get-mpic/5207288/img_id6214840514594604584.jpeg/orig'),
(23, 'Портативная колонка', 3, 1, 'https://www.allcables.ru/storage/goodsImages/228/228277/1000x1000-228277_3.jpg'),
(24, 'Поэзия', 4, 0.25, 'https://static10.labirint.ru/books/685717/cover.jpg'),
(25, 'Гель для душа', 5, 0.5, 'https://cdn1.ozone.ru/s3/multimedia-w/6402281996.jpg'),
(26, 'Тушь для ресниц', 6, 0.05, 'https://steamuserimages-a.akamaihd.net/ugc/1833523007051086274/54BDCF1B48DF4C515D628FAB7CFC7048F9D729EE/?imw=512&amp;imh=386&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
(27, 'Велосипед', 7, 15, 'https://steamuserimages-a.akamaihd.net/ugc/1833523007051086274/54BDCF1B48DF4C515D628FAB7CFC7048F9D729EE/?imw=512&amp;imh=386&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
(28, 'Кукла', 8, 0.3, 'https://steamuserimages-a.akamaihd.net/ugc/1833523007051086274/54BDCF1B48DF4C515D628FAB7CFC7048F9D729EE/?imw=512&amp;imh=386&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true'),
(29, 'Кресло', 9, 15, 'https://steamuserimages-a.akamaihd.net/ugc/1833523007051086274/54BDCF1B48DF4C515D628FAB7CFC7048F9D729EE/?imw=512&amp;imh=386&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true');

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint NOT NULL,
  `category_name` varchar(255) NOT NULL COMMENT 'Название категории'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Категории товаров';

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`) VALUES
(1, 'Продукты питания'),
(2, 'Одежда'),
(3, 'Электроника'),
(4, 'Книги'),
(5, 'Бытовая химия'),
(6, 'Косметика'),
(7, 'Спортивные товары'),
(8, 'Игрушки'),
(9, 'Мебель'),
(10, 'Автотовары'),
(11, 'Товары для дома');

-- --------------------------------------------------------

--
-- Структура таблицы `product_consumable_invoice`
--

CREATE TABLE `product_consumable_invoice` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `ci_id` bigint NOT NULL,
  `ci_quantity` int NOT NULL COMMENT 'Колчиество',
  `ci_price` int NOT NULL COMMENT 'Цена'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='товар расходной накладной';

--
-- Дамп данных таблицы `product_consumable_invoice`
--

INSERT INTO `product_consumable_invoice` (`id`, `product_id`, `ci_id`, `ci_quantity`, `ci_price`) VALUES
(1, 1, 1, 20, 30),
(2, 3, 1, 1, 15000),
(3, 4, 2, 2, 800),
(4, 6, 2, 5, 300),
(5, 7, 3, 3, 1000),
(6, 8, 4, 4, 1200),
(7, 9, 5, 1, 15000),
(8, 10, 5, 2, 3000);

-- --------------------------------------------------------

--
-- Структура таблицы `product_receipt_invoice`
--

CREATE TABLE `product_receipt_invoice` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `ri_id` bigint NOT NULL,
  `ri_quantity` int NOT NULL COMMENT 'Количество',
  `ri_price` int NOT NULL COMMENT 'Цена'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='товар приходной накладной';

--
-- Дамп данных таблицы `product_receipt_invoice`
--

INSERT INTO `product_receipt_invoice` (`id`, `product_id`, `ri_id`, `ri_quantity`, `ri_price`) VALUES
(1, 1, 1, 100, 30),
(2, 2, 1, 50, 500),
(3, 3, 2, 20, 15000),
(4, 4, 2, 15, 800),
(5, 5, 3, 25, 200),
(6, 6, 3, 30, 300),
(7, 7, 4, 10, 1000),
(8, 8, 4, 15, 1200),
(9, 9, 5, 5, 15000),
(10, 10, 5, 8, 3000),
(11, 1, 6, 200, 30),
(12, 3, 6, 12, 15000),
(13, 5, 6, 18, 200),
(14, 6, 6, 33, 300),
(15, 8, 6, 4, 1200),
(16, 10, 6, 2, 3000),
(17, 2, 4, 32, 500),
(18, 4, 2, 11, 800),
(19, 7, 1, 2, 1000),
(20, 2, 1, 53, 500),
(21, 3, 2, 2, 15000),
(22, 4, 2, 13, 800),
(23, 5, 3, 24, 200),
(24, 6, 3, 30, 300),
(25, 10, 1, 40, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `receipt_invoice`
--

CREATE TABLE `receipt_invoice` (
  `id` bigint NOT NULL,
  `ri_datetime` datetime NOT NULL,
  `provider` varchar(255) NOT NULL COMMENT 'Поставщик'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Приходная накладная';

--
-- Дамп данных таблицы `receipt_invoice`
--

INSERT INTO `receipt_invoice` (`id`, `ri_datetime`, `provider`) VALUES
(1, '2024-01-15 10:00:00', 'Поставщик 1'),
(2, '2024-01-16 11:30:00', 'Поставщик 2'),
(3, '2024-01-17 09:45:00', 'Поставщик 3'),
(4, '2024-01-18 14:00:00', 'Поставщик 4'),
(5, '2024-01-19 16:15:00', 'Поставщик 5'),
(6, '2024-10-09 06:57:26', 'Поставщик 6');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Артём', 'Карачихин', 'karachikhin_aa@edu.surgu.ru', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Марк', 'Плескач', 'idk@email.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'Нубмастер', 'Ашкьюдишка', 'newmail@email.ru', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'Босс', 'Качалки', 'boss@5ka.ru', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'Зинаида', 'Иванова', 'zina1917@sssr.ru', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'хз', 'хз', 'newnewnew@new.new', 'b59c67bf196a4758191e42f76670ceba');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `consumable_invoice`
--
ALTER TABLE `consumable_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_consumable_invoice`
--
ALTER TABLE `product_consumable_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`ci_id`),
  ADD KEY `ci_id` (`ci_id`);

--
-- Индексы таблицы `product_receipt_invoice`
--
ALTER TABLE `product_receipt_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`ri_id`),
  ADD KEY `ri_id` (`ri_id`);

--
-- Индексы таблицы `receipt_invoice`
--
ALTER TABLE `receipt_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `consumable_invoice`
--
ALTER TABLE `consumable_invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `product_consumable_invoice`
--
ALTER TABLE `product_consumable_invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `product_receipt_invoice`
--
ALTER TABLE `product_receipt_invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `receipt_invoice`
--
ALTER TABLE `receipt_invoice`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_consumable_invoice`
--
ALTER TABLE `product_consumable_invoice`
  ADD CONSTRAINT `product_consumable_invoice_ibfk_1` FOREIGN KEY (`ci_id`) REFERENCES `consumable_invoice` (`id`),
  ADD CONSTRAINT `product_consumable_invoice_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_receipt_invoice`
--
ALTER TABLE `product_receipt_invoice`
  ADD CONSTRAINT `product_receipt_invoice_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_receipt_invoice_ibfk_2` FOREIGN KEY (`ri_id`) REFERENCES `receipt_invoice` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
