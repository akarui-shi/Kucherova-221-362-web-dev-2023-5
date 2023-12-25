-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 26 2023 г., 02:20
-- Версия сервера: 5.7.27-30-log
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mmar1yaku2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `src`) VALUES
(1, '6.jpg', '6.jpg'),
(2, '7.jpg', '7.jpg'),
(3, '1.jpg', '1.jpg'),
(4, '2.png', '2.png'),
(5, '3.jpg', '3.jpg'),
(6, '4.jpg', '4.jpg'),
(7, '5.png', '5.png');

-- --------------------------------------------------------

--
-- Структура таблицы `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `term` varchar(100) NOT NULL,
  `definition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `terms`
--

INSERT INTO `terms` (`id`, `term`, `definition`) VALUES
(1, 'AI', 'Моделирование процессов человеческого интеллекта с помощью машин, особенно компьютерных систем.'),
(2, 'API', 'Набор правил и протоколов, которые позволяют разным программным приложениям взаимодействовать друг с другом.'),
(3, 'HTML', 'Стандартный язык разметки для создания веб-страниц и веб-приложений.'),
(4, 'CSS', 'Язык таблиц стилей, используемый для описания внешнего вида документа, написанного на HTML или XML.'),
(5, 'JavaScript', 'Высокоуровневый язык программирования, который преимущественно используется для добавления интерактивности и динамических возможностей на веб-сайтах.'),
(6, 'Database', 'Организованная коллекция структурированных данных, обычно хранящихся и получаемых электронным путем.'),
(7, 'PHP', 'Язык сценариев, работающий на стороне сервера и предназначенный для веб-разработки, но также используемый как универсальный язык программирования.'),
(8, 'SQL', 'Язык специального назначения, используемый для управления и манипулирования реляционными базами данных.'),
(9, 'Responsive Design', 'Подход к веб-дизайну, который обеспечивает хорошее отображение веб-страниц на различных устройствах и размерах окон или экранов.'),
(10, 'Version Control', 'Отслеживает изменения в файле или наборе файлов со временем, позволяя отслеживать и контролировать версии вашего кода.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
