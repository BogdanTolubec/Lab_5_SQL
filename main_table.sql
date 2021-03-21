-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Бер 21 2021 р., 17:37
-- Версія сервера: 10.4.17-MariaDB
-- Версія PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `lab_5`
--

-- --------------------------------------------------------

--
-- Структура таблиці `main_table`
--

CREATE TABLE `main_table` (
  `id` int(11) NOT NULL,
  `codes` int(11) DEFAULT NULL,
  `new` varchar(3) DEFAULT 'Yes',
  `title` varchar(256) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `id_production` int(11) DEFAULT 0,
  `pages` int(11) DEFAULT NULL,
  `format` varchar(15) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `counts` int(11) DEFAULT NULL,
  `id_topic` int(11) DEFAULT 0,
  `id_category` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `main_table`
--

INSERT INTO `main_table` (`id`, `codes`, `new`, `title`, `price`, `id_production`, `pages`, `format`, `dates`, `counts`, `id_topic`, `id_category`) VALUES
(2, 5110, 'No', 'Аппаратные _средства мультимедия. Видеосистема РС', 16, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 1),
(8, 4985, 'No', 'Освой самостоятельно модернизацию и ремонт ПК за 24 часа, 2-е изд.', 19, 2, 288, '70х100/16', '2000-07-07', 5000, 1, 1),
(9, 5141, 'No', 'Структуры данных и алгоритмы.', 38, 2, 384, '70х100/16', '2000-09-29', 5000, 1, 1),
(20, 5127, 'Yes', 'Автоматизация инженерно- графических работ', 12, 3, 256, '70х100/16', '2000-06-15', 5000, 1, 1),
(31, 5110, 'No', 'Аппаратные средства мультимедия. Видеосистема РС', 16, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 2),
(46, 5199, 'No', 'Железо IBM 2001.', 30, 4, 368, '70х100/16', '2000-02-12', 5000, 1, 2),
(50, 3851, 'Yes', 'Защита информации и безопасность компьютерных систем', 26, 5, 480, '84х108/16', '1999-02-04', 5000, 1, 3),
(58, 3932, 'No', 'Как превратить персональный компьютер в измерительный комплекс', 8, 6, 144, '60х88/16', '1999-06-09', 5000, 1, 0),
(59, 4713, 'No', 'Plug- ins. Встраиваемые приложения для музыкальных программ', 11, 6, 144, '70х100/16', '2000-02-22', 5000, 1, 0),
(175, 5217, 'No', 'Windows МЕ. Новейшие версии программ', 17, 7, 320, '70х100/16', '2000-08-25', 5000, 2, 4),
(176, 4829, 'No', 'Windows 2000 Professional шаг за шагом с СD', 27, 8, 320, '70х100/16', '2000-04-28', 5000, 2, 4),
(188, 5170, 'No', 'Linux Русские версии', 24, 6, 346, '70х100/16', '2000-09-29', 5000, 2, 5),
(191, 860, 'No', 'Операционная система UNIX', 4, 1, 395, '84х10016', '1997-05-05', 5000, 2, 6),
(203, 44, 'No', 'Ответы на актуальные вопросы по OS/2 Warp', 5, 5, 352, '60х84/16', '1996-03-20', 5000, 2, 0),
(206, 5176, 'No', 'Windows Ме. Спутник пользователя', 13, 9, 306, '', '2000-10-10', 5000, 2, 0),
(209, 5462, 'No', 'Язык программирования С++. Лекции и упражнения', 29, 5, 656, '84х108/16', '2000-12-12', 5000, 3, 7),
(210, 4982, 'No', 'Язык программирования С. Лекции и упражнения', 29, 5, 432, '84х108/16', '2000-12-07', 5000, 3, 7),
(220, 4687, 'No', 'Эффективное использование C++ .50 рекомендаций по улучшению ваших программ и проектов', 18, 6, 240, '70х100/16', '2000-02-03', 5000, 3, 7);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `main_table`
--
ALTER TABLE `main_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_production` (`id_production`),
  ADD KEY `id_topic` (`id_topic`),
  ADD KEY `id_category` (`id_category`);

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `main_table`
--
ALTER TABLE `main_table`
  ADD CONSTRAINT `main_table_ibfk_1` FOREIGN KEY (`id_production`) REFERENCES `production` (`id_prod`),
  ADD CONSTRAINT `main_table_ibfk_2` FOREIGN KEY (`id_topic`) REFERENCES `topic` (`id_top`),
  ADD CONSTRAINT `main_table_ibfk_3` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
