-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Бер 21 2021 р., 17:41
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
-- Структура таблиці `production`
--

CREATE TABLE `production` (
  `id_prod` int(11) NOT NULL,
  `production` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `production`
--

INSERT INTO `production` (`id_prod`, `production`) VALUES
(0, 'Unknown'),
(1, 'BHV С.-Петербург'),
(2, 'Вильямс'),
(3, 'Питер'),
(4, 'МикроАрт'),
(5, 'DiaSoft'),
(6, 'ДМК'),
(7, 'Триумф'),
(8, 'Эком'),
(9, 'Русская редакция');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id_prod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
