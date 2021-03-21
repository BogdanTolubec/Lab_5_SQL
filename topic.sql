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
-- Структура таблиці `topic`
--

CREATE TABLE `topic` (
  `id_top` int(11) NOT NULL,
  `topic` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `topic`
--

INSERT INTO `topic` (`id_top`, `topic`) VALUES
(0, 'No topic'),
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id_top`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
