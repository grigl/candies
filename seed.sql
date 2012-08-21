-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 21 2012 г., 13:36
-- Версия сервера: 5.1.63
-- Версия PHP: 5.3.3-7+squeeze13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `candies`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `secondname` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Дамп данных таблицы `addresses`
--

INSERT INTO `addresses` (`id`, `firstname`, `lastname`, `address1`, `address2`, `city`, `state_id`, `zipcode`, `country_id`, `phone`, `created_at`, `updated_at`, `state_name`, `alternative_phone`, `secondname`, `user_id`, `deleted_at`, `default`) VALUES
(1, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-07-25 09:17:11', '2012-08-10 00:01:21', NULL, NULL, 'sdv', 1, NULL, 1),
(2, 'sdv', 'sdv', 'sdv', '', 'sdv', 31, 'sdv', 168, 'sdv', '2012-07-25 15:05:31', '2012-07-25 15:05:31', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'sdv', 'sdv', 'sdv', '', 'sdv', 31, 'sdv', 168, 'sdv', '2012-07-25 15:22:09', '2012-07-25 15:22:09', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'sdv', 'sdv', 'sdv', '', 'sdv', 31, 'sdv', 168, 'sdv', '2012-07-25 15:27:21', '2012-07-25 15:27:21', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'we', 'wer', 'wer', 'wer', 'wer', 11, 'wer', 168, '123', '2012-07-25 16:45:48', '2012-07-25 16:45:48', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'spree', 'spree', 'xcvb', 'xcvb', 'xcvb', 18, 'cxvb', 168, '666999', '2012-07-25 16:45:48', '2012-08-10 00:01:07', NULL, NULL, NULL, 1, NULL, NULL),
(8, 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 2, 'sdf', 168, '123', '2012-07-26 22:23:08', '2012-07-26 22:23:08', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 10, '123', 168, '123', '2012-07-26 22:23:08', '2012-07-26 22:23:08', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 14, 'xcv', 168, 'xcv', '2012-07-27 01:00:53', '2012-07-27 01:00:53', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 9, 'xcv', 168, 'xcv', '2012-07-27 01:00:53', '2012-07-27 01:00:53', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'fg', 'sdfg', 'sdfg', NULL, 'sfdg', 1, 'sdfg', 168, 'sfg', '2012-07-27 01:03:53', '2012-07-27 01:03:53', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'sdfg', 'sdfg', 'sdfg', NULL, 'sfdg', 1, 'sdfg', 168, 'sdfg', '2012-07-27 01:03:53', '2012-07-27 01:03:53', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'gdfgb', 'fgb', 'fgb', NULL, 'fgb', 1, 'dfgb', 168, 'dfgb', '2012-07-27 01:15:31', '2012-07-27 01:15:31', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'fgb', 'dfgb', 'fdgb', NULL, 'fgb', 1, 'dfgb', 168, 'gb', '2012-07-27 01:15:31', '2012-07-27 01:15:31', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'gdfgb', 'fgb', 'fgb', NULL, 'fgb', 1, 'dfgb', 168, 'dfgb', '2012-07-27 01:24:47', '2012-07-27 01:24:47', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'fgb', 'dfgb', 'fdgb', NULL, 'fgb', 1, 'dfgb', 168, 'gb', '2012-07-27 01:24:47', '2012-07-27 01:24:47', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:25:48', '2012-07-27 09:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:25:48', '2012-07-27 09:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:27:16', '2012-07-27 09:27:16', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:27:16', '2012-07-27 09:27:16', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:19', '2012-07-27 09:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:19', '2012-07-27 09:28:19', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:31', '2012-07-27 09:28:31', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:31', '2012-07-27 09:28:31', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:44', '2012-07-27 09:28:44', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:28:44', '2012-07-27 09:28:44', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:29:34', '2012-07-27 09:29:34', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'xcv', 'xcv', 'xcv', NULL, 'xcv', 1, 'xcv', 168, 'xcv', '2012-07-27 09:29:34', '2012-07-27 09:29:34', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'v', 'fb', 'dfbdf', NULL, 'dfbdf', 1, 'bd', 168, 'dfb', '2012-07-27 09:37:28', '2012-07-27 09:37:28', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'bdfb', 'dfbdf', 'dfbdf', NULL, 'dbf', 1, 'bdfb', 168, 'dfb', '2012-07-27 09:37:28', '2012-07-27 09:37:28', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'v', 'fb', 'dfbdf', NULL, 'dfbdf', 1, 'bd', 168, 'dfb', '2012-07-27 09:41:07', '2012-07-27 09:41:07', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'bdfb', 'dfbdf', 'dfbdf', NULL, 'dbf', 1, 'bdfb', 168, 'dfb', '2012-07-27 09:41:07', '2012-07-27 09:41:07', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'bfgb', 'fgb', 'fgb', NULL, 'fgb', 1, 'fgb', 168, 'fgb', '2012-07-27 09:57:52', '2012-07-27 09:57:52', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'dfgb', 'fgb', 'fgb', NULL, 'dfgb', 1, 'fgb', 168, 'fdgb', '2012-07-27 09:57:52', '2012-07-27 09:57:52', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'bfgb', 'fgb', 'fgb', NULL, 'fgb', 1, 'fgb', 168, 'fgb', '2012-07-27 09:59:56', '2012-07-27 09:59:56', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'dfgb', 'fgb', 'fgb', NULL, 'dfgb', 1, 'fgb', 168, 'fdgb', '2012-07-27 09:59:56', '2012-07-27 09:59:56', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'asc', 'asc', 'asc', NULL, 'asc', 1, 'asc', 168, 'asc', '2012-07-27 10:54:17', '2012-07-27 10:54:17', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'asc', 'asc', 'asc', NULL, 'asc', 1, 'asc', 168, 'asc', '2012-07-27 10:54:17', '2012-07-27 10:54:17', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'fvd', 'dfv', 'dfv', NULL, 'dfv', 1, 'dfv', 168, 'dfv', '2012-07-27 10:59:02', '2012-07-27 10:59:02', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'dfv', 'dfv', 'dfv', NULL, 'dfv', 1, 'dfv', 168, 'dfv', '2012-07-27 10:59:02', '2012-07-27 10:59:02', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'dfv', 'dfg', 'sdfg', NULL, 'sdfg', 1, 'dfg', 168, 'sdfg', '2012-07-27 11:38:06', '2012-07-27 11:38:06', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'sdfg', 'sdfg', 'sdfg', NULL, 'sfdg', 1, 'dfg', 168, 'sfdg', '2012-07-27 11:38:06', '2012-07-27 11:38:06', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'bcv', 'cvb', 'vbv', NULL, 'bcv', 1, 'bc', 168, 'cvbc', '2012-07-27 11:45:18', '2012-07-27 11:45:18', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'cvb', 'cvb', 'cvb', NULL, 'cvb', 1, 'cvb', 168, 'cvb', '2012-07-27 11:45:18', '2012-07-27 11:45:18', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'sdv', 'sd', 'sdv', NULL, 'sdv', 1, 'sdv', 168, 'sdv', '2012-07-27 11:53:03', '2012-07-27 11:53:03', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'sdv', 'sdv', 'sdv', NULL, 'sdv', 1, 'sdv', 168, 'sdv', '2012-07-27 11:53:03', '2012-07-27 11:53:03', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'sdfg', 'sdfg', 'sfdg', NULL, 'sfdg', 1, 'dfsg', 168, 'sfdg', '2012-07-27 12:11:44', '2012-07-27 12:11:44', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'sdfg', 'sfg', 'sdfg', NULL, 'sfdg', 1, 'sfg', 168, 'sfg', '2012-07-27 12:11:44', '2012-07-27 12:11:44', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'sdv', 'sdv', 'sdv', NULL, 'sdv', 1, 'sdv', 168, 'sdv', '2012-07-27 12:13:24', '2012-07-27 12:13:24', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'sdv', 'sdv', 'sdv', NULL, 'sdv', 1, 'dsv', 168, 'sdv', '2012-07-27 12:13:24', '2012-07-27 12:13:24', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'zcas', 'as', 'asc', NULL, 'asc', 1, 'asc', 168, 'cas', '2012-07-27 12:43:36', '2012-07-27 12:43:36', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'asc', 'asc', 'asc', NULL, 'asc', 1, 'asc', 168, 'asc', '2012-07-27 12:43:36', '2012-07-27 12:43:36', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'cvb', 'cxv', 'vb', NULL, 'xcvb', 1, 'xcvb', 168, 'cxvb', '2012-07-27 12:49:47', '2012-07-27 12:49:47', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'xcvb', 'cvb', 'cvb', NULL, 'xvcb', 1, 'xcvb', 168, 'cvb', '2012-07-27 12:49:47', '2012-07-27 12:49:47', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'dsf', 'dfsd', 'dsfb', NULL, 'dfb', 1, 'sdfb', 168, 'fbsdf', '2012-07-27 13:01:42', '2012-07-27 13:01:42', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'sdfb', 'fb', 'dsfb', NULL, 'sdfb', 1, 'sdfb', 168, 'sdfb', '2012-07-27 13:01:42', '2012-07-27 13:01:42', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-06 20:10:43', '2012-08-06 20:10:43', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-06 20:10:43', '2012-08-06 20:10:43', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'ert', 'ert', 'ert', NULL, 'ert', 1, '123', 168, 'ert', '2012-08-06 20:11:24', '2012-08-06 20:11:24', NULL, NULL, NULL, 48, NULL, NULL),
(63, 'Роман', 'Седых', 'улица Декабристов 24', NULL, 'Санкт-Петербург', 78, '123456', 168, '+79876543322', '2012-08-06 20:30:40', '2012-08-06 20:30:40', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Роман', 'Седых', 'ул. Декабристов 24', NULL, 'Санкт-Петербург', 78, '123456', 168, '+79876543322', '2012-08-06 20:30:40', '2012-08-06 20:30:40', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Роман', 'Седых', 'ул. Декабристов 24', NULL, 'Санкт-Петербург', 78, '123456', 168, '+7987654321', '2012-08-06 20:43:45', '2012-08-06 20:43:45', NULL, NULL, NULL, 49, NULL, NULL),
(66, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-06 21:29:54', '2012-08-06 21:29:54', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-06 21:29:54', '2012-08-06 21:29:54', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'rty', 'ety', 'dfgh', NULL, 'fgh', 58, 'dfgh', 168, 'rtye', '2012-08-07 13:12:39', '2012-08-07 13:12:39', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'e', 'yyyyy', 'ghdfgh', NULL, 'dghdfghdfghdfgh', 47, 'dfghdfghdfgh', 168, 'cvbncvbnc', '2012-08-07 13:12:39', '2012-08-07 13:12:39', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'e', 'yyyyy', 'ghdfgh', NULL, 'dghdfghdfghdfgh', 47, 'dfghdfghdfgh', 168, 'cvbncvbnc', '2012-08-07 13:20:09', '2012-08-07 13:20:09', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'e', 'yyyyy', 'ghdfgh', NULL, 'dghdfghdfghdfgh', 47, 'dfghdfghdfgh', 168, 'cvbncvbnc', '2012-08-07 13:20:09', '2012-08-07 13:20:09', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'sdv', 'sdv', 'sdv', NULL, 'dv', 1, 'v', 168, 'sdv', '2012-08-08 08:59:22', '2012-08-08 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'v', 'v', 'v', NULL, 'v', 1, 'v', 168, 'v', '2012-08-08 08:59:22', '2012-08-08 08:59:22', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-08 09:19:39', '2012-08-08 09:19:39', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '123123', '2012-08-08 09:19:39', '2012-08-08 09:19:39', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-09 08:23:27', '2012-08-09 08:23:27', NULL, NULL, NULL, 55, NULL, 1),
(80, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-09 08:27:11', '2012-08-09 08:27:11', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Хаунд', 'Грэй', 'Зеленобурая улица', NULL, 'Екатеринбург', 1, '620137', 168, '89222085920', '2012-08-09 16:07:50', '2012-08-09 16:07:50', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '666', '2012-08-09 16:24:36', '2012-08-09 16:24:36', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'xcvb', 'xcvb', 'xcvb', NULL, 'xcvb', 18, 'cxvb', 168, '666', '2012-08-09 16:24:36', '2012-08-09 16:24:36', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Роман', 'Седых', 'Ололо', NULL, 'Ололо', 1, '234', 168, '1234567', '2012-08-09 21:40:00', '2012-08-09 21:40:00', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 00:02:09', '2012-08-10 00:02:09', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 00:02:09', '2012-08-10 00:02:09', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Gray', 'Hound', '123', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-10 08:09:39', '2012-08-10 08:09:39', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 10:08:17', '2012-08-10 10:08:17', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 10:08:17', '2012-08-10 10:08:17', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:05:08', '2012-08-10 12:05:08', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:05:08', '2012-08-10 12:05:08', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'nd', 'gndfgn', 'ndfgn', NULL, 'fgnfg', 1, 'nf', 168, 'dfgndfg', '2012-08-10 12:20:19', '2012-08-10 12:20:19', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:20:25', '2012-08-10 12:20:25', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:20:25', '2012-08-10 12:20:25', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:27:11', '2012-08-10 12:27:11', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:27:11', '2012-08-10 12:27:11', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:35:34', '2012-08-10 12:35:34', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:35:34', '2012-08-10 12:35:34', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:40:26', '2012-08-10 12:40:26', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:40:26', '2012-08-10 12:40:26', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:43:22', '2012-08-10 12:43:22', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:43:22', '2012-08-10 12:43:22', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:46:15', '2012-08-10 12:46:15', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:46:15', '2012-08-10 12:46:15', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:48:33', '2012-08-10 12:48:33', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:48:33', '2012-08-10 12:48:33', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:57:12', '2012-08-10 12:57:12', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 12:57:12', '2012-08-10 12:57:12', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:12:09', '2012-08-10 13:12:09', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:12:09', '2012-08-10 13:12:09', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:25:15', '2012-08-10 13:25:15', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:25:15', '2012-08-10 13:25:15', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:28:47', '2012-08-10 13:28:47', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 13:28:47', '2012-08-10 13:28:47', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Gray', 'Hound', 'Зеленопупая улица', NULL, 'Екатеринбург', 1, '620137', 168, '89222085920', '2012-08-10 13:39:01', '2012-08-10 13:39:01', NULL, NULL, NULL, 68, NULL, 1),
(118, 'Роман', 'Седых', 'Ололо', NULL, 'Санкт-Петербург', 1, '123456', 168, '1231231', '2012-08-10 13:44:14', '2012-08-10 13:44:14', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'fx', 'xcvb', 'xcvb', NULL, 'cxvb', 1, 'cxvb', 168, 'xcvb', '2012-08-10 13:50:30', '2012-08-10 13:50:30', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'Gray', 'Hound', '12312312', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-10 13:50:37', '2012-08-10 13:50:37', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Gray', 'Hound', '123', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-10 14:01:37', '2012-08-10 14:01:37', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 14:04:16', '2012-08-10 14:04:16', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 14:04:16', '2012-08-10 14:04:16', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 14:28:40', '2012-08-10 14:28:40', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-10 14:28:40', '2012-08-10 14:28:40', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Роман', 'Седых', 'Ололошкино', NULL, 'Санкт-Петербург', 1, '123456', 168, '798776543322', '2012-08-12 15:42:32', '2012-08-12 15:42:32', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'Роман', 'Седых', 'Ололо', NULL, 'Санкт-Петербург', 1, '123123', 168, '7123123123', '2012-08-12 15:43:52', '2012-08-12 15:43:52', NULL, NULL, NULL, 74, NULL, 1),
(130, 'Андрей', 'Карандин', 'ул. Ленина 15', NULL, 'Майкоп', 1, '123345', 168, '+7123456789', '2012-08-13 15:58:45', '2012-08-13 15:58:45', NULL, NULL, NULL, 78, NULL, 1),
(131, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-13 16:22:59', '2012-08-13 16:22:59', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-13 16:22:59', '2012-08-13 16:22:59', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-13 16:23:31', '2012-08-13 16:23:31', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-13 16:23:31', '2012-08-13 16:23:31', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Gray', 'Hound', '12312312312312312', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-13 16:30:10', '2012-08-13 16:30:10', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Gray', 'Hound', '12312312', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-13 16:41:19', '2012-08-13 16:41:19', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Gray', 'Hound', '123123', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-13 16:42:15', '2012-08-13 16:42:15', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Gray', 'Hound', '12312312312312213', NULL, 'Ekaterinburg', 1, '620000', 168, '79222085920', '2012-08-13 16:51:46', '2012-08-13 16:51:46', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'sfg', 'sdfg', 'sfg', NULL, 'sfg', 1, 'sfg', 168, 'sfg', '2012-08-13 21:13:05', '2012-08-13 21:13:05', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'g', 'g', 'sdf', NULL, 'ggggg', 1, 'ggg', 168, 'g', '2012-08-13 21:13:05', '2012-08-13 21:13:05', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'asdf', 'sdf', 'sdf', NULL, 'sdf', 1, 'sdf', 168, 'sdf', '2012-08-16 09:49:29', '2012-08-16 09:49:29', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'f', 'f', 'f', NULL, 'f', 1, 'f', 168, 'f', '2012-08-16 09:49:29', '2012-08-16 09:49:29', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'Грэй', 'Хаунд', 'Адресс', NULL, 'Екатеринбург', 66, '620000', 168, '79222085920', '2012-08-16 10:35:54', '2012-08-16 10:35:54', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'sdf', 'gsf', 'sdfg', NULL, 'sdfg', 1, 'sdfg', 168, 'sfg', '2012-08-16 10:46:27', '2012-08-16 10:46:27', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'asda', 'asdasd', 'asdf', NULL, 'asdf', 1, 'asdf', 168, '1341231234', '2012-08-16 10:47:18', '2012-08-16 10:47:18', NULL, NULL, NULL, 95, NULL, 1),
(148, 'asda', 'asdasd', 'asdf', NULL, 'asdf', 1, 'asdf', 168, '1341231234', '2012-08-16 10:47:45', '2012-08-16 10:47:45', NULL, NULL, NULL, 96, NULL, 1),
(149, 'asda', 'asdasd', 'asdf', NULL, 'asdf', 1, 'asdf', 168, '1341231234', '2012-08-16 10:48:02', '2012-08-16 10:48:02', NULL, NULL, NULL, 97, NULL, 1),
(150, 'qwe', 'qwe', 'qweq', NULL, '5', 1, '5', 168, 'q1231', '2012-08-20 11:50:07', '2012-08-20 11:50:07', NULL, NULL, NULL, 105, NULL, 1),
(151, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-20 12:11:56', '2012-08-20 12:11:56', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-20 12:11:56', '2012-08-20 12:11:56', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'qwe', 'qwe', 'qwe', NULL, 'qwe', 1, 'qwe', 168, 'qw', '2012-08-20 12:12:32', '2012-08-20 12:12:32', NULL, NULL, NULL, 107, NULL, 1),
(154, 'Грэй', 'Хаунд', '123123', NULL, 'Екатеринбург', 66, '620000', 168, '79222085920', '2012-08-20 12:14:22', '2012-08-20 12:14:22', NULL, NULL, NULL, 109, NULL, 1),
(155, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:14:22', '2012-08-20 12:14:22', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:16:56', '2012-08-20 12:16:56', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:16:56', '2012-08-20 12:16:56', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'я', 'я', 'я', NULL, 'я', 1, 'я', 168, 'я', '2012-08-20 12:17:52', '2012-08-20 12:17:52', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:19:58', '2012-08-20 12:19:58', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:19:58', '2012-08-20 12:19:58', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:28:48', '2012-08-20 12:28:48', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:28:48', '2012-08-20 12:28:48', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:29:49', '2012-08-20 12:29:49', NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:29:49', '2012-08-20 12:29:49', NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:43:47', '2012-08-20 12:43:47', NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:43:47', '2012-08-20 12:43:47', NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'я', 'я', 'zz', NULL, 'zzz', 1, 'zzz', 168, 'z', '2012-08-20 12:45:53', '2012-08-20 12:45:53', NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'я', 'я', 'zz', NULL, 'zzz', 1, 'zzz', 168, 'z', '2012-08-20 12:50:53', '2012-08-20 12:50:53', NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'я', 'я', 'zz', NULL, 'zzz', 1, 'zzz', 168, 'z', '2012-08-20 12:50:53', '2012-08-20 12:50:53', NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:53:42', '2012-08-20 12:53:42', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:53:42', '2012-08-20 12:53:42', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:53:48', '2012-08-20 12:53:48', NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 12:53:48', '2012-08-20 12:53:48', NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 13:18:52', '2012-08-20 13:18:52', NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 13:18:52', '2012-08-20 13:18:52', NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 13:25:05', '2012-08-20 13:25:05', NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'Дмитрий', 'Череватенко', 'ул. Красных Молдавских Партизан, д. 13', NULL, 'Таганрог', 61, '347942', 168, '+79185560091', '2012-08-20 13:25:05', '2012-08-20 13:25:05', NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-20 16:22:58', '2012-08-20 16:22:58', NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'sdv', 'sdv', 'sdvtyyyyy', NULL, 'sdvvxcvb', 31, 'sdvxcvb', 168, 'sdv', '2012-08-20 16:22:59', '2012-08-20 16:22:59', NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'wer', 'wer', 'qweqwe', NULL, 'uuu', 1, '666', 168, '123456', '2012-08-20 16:41:58', '2012-08-20 16:41:58', NULL, NULL, NULL, 112, NULL, 1),
(183, 'wer', 'wer', 'qweqwe', NULL, 'uuu', 1, '666', 168, '123456', '2012-08-20 16:42:13', '2012-08-20 16:42:13', NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'wer', 'wer', 'qweqwe', NULL, 'uuu', 1, '666', 168, '123456', '2012-08-20 16:42:13', '2012-08-20 16:42:13', NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'wer', 'wer', 'qweqwe', NULL, 'uuu', 1, '666', 168, '123456', '2012-08-20 16:42:33', '2012-08-20 16:42:33', NULL, NULL, NULL, 112, NULL, NULL),
(186, 'wer', 'wer', 'qweqwe', NULL, 'uuu', 1, '666', 168, '123456', '2012-08-20 16:42:33', '2012-08-20 16:42:33', NULL, NULL, NULL, 112, NULL, NULL),
(187, 'fghf', 'ghfgh', 'fgh', NULL, 'h', 1, 'h', 168, '121323', '2012-08-20 16:43:29', '2012-08-20 16:43:29', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:01:23', '2012-08-20 19:01:23', NULL, NULL, NULL, 113, NULL, 1),
(189, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:02:39', '2012-08-20 19:02:39', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:02:39', '2012-08-20 19:02:39', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:02:57', '2012-08-20 19:02:57', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:02:57', '2012-08-20 19:02:57', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:03:47', '2012-08-20 19:03:47', NULL, NULL, NULL, 113, NULL, NULL),
(194, 'Василий', 'Васильев', 'ул. Булыжная, д. 13, кв. 13', NULL, 'Томск', 70, '123321', 168, '89185560091', '2012-08-20 19:03:47', '2012-08-20 19:03:47', NULL, NULL, NULL, 113, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `adjustments`
--

CREATE TABLE IF NOT EXISTS `adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `mandatory` tinyint(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_adjustments_on_order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `adjustments`
--

INSERT INTO `adjustments` (`id`, `order_id`, `amount`, `label`, `created_at`, `updated_at`, `source_id`, `source_type`, `mandatory`, `locked`, `originator_id`, `originator_type`) VALUES
(1, 1, 15.00, 'Доставка', '2012-07-25 09:17:37', '2012-07-25 09:17:37', 1, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(2, 4, 15.00, 'Доставка', '2012-07-25 16:45:59', '2012-07-25 16:45:59', 2, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(3, 20, 15.00, 'Доставка', '2012-07-27 10:36:37', '2012-07-27 10:36:37', 3, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(4, 49, 15.00, 'Доставка', '2012-08-06 20:10:49', '2012-08-06 20:10:49', 4, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(5, 45, 15.00, 'Доставка', '2012-08-06 20:34:56', '2012-08-06 20:34:56', 5, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(6, 51, 15.00, 'Доставка', '2012-08-06 21:29:59', '2012-08-06 21:29:59', 6, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(7, 52, 15.00, 'Доставка', '2012-08-06 22:00:43', '2012-08-06 22:00:43', 7, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(8, 58, 15.00, 'Доставка', '2012-08-08 08:59:27', '2012-08-08 08:59:27', 8, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(9, 59, 10.00, 'Доставка', '2012-08-08 09:20:18', '2012-08-08 09:20:18', 9, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(10, 60, 5.00, 'Доставка', '2012-08-09 08:28:51', '2012-08-09 08:28:51', 10, 'Shipment', 1, NULL, 574015644, 'ShippingMethod'),
(11, 68, 5.00, 'Доставка', '2012-08-09 21:41:28', '2012-08-09 21:41:28', 11, 'Shipment', 1, NULL, 574015644, 'ShippingMethod'),
(12, 69, 15.00, 'Доставка', '2012-08-10 00:02:14', '2012-08-10 00:02:14', 12, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(13, 86, 5.00, 'Доставка', '2012-08-10 13:44:24', '2012-08-10 13:44:24', 13, 'Shipment', 1, NULL, 574015644, 'ShippingMethod'),
(14, 89, 15.00, 'Доставка', '2012-08-10 13:50:36', '2012-08-10 13:50:36', 14, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(16, 90, 15.00, 'Доставка', '2012-08-10 14:01:42', '2012-08-10 14:01:42', 16, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(17, 91, 10.00, 'Доставка', '2012-08-10 14:30:40', '2012-08-10 14:30:40', 17, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(18, 98, 10.00, 'Доставка', '2012-08-13 16:30:18', '2012-08-13 16:30:18', 18, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(19, 99, 10.00, 'Доставка', '2012-08-13 16:41:25', '2012-08-13 16:41:25', 19, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(20, 100, 10.00, 'Доставка', '2012-08-13 16:42:20', '2012-08-13 16:42:20', 20, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(21, 101, 15.00, 'Доставка', '2012-08-13 16:51:52', '2012-08-13 16:51:52', 21, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(22, 103, 10.00, 'Доставка', '2012-08-13 21:13:11', '2012-08-13 21:13:11', 22, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(23, 122, 5.00, 'Доставка', '2012-08-20 12:28:24', '2012-08-20 12:28:24', 23, 'Shipment', 1, NULL, 574015644, 'ShippingMethod'),
(25, 132, 15.00, 'Доставка', '2012-08-20 12:53:59', '2012-08-20 12:53:59', 25, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(26, 133, 5.00, 'Доставка', '2012-08-20 13:18:55', '2012-08-20 13:18:55', 26, 'Shipment', 1, NULL, 574015644, 'ShippingMethod'),
(28, 80, 10.00, 'Доставка', '2012-08-20 16:23:05', '2012-08-20 16:25:33', 28, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(29, 135, 10.00, 'Доставка', '2012-08-20 16:42:19', '2012-08-20 16:42:19', 29, 'Shipment', 1, NULL, 192811543, 'ShippingMethod'),
(30, 136, 15.00, 'Доставка', '2012-08-20 16:43:38', '2012-08-20 16:43:38', 30, 'Shipment', 1, NULL, 13537749, 'ShippingMethod'),
(31, 139, 10.00, 'Доставка', '2012-08-20 19:02:47', '2012-08-20 19:02:47', 31, 'Shipment', 1, NULL, 192811543, 'ShippingMethod');

-- --------------------------------------------------------

--
-- Структура таблицы `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_id` int(11) DEFAULT NULL,
  `viewable_type` varchar(50) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `attachment_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `alt` text,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `assets`
--

INSERT INTO `assets` (`id`, `viewable_id`, `viewable_type`, `attachment_content_type`, `attachment_file_name`, `attachment_size`, `position`, `type`, `attachment_updated_at`, `attachment_width`, `attachment_height`, `alt`) VALUES
(1, 4, 'Variant', 'image/jpeg', '7d258718f2eb39bdc3d7af12d4febd11af84db5a_m.jpg', NULL, 1, 'Image', '2012-07-23 12:03:49', 478, 480, ''),
(2, 23, 'Product', 'image/jpeg', '29c52044c3.jpg', NULL, 1, 'Image', '2012-08-13 11:48:17', 250, 272, ''),
(3, 23, 'Product', 'image/gif', '1010201231_pr.gif', NULL, 2, 'Image', '2012-08-13 11:48:24', 401, 336, ''),
(4, 23, 'Product', 'image/jpeg', '11111111111111.jpg', NULL, 3, 'Image', '2012-08-13 11:48:30', 450, 357, ''),
(5, 25, 'Product', 'image/jpeg', 'Ecco Men''s Golf Street Golf Shoes.jpg', NULL, 1, 'Image', '2012-08-13 11:48:50', 720, 492, ''),
(6, 26, 'Product', 'image/jpeg', 'NY 004.JPG', NULL, 1, 'Image', '2012-08-13 11:48:58', 400, 300, ''),
(7, 24, 'Product', 'image/jpeg', 'sayani.jpg', NULL, 1, 'Image', '2012-08-13 11:49:05', 400, 406, ''),
(8, 2, 'Product', 'image/jpeg', '58723102_1s.jpg', NULL, 1, 'Image', '2012-08-13 11:50:34', 589, 600, ''),
(9, 3, 'Product', 'image/jpeg', 'images.jpg', NULL, 1, 'Image', '2012-08-13 11:50:45', 259, 194, ''),
(10, 1, 'Product', 'image/jpeg', 'Boots_GRAVEL_Trek.jpg', NULL, 1, 'Image', '2012-08-13 11:50:56', 400, 400, '');

-- --------------------------------------------------------

--
-- Структура таблицы `calculators`
--

CREATE TABLE IF NOT EXISTS `calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) NOT NULL,
  `calculable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=574015645 ;

--
-- Дамп данных таблицы `calculators`
--

INSERT INTO `calculators` (`id`, `type`, `calculable_id`, `calculable_type`, `created_at`, `updated_at`) VALUES
(13537749, 'Calculator::FlatRate', 13537749, 'ShippingMethod', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(192811543, 'Calculator::FlatRate', 192811543, 'ShippingMethod', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(491052212, 'Calculator::FlatRate', 713097208, 'Promotion', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(574015644, 'Calculator::FlatRate', 574015644, 'ShippingMethod', '2012-07-23 07:07:47', '2012-07-23 07:07:47');

-- --------------------------------------------------------

--
-- Структура таблицы `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Default configuration', '2012-07-23 07:07:43', '2012-07-23 07:07:43', 'AppConfiguration'),
(2, 'Online Support configuration', '2012-07-23 07:09:54', '2012-07-23 07:09:54', 'OnlineSupportConfiguration'),
(3, 'Editor configuration', '2012-07-23 10:41:01', '2012-07-23 10:41:01', 'EditorConfiguration'),
(4, 'Default spree_auth configuration', '2012-07-25 09:11:47', '2012-07-25 09:11:47', 'SpreeAuthConfiguration'),
(5, 'Yandex Market configuration', '2012-07-30 08:56:16', '2012-07-30 08:56:16', 'YandexMarketConfiguration');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `iso_name`, `iso`, `name`, `iso3`, `numcode`) VALUES
(1, 'AFGHANISTAN', 'AF', 'Afghanistan', 'AFG', 4),
(2, 'ALBANIA', 'AL', 'Albania', 'ALB', 8),
(3, 'ALGERIA', 'DZ', 'Algeria', 'DZA', 12),
(4, 'AMERICAN SAMOA', 'AS', 'American Samoa', 'ASM', 16),
(5, 'ANDORRA', 'AD', 'Andorra', 'AND', 20),
(6, 'ANGOLA', 'AO', 'Angola', 'AGO', 24),
(7, 'ANGUILLA', 'AI', 'Anguilla', 'AIA', 660),
(8, 'ANTIGUA AND BARBUDA', 'AG', 'Antigua and Barbuda', 'ATG', 28),
(9, 'ARGENTINA', 'AR', 'Argentina', 'ARG', 32),
(10, 'ARMENIA', 'AM', 'Armenia', 'ARM', 51),
(11, 'ARUBA', 'AW', 'Aruba', 'ABW', 533),
(12, 'AUSTRALIA', 'AU', 'Australia', 'AUS', 36),
(13, 'AUSTRIA', 'AT', 'Austria', 'AUT', 40),
(14, 'AZERBAIJAN', 'AZ', 'Azerbaijan', 'AZE', 31),
(15, 'BAHAMAS', 'BS', 'Bahamas', 'BHS', 44),
(16, 'BAHRAIN', 'BH', 'Bahrain', 'BHR', 48),
(17, 'BANGLADESH', 'BD', 'Bangladesh', 'BGD', 50),
(18, 'BARBADOS', 'BB', 'Barbados', 'BRB', 52),
(19, 'BELARUS', 'BY', 'Belarus', 'BLR', 112),
(20, 'BELGIUM', 'BE', 'Belgium', 'BEL', 56),
(21, 'BELIZE', 'BZ', 'Belize', 'BLZ', 84),
(22, 'BENIN', 'BJ', 'Benin', 'BEN', 204),
(23, 'BERMUDA', 'BM', 'Bermuda', 'BMU', 60),
(24, 'BHUTAN', 'BT', 'Bhutan', 'BTN', 64),
(25, 'BOLIVIA', 'BO', 'Bolivia', 'BOL', 68),
(26, 'BOSNIA AND HERZEGOVINA', 'BA', 'Bosnia and Herzegovina', 'BIH', 70),
(27, 'BOTSWANA', 'BW', 'Botswana', 'BWA', 72),
(28, 'BRAZIL', 'BR', 'Brazil', 'BRA', 76),
(29, 'BRUNEI DARUSSALAM', 'BN', 'Brunei Darussalam', 'BRN', 96),
(30, 'BULGARIA', 'BG', 'Bulgaria', 'BGR', 100),
(31, 'BURKINA FASO', 'BF', 'Burkina Faso', 'BFA', 854),
(32, 'BURUNDI', 'BI', 'Burundi', 'BDI', 108),
(33, 'CAMBODIA', 'KH', 'Cambodia', 'KHM', 116),
(34, 'CAMEROON', 'CM', 'Cameroon', 'CMR', 120),
(35, 'CANADA', 'CA', 'Canada', 'CAN', 124),
(36, 'CAPE VERDE', 'CV', 'Cape Verde', 'CPV', 132),
(37, 'CAYMAN ISLANDS', 'KY', 'Cayman Islands', 'CYM', 136),
(38, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'Central African Republic', 'CAF', 140),
(39, 'CHAD', 'TD', 'Chad', 'TCD', 148),
(40, 'CHILE', 'CL', 'Chile', 'CHL', 152),
(41, 'CHINA', 'CN', 'China', 'CHN', 156),
(42, 'COLOMBIA', 'CO', 'Colombia', 'COL', 170),
(43, 'COMOROS', 'KM', 'Comoros', 'COM', 174),
(44, 'CONGO', 'CG', 'Congo', 'COG', 178),
(45, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', 'Congo, the Democratic Republic of the', 'COD', 180),
(46, 'COOK ISLANDS', 'CK', 'Cook Islands', 'COK', 184),
(47, 'COSTA RICA', 'CR', 'Costa Rica', 'CRI', 188),
(48, 'COTE D''IVOIRE', 'CI', 'Cote D''Ivoire', 'CIV', 384),
(49, 'CROATIA', 'HR', 'Croatia', 'HRV', 191),
(50, 'CUBA', 'CU', 'Cuba', 'CUB', 192),
(51, 'CYPRUS', 'CY', 'Cyprus', 'CYP', 196),
(52, 'CZECH REPUBLIC', 'CZ', 'Czech Republic', 'CZE', 203),
(53, 'DENMARK', 'DK', 'Denmark', 'DNK', 208),
(54, 'DJIBOUTI', 'DJ', 'Djibouti', 'DJI', 262),
(55, 'DOMINICA', 'DM', 'Dominica', 'DMA', 212),
(56, 'DOMINICAN REPUBLIC', 'DO', 'Dominican Republic', 'DOM', 214),
(57, 'ECUADOR', 'EC', 'Ecuador', 'ECU', 218),
(58, 'EGYPT', 'EG', 'Egypt', 'EGY', 818),
(59, 'EL SALVADOR', 'SV', 'El Salvador', 'SLV', 222),
(60, 'EQUATORIAL GUINEA', 'GQ', 'Equatorial Guinea', 'GNQ', 226),
(61, 'ERITREA', 'ER', 'Eritrea', 'ERI', 232),
(62, 'ESTONIA', 'EE', 'Estonia', 'EST', 233),
(63, 'ETHIOPIA', 'ET', 'Ethiopia', 'ETH', 231),
(64, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238),
(65, 'FAROE ISLANDS', 'FO', 'Faroe Islands', 'FRO', 234),
(66, 'FIJI', 'FJ', 'Fiji', 'FJI', 242),
(67, 'FINLAND', 'FI', 'Finland', 'FIN', 246),
(68, 'FRANCE', 'FR', 'France', 'FRA', 250),
(69, 'FRENCH GUIANA', 'GF', 'French Guiana', 'GUF', 254),
(70, 'FRENCH POLYNESIA', 'PF', 'French Polynesia', 'PYF', 258),
(71, 'GABON', 'GA', 'Gabon', 'GAB', 266),
(72, 'GAMBIA', 'GM', 'Gambia', 'GMB', 270),
(73, 'GEORGIA', 'GE', 'Georgia', 'GEO', 268),
(74, 'GERMANY', 'DE', 'Germany', 'DEU', 276),
(75, 'GHANA', 'GH', 'Ghana', 'GHA', 288),
(76, 'GIBRALTAR', 'GI', 'Gibraltar', 'GIB', 292),
(77, 'GREECE', 'GR', 'Greece', 'GRC', 300),
(78, 'GREENLAND', 'GL', 'Greenland', 'GRL', 304),
(79, 'GRENADA', 'GD', 'Grenada', 'GRD', 308),
(80, 'GUADELOUPE', 'GP', 'Guadeloupe', 'GLP', 312),
(81, 'GUAM', 'GU', 'Guam', 'GUM', 316),
(82, 'GUATEMALA', 'GT', 'Guatemala', 'GTM', 320),
(83, 'GUINEA', 'GN', 'Guinea', 'GIN', 324),
(84, 'GUINEA-BISSAU', 'GW', 'Guinea-Bissau', 'GNB', 624),
(85, 'GUYANA', 'GY', 'Guyana', 'GUY', 328),
(86, 'HAITI', 'HT', 'Haiti', 'HTI', 332),
(87, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'Holy See (Vatican City State)', 'VAT', 336),
(88, 'HONDURAS', 'HN', 'Honduras', 'HND', 340),
(89, 'HONG KONG', 'HK', 'Hong Kong', 'HKG', 344),
(90, 'HUNGARY', 'HU', 'Hungary', 'HUN', 348),
(91, 'ICELAND', 'IS', 'Iceland', 'ISL', 352),
(92, 'INDIA', 'IN', 'India', 'IND', 356),
(93, 'INDONESIA', 'ID', 'Indonesia', 'IDN', 360),
(94, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'Iran, Islamic Republic of', 'IRN', 364),
(95, 'IRAQ', 'IQ', 'Iraq', 'IRQ', 368),
(96, 'IRELAND', 'IE', 'Ireland', 'IRL', 372),
(97, 'ISRAEL', 'IL', 'Israel', 'ISR', 376),
(98, 'ITALY', 'IT', 'Italy', 'ITA', 380),
(99, 'JAMAICA', 'JM', 'Jamaica', 'JAM', 388),
(100, 'JAPAN', 'JP', 'Japan', 'JPN', 392),
(101, 'JORDAN', 'JO', 'Jordan', 'JOR', 400),
(102, 'KAZAKHSTAN', 'KZ', 'Kazakhstan', 'KAZ', 398),
(103, 'KENYA', 'KE', 'Kenya', 'KEN', 404),
(104, 'KIRIBATI', 'KI', 'Kiribati', 'KIR', 296),
(105, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'KP', 'North Korea', 'PRK', 408),
(106, 'KOREA, REPUBLIC OF', 'KR', 'South Korea', 'KOR', 410),
(107, 'KUWAIT', 'KW', 'Kuwait', 'KWT', 414),
(108, 'KYRGYZSTAN', 'KG', 'Kyrgyzstan', 'KGZ', 417),
(109, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'LA', 'Lao People''s Democratic Republic', 'LAO', 418),
(110, 'LATVIA', 'LV', 'Latvia', 'LVA', 428),
(111, 'LEBANON', 'LB', 'Lebanon', 'LBN', 422),
(112, 'LESOTHO', 'LS', 'Lesotho', 'LSO', 426),
(113, 'LIBERIA', 'LR', 'Liberia', 'LBR', 430),
(114, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434),
(115, 'LIECHTENSTEIN', 'LI', 'Liechtenstein', 'LIE', 438),
(116, 'LITHUANIA', 'LT', 'Lithuania', 'LTU', 440),
(117, 'LUXEMBOURG', 'LU', 'Luxembourg', 'LUX', 442),
(118, 'MACAO', 'MO', 'Macao', 'MAC', 446),
(119, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'Macedonia', 'MKD', 807),
(120, 'MADAGASCAR', 'MG', 'Madagascar', 'MDG', 450),
(121, 'MALAWI', 'MW', 'Malawi', 'MWI', 454),
(122, 'MALAYSIA', 'MY', 'Malaysia', 'MYS', 458),
(123, 'MALDIVES', 'MV', 'Maldives', 'MDV', 462),
(124, 'MALI', 'ML', 'Mali', 'MLI', 466),
(125, 'MALTA', 'MT', 'Malta', 'MLT', 470),
(126, 'MARSHALL ISLANDS', 'MH', 'Marshall Islands', 'MHL', 584),
(127, 'MARTINIQUE', 'MQ', 'Martinique', 'MTQ', 474),
(128, 'MAURITANIA', 'MR', 'Mauritania', 'MRT', 478),
(129, 'MAURITIUS', 'MU', 'Mauritius', 'MUS', 480),
(130, 'MEXICO', 'MX', 'Mexico', 'MEX', 484),
(131, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'Micronesia, Federated States of', 'FSM', 583),
(132, 'MOLDOVA, REPUBLIC OF', 'MD', 'Moldova, Republic of', 'MDA', 498),
(133, 'MONACO', 'MC', 'Monaco', 'MCO', 492),
(134, 'MONGOLIA', 'MN', 'Mongolia', 'MNG', 496),
(135, 'MONTSERRAT', 'MS', 'Montserrat', 'MSR', 500),
(136, 'MOROCCO', 'MA', 'Morocco', 'MAR', 504),
(137, 'MOZAMBIQUE', 'MZ', 'Mozambique', 'MOZ', 508),
(138, 'MYANMAR', 'MM', 'Myanmar', 'MMR', 104),
(139, 'NAMIBIA', 'NA', 'Namibia', 'NAM', 516),
(140, 'NAURU', 'NR', 'Nauru', 'NRU', 520),
(141, 'NEPAL', 'NP', 'Nepal', 'NPL', 524),
(142, 'NETHERLANDS', 'NL', 'Netherlands', 'NLD', 528),
(143, 'NETHERLANDS ANTILLES', 'AN', 'Netherlands Antilles', 'ANT', 530),
(144, 'NEW CALEDONIA', 'NC', 'New Caledonia', 'NCL', 540),
(145, 'NEW ZEALAND', 'NZ', 'New Zealand', 'NZL', 554),
(146, 'NICARAGUA', 'NI', 'Nicaragua', 'NIC', 558),
(147, 'NIGER', 'NE', 'Niger', 'NER', 562),
(148, 'NIGERIA', 'NG', 'Nigeria', 'NGA', 566),
(149, 'NIUE', 'NU', 'Niue', 'NIU', 570),
(150, 'NORFOLK ISLAND', 'NF', 'Norfolk Island', 'NFK', 574),
(151, 'NORTHERN MARIANA ISLANDS', 'MP', 'Northern Mariana Islands', 'MNP', 580),
(152, 'NORWAY', 'NO', 'Norway', 'NOR', 578),
(153, 'OMAN', 'OM', 'Oman', 'OMN', 512),
(154, 'PAKISTAN', 'PK', 'Pakistan', 'PAK', 586),
(155, 'PALAU', 'PW', 'Palau', 'PLW', 585),
(156, 'PANAMA', 'PA', 'Panama', 'PAN', 591),
(157, 'PAPUA NEW GUINEA', 'PG', 'Papua New Guinea', 'PNG', 598),
(158, 'PARAGUAY', 'PY', 'Paraguay', 'PRY', 600),
(159, 'PERU', 'PE', 'Peru', 'PER', 604),
(160, 'PHILIPPINES', 'PH', 'Philippines', 'PHL', 608),
(161, 'PITCAIRN', 'PN', 'Pitcairn', 'PCN', 612),
(162, 'POLAND', 'PL', 'Poland', 'POL', 616),
(163, 'PORTUGAL', 'PT', 'Portugal', 'PRT', 620),
(164, 'PUERTO RICO', 'PR', 'Puerto Rico', 'PRI', 630),
(165, 'QATAR', 'QA', 'Qatar', 'QAT', 634),
(166, 'REUNION', 'RE', 'Reunion', 'REU', 638),
(167, 'ROMANIA', 'RO', 'Romania', 'ROM', 642),
(168, 'RUSSIAN FEDERATION', 'RU', 'Российская Федерация', 'RUS', 643),
(169, 'RWANDA', 'RW', 'Rwanda', 'RWA', 646),
(170, 'SAINT HELENA', 'SH', 'Saint Helena', 'SHN', 654),
(171, 'SAINT KITTS AND NEVIS', 'KN', 'Saint Kitts and Nevis', 'KNA', 659),
(172, 'SAINT LUCIA', 'LC', 'Saint Lucia', 'LCA', 662),
(173, 'SAINT PIERRE AND MIQUELON', 'PM', 'Saint Pierre and Miquelon', 'SPM', 666),
(174, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670),
(175, 'SAMOA', 'WS', 'Samoa', 'WSM', 882),
(176, 'SAN MARINO', 'SM', 'San Marino', 'SMR', 674),
(177, 'SAO TOME AND PRINCIPE', 'ST', 'Sao Tome and Principe', 'STP', 678),
(178, 'SAUDI ARABIA', 'SA', 'Saudi Arabia', 'SAU', 682),
(179, 'SENEGAL', 'SN', 'Senegal', 'SEN', 686),
(180, 'SEYCHELLES', 'SC', 'Seychelles', 'SYC', 690),
(181, 'SIERRA LEONE', 'SL', 'Sierra Leone', 'SLE', 694),
(182, 'SINGAPORE', 'SG', 'Singapore', 'SGP', 702),
(183, 'SLOVAKIA', 'SK', 'Slovakia', 'SVK', 703),
(184, 'SLOVENIA', 'SI', 'Slovenia', 'SVN', 705),
(185, 'SOLOMON ISLANDS', 'SB', 'Solomon Islands', 'SLB', 90),
(186, 'SOMALIA', 'SO', 'Somalia', 'SOM', 706),
(187, 'SOUTH AFRICA', 'ZA', 'South Africa', 'ZAF', 710),
(188, 'SPAIN', 'ES', 'Spain', 'ESP', 724),
(189, 'SRI LANKA', 'LK', 'Sri Lanka', 'LKA', 144),
(190, 'SUDAN', 'SD', 'Sudan', 'SDN', 736),
(191, 'SURINAME', 'SR', 'Suriname', 'SUR', 740),
(192, 'SVALBARD AND JAN MAYEN', 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744),
(193, 'SWAZILAND', 'SZ', 'Swaziland', 'SWZ', 748),
(194, 'SWEDEN', 'SE', 'Sweden', 'SWE', 752),
(195, 'SWITZERLAND', 'CH', 'Switzerland', 'CHE', 756),
(196, 'SYRIAN ARAB REPUBLIC', 'SY', 'Syrian Arab Republic', 'SYR', 760),
(197, 'TAIWAN, PROVINCE OF CHINA', 'TW', 'Taiwan', 'TWN', 158),
(198, 'TAJIKISTAN', 'TJ', 'Tajikistan', 'TJK', 762),
(199, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'Tanzania, United Republic of', 'TZA', 834),
(200, 'THAILAND', 'TH', 'Thailand', 'THA', 764),
(201, 'TOGO', 'TG', 'Togo', 'TGO', 768),
(202, 'TOKELAU', 'TK', 'Tokelau', 'TKL', 772),
(203, 'TONGA', 'TO', 'Tonga', 'TON', 776),
(204, 'TRINIDAD AND TOBAGO', 'TT', 'Trinidad and Tobago', 'TTO', 780),
(205, 'TUNISIA', 'TN', 'Tunisia', 'TUN', 788),
(206, 'TURKEY', 'TR', 'Turkey', 'TUR', 792),
(207, 'TURKMENISTAN', 'TM', 'Turkmenistan', 'TKM', 795),
(208, 'TURKS AND CAICOS ISLANDS', 'TC', 'Turks and Caicos Islands', 'TCA', 796),
(209, 'TUVALU', 'TV', 'Tuvalu', 'TUV', 798),
(210, 'UGANDA', 'UG', 'Uganda', 'UGA', 800),
(211, 'UKRAINE', 'UA', 'Ukraine', 'UKR', 804),
(212, 'UNITED ARAB EMIRATES', 'AE', 'United Arab Emirates', 'ARE', 784),
(213, 'UNITED KINGDOM', 'GB', 'United Kingdom', 'GBR', 826),
(214, 'UNITED STATES', 'US', 'United States', 'USA', 840),
(215, 'URUGUAY', 'UY', 'Uruguay', 'URY', 858),
(216, 'UZBEKISTAN', 'UZ', 'Uzbekistan', 'UZB', 860),
(217, 'VANUATU', 'VU', 'Vanuatu', 'VUT', 548),
(218, 'VENEZUELA', 'VE', 'Venezuela', 'VEN', 862),
(219, 'VIET NAM', 'VN', 'Viet Nam', 'VNM', 704),
(220, 'VIRGIN ISLANDS, BRITISH', 'VG', 'Virgin Islands, British', 'VGB', 92),
(221, 'VIRGIN ISLANDS, U.S.', 'VI', 'Virgin Islands, U.S.', 'VIR', 850),
(222, 'WALLIS AND FUTUNA', 'WF', 'Wallis and Futuna', 'WLF', 876),
(223, 'WESTERN SAHARA', 'EH', 'Western Sahara', 'ESH', 732),
(224, 'YEMEN', 'YE', 'Yemen', 'YEM', 887),
(225, 'ZAMBIA', 'ZM', 'Zambia', 'ZMB', 894),
(226, 'ZIMBABWE', 'ZW', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Структура таблицы `creditcards`
--

CREATE TABLE IF NOT EXISTS `creditcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `start_month` varchar(255) DEFAULT NULL,
  `start_year` varchar(255) DEFAULT NULL,
  `issue_number` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `gateways`
--

CREATE TABLE IF NOT EXISTS `gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `server` varchar(255) DEFAULT 'test',
  `test_mode` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `inventory_units`
--

CREATE TABLE IF NOT EXISTS `inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `return_authorization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`),
  KEY `index_inventory_units_on_order_id` (`order_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26086 ;

--
-- Дамп данных таблицы `inventory_units`
--

INSERT INTO `inventory_units` (`id`, `variant_id`, `order_id`, `state`, `lock_version`, `created_at`, `updated_at`, `shipment_id`, `return_authorization_id`) VALUES
(1, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(2, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(3, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(4, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(5, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(6, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(7, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(8, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(9, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(10, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(11, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(12, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(13, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(14, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(15, 1, 1, 'backordered', 0, '2012-07-25 15:27:50', '2012-07-25 15:27:50', 1, NULL),
(16, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(17, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(18, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(19, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(20, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(21, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(22, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(23, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(24, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(25, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(26, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(27, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(28, 1, 4, 'backordered', 0, '2012-07-25 16:46:13', '2012-07-25 16:46:13', 2, NULL),
(29, 1, 20, 'backordered', 0, '2012-07-27 10:39:16', '2012-07-27 10:39:16', 3, NULL),
(30, 1, 22, 'backordered', 0, '2012-07-27 10:59:23', '2012-07-27 10:59:23', NULL, NULL),
(31, 1, 23, 'backordered', 0, '2012-07-27 11:38:21', '2012-07-27 11:38:21', NULL, NULL),
(32, 1, 25, 'backordered', 0, '2012-07-27 11:53:18', '2012-07-27 11:53:18', NULL, NULL),
(33, 1, 25, 'backordered', 0, '2012-07-27 11:53:18', '2012-07-27 11:53:18', NULL, NULL),
(34, 1, 25, 'backordered', 0, '2012-07-27 11:53:18', '2012-07-27 11:53:18', NULL, NULL),
(35, 1, 25, 'backordered', 0, '2012-07-27 11:53:18', '2012-07-27 11:53:18', NULL, NULL),
(36, 1, 25, 'backordered', 0, '2012-07-27 11:53:18', '2012-07-27 11:53:18', NULL, NULL),
(37, 1, 28, 'backordered', 0, '2012-07-27 12:13:40', '2012-07-27 12:13:40', NULL, NULL),
(51, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(52, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(53, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(54, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(55, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(56, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(57, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(58, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(59, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(60, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(61, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(62, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(63, 1, 29, 'backordered', 0, '2012-07-27 12:49:12', '2012-07-27 12:49:12', NULL, NULL),
(64, 1, 31, 'backordered', 0, '2012-07-27 13:01:49', '2012-07-27 13:01:49', NULL, NULL),
(65, 1, 31, 'backordered', 0, '2012-07-27 13:01:49', '2012-07-27 13:01:49', NULL, NULL),
(66, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(67, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(68, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(69, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(70, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(71, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(72, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(73, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(74, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(75, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(76, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(77, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(78, 1, 49, 'backordered', 0, '2012-08-06 20:10:54', '2012-08-06 20:10:54', 4, NULL),
(79, 1, 45, 'backordered', 0, '2012-08-06 20:36:00', '2012-08-06 20:36:00', 5, NULL),
(80, 1, 45, 'backordered', 0, '2012-08-06 20:36:00', '2012-08-06 20:36:00', 5, NULL),
(81, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(82, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(83, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(84, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(85, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(86, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(87, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(88, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(89, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(90, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(91, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(92, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(93, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(94, 1, 51, 'backordered', 0, '2012-08-06 21:30:04', '2012-08-06 21:30:04', 6, NULL),
(95, 1, 52, 'backordered', 0, '2012-08-06 22:00:48', '2012-08-06 22:00:48', 7, NULL),
(96, 1, 58, 'backordered', 0, '2012-08-08 08:59:30', '2012-08-08 08:59:30', 8, NULL),
(97, 1, 58, 'backordered', 0, '2012-08-08 08:59:30', '2012-08-08 08:59:30', 8, NULL),
(98, 1, 58, 'backordered', 0, '2012-08-08 08:59:30', '2012-08-08 08:59:30', 8, NULL),
(99, 1, 59, 'backordered', 0, '2012-08-08 09:20:23', '2012-08-08 09:20:23', 9, NULL),
(100, 1, 60, 'backordered', 0, '2012-08-09 08:29:26', '2012-08-09 08:29:26', 10, NULL),
(101, 1, 68, 'backordered', 0, '2012-08-09 21:41:48', '2012-08-09 21:41:48', 11, NULL),
(102, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(103, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(104, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(105, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(106, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(107, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(108, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(109, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(110, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(111, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(112, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(113, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(114, 1, 69, 'backordered', 0, '2012-08-10 00:02:17', '2012-08-10 00:02:17', 12, NULL),
(129, 56, 90, 'backordered', 0, '2012-08-10 14:01:45', '2012-08-10 14:01:45', 16, NULL),
(131, 56, 98, 'backordered', 0, '2012-08-13 16:32:13', '2012-08-13 16:32:13', 18, NULL),
(132, 15, 99, 'backordered', 0, '2012-08-13 16:41:27', '2012-08-13 16:41:27', 19, NULL),
(133, 56, 100, 'backordered', 0, '2012-08-13 16:42:23', '2012-08-13 16:42:23', 20, NULL),
(135, 15, 101, 'backordered', 0, '2012-08-13 16:53:54', '2012-08-13 16:53:54', 21, NULL),
(26062, 20, 132, 'backordered', 0, '2012-08-20 12:54:12', '2012-08-20 12:54:12', 25, NULL),
(26063, 15, 133, 'backordered', 0, '2012-08-20 13:19:00', '2012-08-20 13:19:00', 26, NULL),
(26064, 15, 133, 'backordered', 0, '2012-08-20 13:20:18', '2012-08-20 13:20:18', 26, NULL),
(26065, 15, 133, 'backordered', 0, '2012-08-20 13:24:05', '2012-08-20 13:24:05', 26, NULL),
(26067, 19, 134, 'backordered', 1, '2012-08-20 13:29:41', '2012-08-21 07:13:31', NULL, NULL),
(26068, 42, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26069, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26070, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26071, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26072, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26073, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26074, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26075, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26076, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26077, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26078, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26079, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26080, 49, 135, 'backordered', 0, '2012-08-20 16:42:32', '2012-08-20 16:42:32', 29, NULL),
(26081, 15, 136, 'backordered', 0, '2012-08-20 16:43:42', '2012-08-20 16:43:42', 30, NULL),
(26082, 16, 139, 'backordered', 0, '2012-08-20 19:03:47', '2012-08-20 19:03:47', 31, NULL),
(26083, 18, 139, 'backordered', 0, '2012-08-20 19:03:47', '2012-08-20 19:03:47', 31, NULL),
(26084, 20, 139, 'backordered', 0, '2012-08-20 19:03:47', '2012-08-20 19:03:47', 31, NULL),
(26085, 22, 139, 'backordered', 0, '2012-08-20 19:03:47', '2012-08-20 19:03:47', 31, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `line_items`
--

CREATE TABLE IF NOT EXISTS `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_line_items_on_order_id` (`order_id`),
  KEY `index_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=197 ;

--
-- Дамп данных таблицы `line_items`
--

INSERT INTO `line_items` (`id`, `order_id`, `variant_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 52, 2600.00, '2012-07-24 08:32:53', '2012-07-24 16:50:00'),
(3, 3, 1, 1, 2600.00, '2012-07-24 18:22:20', '2012-07-24 21:03:49'),
(4, 3, 2, 1, 1899.00, '2012-07-24 18:22:38', '2012-07-24 20:57:05'),
(10, 1, 1, 15, 2600.00, '2012-07-25 08:58:33', '2012-07-25 09:08:13'),
(11, 4, 1, 13, 2600.00, '2012-07-25 15:36:59', '2012-07-25 15:37:08'),
(15, 6, 1, 1, 2600.00, '2012-07-26 15:14:49', '2012-07-26 15:14:49'),
(16, 7, 1, 1, 2600.00, '2012-07-26 15:16:00', '2012-07-26 15:16:00'),
(17, 8, 1, 1, 2600.00, '2012-07-26 15:22:00', '2012-07-26 15:22:00'),
(19, 10, 1, 1, 2600.00, '2012-07-26 15:34:08', '2012-07-26 15:34:08'),
(20, 15, 1, 1, 2600.00, '2012-07-26 23:08:05', '2012-07-26 23:08:05'),
(21, 16, 1, 1, 2600.00, '2012-07-27 01:03:22', '2012-07-27 01:03:22'),
(22, 17, 1, 1, 2600.00, '2012-07-27 01:15:05', '2012-07-27 01:15:05'),
(23, 18, 1, 1, 2600.00, '2012-07-27 09:25:08', '2012-07-27 09:25:08'),
(24, 19, 1, 1, 2600.00, '2012-07-27 09:34:30', '2012-07-27 09:34:30'),
(25, 20, 1, 1, 2600.00, '2012-07-27 09:57:07', '2012-07-27 09:57:07'),
(26, 21, 1, 2, 2600.00, '2012-07-27 10:44:14', '2012-07-27 10:46:51'),
(27, 22, 1, 1, 2600.00, '2012-07-27 10:58:36', '2012-07-27 10:58:36'),
(28, 23, 1, 1, 2600.00, '2012-07-27 11:37:37', '2012-07-27 11:37:37'),
(30, 24, 1, 14, 2600.00, '2012-07-27 11:40:20', '2012-07-27 11:42:42'),
(31, 25, 1, 5, 2600.00, '2012-07-27 11:52:33', '2012-07-27 11:52:42'),
(32, 27, 1, 1, 2600.00, '2012-07-27 12:07:59', '2012-07-27 12:07:59'),
(33, 28, 1, 1, 2600.00, '2012-07-27 12:13:01', '2012-07-27 12:13:01'),
(35, 29, 1, 13, 2600.00, '2012-07-27 12:43:16', '2012-07-27 12:43:20'),
(38, 31, 1, 2, 2600.00, '2012-07-27 13:01:24', '2012-07-27 13:01:25'),
(39, 33, 1, 1, 2600.00, '2012-07-27 13:06:06', '2012-07-27 13:06:06'),
(41, 35, 1, 1, 2600.00, '2012-07-27 16:44:27', '2012-07-27 16:44:27'),
(42, 42, 1, 1, 2600.00, '2012-08-01 12:12:46', '2012-08-01 12:12:46'),
(43, 43, 1, 1, 2600.00, '2012-08-02 08:46:41', '2012-08-02 08:46:41'),
(44, 44, 1, 1, 2600.00, '2012-08-02 09:23:45', '2012-08-02 09:23:45'),
(45, 45, 1, 2, 2600.00, '2012-08-06 08:33:08', '2012-08-06 20:28:09'),
(46, 49, 1, 13, 2600.00, '2012-08-06 20:10:14', '2012-08-06 20:10:32'),
(47, 50, 1, 1, 2600.00, '2012-08-06 20:11:29', '2012-08-06 20:11:29'),
(48, 51, 1, 14, 2600.00, '2012-08-06 21:29:44', '2012-08-06 21:29:50'),
(49, 52, 1, 1, 2600.00, '2012-08-06 22:00:27', '2012-08-06 22:00:27'),
(50, 53, 1, 1, 2600.00, '2012-08-07 11:02:32', '2012-08-07 11:02:32'),
(51, 54, 1, 1, 2600.00, '2012-08-07 11:06:50', '2012-08-07 11:06:50'),
(52, 55, 1, 1, 2600.00, '2012-08-07 13:12:07', '2012-08-07 13:12:07'),
(53, 56, 1, 1, 2600.00, '2012-08-07 15:24:04', '2012-08-07 15:24:04'),
(55, 58, 1, 3, 2600.00, '2012-08-08 08:57:48', '2012-08-08 08:58:41'),
(56, 59, 1, 1, 2600.00, '2012-08-08 09:19:34', '2012-08-08 09:19:34'),
(57, 60, 1, 1, 2600.00, '2012-08-09 08:25:19', '2012-08-09 08:25:19'),
(68, 68, 1, 1, 2600.00, '2012-08-09 21:34:36', '2012-08-09 21:34:36'),
(69, 69, 1, 13, 2600.00, '2012-08-10 00:01:53', '2012-08-10 00:01:57'),
(70, 70, 35, 1, 115000.00, '2012-08-10 08:09:13', '2012-08-10 08:09:13'),
(71, 70, 56, 1, 445000.00, '2012-08-10 10:08:07', '2012-08-10 10:08:07'),
(72, 74, 56, 1, 445000.00, '2012-08-10 12:04:59', '2012-08-10 12:04:59'),
(73, 75, 1, 1, 2600.00, '2012-08-10 12:19:30', '2012-08-10 12:19:30'),
(74, 76, 56, 2, 445000.00, '2012-08-10 12:20:07', '2012-08-10 12:26:51'),
(75, 77, 56, 1, 445000.00, '2012-08-10 12:35:24', '2012-08-10 12:35:24'),
(76, 78, 56, 1, 445000.00, '2012-08-10 12:40:19', '2012-08-10 12:40:19'),
(77, 79, 56, 1, 445000.00, '2012-08-10 12:43:12', '2012-08-10 12:43:12'),
(78, 80, 56, 3, 445000.00, '2012-08-10 12:46:04', '2012-08-20 12:11:32'),
(79, 81, 56, 2, 445000.00, '2012-08-10 12:48:11', '2012-08-13 16:22:44'),
(80, 82, 56, 4, 445000.00, '2012-08-10 12:56:58', '2012-08-10 14:04:06'),
(81, 83, 56, 1, 445000.00, '2012-08-10 13:11:44', '2012-08-10 13:11:44'),
(82, 84, 56, 1, 445000.00, '2012-08-10 13:25:05', '2012-08-10 13:25:05'),
(83, 85, 56, 1, 445000.00, '2012-08-10 13:28:39', '2012-08-10 13:28:39'),
(84, 86, 1, 1, 2600.00, '2012-08-10 13:41:39', '2012-08-10 13:41:39'),
(85, 87, 56, 1, 445000.00, '2012-08-10 13:46:01', '2012-08-10 13:46:01'),
(87, 89, 1, 1, 2600.00, '2012-08-10 13:50:11', '2012-08-10 13:50:11'),
(88, 90, 56, 1, 445000.00, '2012-08-10 14:01:21', '2012-08-10 14:01:21'),
(89, 91, 56, 1, 445000.00, '2012-08-10 14:28:30', '2012-08-10 14:28:30'),
(90, 92, 1, 1, 2600.00, '2012-08-12 15:41:56', '2012-08-12 15:41:56'),
(91, 93, 1, 1, 2600.00, '2012-08-12 20:01:23', '2012-08-12 20:01:23'),
(92, 94, 56, 1, 445000.00, '2012-08-13 13:02:55', '2012-08-13 13:02:55'),
(93, 95, 1, 1, 2600.00, '2012-08-13 13:35:28', '2012-08-13 13:35:28'),
(94, 95, 58, 1, 400000.00, '2012-08-13 13:35:50', '2012-08-13 13:35:50'),
(95, 96, 59, 1, 385000.00, '2012-08-13 16:00:09', '2012-08-13 16:00:09'),
(96, 97, 17, 1, 539000.00, '2012-08-13 16:03:42', '2012-08-13 16:03:42'),
(97, 97, 19, 1, 539000.00, '2012-08-13 16:03:46', '2012-08-13 16:03:46'),
(98, 97, 45, 1, 115000.00, '2012-08-13 16:04:03', '2012-08-13 16:04:03'),
(99, 98, 56, 1, 445000.00, '2012-08-13 16:29:53', '2012-08-13 16:29:53'),
(100, 99, 15, 1, 539000.00, '2012-08-13 16:41:02', '2012-08-13 16:41:02'),
(101, 100, 56, 1, 445000.00, '2012-08-13 16:42:00', '2012-08-13 16:42:00'),
(102, 101, 15, 1, 539000.00, '2012-08-13 16:51:34', '2012-08-13 16:51:34'),
(105, 103, 26, 1, 280000.00, '2012-08-13 21:12:41', '2012-08-13 21:12:41'),
(108, 80, 15, 1, 539000.00, '2012-08-14 12:11:52', '2012-08-14 12:11:52'),
(109, 80, 11, 1, 479000.00, '2012-08-14 12:11:52', '2012-08-14 12:11:52'),
(110, 105, 15, 1, 539000.00, '2012-08-14 16:25:33', '2012-08-14 16:25:33'),
(111, 105, 9, 1, 309000.00, '2012-08-14 16:25:34', '2012-08-14 16:25:34'),
(113, 106, 9, 15, 309000.00, '2012-08-14 17:26:17', '2012-08-14 17:26:40'),
(117, 107, 80, 1, 330000.00, '2012-08-14 17:47:56', '2012-08-14 17:47:56'),
(118, 108, 58, 1, 400000.00, '2012-08-15 16:43:35', '2012-08-15 16:43:35'),
(120, 110, 9, 1, 309000.00, '2012-08-16 09:49:07', '2012-08-16 09:49:07'),
(121, 111, 56, 1, 445000.00, '2012-08-16 10:35:19', '2012-08-16 10:35:19'),
(122, 112, 11, 1, 479000.00, '2012-08-16 10:46:10', '2012-08-16 10:46:10'),
(135, 122, 16, 101, 539000.00, '2012-08-20 09:50:33', '2012-08-20 12:19:32'),
(136, 122, 14, 101, 479000.00, '2012-08-20 10:00:19', '2012-08-20 12:19:32'),
(137, 122, 10, 100, 309000.00, '2012-08-20 10:00:28', '2012-08-20 10:02:38'),
(138, 122, 12, 200, 479000.00, '2012-08-20 10:00:35', '2012-08-20 10:02:35'),
(139, 122, 83, 100, 449000.00, '2012-08-20 10:00:39', '2012-08-20 10:02:32'),
(140, 122, 31, 100, 115000.00, '2012-08-20 10:00:48', '2012-08-20 10:02:28'),
(141, 122, 72, 101, 400000.00, '2012-08-20 10:00:55', '2012-08-20 12:19:32'),
(142, 122, 74, 100, 355000.00, '2012-08-20 10:01:02', '2012-08-20 10:02:21'),
(143, 122, 56, 100, 445000.00, '2012-08-20 10:01:42', '2012-08-20 10:02:18'),
(144, 122, 80, 999100, 330000.00, '2012-08-20 10:01:54', '2012-08-20 10:02:51'),
(145, 122, 66, 1, 415000.00, '2012-08-20 10:07:10', '2012-08-20 10:07:10'),
(146, 122, 68, 1, 385000.00, '2012-08-20 10:07:32', '2012-08-20 10:07:32'),
(152, 125, 81, 1, 400000.00, '2012-08-20 11:49:18', '2012-08-20 11:49:18'),
(153, 125, 69, 1, 430000.00, '2012-08-20 11:49:20', '2012-08-20 11:49:20'),
(154, 126, 9, 1, 309000.00, '2012-08-20 11:50:31', '2012-08-20 11:50:31'),
(156, 126, 57, 2, 400000.00, '2012-08-20 12:12:38', '2012-08-20 12:12:40'),
(157, 122, 9, 101, 309000.00, '2012-08-20 12:13:18', '2012-08-20 12:19:32'),
(158, 122, 17, 101, 539000.00, '2012-08-20 12:13:18', '2012-08-20 12:19:32'),
(159, 122, 11, 101, 479000.00, '2012-08-20 12:13:18', '2012-08-20 12:19:32'),
(160, 122, 19, 2, 539000.00, '2012-08-20 12:13:18', '2012-08-20 12:19:32'),
(161, 122, 69, 1, 430000.00, '2012-08-20 12:13:18', '2012-08-20 12:13:18'),
(162, 127, 9, 1, 309000.00, '2012-08-20 12:13:32', '2012-08-20 12:13:32'),
(163, 127, 15, 1, 539000.00, '2012-08-20 12:13:33', '2012-08-20 12:13:33'),
(164, 128, 56, 1, 445000.00, '2012-08-20 12:14:32', '2012-08-20 12:14:32'),
(175, 122, 15, 100, 539000.00, '2012-08-20 12:19:32', '2012-08-20 12:19:32'),
(176, 122, 13, 1, 479000.00, '2012-08-20 12:19:32', '2012-08-20 12:19:32'),
(177, 122, 24, 100, 449000.00, '2012-08-20 12:19:32', '2012-08-20 12:19:46'),
(178, 130, 58, 1, 400000.00, '2012-08-20 12:29:42', '2012-08-20 12:29:42'),
(181, 132, 20, 1, 539000.00, '2012-08-20 12:53:28', '2012-08-20 12:53:28'),
(182, 133, 15, 1, 539000.00, '2012-08-20 13:18:45', '2012-08-20 13:18:45'),
(184, 135, 42, 1, 105000.00, '2012-08-20 16:42:03', '2012-08-20 16:42:03'),
(185, 135, 49, 12, 70000.00, '2012-08-20 16:42:04', '2012-08-20 16:42:08'),
(186, 136, 15, 1, 539000.00, '2012-08-20 16:43:11', '2012-08-20 16:43:11'),
(187, 137, 11, 1, 479000.00, '2012-08-20 18:55:34', '2012-08-20 18:55:34'),
(188, 137, 19, 1, 539000.00, '2012-08-20 18:55:37', '2012-08-20 18:55:37'),
(191, 139, 16, 1, 539000.00, '2012-08-20 19:01:49', '2012-08-20 19:01:49'),
(192, 139, 18, 1, 539000.00, '2012-08-20 19:01:55', '2012-08-20 19:01:55'),
(193, 139, 20, 1, 539000.00, '2012-08-20 19:02:03', '2012-08-20 19:02:03'),
(194, 139, 22, 1, 359000.00, '2012-08-20 19:02:08', '2012-08-20 19:02:08'),
(195, 80, 19, 1, 539000.00, '2012-08-21 07:13:30', '2012-08-21 07:13:30'),
(196, 80, 1, 1, 2600.00, '2012-08-21 12:35:43', '2012-08-21 12:35:43');

-- --------------------------------------------------------

--
-- Структура таблицы `log_entries`
--

CREATE TABLE IF NOT EXISTS `log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `mail_methods`
--

CREATE TABLE IF NOT EXISTS `mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `mail_methods`
--

INSERT INTO `mail_methods` (`id`, `environment`, `active`, `created_at`, `updated_at`) VALUES
(1, 'production', 1, '2012-08-10 14:00:03', '2012-08-10 14:00:03');

-- --------------------------------------------------------

--
-- Структура таблицы `option_types`
--

CREATE TABLE IF NOT EXISTS `option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `option_types`
--

INSERT INTO `option_types` (`id`, `name`, `presentation`, `created_at`, `updated_at`, `position`) VALUES
(1, 'color', 'цвет', '2012-07-23 17:58:50', '2012-07-23 18:00:11', 0),
(2, 'size', 'Размер', '2012-07-23 18:24:56', '2012-07-23 18:24:56', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `option_types_prototypes`
--

CREATE TABLE IF NOT EXISTS `option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `option_values`
--

CREATE TABLE IF NOT EXISTS `option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ms_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `option_values`
--

INSERT INTO `option_values` (`id`, `option_type_id`, `name`, `position`, `presentation`, `created_at`, `updated_at`, `ms_id`) VALUES
(1, 1, 'red', 1, 'красный', '2012-07-23 18:00:11', '2012-07-23 18:00:11', NULL),
(2, 2, '39', 1, '39', '2012-07-23 18:26:29', '2012-07-23 18:26:59', NULL),
(3, 2, '40', 2, '40', '2012-07-23 18:26:29', '2012-07-23 18:26:59', NULL),
(4, 2, '41', 2, '41', '2012-07-23 18:26:29', '2012-07-23 18:26:59', NULL),
(5, 1, 'black', 2, 'черный', '2012-07-23 18:31:54', '2012-07-23 18:31:54', NULL),
(6, 2, '42', 3, '42', '2012-08-06 20:01:49', '2012-08-06 20:01:49', '78jABEh7gMeaI3pIPnqc03'),
(7, NULL, 'Унисекс', 1, 'Унисекс', '2012-08-06 20:01:49', '2012-08-06 20:01:49', '7w60N92Bjp6E4yEUfgSCD3'),
(8, 1, 'Красный', 3, 'Красный', '2012-08-06 20:01:49', '2012-08-06 20:01:49', '9LAoF2U8gDqQdl9fYXZTZ2'),
(9, 1, 'Зеленый', 4, 'Зеленый', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'am-3EXFPiQKB4oPi5aQFZ0'),
(10, 2, '39', 4, '39', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'cek4ZJhJhqCLc7eytNOL61'),
(11, 1, 'Синий', 5, 'Синий', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'EuJSaasXh2mvq-A750uI73'),
(12, 2, '40', 5, '40', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'jeGd0eoSjmasFGyyjnufk2'),
(13, NULL, 'Мужские', 2, 'Мужские', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'mgh9iR5CgFCwsEKCQyuKK0'),
(14, NULL, 'Женские', 3, 'Женские', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'SLx5FXhliKWt6OQUtFvso1'),
(15, 2, '41', 6, '41', '2012-08-06 20:01:49', '2012-08-06 20:01:49', 'wzFf0xZKhoyCHRCeG7v1c2');

-- --------------------------------------------------------

--
-- Структура таблицы `option_values_variants`
--

CREATE TABLE IF NOT EXISTS `option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id` (`variant_id`),
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `option_values_variants`
--

INSERT INTO `option_values_variants` (`variant_id`, `option_value_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 4),
(7, 5),
(8, 1),
(8, 3),
(10, 8),
(10, 10),
(12, 9),
(12, 12),
(14, 11),
(14, 15),
(16, 9),
(16, 10),
(18, 8),
(18, 12),
(20, 11),
(20, 15),
(22, 6),
(22, 9),
(24, 10),
(24, 11),
(25, 6),
(25, 8),
(27, 10),
(27, 11),
(29, 9),
(29, 12),
(30, 8),
(30, 10),
(31, 9),
(31, 10),
(32, 8),
(32, 10),
(34, 8),
(34, 12),
(35, 9),
(35, 12),
(37, 9),
(37, 12),
(39, 8),
(39, 10),
(41, 8),
(41, 15),
(43, 8),
(43, 10),
(44, 9),
(44, 12),
(46, 8),
(46, 15),
(48, 8),
(48, 12),
(50, 11),
(50, 12),
(51, 8),
(51, 10),
(53, 9),
(53, 12),
(54, 6),
(54, 11),
(56, 6),
(56, 8),
(58, 8),
(58, 15),
(60, 9),
(60, 10),
(62, 6),
(62, 11),
(64, 6),
(64, 9),
(66, 8),
(66, 12),
(68, 11),
(68, 15),
(70, 8),
(70, 10),
(72, 9),
(72, 10),
(74, 8),
(74, 12),
(76, 9),
(76, 10),
(78, 9),
(78, 10),
(80, 11),
(80, 15),
(82, 8),
(82, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `item_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `credit_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(8,2) DEFAULT '0.00',
  `shipping_method_id` int(11) DEFAULT NULL,
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_number` (`number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `number`, `item_total`, `total`, `created_at`, `updated_at`, `state`, `adjustment_total`, `credit_total`, `completed_at`, `bill_address_id`, `ship_address_id`, `payment_total`, `shipping_method_id`, `shipment_state`, `payment_state`, `email`, `special_instructions`) VALUES
(1, 1, 'R254003880', 39000.00, 39015.00, '2012-07-23 13:19:17', '2012-07-25 15:27:50', 'complete', 15.00, 0.00, '2012-07-25 15:27:50', 1, 1, 0.00, 13537749, 'ready', 'pending', 'spree@example.com', NULL),
(2, 2, 'R843876270', 135200.00, 135200.00, '2012-07-24 08:05:22', '2012-07-24 08:05:22', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(3, 3, 'R625475525', 4499.00, 4499.00, '2012-07-24 18:22:20', '2012-07-24 18:22:20', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(4, 1, 'R676187417', 33800.00, 33815.00, '2012-07-25 15:36:58', '2012-07-25 16:46:13', 'complete', 15.00, 0.00, '2012-07-25 16:46:13', 7, 7, 0.00, 13537749, 'ready', 'pending', 'spree@example.com', NULL),
(6, 5, 'R445783088', 2600.00, 2600.00, '2012-07-26 14:46:09', '2012-07-26 15:02:06', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'grigl@mail.ru', NULL),
(7, 6, 'R085823874', 2600.00, 2600.00, '2012-07-26 15:16:00', '2012-07-26 15:16:30', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'griglmail@gmail.com', NULL),
(8, 7, 'R783417755', 2600.00, 2600.00, '2012-07-26 15:22:00', '2012-07-26 15:23:33', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'admin@example.com', NULL),
(10, 9, 'R410731864', 2600.00, 2600.00, '2012-07-26 15:34:08', '2012-07-26 22:23:08', 'delivery', 0.00, 0.00, NULL, 9, 9, 0.00, NULL, NULL, 'pending', 'dasdasd@example.com', NULL),
(11, 10, 'R060008430', 0.00, 0.00, '2012-07-26 22:46:41', '2012-07-26 22:46:41', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(12, 11, 'R648485260', 0.00, 0.00, '2012-07-26 22:46:54', '2012-07-26 22:46:54', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(13, 12, 'R050325252', 0.00, 0.00, '2012-07-26 22:50:29', '2012-07-26 22:50:29', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(14, 13, 'R701788604', 0.00, 0.00, '2012-07-26 22:55:09', '2012-07-26 22:55:09', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(15, 14, 'R030574617', 2600.00, 2600.00, '2012-07-26 23:07:50', '2012-07-27 01:00:53', 'address', 0.00, 0.00, NULL, 11, 11, 0.00, NULL, NULL, 'pending', 'gr@exampl.com', NULL),
(16, 15, 'R121127180', 2600.00, 2600.00, '2012-07-27 01:03:13', '2012-07-27 01:03:53', 'address', 0.00, 0.00, NULL, 13, 13, 0.00, NULL, NULL, 'pending', 'dfbdfb@svsdv.ru', NULL),
(17, 16, 'R162458382', 2600.00, 2600.00, '2012-07-27 01:14:56', '2012-07-27 01:24:47', 'address', 0.00, 0.00, NULL, 17, 17, 0.00, NULL, NULL, 'pending', 'dfgsdf@sdsd.ru', NULL),
(18, 17, 'R670256647', 2600.00, 2600.00, '2012-07-27 09:25:01', '2012-07-27 09:29:34', 'address', 0.00, 0.00, NULL, 29, 29, 0.00, NULL, NULL, 'pending', 'hjhv@dcsd.ru', NULL),
(19, 18, 'R157627674', 2600.00, 2600.00, '2012-07-27 09:34:19', '2012-07-27 09:41:07', 'delivery', 0.00, 0.00, NULL, 33, 33, 0.00, NULL, NULL, 'pending', 'dsdvs@sdsdv.ru', NULL),
(20, 19, 'R110586886', 2600.00, 2615.00, '2012-07-27 09:56:56', '2012-07-27 10:39:15', 'complete', 15.00, 0.00, '2012-07-27 10:39:16', 37, 37, 0.00, 13537749, 'pending', 'balance_due', 'sfvdf@sdcsd.ru', NULL),
(21, 20, 'R067504813', 5200.00, 5200.00, '2012-07-27 10:42:28', '2012-07-27 10:54:25', 'delivery', 0.00, 0.00, NULL, 39, 39, 0.00, 13537749, NULL, 'pending', 'sdfgsf@sdsdv.ru', NULL),
(22, 21, 'R764480733', 2600.00, 2600.00, '2012-07-27 10:58:29', '2012-07-27 10:59:23', 'complete', 0.00, 0.00, '2012-07-27 10:59:23', 41, 41, 0.00, 13537749, NULL, 'pending', 'fvdfv@rfer.ru', NULL),
(23, 22, 'R553676822', 2600.00, 2600.00, '2012-07-27 10:59:37', '2012-07-27 11:38:20', 'complete', 0.00, 0.00, '2012-07-27 11:38:21', 43, 43, 0.00, 13537749, NULL, 'pending', 'sdfsdf@sdfsdf.ru', NULL),
(24, 23, 'R124772178', 36400.00, 36400.00, '2012-07-27 11:38:47', '2012-07-27 11:49:19', 'confirm', 0.00, 0.00, NULL, 45, 45, 0.00, 192811543, NULL, 'pending', 'jvg@hgjg.com', NULL),
(25, 24, 'R342633144', 13000.00, 13000.00, '2012-07-27 11:52:25', '2012-07-27 11:53:18', 'complete', 0.00, 0.00, '2012-07-27 11:53:18', 47, 47, 0.00, 13537749, NULL, 'pending', 'sdfsd@rter.com', NULL),
(26, 25, 'R025566463', 0.00, 0.00, '2012-07-27 11:53:25', '2012-07-27 11:53:25', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(27, 26, 'R643846268', 2600.00, 2600.00, '2012-07-27 12:04:38', '2012-07-27 12:11:54', 'confirm', 0.00, 0.00, NULL, 49, 49, 0.00, 574015644, NULL, 'pending', 'sdvsd@fvd.ru', NULL),
(28, 27, 'R863132707', 2600.00, 2600.00, '2012-07-27 12:12:53', '2012-07-27 12:13:39', 'complete', 0.00, 0.00, '2012-07-27 12:13:39', 51, 51, 0.00, 13537749, NULL, 'pending', 'sfgb@erw.com', NULL),
(29, 28, 'R150803454', 33800.00, 33800.00, '2012-07-27 12:43:08', '2012-07-27 12:49:12', 'complete', 0.00, 0.00, '2012-07-27 12:49:12', 53, 53, 0.00, 574015644, NULL, 'pending', 'sdfdsa@gm.ru', NULL),
(31, 30, 'R064236543', 5200.00, 5200.00, '2012-07-27 13:01:18', '2012-07-27 13:01:49', 'complete', 0.00, 0.00, '2012-07-27 13:01:49', 57, 57, 0.00, 192811543, NULL, 'pending', 'sdsdv@er.ru', NULL),
(32, 31, 'R323075421', 0.00, 0.00, '2012-07-27 13:01:53', '2012-07-27 13:01:53', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, 192811543, NULL, NULL, NULL, NULL),
(33, 32, 'R741401753', 2600.00, 2600.00, '2012-07-27 13:05:28', '2012-07-27 13:07:52', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'rsedykh@whitescape.com', NULL),
(34, 33, 'R327836120', 0.00, 0.00, '2012-07-27 14:49:38', '2012-07-27 14:49:38', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(35, 34, 'R786471872', 2600.00, 2600.00, '2012-07-27 16:44:00', '2012-07-27 16:44:00', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(36, 35, 'R350060325', 0.00, 0.00, '2012-07-30 07:50:33', '2012-07-30 07:50:33', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(40, 39, 'R483827073', 0.00, 0.00, '2012-07-31 14:53:51', '2012-07-31 14:53:51', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(41, 40, 'R804174814', 0.00, 0.00, '2012-07-31 19:38:41', '2012-07-31 19:38:41', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(42, 41, 'R418456270', 2600.00, 2600.00, '2012-08-01 12:12:41', '2012-08-01 12:12:59', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'rsedykh@whitescape.com', NULL),
(43, 42, 'R511781360', 2600.00, 2600.00, '2012-08-02 07:55:04', '2012-08-02 07:55:04', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(44, 43, 'R533743135', 2600.00, 2600.00, '2012-08-02 09:23:45', '2012-08-02 09:23:45', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(45, 44, 'R843178640', 5200.00, 5215.00, '2012-08-06 08:32:58', '2012-08-06 20:36:00', 'complete', 15.00, 0.00, '2012-08-06 20:36:00', 64, 64, 0.00, 13537749, 'ready', 'pending', 'rsedykh@whitescape.com', 'Ололошки, гогого.'),
(46, 45, 'R706886254', 0.00, 0.00, '2012-08-06 09:34:51', '2012-08-06 09:34:51', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(49, 1, 'R052331383', 33800.00, 33815.00, '2012-08-06 20:10:14', '2012-08-06 20:10:54', 'complete', 15.00, 0.00, '2012-08-06 20:10:54', 59, 59, 0.00, 13537749, 'ready', 'pending', 'spree@example.com', 'asdfasdfsdf'),
(50, 48, 'R630642274', 2600.00, 2600.00, '2012-08-06 20:11:29', '2012-08-06 20:11:38', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'gogogog@example.com', NULL),
(51, 1, 'R551576105', 36400.00, 36415.00, '2012-08-06 21:29:44', '2012-08-06 21:30:04', 'complete', 15.00, 0.00, '2012-08-06 21:30:04', 67, 67, 0.00, 13537749, 'ready', 'pending', 'spree@example.com', 'ыаваываы'),
(52, 49, 'R680250410', 2600.00, 2615.00, '2012-08-06 22:00:27', '2012-08-06 22:00:48', 'complete', 15.00, 0.00, '2012-08-06 22:00:48', 65, 65, 0.00, 13537749, 'ready', 'pending', 'rsedykh@whitescape.com', ''),
(53, 50, 'R547047877', 2600.00, 2600.00, '2012-08-07 11:02:32', '2012-08-07 11:02:33', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'temporaryemail@example.com', NULL),
(54, 51, 'R700073305', 2600.00, 2600.00, '2012-08-07 11:06:50', '2012-08-07 11:06:50', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(55, 52, 'R514432272', 2600.00, 2600.00, '2012-08-07 13:12:06', '2012-08-07 13:20:09', 'payment', 0.00, 0.00, NULL, 72, 72, 0.00, NULL, NULL, 'pending', 'ertyertyerty@example.com', NULL),
(56, 53, 'R227324851', 2600.00, 2600.00, '2012-08-07 15:24:04', '2012-08-07 15:24:04', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(58, 54, 'R506056257', 7800.00, 7815.00, '2012-08-08 08:57:48', '2012-08-08 08:59:30', 'complete', 15.00, 0.00, '2012-08-08 08:59:30', 76, 76, 0.00, 13537749, 'ready', 'pending', 'sdv@example.com', 'rjfrjr'),
(59, 1, 'R627620671', 2600.00, 2610.00, '2012-08-08 09:19:34', '2012-08-08 09:20:23', 'complete', 10.00, 0.00, '2012-08-08 09:20:23', 78, 78, 0.00, 192811543, 'ready', 'pending', 'spree@example.com', 'hhhhhh'),
(60, 55, 'R868715085', 2600.00, 2605.00, '2012-08-09 08:25:19', '2012-08-09 08:29:26', 'complete', 5.00, 0.00, '2012-08-09 08:29:26', 80, 80, 2605.00, 574015644, 'backorder', 'paid', 'd.cherevatenko@gmail.com', '12:29 09-08-12'),
(68, 62, 'R331150148', 2600.00, 2605.00, '2012-08-09 21:34:36', '2012-08-09 21:41:48', 'complete', 5.00, 0.00, '2012-08-09 21:41:48', 84, 84, 0.00, 574015644, 'ready', 'pending', 'rsedykh+test2@whitescape.com', 'Ололо'),
(69, 1, 'R385476402', 33800.00, 33815.00, '2012-08-10 00:01:53', '2012-08-10 00:02:17', 'complete', 15.00, 0.00, '2012-08-10 00:02:17', 86, 86, 0.00, 13537749, 'ready', 'pending', 'spree@example.com', 'rwergwerger'),
(71, 64, 'R680867524', 0.00, 0.00, '2012-08-10 09:54:46', '2012-08-10 09:54:46', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(72, 65, 'R263473800', 0.00, 0.00, '2012-08-10 09:55:18', '2012-08-10 09:55:18', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(73, 66, 'R258153621', 0.00, 0.00, '2012-08-10 09:55:21', '2012-08-10 09:55:21', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, NULL, NULL, NULL),
(74, 1, 'R305853164', 445000.00, 445000.00, '2012-08-10 12:04:59', '2012-08-10 12:15:53', 'complete', 0.00, 0.00, NULL, 90, 90, 999999.99, NULL, NULL, 'credit_owed', 'spree@example.com', NULL),
(75, 67, 'R235088616', 2600.00, 2600.00, '2012-08-10 12:19:30', '2012-08-10 12:20:19', 'payment', 0.00, 0.00, NULL, 94, 94, 0.00, NULL, NULL, 'pending', 'fdgn@example.com', NULL),
(76, 1, 'R384681703', 890000.00, 890000.00, '2012-08-10 12:20:07', '2012-08-10 12:35:03', 'complete', 0.00, 0.00, NULL, 97, 97, 890000.00, NULL, NULL, 'paid', 'spree@example.com', NULL),
(77, 1, 'R803750584', 445000.00, 445000.00, '2012-08-10 12:35:24', '2012-08-10 12:35:43', 'complete', 0.00, 0.00, NULL, 99, 99, 445000.00, NULL, NULL, 'paid', 'spree@example.com', NULL),
(78, 1, 'R481841144', 445000.00, 445000.00, '2012-08-10 12:40:19', '2012-08-10 12:40:40', 'complete', 0.00, 0.00, NULL, 101, 101, 445000.00, NULL, NULL, 'paid', 'spree@example.com', NULL),
(79, 1, 'R015724654', 445000.00, 445000.00, '2012-08-10 12:43:12', '2012-08-10 12:43:34', 'complete', 0.00, 0.00, NULL, 104, 104, 445000.00, NULL, NULL, 'paid', 'spree@example.com', NULL),
(80, 1, 'R780446200', 999999.99, 999999.99, '2012-08-10 12:46:04', '2012-08-20 16:41:20', 'cart', 10.00, 0.00, NULL, 180, 180, 445000.00, 192811543, 'pending', 'balance_due', 'spree@example.com', ''),
(82, 1, 'R778135456', 999999.99, 999999.99, '2012-08-10 12:56:58', '2012-08-10 14:04:39', 'complete', 0.00, 0.00, '2012-08-10 14:04:39', 123, 123, 999999.99, 13537749, NULL, 'credit_owed', 'spree@example.com', NULL),
(83, 1, 'R844537485', 445000.00, 445000.00, '2012-08-10 13:11:44', '2012-08-10 13:17:11', 'complete', 0.00, 0.00, '2012-08-10 13:17:11', 111, 111, 999999.99, 13537749, NULL, 'credit_owed', 'spree@example.com', NULL),
(84, 1, 'R225673042', 445000.00, 445000.00, '2012-08-10 13:25:05', '2012-08-10 13:26:09', 'complete', 0.00, 0.00, '2012-08-10 13:26:09', 113, 113, 445000.00, 13537749, NULL, 'paid', 'spree@example.com', NULL),
(85, 1, 'R425347478', 445000.00, 445000.00, '2012-08-10 13:28:39', '2012-08-10 13:28:59', 'complete', 0.00, 0.00, '2012-08-10 13:28:59', 115, 115, 445000.00, 192811543, NULL, 'paid', 'spree@example.com', NULL),
(86, 69, 'R724638148', 2600.00, 2605.00, '2012-08-10 13:41:39', '2012-08-10 13:45:05', 'confirm', 5.00, 0.00, NULL, 118, 118, 0.00, 574015644, 'ready', 'pending', 'rsedykh@whitescape.com', 'Ололо'),
(87, 68, 'R773123052', 445000.00, 445000.00, '2012-08-10 13:46:01', '2012-08-10 13:46:48', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'admin@devilmaydie.name', NULL),
(89, 71, 'R744353778', 2600.00, 2615.00, '2012-08-10 13:50:11', '2012-08-10 13:50:40', 'confirm', 15.00, 0.00, NULL, 120, 120, 0.00, 13537749, 'ready', 'pending', 'xcvb@example.com', 'vbnmvbnmvbn'),
(90, 72, 'R186120826', 445000.00, 445015.00, '2012-08-10 14:01:21', '2012-08-10 14:01:45', 'complete', 15.00, 0.00, '2012-08-10 14:01:45', 122, 122, 0.00, 13537749, 'ready', 'pending', 'admin@devilmaydie.name', ''),
(92, 74, 'R412760602', 2600.00, 2600.00, '2012-08-12 15:41:56', '2012-08-12 15:44:08', 'payment', 0.00, 0.00, NULL, 128, 128, 0.00, NULL, NULL, 'pending', 'rsedykh+test2@whitescape.com', NULL),
(93, 75, 'R654456755', 2600.00, 2600.00, '2012-08-12 20:01:22', '2012-08-12 20:01:37', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'temporaryemail@example.com', NULL),
(94, 76, 'R548888665', 445000.00, 445000.00, '2012-08-13 13:02:55', '2012-08-13 13:02:55', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(95, 77, 'R080361066', 402600.00, 402600.00, '2012-08-13 13:35:28', '2012-08-13 14:28:39', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'temporaryemail@example.com', NULL),
(96, 78, 'R843478438', 385000.00, 385000.00, '2012-08-13 16:00:09', '2012-08-13 20:06:11', 'payment', 0.00, 0.00, NULL, 130, 130, 0.00, NULL, NULL, 'pending', 'akr@whitescape.com', NULL),
(97, 79, 'R170274167', 999999.99, 999999.99, '2012-08-13 16:03:42', '2012-08-13 16:03:42', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(98, 80, 'R011006567', 445000.00, 445010.00, '2012-08-13 16:29:53', '2012-08-13 16:32:13', 'complete', 10.00, 0.00, '2012-08-13 16:32:13', 135, 135, 0.00, 192811543, 'ready', 'pending', 'admin@devilmaydie.name', '123'),
(99, 81, 'R474365227', 539000.00, 539010.00, '2012-08-13 16:41:02', '2012-08-13 16:41:27', 'complete', 10.00, 0.00, '2012-08-13 16:41:27', 136, 136, 0.00, 192811543, 'ready', 'pending', 'admin@devilmaydie.name', ''),
(100, 82, 'R281324145', 445000.00, 445010.00, '2012-08-13 16:42:00', '2012-08-13 16:42:23', 'complete', 10.00, 0.00, '2012-08-13 16:42:23', 137, 137, 0.00, 192811543, 'ready', 'pending', 'admin@devilmaydie.name', ''),
(101, 83, 'R446675620', 539000.00, 539015.00, '2012-08-13 16:51:34', '2012-08-13 16:53:54', 'complete', 15.00, 0.00, '2012-08-13 16:53:54', 138, 138, 0.00, 13537749, 'ready', 'pending', 'admin@devilmaydie.name', ''),
(103, 85, 'R438258717', 280000.00, 280010.00, '2012-08-13 21:12:41', '2012-08-13 21:13:11', 'confirm', 10.00, 0.00, NULL, 142, 142, 0.00, 192811543, 'ready', 'pending', 'fg@example.com', NULL),
(105, 87, 'R042156122', 848000.00, 848000.00, '2012-08-14 16:25:32', '2012-08-14 16:25:32', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(106, 88, 'R454386346', 999999.99, 999999.99, '2012-08-14 17:26:16', '2012-08-14 17:26:50', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'temporaryemail@example.com', NULL),
(107, 89, 'R623752742', 330000.00, 330000.00, '2012-08-14 17:47:56', '2012-08-14 17:47:56', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(108, 90, 'R287121477', 400000.00, 400000.00, '2012-08-15 16:43:35', '2012-08-15 16:43:35', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(110, 92, 'R233108058', 309000.00, 309000.00, '2012-08-16 09:49:07', '2012-08-16 10:39:27', 'complete', 0.00, 0.00, '2012-08-16 10:39:27', 143, 143, 309000.00, NULL, NULL, 'paid', 'dsf@example.com', NULL),
(111, 93, 'R038572016', 445000.00, 445000.00, '2012-08-16 10:35:19', '2012-08-16 10:36:07', 'complete', 0.00, 0.00, '2012-08-16 10:36:07', 145, 145, 445000.00, NULL, NULL, 'paid', 'admin@devilmaydie.name', NULL),
(112, 94, 'R362883378', 479000.00, 479000.00, '2012-08-16 10:46:09', '2012-08-16 10:46:28', 'payment', 0.00, 0.00, NULL, 146, 146, 0.00, NULL, NULL, 'pending', 'dfsdfsdfsd@example.com', NULL),
(122, 55, 'R456666466', 999999.99, 999999.99, '2012-08-20 09:50:33', '2012-08-20 12:44:09', 'address', 5.00, 0.00, '2012-08-20 12:29:13', 166, 166, 999999.99, 574015644, 'pending', 'balance_due', 'd.cherevatenko@gmail.com', NULL),
(125, 105, 'R468267335', 830000.00, 830000.00, '2012-08-20 11:49:18', '2012-08-20 11:50:07', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'asdf@example.com', NULL),
(126, 107, 'R472316510', 999999.99, 999999.99, '2012-08-20 11:50:30', '2012-08-20 12:13:24', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'grigl@gmail.com', NULL),
(127, 108, 'R876823522', 848000.00, 848000.00, '2012-08-20 12:13:32', '2012-08-20 12:13:36', 'address', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'temporaryemail@example.com', NULL),
(128, 109, 'R325363805', 445000.00, 445000.00, '2012-08-20 12:14:32', '2012-08-20 12:16:22', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', 'gh@whitescape.com', NULL),
(130, 55, 'R670222611', 400000.00, 400000.00, '2012-08-20 12:29:42', '2012-08-20 12:42:35', 'complete', 0.00, 0.00, '2012-08-20 12:42:35', 164, 164, 400000.00, 574015644, NULL, 'paid', 'd.cherevatenko@gmail.com', NULL),
(132, 55, 'R107662150', 539000.00, 539015.00, '2012-08-20 12:53:28', '2012-08-20 12:54:12', 'complete', 15.00, 0.00, '2012-08-20 12:54:12', 174, 174, 0.00, 13537749, 'ready', 'pending', 'd.cherevatenko@gmail.com', 'ыть'),
(133, 55, 'R027224511', 539000.00, 539005.00, '2012-08-20 13:18:45', '2012-08-20 13:24:34', 'complete', 5.00, 0.00, '2012-08-20 13:24:34', 176, 176, 539005.00, 574015644, 'backorder', 'paid', 'd.cherevatenko@gmail.com', ''),
(135, 112, 'R646786174', 945000.00, 945010.00, '2012-08-20 16:42:03', '2012-08-20 16:42:32', 'complete', 10.00, 0.00, '2012-08-20 16:42:32', 183, 183, 0.00, 192811543, 'ready', 'pending', 'tarampam@example.com', 'sdfsdf'),
(136, NULL, 'R765622348', 539000.00, 539015.00, '2012-08-20 16:43:11', '2012-08-20 16:43:42', 'complete', 15.00, 0.00, '2012-08-20 16:43:42', 187, 187, 0.00, 13537749, 'ready', 'pending', 'fgh@example.com', 'gggggg'),
(137, NULL, 'R316546853', 999999.99, 999999.99, '2012-08-20 18:55:34', '2012-08-20 18:55:34', 'cart', 0.00, 0.00, NULL, NULL, NULL, 0.00, NULL, NULL, 'pending', NULL, NULL),
(139, 113, 'R743370523', 999999.99, 999999.99, '2012-08-20 19:01:49', '2012-08-20 19:03:47', 'complete', 10.00, 0.00, '2012-08-20 19:03:47', 191, 191, 0.00, 192811543, 'ready', 'pending', 'no.americano@mail.ru', 'Упакуйте надежно!');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_header` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_footer` tinyint(1) NOT NULL DEFAULT '0',
  `foreign_link` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `visible` tinyint(1) DEFAULT '1',
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `show_in_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_pages_on_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `created_at`, `updated_at`, `amount`, `source_id`, `source_type`, `payment_method_id`, `state`, `response_code`, `avs_response`) VALUES
(4, 1, '2012-07-25 15:27:33', '2012-07-25 15:27:33', 39015.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(5, 4, '2012-07-25 16:46:06', '2012-07-25 16:46:06', 33815.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(6, 20, '2012-07-27 10:00:16', '2012-07-27 10:00:16', 2615.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(7, 20, '2012-07-27 10:11:15', '2012-07-27 10:11:15', 2600.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(8, 20, '2012-07-27 10:36:36', '2012-07-27 10:36:36', 2600.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(9, 20, '2012-07-27 10:39:15', '2012-07-27 10:39:15', 2615.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(10, 21, '2012-07-27 10:54:25', '2012-07-27 10:54:25', 5200.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(11, 21, '2012-07-27 10:55:06', '2012-07-27 10:55:06', 5200.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(12, 21, '2012-07-27 10:55:28', '2012-07-27 10:55:28', 5200.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(13, 21, '2012-07-27 10:57:06', '2012-07-27 10:57:06', 5200.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(14, 22, '2012-07-27 10:59:23', '2012-07-27 10:59:23', 2600.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(15, 23, '2012-07-27 11:38:20', '2012-07-27 11:38:20', 2600.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(16, 24, '2012-07-27 11:45:31', '2012-07-27 11:45:31', 36400.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(17, 24, '2012-07-27 11:46:04', '2012-07-27 11:46:04', 36400.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(18, 24, '2012-07-27 11:46:40', '2012-07-27 11:46:40', 36400.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(19, 24, '2012-07-27 11:46:49', '2012-07-27 11:46:49', 36400.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(20, 24, '2012-07-27 11:49:19', '2012-07-27 11:49:19', 36400.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(21, 25, '2012-07-27 11:53:11', '2012-07-27 11:53:11', 13000.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(22, 27, '2012-07-27 12:11:54', '2012-07-27 12:11:54', 2600.00, NULL, NULL, 1, 'checkout', NULL, NULL),
(23, 28, '2012-07-27 12:13:34', '2012-07-27 12:13:34', 2600.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(24, 31, '2012-07-27 13:01:47', '2012-07-27 13:01:47', 5200.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(25, 49, '2012-08-06 20:10:49', '2012-08-06 20:10:49', 33815.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(26, 45, '2012-08-06 20:34:56', '2012-08-06 20:34:56', 5215.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(27, 51, '2012-08-06 21:29:58', '2012-08-06 21:29:58', 36415.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(28, 52, '2012-08-06 22:00:43', '2012-08-06 22:00:43', 2615.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(29, 58, '2012-08-08 08:59:27', '2012-08-08 08:59:27', 7815.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(30, 59, '2012-08-08 09:20:18', '2012-08-08 09:20:18', 2610.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(31, 60, '2012-08-09 08:28:51', '2012-08-09 08:37:41', 2605.00, NULL, NULL, 2, 'completed', NULL, NULL),
(36, 68, '2012-08-09 21:40:24', '2012-08-09 21:40:24', 2605.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(37, 68, '2012-08-09 21:41:27', '2012-08-09 21:41:27', 2600.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(38, 69, '2012-08-10 00:02:13', '2012-08-10 00:02:13', 33815.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(39, 70, '2012-08-10 10:08:32', '2012-08-10 10:08:32', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(40, 70, '2012-08-10 10:16:20', '2012-08-10 10:16:20', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(41, 70, '2012-08-10 10:16:21', '2012-08-10 10:16:21', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(42, 70, '2012-08-10 10:17:26', '2012-08-10 10:17:26', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(43, 70, '2012-08-10 10:17:30', '2012-08-10 10:17:30', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(44, 70, '2012-08-10 10:17:31', '2012-08-10 10:17:31', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(45, 70, '2012-08-10 10:17:31', '2012-08-10 10:17:31', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(46, 70, '2012-08-10 10:17:33', '2012-08-10 10:17:33', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(47, 70, '2012-08-10 10:17:34', '2012-08-10 10:17:34', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(48, 70, '2012-08-10 10:17:34', '2012-08-10 10:17:34', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(49, 70, '2012-08-10 10:17:35', '2012-08-10 10:17:35', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(50, 70, '2012-08-10 10:20:06', '2012-08-10 10:20:06', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(51, 70, '2012-08-10 10:31:03', '2012-08-10 10:31:03', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(52, 70, '2012-08-10 10:31:07', '2012-08-10 10:31:07', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(53, 70, '2012-08-10 10:36:50', '2012-08-10 10:36:50', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(54, 70, '2012-08-10 10:45:04', '2012-08-10 10:45:04', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(55, 70, '2012-08-10 10:46:00', '2012-08-10 10:46:00', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(56, 70, '2012-08-10 10:46:03', '2012-08-10 10:46:03', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(57, 70, '2012-08-10 10:46:04', '2012-08-10 10:46:04', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(58, 70, '2012-08-10 10:46:04', '2012-08-10 10:46:04', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(59, 70, '2012-08-10 10:46:05', '2012-08-10 10:46:05', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(60, 70, '2012-08-10 10:46:06', '2012-08-10 10:46:06', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(61, 70, '2012-08-10 10:46:06', '2012-08-10 10:46:06', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(62, 70, '2012-08-10 10:46:07', '2012-08-10 10:46:07', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(63, 70, '2012-08-10 10:46:08', '2012-08-10 10:46:08', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(64, 70, '2012-08-10 10:46:08', '2012-08-10 10:46:08', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(65, 70, '2012-08-10 10:46:09', '2012-08-10 10:46:09', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(66, 70, '2012-08-10 10:46:09', '2012-08-10 10:46:09', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(67, 70, '2012-08-10 10:46:10', '2012-08-10 10:46:10', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(68, 70, '2012-08-10 10:46:11', '2012-08-10 10:46:11', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(69, 70, '2012-08-10 10:46:12', '2012-08-10 10:46:12', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(70, 70, '2012-08-10 10:46:12', '2012-08-10 10:46:12', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(71, 70, '2012-08-10 10:46:13', '2012-08-10 10:46:13', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(72, 70, '2012-08-10 10:46:14', '2012-08-10 10:46:14', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(73, 70, '2012-08-10 10:46:14', '2012-08-10 10:46:14', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(74, 70, '2012-08-10 10:46:15', '2012-08-10 10:46:15', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(75, 70, '2012-08-10 10:46:16', '2012-08-10 10:46:16', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(76, 70, '2012-08-10 10:46:16', '2012-08-10 10:46:16', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(77, 70, '2012-08-10 10:46:28', '2012-08-10 10:46:28', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(78, 70, '2012-08-10 10:46:29', '2012-08-10 10:46:29', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(79, 70, '2012-08-10 10:46:30', '2012-08-10 10:46:30', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(80, 70, '2012-08-10 10:46:31', '2012-08-10 10:46:31', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(81, 70, '2012-08-10 10:46:31', '2012-08-10 10:46:31', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(82, 70, '2012-08-10 10:46:32', '2012-08-10 10:46:32', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(83, 70, '2012-08-10 10:46:33', '2012-08-10 10:46:33', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(84, 70, '2012-08-10 11:30:18', '2012-08-10 11:30:18', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(85, 70, '2012-08-10 11:30:20', '2012-08-10 11:30:20', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(86, 70, '2012-08-10 11:30:23', '2012-08-10 11:30:23', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(87, 70, '2012-08-10 11:30:27', '2012-08-10 11:30:27', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(88, 70, '2012-08-10 12:01:47', '2012-08-10 12:01:47', 560000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(89, 74, '2012-08-10 12:05:20', '2012-08-10 12:05:20', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(90, 74, '2012-08-10 12:08:32', '2012-08-10 12:08:32', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(91, 74, '2012-08-10 12:15:53', '2012-08-10 12:15:53', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(92, 74, '2012-08-10 12:18:55', '2012-08-10 12:18:55', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(93, 74, '2012-08-10 12:18:56', '2012-08-10 12:18:56', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(94, 74, '2012-08-10 12:19:14', '2012-08-10 12:19:14', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(95, 74, '2012-08-10 12:19:15', '2012-08-10 12:19:15', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(96, 74, '2012-08-10 12:19:28', '2012-08-10 12:19:28', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(97, 74, '2012-08-10 12:19:31', '2012-08-10 12:19:31', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(98, 74, '2012-08-10 12:19:33', '2012-08-10 12:19:33', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(99, 74, '2012-08-10 12:19:34', '2012-08-10 12:19:34', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(100, 74, '2012-08-10 12:19:35', '2012-08-10 12:19:35', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(101, 74, '2012-08-10 12:19:51', '2012-08-10 12:19:51', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(102, 74, '2012-08-10 12:19:53', '2012-08-10 12:19:53', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(103, 76, '2012-08-10 12:35:03', '2012-08-10 12:35:03', 890000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(104, 77, '2012-08-10 12:35:43', '2012-08-10 12:35:43', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(105, 78, '2012-08-10 12:40:40', '2012-08-10 12:40:40', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(106, 79, '2012-08-10 12:43:34', '2012-08-10 12:43:34', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(107, 80, '2012-08-10 12:46:28', '2012-08-10 12:46:28', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(108, 81, '2012-08-10 12:48:57', '2012-08-10 12:48:57', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(109, 81, '2012-08-10 12:56:42', '2012-08-10 12:56:42', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(110, 82, '2012-08-10 12:57:22', '2012-08-10 12:57:22', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(111, 82, '2012-08-10 13:05:14', '2012-08-10 13:05:14', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(112, 83, '2012-08-10 13:12:23', '2012-08-10 13:12:23', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(113, 83, '2012-08-10 13:16:33', '2012-08-10 13:16:33', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(114, 83, '2012-08-10 13:16:35', '2012-08-10 13:16:35', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(115, 83, '2012-08-10 13:16:37', '2012-08-10 13:16:37', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(116, 83, '2012-08-10 13:16:38', '2012-08-10 13:16:38', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(117, 83, '2012-08-10 13:17:00', '2012-08-10 13:17:00', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(118, 83, '2012-08-10 13:17:01', '2012-08-10 13:17:01', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(119, 83, '2012-08-10 13:17:03', '2012-08-10 13:17:03', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(120, 83, '2012-08-10 13:17:11', '2012-08-10 13:17:11', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(121, 84, '2012-08-10 13:26:09', '2012-08-10 13:26:09', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(122, 85, '2012-08-10 13:28:59', '2012-08-10 13:28:59', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(123, 86, '2012-08-10 13:44:23', '2012-08-10 13:44:23', 2605.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(124, 86, '2012-08-10 13:44:45', '2012-08-10 13:44:45', 2605.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(125, 86, '2012-08-10 13:45:05', '2012-08-10 13:45:05', 2605.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(126, 89, '2012-08-10 13:50:36', '2012-08-10 13:50:36', 2615.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(128, 90, '2012-08-10 14:01:42', '2012-08-10 14:01:42', 445015.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(129, 82, '2012-08-10 14:04:39', '2012-08-10 14:04:39', 999999.99, NULL, NULL, 1, 'completed', NULL, NULL),
(130, 91, '2012-08-10 14:30:40', '2012-08-10 14:30:40', 445010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(131, 91, '2012-08-10 15:27:00', '2012-08-10 15:27:00', 445010.00, NULL, NULL, 2, 'completed', NULL, NULL),
(132, 81, '2012-08-13 16:25:55', '2012-08-13 16:25:55', 890000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(133, 98, '2012-08-13 16:30:17', '2012-08-13 16:30:17', 445010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(134, 99, '2012-08-13 16:41:24', '2012-08-13 16:41:24', 539010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(135, 100, '2012-08-13 16:42:20', '2012-08-13 16:42:20', 445010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(136, 101, '2012-08-13 16:51:52', '2012-08-13 16:51:52', 539015.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(137, 103, '2012-08-13 21:13:11', '2012-08-13 21:13:11', 280010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(138, 111, '2012-08-16 10:36:07', '2012-08-16 10:36:07', 445000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(139, 110, '2012-08-16 10:39:27', '2012-08-16 10:39:27', 309000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(140, 122, '2012-08-20 12:28:24', '2012-08-20 12:28:24', 999999.99, NULL, NULL, 2, 'checkout', NULL, NULL),
(141, 122, '2012-08-20 12:29:13', '2012-08-20 12:29:13', 999999.99, NULL, NULL, 2, 'completed', NULL, NULL),
(142, 130, '2012-08-20 12:42:35', '2012-08-20 12:42:35', 400000.00, NULL, NULL, 1, 'completed', NULL, NULL),
(146, 132, '2012-08-20 12:53:58', '2012-08-20 12:53:58', 539015.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(147, 133, '2012-08-20 13:18:55', '2012-08-20 13:18:55', 539005.00, NULL, NULL, 3, 'checkout', NULL, NULL),
(148, 133, '2012-08-20 13:23:58', '2012-08-20 13:23:58', 539005.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(149, 133, '2012-08-20 13:24:34', '2012-08-20 13:24:34', 539005.00, NULL, NULL, 3, 'completed', NULL, NULL),
(151, 80, '2012-08-20 16:23:05', '2012-08-20 16:23:05', 999999.99, NULL, NULL, 2, 'checkout', NULL, NULL),
(152, 80, '2012-08-20 16:25:33', '2012-08-20 16:25:33', 999999.99, NULL, NULL, 2, 'checkout', NULL, NULL),
(153, 135, '2012-08-20 16:42:19', '2012-08-20 16:42:19', 945010.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(154, 136, '2012-08-20 16:43:38', '2012-08-20 16:43:38', 539015.00, NULL, NULL, 2, 'checkout', NULL, NULL),
(155, 139, '2012-08-20 19:02:47', '2012-08-20 19:02:47', 999999.99, NULL, NULL, 3, 'checkout', NULL, NULL),
(156, 139, '2012-08-20 19:03:11', '2012-08-20 19:03:11', 999999.99, NULL, NULL, 3, 'checkout', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `payment_methods`
--

CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `environment` varchar(255) DEFAULT 'development',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `type`, `name`, `description`, `active`, `environment`, `created_at`, `updated_at`, `deleted_at`, `display_on`) VALUES
(1, 'Gateway::Robokassa', 'Робокасса', '', 1, 'production', '2012-07-25 11:44:32', '2012-07-27 12:58:13', NULL, ''),
(2, 'PaymentMethod::Check', 'Чек', '', 1, 'production', '2012-07-25 11:45:09', '2012-07-27 12:58:21', NULL, ''),
(3, 'PaymentMethod::SberBankInvoice', 'Сберинвойс', 'Сберинвойс', 1, 'production', '2012-08-08 09:19:14', '2012-08-08 09:20:01', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `preferences`
--

CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `owner_type` varchar(50) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_type` varchar(50) DEFAULT NULL,
  `value` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_prefs_on_owner_attr_pref` (`owner_id`,`owner_type`,`name`,`group_id`,`group_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243735705 ;

--
-- Дамп данных таблицы `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `owner_id`, `owner_type`, `group_id`, `group_type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'default_locale', 1, 'Configuration', NULL, NULL, 'ru', '2012-07-23 07:07:43', '2012-08-21 12:36:45'),
(2, 'default_country_id', 1, 'Configuration', NULL, NULL, '168', '2012-07-23 07:07:43', '2012-08-21 12:36:45'),
(3, 'allow_ssl_in_production', 1, 'Configuration', NULL, NULL, '0', '2012-07-23 07:07:43', '2012-08-21 12:36:45'),
(4, 'disable_bill_address', 1, 'Configuration', NULL, NULL, '1', '2012-07-23 07:07:43', '2012-08-21 12:36:45'),
(5, 'admin_interface_logo', 1, 'Configuration', NULL, NULL, 'admin/logo.png', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(6, 'store_email', 1, 'Configuration', NULL, NULL, 'test@site.ru', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(7, 'store_phone', 1, 'Configuration', NULL, NULL, '+7 (495) 1234567', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(8, 'products_per_page', 1, 'Configuration', NULL, NULL, '9', '2012-07-23 07:07:43', '2012-08-21 12:36:46'),
(59769363, 'amount', 491052212, 'Calculator', NULL, NULL, '5', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(87531454, 'amount', 192811543, 'Calculator', NULL, NULL, '10', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(174063089, 'amount', 574015644, 'Calculator', NULL, NULL, '5', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(243735672, 'amount', 13537749, 'Calculator', NULL, NULL, '15', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(243735673, 'checkout_zone', 1, 'Configuration', NULL, NULL, 'РФ', '2012-07-23 07:09:41', '2012-07-23 07:09:41'),
(243735674, 'last_check_for_spree_alerts', 1, 'Configuration', NULL, NULL, '20.08.2012 - 11:41', '2012-07-27 12:57:22', '2012-08-20 07:41:31'),
(243735675, 'dismissed_spree_alerts', 1, 'Configuration', NULL, NULL, '23,21', '2012-07-27 12:57:46', '2012-07-27 12:57:48'),
(243735676, 'server', 1, 'PaymentMethod', NULL, NULL, 'candies.test.whitescape.com', '2012-07-27 12:58:13', '2012-08-09 16:24:17'),
(243735677, 'test_mode', 1, 'PaymentMethod', NULL, NULL, '1', '2012-07-27 12:58:13', '2012-07-27 12:58:13'),
(243735678, 'password1', 1, 'PaymentMethod', NULL, NULL, 'PlEb82AlIas$', '2012-07-27 12:58:13', '2012-08-09 16:24:17'),
(243735679, 'password2', 1, 'PaymentMethod', NULL, NULL, 'giRT85lEAK!', '2012-07-27 12:58:13', '2012-08-09 16:24:17'),
(243735680, 'mrch_login', 1, 'PaymentMethod', NULL, NULL, 'devilmaydie', '2012-07-27 12:58:13', '2012-08-09 16:24:17'),
(243735681, 'recipient', 3, 'PaymentMethod', NULL, NULL, 'ываыфв', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735682, 'inn', 3, 'PaymentMethod', NULL, NULL, '123', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735683, 'kpp', 3, 'PaymentMethod', NULL, NULL, '12', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735684, 'corr', 3, 'PaymentMethod', NULL, NULL, '123', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735685, 'bik', 3, 'PaymentMethod', NULL, NULL, '1111', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735686, 'settlement_acc', 3, 'PaymentMethod', NULL, NULL, '4545', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735687, 'recipient_bank', 3, 'PaymentMethod', NULL, NULL, 'ц', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735688, 'recipient_bank_city', 3, 'PaymentMethod', NULL, NULL, 'аааа', '2012-08-08 09:19:29', '2012-08-08 09:19:29'),
(243735689, 'enable_mail_delivery', 1, 'MailMethod', NULL, NULL, '1', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735690, 'mails_from', 1, 'MailMethod', NULL, NULL, 'noreply@candies.ru', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735691, 'mail_bcc', 1, 'MailMethod', NULL, NULL, '', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735692, 'intercept_email', 1, 'MailMethod', NULL, NULL, '', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735693, 'mail_domain', 1, 'MailMethod', NULL, NULL, 'localhost', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735694, 'mail_host', 1, 'MailMethod', NULL, NULL, 'localhost', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735695, 'mail_port', 1, 'MailMethod', NULL, NULL, '25', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735696, 'secure_connection_type', 1, 'MailMethod', NULL, NULL, 'None', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735697, 'mail_auth_type', 1, 'MailMethod', NULL, NULL, 'none', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735698, 'smtp_username', 1, 'MailMethod', NULL, NULL, '', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735699, 'smtp_password', 1, 'MailMethod', NULL, NULL, '', '2012-08-10 14:00:03', '2012-08-10 14:00:03'),
(243735700, 'site_name', 1, 'Configuration', NULL, NULL, 'Spree Demo Site', '2012-08-14 16:34:37', '2012-08-14 16:34:37'),
(243735701, 'default_seo_title', 1, 'Configuration', NULL, NULL, '', '2012-08-14 16:34:37', '2012-08-14 16:34:37'),
(243735702, 'site_url', 1, 'Configuration', NULL, NULL, 'http://candies.test.whitescape.com', '2012-08-14 16:34:37', '2012-08-14 16:34:37'),
(243735703, 'allow_ssl_in_development_and_test', 1, 'Configuration', NULL, NULL, '0', '2012-08-14 16:34:37', '2012-08-14 16:34:37'),
(243735704, 'check_for_spree_alerts', 1, 'Configuration', NULL, NULL, '1', '2012-08-14 16:34:37', '2012-08-14 16:34:37');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `export_to_yandex_market` tinyint(1) NOT NULL DEFAULT '1',
  `gender` int(11) DEFAULT NULL,
  `ms_sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_available_on` (`available_on`),
  KEY `index_products_on_deleted_at` (`deleted_at`),
  KEY `index_products_on_name` (`name`),
  KEY `index_products_on_permalink` (`permalink`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`, `permalink`, `available_on`, `tax_category_id`, `shipping_category_id`, `deleted_at`, `meta_description`, `meta_keywords`, `count_on_hand`, `export_to_yandex_market`, `gender`, `ms_sku`) VALUES
(1, 'Converse Brown All Stars', 'Описание товара', '2012-07-23 11:43:14', '2012-07-30 08:51:13', 'converse-brown-all-stars', '2012-07-04 20:00:00', NULL, NULL, NULL, '', '', 11, 1, NULL, NULL),
(2, 'Converse black', 'Описание товара&nbsp;', '2012-07-23 12:01:49', '2012-07-23 13:27:21', 'converse-black', '2012-07-04 20:00:00', NULL, NULL, NULL, '', '', 0, 1, NULL, NULL),
(3, 'Keds White', 'Описание товара&nbsp;', '2012-07-23 12:02:56', '2012-07-23 18:40:50', 'keds-white', '2012-07-04 20:00:00', NULL, NULL, NULL, '', '', 0, 1, NULL, NULL),
(4, 'Балетки из текстиля Fred Perry Жен SS-12', NULL, '2012-08-06 20:04:58', '2012-08-06 20:04:58', 'b9083w', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 'B9083W'),
(5, 'Кеды высокие из замши Fred Perry Жен SS-12', NULL, '2012-08-06 20:04:58', '2012-08-06 20:04:58', 'b9071w', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 'B9071W'),
(6, 'Балетки из замши Fred Perry Жен SS-12', NULL, '2012-08-06 20:04:58', '2012-08-06 20:04:58', 'b9065w', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 'B9065W'),
(7, 'Кеды высокие из замши Fred Perry Муж SS-12', NULL, '2012-08-06 20:04:59', '2012-08-20 19:03:47', 'b9030', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 'B9030'),
(8, 'Кеды низкие из кожи Fred Perry Муж SS-12', NULL, '2012-08-06 20:04:59', '2012-08-20 19:03:47', 'b9001', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 'B9001'),
(9, 'Кеды низкие из нубука/кожи Муж SS-12', NULL, '2012-08-06 20:04:59', '2012-08-20 19:03:47', 'b9104', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 'B9104'),
(10, 'Кеды низкие из текстиля Fred Perry Муж SS-12', NULL, '2012-08-06 20:04:59', '2012-08-20 19:03:47', 'b9114', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 'B9114'),
(11, 'Туфли низкие из замши Fred Perry Жен SS-12', NULL, '2012-08-06 20:04:59', '2012-08-14 11:58:32', 'b9072w', NULL, NULL, NULL, NULL, NULL, NULL, 300, 1, 2, 'B9072W'),
(12, 'UNISEX RAIN BOOTS 2619', NULL, '2012-08-06 20:04:59', '2012-08-06 20:04:59', '1000101', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '1000101'),
(13, 'Сланцы Brasil Logo Unisex 0090', NULL, '2012-08-06 20:04:59', '2012-08-06 20:04:59', '4110850', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '4110850'),
(14, 'Сланцы Brasil Mix Unisex 0090', NULL, '2012-08-06 20:04:59', '2012-08-06 20:04:59', '4123206', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '4123206'),
(15, 'Сланцы Top Mix Unisex 0319', NULL, '2012-08-06 20:04:59', '2012-08-06 20:05:00', '4115549', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '4115549'),
(16, 'Сланцы Flash Urban', NULL, '2012-08-06 20:04:59', '2012-08-06 20:04:59', '4000039', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '4000039'),
(17, 'Сланцы Slim Orient', NULL, '2012-08-06 20:04:59', '2012-08-06 20:04:59', '4123110', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '4123110'),
(18, 'Сланцы Brasil Unisex', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '4000032', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '4000032'),
(19, 'Сланцы Top Soul Unisex', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '4123444', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '4123444'),
(20, 'Сланцы Trend', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '4103358', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '4103358'),
(21, 'Сланцы Tradicional Unisex 0031', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '4001280', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '4001280'),
(22, 'Сланцы Top Unisex', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '4000029', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '4000029'),
(23, 'B-NPPA 1460 ZFDM 28', 'Коллективное бессознательное, на первый взгляд, традиционно охватывает гендер, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Зенитное часовое число, без использования формальных признаков поэзии, индоссирует опрос, но особой популярностью пользуются заведения подобного рода, сосредоточенные в районе Центральной площади и железнодорожного вокзала. Однако Л.В.Щерба утверждал, что апогей многопланово окрашивает Гвианский щит, не считаясь с затратами. Прямоугольная матрица иллюстрирует данный поток сознания, говорится в докладе ОБСЕ.', '2012-08-06 20:05:00', '2012-08-14 11:58:33', '11822002', NULL, NULL, NULL, NULL, '', '', -3, 1, 1, '11822002'),
(24, 'Bronson Pebbled', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '14375230', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '14375230'),
(25, 'B-SM 1461 Z Black smooth 3', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '11838002', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '11838002'),
(26, 'B-SM 1461Z Black Smooth', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '10085001', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '10085001'),
(27, 'Mono black', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '14353001-1460', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '14353001 1460'),
(28, 'Caine navy bonita', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '14377410', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '14377410'),
(29, 'Cherry Red', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '11838600', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '11838600'),
(30, 'Mono navy smooth', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '14352410', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '14352410'),
(31, 'Mono White smooth', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:00', '14346100', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '14346100'),
(32, 'Sylvie Black Danio', NULL, '2012-08-06 20:05:00', '2012-08-06 20:05:01', '14383001', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '14383001'),
(33, 'Polina Soft Grey', NULL, '2012-08-06 20:05:01', '2012-08-06 20:05:01', '14389020', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '14389020'),
(34, 'Polina Red', NULL, '2012-08-06 20:05:01', '2012-08-06 20:05:01', 'mp005', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 'MP005'),
(35, 'Regan Blue', NULL, '2012-08-06 20:05:01', '2012-08-06 20:05:01', '14370400', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '14370400'),
(36, 'White Portland', NULL, '2012-08-06 20:05:01', '2012-08-06 20:05:01', '10084100', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '10084100'),
(37, 'Туфли низкие из замши Fred Perry Жен SS-12', NULL, '2012-08-14 11:58:32', '2012-08-14 11:58:32', 'b9072e', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, 'QNiKymIIj2y-THrk4fB7f1');

-- --------------------------------------------------------

--
-- Структура таблицы `products_promotion_rules`
--

CREATE TABLE IF NOT EXISTS `products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products_taxons`
--

CREATE TABLE IF NOT EXISTS `products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  KEY `index_products_taxons_on_product_id` (`product_id`),
  KEY `index_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_groups`
--

CREATE TABLE IF NOT EXISTS `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `ms_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_groups_on_name` (`name`),
  KEY `index_product_groups_on_permalink` (`permalink`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `product_groups`
--

INSERT INTO `product_groups` (`id`, `name`, `permalink`, `order`, `ms_id`) VALUES
(1, 'Dr Martens', 'dr-martens', NULL, 'j5vPOwloho_E4dWjQUlTS2'),
(2, 'Fred Perry', 'fred-perry', NULL, 'GgO3X9dfhpO_WPv-c8jDL2'),
(3, 'Havaianas', 'havaianas', NULL, 'hpTEVnUkhbCMi2l7kw0ZI1');

-- --------------------------------------------------------

--
-- Структура таблицы `product_groups_products`
--

CREATE TABLE IF NOT EXISTS `product_groups_products` (
  `product_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_groups_products`
--

INSERT INTO `product_groups_products` (`product_id`, `product_group_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(37, 2),
(12, 3),
(13, 3),
(14, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(15, 3),
(22, 3),
(21, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_option_types`
--

CREATE TABLE IF NOT EXISTS `product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `product_option_types`
--

INSERT INTO `product_option_types` (`id`, `product_id`, `option_type_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '2012-07-23 18:01:07', '2012-07-23 18:01:07'),
(2, 1, 1, 1, '2012-07-23 18:23:59', '2012-07-23 18:23:59'),
(3, 1, 2, 2, '2012-07-23 18:34:50', '2012-07-23 18:34:50'),
(4, 3, 2, 2, '2012-07-23 18:41:39', '2012-07-23 18:41:39');

-- --------------------------------------------------------

--
-- Структура таблицы `product_properties`
--

CREATE TABLE IF NOT EXISTS `product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `product_properties`
--

INSERT INTO `product_properties` (`id`, `product_id`, `property_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'male', '2012-07-30 08:50:32', '2012-07-30 08:50:32'),
(2, 1, 1, 'female', '2012-07-30 08:51:13', '2012-07-30 08:51:13'),
(3, 3, 1, 'male', '2012-07-30 08:51:39', '2012-07-30 08:51:39');

-- --------------------------------------------------------

--
-- Структура таблицы `product_scopes`
--

CREATE TABLE IF NOT EXISTS `product_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `arguments` text,
  PRIMARY KEY (`id`),
  KEY `index_product_scopes_on_name` (`name`),
  KEY `index_product_scopes_on_product_group_id` (`product_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `promotions`
--

CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `combine` tinyint(1) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `promotion_rules`
--

CREATE TABLE IF NOT EXISTS `promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_promotion_rules_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `promotion_rules_users`
--

CREATE TABLE IF NOT EXISTS `promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_user_id` (`user_id`),
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `properties`
--

INSERT INTO `properties` (`id`, `name`, `presentation`, `created_at`, `updated_at`) VALUES
(1, 'gender', 'пол', '2012-07-30 08:49:37', '2012-07-30 08:49:37');

-- --------------------------------------------------------

--
-- Структура таблицы `properties_prototypes`
--

CREATE TABLE IF NOT EXISTS `properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `prototypes`
--

CREATE TABLE IF NOT EXISTS `prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `relations`
--

CREATE TABLE IF NOT EXISTS `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relation_type_id` int(11) DEFAULT NULL,
  `relatable_id` int(11) DEFAULT NULL,
  `relatable_type` varchar(255) DEFAULT NULL,
  `related_to_id` int(11) DEFAULT NULL,
  `related_to_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `discount_amount` decimal(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `relations`
--

INSERT INTO `relations` (`id`, `relation_type_id`, `relatable_id`, `relatable_type`, `related_to_id`, `related_to_type`, `created_at`, `updated_at`, `discount_amount`) VALUES
(1, 1, 23, 'Product', 4, 'Product', '2012-08-14 18:43:34', '2012-08-14 18:43:34', 0.00);

-- --------------------------------------------------------

--
-- Структура таблицы `relation_types`
--

CREATE TABLE IF NOT EXISTS `relation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `applies_to` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `relation_types`
--

INSERT INTO `relation_types` (`id`, `name`, `description`, `applies_to`, `created_at`, `updated_at`) VALUES
(1, 'Сопутствующие товары', '', 'Product', '2012-08-14 17:43:01', '2012-08-14 17:43:01');

-- --------------------------------------------------------

--
-- Структура таблицы `return_authorizations`
--

CREATE TABLE IF NOT EXISTS `return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id` (`role_id`),
  KEY `index_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles_users`
--

INSERT INTO `roles_users` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20081216193152'),
('20090311090247'),
('20090625125735'),
('20090814113100'),
('20090814142845'),
('20090823005402'),
('20090827180351'),
('20090829000527'),
('20090904192342'),
('20090923100315'),
('20091007134354'),
('20091008091614'),
('20091012120519'),
('20091015110842'),
('20091015153048'),
('20091016174634'),
('20091017175558'),
('20091021133257'),
('20091104151730'),
('20091126190904'),
('20091209153045'),
('20091209202200'),
('20091211203813'),
('20091212161118'),
('20091213222815'),
('20091214183826'),
('20091219021134'),
('20100105090147'),
('20100105132138'),
('20100107141738'),
('20100111205525'),
('20100112151511'),
('20100113090919'),
('20100113203104'),
('20100121160010'),
('20100121183934'),
('20100125145351'),
('20100126103714'),
('20100204105222'),
('20100209025806'),
('20100209144531'),
('20100213103131'),
('20100214212536'),
('20100223170312'),
('20100223183812'),
('20100224153127'),
('20100301163454'),
('20100306153445'),
('20100308090631'),
('20100308092101'),
('20100317120946'),
('20100323085528'),
('20100324123835'),
('20100419190933'),
('20100419194457'),
('20100426100726'),
('20100427121301'),
('20100501084722'),
('20100501095202'),
('20100502163939'),
('20100504142133'),
('20100506180619'),
('20100506185838'),
('20100528155333'),
('20100528185820'),
('20100605152042'),
('20100624110730'),
('20100624123336'),
('20100624175547'),
('20100811163637'),
('20100811205836'),
('20100812162326'),
('20100813023502'),
('20100813185745'),
('20100816212146'),
('20100817152723'),
('20100819170125'),
('20100820135707'),
('20100901171814'),
('20100903203949'),
('20100923095305'),
('20100923162011'),
('20100929151905'),
('20101008190536'),
('20101026184700'),
('20101026184714'),
('20101026184746'),
('20101026184808'),
('20101026184833'),
('20101026184855'),
('20101026184916'),
('20101026184932'),
('20101026184950'),
('20101026184959'),
('20101026185022'),
('20101026192225'),
('20101028151745'),
('20101103212716'),
('20101111133551'),
('20101117031806'),
('20101214150824'),
('20101217012656'),
('20101219201531'),
('20101223215658'),
('20110110094042'),
('20110110130847'),
('20110111122537'),
('20110302102208'),
('20110314192118'),
('20110330125354'),
('20110404120925'),
('20110510080413'),
('20120802072440'),
('20120802120904'),
('20120803102152'),
('20120808141025'),
('20120810132722'),
('20120817154456');

-- --------------------------------------------------------

--
-- Структура таблицы `shipments`
--

CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `tracking` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipments_on_number` (`number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Дамп данных таблицы `shipments`
--

INSERT INTO `shipments` (`id`, `order_id`, `shipping_method_id`, `tracking`, `created_at`, `updated_at`, `number`, `cost`, `shipped_at`, `address_id`, `state`) VALUES
(1, 1, 13537749, NULL, '2012-07-25 09:17:37', '2012-07-25 09:17:37', 'H76125213878', NULL, NULL, 1, 'ready'),
(2, 4, 13537749, NULL, '2012-07-25 16:45:58', '2012-07-25 16:45:58', 'H40231304680', NULL, NULL, 7, 'ready'),
(3, 20, 13537749, NULL, '2012-07-27 10:36:37', '2012-07-27 10:36:37', 'H58072662207', NULL, NULL, 37, 'pending'),
(4, 49, 13537749, NULL, '2012-08-06 20:10:49', '2012-08-06 20:10:49', 'H68042015454', NULL, NULL, 59, 'ready'),
(5, 45, 13537749, NULL, '2012-08-06 20:34:56', '2012-08-06 20:34:56', 'H36021637273', NULL, NULL, 64, 'ready'),
(6, 51, 13537749, NULL, '2012-08-06 21:29:58', '2012-08-06 21:29:58', 'H14030570032', NULL, NULL, 67, 'ready'),
(7, 52, 13537749, NULL, '2012-08-06 22:00:43', '2012-08-06 22:00:43', 'H34651428734', NULL, NULL, 65, 'ready'),
(8, 58, 13537749, NULL, '2012-08-08 08:59:27', '2012-08-08 08:59:27', 'H82874484582', NULL, NULL, 76, 'ready'),
(9, 59, 192811543, NULL, '2012-08-08 09:20:18', '2012-08-08 09:20:18', 'H46528523625', NULL, NULL, 78, 'ready'),
(10, 60, 574015644, NULL, '2012-08-09 08:28:51', '2012-08-09 08:28:51', 'H48115616787', NULL, NULL, 80, 'pending'),
(11, 68, 574015644, NULL, '2012-08-09 21:41:28', '2012-08-09 21:41:28', 'H71775864666', NULL, NULL, 84, 'ready'),
(12, 69, 13537749, NULL, '2012-08-10 00:02:14', '2012-08-10 00:02:14', 'H56465436111', NULL, NULL, 86, 'ready'),
(13, 86, 574015644, NULL, '2012-08-10 13:44:24', '2012-08-10 13:44:24', 'H71331873474', NULL, NULL, 118, 'ready'),
(14, 89, 13537749, NULL, '2012-08-10 13:50:36', '2012-08-10 13:50:36', 'H51404007651', NULL, NULL, 120, 'ready'),
(16, 90, 13537749, NULL, '2012-08-10 14:01:42', '2012-08-10 14:01:42', 'H40652577006', NULL, NULL, 122, 'ready'),
(17, 91, 192811543, NULL, '2012-08-10 14:30:40', '2012-08-10 14:30:40', 'H00110231787', NULL, NULL, 126, 'ready'),
(18, 98, 192811543, NULL, '2012-08-13 16:30:17', '2012-08-13 16:30:17', 'H81106413682', NULL, NULL, 135, 'ready'),
(19, 99, 192811543, NULL, '2012-08-13 16:41:25', '2012-08-13 16:41:25', 'H57574831118', NULL, NULL, 136, 'ready'),
(20, 100, 192811543, NULL, '2012-08-13 16:42:20', '2012-08-13 16:42:20', 'H11688721567', NULL, NULL, 137, 'ready'),
(21, 101, 13537749, NULL, '2012-08-13 16:51:52', '2012-08-13 16:51:52', 'H51670656833', NULL, NULL, 138, 'ready'),
(22, 103, 192811543, NULL, '2012-08-13 21:13:11', '2012-08-13 21:13:11', 'H33721645716', NULL, NULL, 142, 'ready'),
(23, 122, 574015644, NULL, '2012-08-20 12:28:24', '2012-08-20 12:28:24', 'H06001586560', NULL, NULL, 160, 'pending'),
(25, 132, 13537749, NULL, '2012-08-20 12:53:59', '2012-08-20 12:53:59', 'H35570276663', NULL, NULL, 174, 'ready'),
(26, 133, 574015644, NULL, '2012-08-20 13:18:55', '2012-08-20 13:18:55', 'H63108451754', NULL, NULL, 176, 'pending'),
(28, 80, 192811543, NULL, '2012-08-20 16:23:05', '2012-08-20 16:25:33', 'H83712372682', NULL, NULL, 180, 'pending'),
(29, 135, 192811543, NULL, '2012-08-20 16:42:19', '2012-08-20 16:42:19', 'H27860104238', NULL, NULL, 183, 'ready'),
(30, 136, 13537749, NULL, '2012-08-20 16:43:38', '2012-08-20 16:43:38', 'H05263247344', NULL, NULL, 187, 'ready'),
(31, 139, 192811543, NULL, '2012-08-20 19:02:47', '2012-08-20 19:02:47', 'H52711738730', NULL, NULL, 189, 'ready');

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_categories`
--

CREATE TABLE IF NOT EXISTS `shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `shipping_categories`
--

INSERT INTO `shipping_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'По умолчанию', '2012-07-23 07:07:47', '2012-07-23 07:07:47');

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_methods`
--

CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=574015645 ;

--
-- Дамп данных таблицы `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `zone_id`, `name`, `created_at`, `updated_at`, `display_on`, `description`) VALUES
(13537749, 1, 'Курьером', '2012-07-23 07:07:47', '2012-07-23 07:07:47', NULL, NULL),
(192811543, 1, 'Почта России (по предоплате)', '2012-07-23 07:07:47', '2012-07-23 07:07:47', NULL, NULL),
(574015644, 1, 'Почта России (наложным платежём)', '2012-07-23 07:07:47', '2012-07-23 07:07:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Дамп данных таблицы `states`
--

INSERT INTO `states` (`id`, `name`, `abbr`, `country_id`) VALUES
(1, 'Республика Адыгея', 'RU-AD', 168),
(2, 'Республика Башкортостан', 'RU-BA', 168),
(3, 'Республика Бурятия', 'RU-BU', 168),
(4, 'Республика Алтай', 'RU-AL', 168),
(5, 'Республика Дагестан', 'RU-DA', 168),
(6, 'Республика Ингушетия', 'RU-IN', 168),
(7, 'Кабардино-Балкарская республика', 'RU-KB', 168),
(8, 'Республика Калмыкия', 'RU-KL', 168),
(9, 'Карачаево-Черкесская республика', 'RU-KC', 168),
(10, 'Республика Карелия', 'RU-KR', 168),
(11, 'Республика Коми', 'RU-KO', 168),
(12, 'Республика Марий Эл', 'RU-ME', 168),
(13, 'Республика Мордовия', 'RU-MO', 168),
(14, 'Республика Саха (Якутия)', 'RU-SA', 168),
(15, 'Республика Северная Осетия — Алания', 'RU-SE', 168),
(16, 'Республика Татарстан', 'RU-TA', 168),
(17, 'Республика Тыва', 'RU-TY', 168),
(18, 'Удмуртская республика', 'RU-UD', 168),
(19, 'Республика Хакасия', 'RU-KK', 168),
(20, 'Чеченская республика', 'RU-CE', 168),
(21, 'Чувашская республика', 'RU-CU', 168),
(22, 'Алтайский край', 'RU-ALT', 168),
(23, 'Краснодарский край', 'RU-KDA', 168),
(24, 'Красноярский край', 'RU-KIA', 168),
(25, 'Приморский край', 'RU-PRI', 168),
(26, 'Ставропольский край', 'RU-STA', 168),
(27, 'Хабаровский край', 'RU-KHA', 168),
(28, 'Амурская область', 'RU-AMU', 168),
(29, 'Архангельская область', 'RU-ARK', 168),
(30, 'Астраханская область', 'RU-AST', 168),
(31, 'Белгородская область', 'RU-BEL', 168),
(32, 'Брянская область', 'RU-BRY', 168),
(33, 'Владимирская область', 'RU-VLA', 168),
(34, 'Волгоградская область', 'RU-VGG', 168),
(35, 'Вологодская область', 'RU-VLG', 168),
(36, 'Воронежская область', 'RU-VOR', 168),
(37, 'Ивановская область', 'RU-IVA', 168),
(38, 'Иркутская область', 'RU-IRK', 168),
(39, 'Калининградская область', 'RU-KGD', 168),
(40, 'Калужская область', 'RU-KLU', 168),
(41, 'Камчатский край', 'RU-KAM', 168),
(42, 'Кемеровская область', 'RU-KEM', 168),
(43, 'Кировская область', 'RU-KIR', 168),
(44, 'Костромская область', 'RU-KOS', 168),
(45, 'Курганская область', 'RU-KGN', 168),
(46, 'Курская область', 'RU-KRS', 168),
(47, 'Ленинградская область', 'RU-LEN', 168),
(48, 'Липецкая область', 'RU-LIP', 168),
(49, 'Магаданская область', 'RU-MAG', 168),
(50, 'Московская область', 'RU-MOS', 168),
(51, 'Мурманская область', 'RU-MUR', 168),
(52, 'Нижегородская область', 'RU-NIZ', 168),
(53, 'Новгородская область', 'RU-NGR', 168),
(54, 'Новосибирская область', 'RU-NVS', 168),
(55, 'Омская область', 'RU-OMS', 168),
(56, 'Оренбургская область', 'RU-ORE', 168),
(57, 'Орловская область', 'RU-ORL', 168),
(58, 'Пензенская область', 'RU-PNZ', 168),
(59, 'Пермский край', 'RU-PER', 168),
(60, 'Псковская область', 'RU-PSK', 168),
(61, 'Ростовская область', 'RU-ROS', 168),
(62, 'Рязанская область', 'RU-RYA', 168),
(63, 'Самарская область', 'RU-SAM', 168),
(64, 'Саратовская область', 'RU-SAR', 168),
(65, 'Сахалинская область', 'RU-SAK', 168),
(66, 'Свердловская область', 'RU-SVE', 168),
(67, 'Смоленская область', 'RU-SMO', 168),
(68, 'Тамбовская область', 'RU-TAM', 168),
(69, 'Тверская область', 'RU-TVE', 168),
(70, 'Томская область', 'RU-TOM', 168),
(71, 'Тульская область', 'RU-TUL', 168),
(72, 'Тюменская область', 'RU-TYU', 168),
(73, 'Ульяновская область', 'RU-ULY', 168),
(74, 'Челябинская область', 'RU-CHE', 168),
(75, 'Забайкальский край', 'RU-ZAB', 168),
(76, 'Ярославская область', 'RU-YAR', 168),
(77, 'Москва', 'RU-MOW', 168),
(78, 'Санкт-Петербург', 'RU-SPE', 168),
(79, 'Еврейская автономная область', 'RU-YEV', 168),
(83, 'Ненецкий автономный округ', 'RU-NEN', 168),
(86, 'Ханты-Мансийский автономный округ - Югра', 'RU-KHM', 168),
(87, 'Чукотский автономный округ', 'RU-CHU', 168),
(89, 'Ямало-Ненецкий автономный округ', 'RU-YAN', 168);

-- --------------------------------------------------------

--
-- Структура таблицы `state_events`
--

CREATE TABLE IF NOT EXISTS `state_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=165 ;

--
-- Дамп данных таблицы `state_events`
--

INSERT INTO `state_events` (`id`, `stateful_id`, `user_id`, `name`, `created_at`, `updated_at`, `previous_state`, `stateful_type`, `next_state`) VALUES
(1, 1, 1, 'payment', '2012-07-25 07:59:44', '2012-07-25 07:59:44', 'pending', 'Order', 'paid'),
(2, 1, 1, 'payment', '2012-07-25 07:59:44', '2012-07-25 07:59:44', 'pending', 'Order', 'paid'),
(3, 1, 1, 'payment', '2012-07-25 08:16:48', '2012-07-25 08:16:48', 'paid', 'Order', 'pending'),
(4, 1, 1, 'payment', '2012-07-25 08:17:12', '2012-07-25 08:17:12', 'pending', 'Order', 'paid'),
(5, 1, 1, 'payment', '2012-07-25 08:17:12', '2012-07-25 08:17:12', 'pending', 'Order', 'paid'),
(6, 1, 1, 'payment', '2012-07-25 08:17:31', '2012-07-25 08:17:31', 'paid', 'Order', 'pending'),
(7, 1, 1, 'payment', '2012-07-25 08:42:04', '2012-07-25 08:42:04', 'pending', 'Order', 'paid'),
(8, 1, 1, 'payment', '2012-07-25 08:42:04', '2012-07-25 08:42:04', 'pending', 'Order', 'paid'),
(9, 1, 1, 'payment', '2012-07-25 08:42:16', '2012-07-25 08:42:16', 'paid', 'Order', 'pending'),
(10, 1, 1, 'payment', '2012-07-25 08:55:00', '2012-07-25 08:55:00', 'pending', 'Order', 'paid'),
(11, 1, 1, 'payment', '2012-07-25 08:55:00', '2012-07-25 08:55:00', 'pending', 'Order', 'paid'),
(12, 1, 1, 'payment', '2012-07-25 08:55:43', '2012-07-25 08:55:43', 'paid', 'Order', 'pending'),
(13, 1, 1, 'payment', '2012-07-25 08:55:54', '2012-07-25 08:55:54', 'pending', 'Order', 'paid'),
(14, 1, 1, 'payment', '2012-07-25 08:55:54', '2012-07-25 08:55:54', 'pending', 'Order', 'paid'),
(15, 1, 1, 'payment', '2012-07-25 08:56:40', '2012-07-25 08:56:40', 'paid', 'Order', 'pending'),
(16, 1, 1, 'payment', '2012-07-25 08:56:53', '2012-07-25 08:56:53', 'pending', 'Order', 'paid'),
(17, 1, 1, 'payment', '2012-07-25 08:56:53', '2012-07-25 08:56:53', 'pending', 'Order', 'paid'),
(18, 1, 1, 'payment', '2012-07-25 08:58:33', '2012-07-25 08:58:33', 'paid', 'Order', 'pending'),
(19, 1, 1, 'order', '2012-07-25 15:27:52', '2012-07-25 15:27:52', 'cart', 'Order', 'complete'),
(20, 4, 1, 'order', '2012-07-25 16:46:15', '2012-07-25 16:46:15', 'cart', 'Order', 'complete'),
(21, 6, 5, 'payment', '2012-07-26 14:46:53', '2012-07-26 14:46:53', 'pending', 'Order', 'paid'),
(22, 6, 5, 'payment', '2012-07-26 14:46:53', '2012-07-26 14:46:53', 'pending', 'Order', 'paid'),
(23, 6, 5, 'payment', '2012-07-26 14:47:13', '2012-07-26 14:47:13', 'paid', 'Order', 'pending'),
(24, 6, 5, 'payment', '2012-07-26 15:14:42', '2012-07-26 15:14:42', 'pending', 'Order', 'paid'),
(25, 6, 5, 'payment', '2012-07-26 15:14:42', '2012-07-26 15:14:42', 'pending', 'Order', 'paid'),
(26, 6, 5, 'payment', '2012-07-26 15:14:49', '2012-07-26 15:14:49', 'paid', 'Order', 'pending'),
(27, 20, 19, 'payment', '2012-07-27 10:39:15', '2012-07-27 10:39:15', 'pending', 'Order', 'balance_due'),
(28, 20, 19, 'shipment', '2012-07-27 10:39:15', '2012-07-27 10:39:15', 'ready', 'Order', 'pending'),
(29, 20, 19, 'payment', '2012-07-27 10:39:15', '2012-07-27 10:39:15', 'pending', 'Order', 'balance_due'),
(30, 20, 19, 'shipment', '2012-07-27 10:39:15', '2012-07-27 10:39:15', 'ready', 'Order', 'pending'),
(31, 20, 19, 'order', '2012-07-27 10:39:17', '2012-07-27 10:39:17', 'cart', 'Order', 'complete'),
(32, 21, 20, 'payment', '2012-07-27 10:46:52', '2012-07-27 10:46:52', 'balance_due', 'Order', 'pending'),
(33, 22, 21, 'order', '2012-07-27 10:59:25', '2012-07-27 10:59:25', 'cart', 'Order', 'complete'),
(34, 23, 22, 'order', '2012-07-27 11:38:21', '2012-07-27 11:38:21', 'cart', 'Order', 'complete'),
(35, 24, 23, 'payment', '2012-07-27 11:40:13', '2012-07-27 11:40:13', 'pending', 'Order', 'paid'),
(36, 24, 23, 'payment', '2012-07-27 11:40:13', '2012-07-27 11:40:13', 'pending', 'Order', 'paid'),
(37, 24, 23, 'payment', '2012-07-27 11:40:20', '2012-07-27 11:40:20', 'paid', 'Order', 'pending'),
(38, 25, 24, 'order', '2012-07-27 11:53:18', '2012-07-27 11:53:18', 'cart', 'Order', 'complete'),
(39, 28, 27, 'order', '2012-07-27 12:13:41', '2012-07-27 12:13:41', 'cart', 'Order', 'complete'),
(40, 29, 28, 'payment', '2012-07-27 12:43:15', '2012-07-27 12:43:15', 'pending', 'Order', 'paid'),
(41, 29, 28, 'payment', '2012-07-27 12:43:15', '2012-07-27 12:43:15', 'pending', 'Order', 'paid'),
(42, 29, 28, 'payment', '2012-07-27 12:43:16', '2012-07-27 12:43:16', 'paid', 'Order', 'pending'),
(43, 29, 28, 'order', '2012-07-27 12:49:12', '2012-07-27 12:49:12', 'cart', 'Order', 'complete'),
(44, 30, 29, 'payment', '2012-07-27 12:57:22', '2012-07-27 12:57:22', 'pending', 'Order', 'paid'),
(45, 31, 30, 'payment', '2012-07-27 13:01:23', '2012-07-27 13:01:23', 'pending', 'Order', 'paid'),
(46, 31, 30, 'payment', '2012-07-27 13:01:23', '2012-07-27 13:01:23', 'pending', 'Order', 'paid'),
(47, 31, 30, 'payment', '2012-07-27 13:01:24', '2012-07-27 13:01:24', 'paid', 'Order', 'pending'),
(48, 31, 30, 'order', '2012-07-27 13:01:50', '2012-07-27 13:01:50', 'cart', 'Order', 'complete'),
(49, 35, 34, 'payment', '2012-07-27 16:44:25', '2012-07-27 16:44:25', 'pending', 'Order', 'paid'),
(50, 35, 34, 'payment', '2012-07-27 16:44:25', '2012-07-27 16:44:25', 'pending', 'Order', 'paid'),
(51, 35, 34, 'payment', '2012-07-27 16:44:27', '2012-07-27 16:44:27', 'paid', 'Order', 'pending'),
(52, 5, 1, 'payment', '2012-08-06 20:10:09', '2012-08-06 20:10:09', 'pending', 'Order', 'paid'),
(53, 5, 1, 'payment', '2012-08-06 20:10:09', '2012-08-06 20:10:09', 'pending', 'Order', 'paid'),
(54, 49, 1, 'order', '2012-08-06 20:10:54', '2012-08-06 20:10:54', 'cart', 'Order', 'complete'),
(55, 45, 44, 'order', '2012-08-06 20:36:00', '2012-08-06 20:36:00', 'cart', 'Order', 'complete'),
(56, 51, 1, 'order', '2012-08-06 21:30:05', '2012-08-06 21:30:05', 'cart', 'Order', 'complete'),
(57, 52, 49, 'order', '2012-08-06 22:00:48', '2012-08-06 22:00:48', 'cart', 'Order', 'complete'),
(58, 57, 1, 'payment', '2012-08-08 07:35:41', '2012-08-08 07:35:41', 'pending', 'Order', 'paid'),
(59, 58, 54, 'order', '2012-08-08 08:59:31', '2012-08-08 08:59:31', 'cart', 'Order', 'complete'),
(60, 59, 1, 'order', '2012-08-08 09:20:23', '2012-08-08 09:20:23', 'cart', 'Order', 'complete'),
(61, 60, 55, 'order', '2012-08-09 08:29:27', '2012-08-09 08:29:27', 'cart', 'Order', 'complete'),
(62, 60, 1, 'shipment', '2012-08-09 08:37:41', '2012-08-09 08:37:41', 'ready', 'Order', 'backorder'),
(63, 60, 1, 'payment', '2012-08-09 08:37:41', '2012-08-09 08:37:41', 'pending', 'Order', 'paid'),
(64, 60, 1, 'shipment', '2012-08-09 08:37:41', '2012-08-09 08:37:41', 'ready', 'Order', 'backorder'),
(65, 62, 56, 'payment', '2012-08-09 13:05:54', '2012-08-09 13:05:54', 'pending', 'Order', 'paid'),
(66, 62, 56, 'payment', '2012-08-09 13:05:54', '2012-08-09 13:05:54', 'pending', 'Order', 'paid'),
(67, 63, 57, 'payment', '2012-08-09 13:43:31', '2012-08-09 13:43:31', 'pending', 'Order', 'paid'),
(68, 63, 57, 'payment', '2012-08-09 13:43:31', '2012-08-09 13:43:31', 'pending', 'Order', 'paid'),
(69, 64, 58, 'payment', '2012-08-09 13:47:30', '2012-08-09 13:47:30', 'pending', 'Order', 'paid'),
(70, 65, 59, 'payment', '2012-08-09 13:48:22', '2012-08-09 13:48:22', 'pending', 'Order', 'paid'),
(71, 66, 60, 'payment', '2012-08-09 14:00:26', '2012-08-09 14:00:26', 'pending', 'Order', 'paid'),
(72, 67, 61, 'payment', '2012-08-09 16:11:03', '2012-08-09 16:11:03', 'pending', 'Order', 'paid'),
(73, 61, 1, 'payment', '2012-08-09 16:26:50', '2012-08-09 16:26:50', 'pending', 'Order', 'balance_due'),
(74, 61, 1, 'payment', '2012-08-09 16:26:58', '2012-08-09 16:26:58', 'balance_due', 'Order', 'credit_owed'),
(75, 68, 62, 'order', '2012-08-09 21:41:49', '2012-08-09 21:41:49', 'cart', 'Order', 'complete'),
(76, 69, 1, 'order', '2012-08-10 00:02:18', '2012-08-10 00:02:18', 'cart', 'Order', 'complete'),
(77, 70, 1, 'payment', '2012-08-10 10:08:32', '2012-08-10 10:08:32', 'pending', 'Order', 'paid'),
(78, 70, 1, 'payment', '2012-08-10 10:16:20', '2012-08-10 10:16:20', 'paid', 'Order', 'credit_owed'),
(79, 74, 1, 'payment', '2012-08-10 12:05:20', '2012-08-10 12:05:20', 'pending', 'Order', 'paid'),
(80, 74, 1, 'payment', '2012-08-10 12:08:32', '2012-08-10 12:08:32', 'paid', 'Order', 'credit_owed'),
(81, 76, 1, 'payment', '2012-08-10 12:35:03', '2012-08-10 12:35:03', 'pending', 'Order', 'paid'),
(82, 77, 1, 'payment', '2012-08-10 12:35:43', '2012-08-10 12:35:43', 'pending', 'Order', 'paid'),
(83, 78, 1, 'payment', '2012-08-10 12:40:40', '2012-08-10 12:40:40', 'pending', 'Order', 'paid'),
(84, 79, 1, 'payment', '2012-08-10 12:43:34', '2012-08-10 12:43:34', 'pending', 'Order', 'paid'),
(85, 80, 1, 'payment', '2012-08-10 12:46:28', '2012-08-10 12:46:28', 'pending', 'Order', 'paid'),
(86, 81, 1, 'payment', '2012-08-10 12:48:57', '2012-08-10 12:48:57', 'pending', 'Order', 'paid'),
(87, 81, 1, 'payment', '2012-08-10 12:56:42', '2012-08-10 12:56:42', 'paid', 'Order', 'credit_owed'),
(88, 82, 1, 'payment', '2012-08-10 12:57:22', '2012-08-10 12:57:22', 'pending', 'Order', 'paid'),
(89, 82, 1, 'payment', '2012-08-10 13:02:43', '2012-08-10 13:02:43', 'paid', 'Order', 'balance_due'),
(90, 82, 1, 'payment', '2012-08-10 13:05:14', '2012-08-10 13:05:14', 'balance_due', 'Order', 'paid'),
(91, 83, 1, 'payment', '2012-08-10 13:12:23', '2012-08-10 13:12:23', 'pending', 'Order', 'paid'),
(92, 83, 1, 'payment', '2012-08-10 13:16:33', '2012-08-10 13:16:33', 'paid', 'Order', 'credit_owed'),
(93, 84, 1, 'payment', '2012-08-10 13:26:09', '2012-08-10 13:26:09', 'pending', 'Order', 'paid'),
(94, 85, 1, 'payment', '2012-08-10 13:28:59', '2012-08-10 13:28:59', 'pending', 'Order', 'paid'),
(95, 82, 1, 'payment', '2012-08-10 13:56:49', '2012-08-10 13:56:49', 'paid', 'Order', 'balance_due'),
(96, 88, 70, 'payment', '2012-08-10 13:56:49', '2012-08-10 13:56:49', 'pending', 'Order', 'paid'),
(97, 88, 70, 'shipment', '2012-08-10 13:56:49', '2012-08-10 13:56:49', 'ready', 'Order', NULL),
(98, 90, 72, 'order', '2012-08-10 14:01:46', '2012-08-10 14:01:46', 'cart', 'Order', 'complete'),
(99, 82, 1, 'payment', '2012-08-10 14:04:39', '2012-08-10 14:04:39', 'balance_due', 'Order', 'credit_owed'),
(100, 91, 1, 'payment', '2012-08-10 15:27:00', '2012-08-10 15:27:00', 'pending', 'Order', 'paid'),
(101, 81, 1, 'payment', '2012-08-13 16:22:44', '2012-08-13 16:22:44', 'credit_owed', 'Order', 'paid'),
(102, 81, 1, 'payment', '2012-08-13 16:25:55', '2012-08-13 16:25:55', 'paid', 'Order', 'credit_owed'),
(103, 81, 1, 'payment', '2012-08-13 16:25:56', '2012-08-13 16:25:56', 'paid', 'Order', 'credit_owed'),
(104, 98, 80, 'order', '2012-08-13 16:32:14', '2012-08-13 16:32:14', 'cart', 'Order', 'complete'),
(105, 99, 81, 'order', '2012-08-13 16:41:28', '2012-08-13 16:41:28', 'cart', 'Order', 'complete'),
(106, 100, 82, 'order', '2012-08-13 16:42:23', '2012-08-13 16:42:23', 'cart', 'Order', 'complete'),
(107, 101, 83, 'order', '2012-08-13 16:53:55', '2012-08-13 16:53:55', 'cart', 'Order', 'complete'),
(108, 102, 84, 'payment', '2012-08-13 21:12:39', '2012-08-13 21:12:39', 'pending', 'Order', 'paid'),
(109, 102, 84, 'payment', '2012-08-13 21:12:39', '2012-08-13 21:12:39', 'pending', 'Order', 'paid'),
(110, 80, 1, 'payment', '2012-08-14 12:11:52', '2012-08-14 12:11:52', 'paid', 'Order', 'balance_due'),
(111, 104, 86, 'payment', '2012-08-14 12:11:52', '2012-08-14 12:11:52', 'pending', 'Order', 'paid'),
(112, 109, 91, 'payment', '2012-08-15 19:36:08', '2012-08-15 19:36:08', 'pending', 'Order', 'paid'),
(113, 109, 91, 'payment', '2012-08-15 19:36:08', '2012-08-15 19:36:08', 'pending', 'Order', 'paid'),
(114, 111, 93, 'payment', '2012-08-16 10:36:07', '2012-08-16 10:36:07', 'pending', 'Order', 'paid'),
(115, 111, 93, 'payment', '2012-08-16 10:36:07', '2012-08-16 10:36:07', 'pending', 'Order', 'paid'),
(116, 110, 92, 'payment', '2012-08-16 10:39:27', '2012-08-16 10:39:27', 'pending', 'Order', 'paid'),
(117, 110, 92, 'payment', '2012-08-16 10:39:27', '2012-08-16 10:39:27', 'pending', 'Order', 'paid'),
(118, 113, 55, 'payment', '2012-08-20 09:00:14', '2012-08-20 09:00:14', 'pending', 'Order', 'paid'),
(119, 113, 55, 'payment', '2012-08-20 09:00:14', '2012-08-20 09:00:14', 'pending', 'Order', 'paid'),
(120, 114, 55, 'payment', '2012-08-20 09:00:36', '2012-08-20 09:00:36', 'pending', 'Order', 'paid'),
(121, 114, 55, 'payment', '2012-08-20 09:00:36', '2012-08-20 09:00:36', 'pending', 'Order', 'paid'),
(122, 115, 98, 'payment', '2012-08-20 09:22:33', '2012-08-20 09:22:33', 'pending', 'Order', 'paid'),
(123, 115, 98, 'payment', '2012-08-20 09:22:34', '2012-08-20 09:22:34', 'pending', 'Order', 'paid'),
(124, 116, 99, 'payment', '2012-08-20 09:30:24', '2012-08-20 09:30:24', 'pending', 'Order', 'paid'),
(125, 116, 99, 'payment', '2012-08-20 09:30:24', '2012-08-20 09:30:24', 'pending', 'Order', 'paid'),
(126, 117, 100, 'payment', '2012-08-20 09:30:49', '2012-08-20 09:30:49', 'pending', 'Order', 'paid'),
(127, 117, 100, 'payment', '2012-08-20 09:30:49', '2012-08-20 09:30:49', 'pending', 'Order', 'paid'),
(128, 118, 101, 'payment', '2012-08-20 09:31:04', '2012-08-20 09:31:04', 'pending', 'Order', 'paid'),
(129, 118, 101, 'payment', '2012-08-20 09:31:05', '2012-08-20 09:31:05', 'pending', 'Order', 'paid'),
(130, 119, 55, 'payment', '2012-08-20 09:49:34', '2012-08-20 09:49:34', 'pending', 'Order', 'paid'),
(131, 119, 55, 'payment', '2012-08-20 09:49:34', '2012-08-20 09:49:34', 'pending', 'Order', 'paid'),
(132, 120, 55, 'payment', '2012-08-20 09:49:41', '2012-08-20 09:49:41', 'pending', 'Order', 'paid'),
(133, 120, 55, 'payment', '2012-08-20 09:49:41', '2012-08-20 09:49:41', 'pending', 'Order', 'paid'),
(134, 121, 55, 'payment', '2012-08-20 09:49:47', '2012-08-20 09:49:47', 'pending', 'Order', 'paid'),
(135, 121, 55, 'payment', '2012-08-20 09:49:47', '2012-08-20 09:49:47', 'pending', 'Order', 'paid'),
(136, 123, 102, 'payment', '2012-08-20 12:08:06', '2012-08-20 12:08:06', 'pending', 'Order', 'paid'),
(137, 124, 103, 'payment', '2012-08-20 12:13:18', '2012-08-20 12:13:18', 'pending', 'Order', 'paid'),
(138, 129, 110, 'payment', '2012-08-20 12:19:32', '2012-08-20 12:19:32', 'pending', 'Order', 'paid'),
(139, 122, 55, 'payment', '2012-08-20 12:29:13', '2012-08-20 12:29:13', 'pending', 'Order', 'balance_due'),
(140, 122, 55, 'shipment', '2012-08-20 12:29:13', '2012-08-20 12:29:13', 'ready', 'Order', 'pending'),
(141, 122, 55, 'payment', '2012-08-20 12:29:13', '2012-08-20 12:29:13', 'pending', 'Order', 'balance_due'),
(142, 122, 55, 'shipment', '2012-08-20 12:29:13', '2012-08-20 12:29:13', 'ready', 'Order', 'pending'),
(143, 130, 55, 'payment', '2012-08-20 12:42:35', '2012-08-20 12:42:35', 'pending', 'Order', 'paid'),
(144, 130, 55, 'payment', '2012-08-20 12:42:35', '2012-08-20 12:42:35', 'pending', 'Order', 'paid'),
(145, 131, 55, 'payment', '2012-08-20 12:53:15', '2012-08-20 12:53:15', 'pending', 'Order', 'paid'),
(146, 131, 55, 'shipment', '2012-08-20 12:53:15', '2012-08-20 12:53:15', 'ready', 'Order', NULL),
(147, 132, 55, 'order', '2012-08-20 12:54:13', '2012-08-20 12:54:13', 'cart', 'Order', 'complete'),
(148, 133, 55, 'order', '2012-08-20 13:19:00', '2012-08-20 13:19:00', 'cart', 'Order', 'complete'),
(149, 133, 55, 'order', '2012-08-20 13:20:18', '2012-08-20 13:20:18', 'cart', 'Order', 'complete'),
(150, 133, 55, 'shipment', '2012-08-20 13:23:58', '2012-08-20 13:23:58', 'ready', 'Order', 'backorder'),
(151, 133, 55, 'shipment', '2012-08-20 13:23:58', '2012-08-20 13:23:58', 'ready', 'Order', 'backorder'),
(152, 133, 55, 'order', '2012-08-20 13:24:06', '2012-08-20 13:24:06', 'cart', 'Order', 'complete'),
(153, 133, 55, 'payment', '2012-08-20 13:24:34', '2012-08-20 13:24:34', 'pending', 'Order', 'paid'),
(154, 133, 55, 'payment', '2012-08-20 13:24:34', '2012-08-20 13:24:34', 'pending', 'Order', 'paid'),
(155, 134, 55, 'order', '2012-08-20 13:26:30', '2012-08-20 13:26:30', 'cart', 'Order', 'complete'),
(156, 134, 55, 'order', '2012-08-20 13:29:41', '2012-08-20 13:29:41', 'cart', 'Order', 'complete'),
(157, 135, 112, 'order', '2012-08-20 16:42:33', '2012-08-20 16:42:33', 'cart', 'Order', 'complete'),
(158, 136, NULL, 'order', '2012-08-20 16:43:42', '2012-08-20 16:43:42', 'cart', 'Order', 'complete'),
(159, 138, NULL, 'payment', '2012-08-20 18:56:40', '2012-08-20 18:56:40', 'pending', 'Order', 'paid'),
(160, 138, NULL, 'payment', '2012-08-20 18:56:40', '2012-08-20 18:56:40', 'pending', 'Order', 'paid'),
(161, 139, 113, 'order', '2012-08-20 19:03:47', '2012-08-20 19:03:47', 'cart', 'Order', 'complete'),
(162, 134, 55, 'shipment', '2012-08-21 07:13:31', '2012-08-21 07:13:31', 'ready', 'Order', 'backorder'),
(163, 134, 55, 'payment', '2012-08-21 07:13:31', '2012-08-21 07:13:31', 'pending', 'Order', 'paid'),
(164, 9, 8, 'payment', '2012-08-21 12:35:44', '2012-08-21 12:35:44', 'pending', 'Order', 'paid');

-- --------------------------------------------------------

--
-- Структура таблицы `taxonomies`
--

CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_on_homepage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `name`, `created_at`, `updated_at`, `show_on_homepage`) VALUES
(1, 'Коллекции', '2012-07-23 13:50:21', '2012-07-23 13:50:21', 1),
(2, 'Брэнды', '2012-07-23 15:09:27', '2012-07-23 15:09:27', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `taxons`
--

CREATE TABLE IF NOT EXISTS `taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxonomy_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `taxons`
--

INSERT INTO `taxons` (`id`, `taxonomy_id`, `parent_id`, `position`, `name`, `created_at`, `updated_at`, `permalink`, `lft`, `rgt`, `icon_file_name`, `icon_content_type`, `icon_file_size`, `icon_updated_at`, `description`) VALUES
(1, 1, NULL, 0, 'Коллекции', '2012-07-23 13:50:22', '2012-07-23 13:50:22', 'kollektsii', 1, 8, NULL, NULL, NULL, NULL, NULL),
(2, 1, 1, 0, 'Осень - Зима', '2012-07-23 13:50:58', '2012-07-23 15:07:19', 'kollektsii/osen-zima', 2, 3, NULL, NULL, NULL, NULL, NULL),
(4, 1, 1, 1, 'Весна - Лето', '2012-07-23 13:51:37', '2012-07-23 15:07:27', 'kollektsii/vesna-leto', 4, 5, NULL, NULL, NULL, NULL, NULL),
(5, 1, 1, 2, 'Все коллекции', '2012-07-23 15:07:05', '2012-07-23 15:07:05', 'kollektsii/vse-kollektsii', 6, 7, NULL, NULL, NULL, NULL, NULL),
(6, 2, NULL, 0, 'Брэнды', '2012-07-23 15:09:27', '2012-07-23 15:09:27', 'brendy', 9, 26, NULL, NULL, NULL, NULL, NULL),
(7, 2, 6, 0, 'Havaianas', '2012-07-23 15:10:20', '2012-07-23 15:10:20', 'brendy/havaianas', 10, 11, NULL, NULL, NULL, NULL, NULL),
(8, 2, 6, 1, 'Fred Perry', '2012-07-23 15:10:32', '2012-07-23 15:10:32', 'brendy/fred-perry', 12, 13, NULL, NULL, NULL, NULL, NULL),
(9, 2, 6, 2, 'Converse', '2012-07-23 15:10:43', '2012-07-23 15:10:43', 'brendy/converse', 14, 15, NULL, NULL, NULL, NULL, NULL),
(10, 2, 6, 3, 'Sneaky Steve', '2012-07-23 15:10:58', '2012-07-23 15:10:58', 'brendy/sneaky-steve', 16, 17, NULL, NULL, NULL, NULL, NULL),
(11, 2, 6, 4, 'Dr Martens', '2012-07-23 15:11:20', '2012-07-23 15:11:20', 'brendy/dr-martens', 18, 19, NULL, NULL, NULL, NULL, NULL),
(12, 2, 6, 5, 'Svea', '2012-07-23 15:11:31', '2012-07-23 15:11:31', 'brendy/svea', 20, 21, NULL, NULL, NULL, NULL, NULL),
(13, 2, 6, 6, 'Shulong', '2012-07-23 15:12:04', '2012-07-23 15:12:04', 'brendy/shulong', 22, 23, NULL, NULL, NULL, NULL, NULL),
(14, 2, 6, 7, 'Gram', '2012-07-23 15:12:14', '2012-07-23 15:12:14', 'brendy/gram', 24, 25, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tax_categories`
--

CREATE TABLE IF NOT EXISTS `tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `amount` decimal(8,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tokenized_permissions`
--

CREATE TABLE IF NOT EXISTS `tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- Дамп данных таблицы `tokenized_permissions`
--

INSERT INTO `tokenized_permissions` (`id`, `permissable_id`, `permissable_type`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Order', '76f01b3fbeb0b8f9', '2012-07-23 13:19:17', '2012-07-23 13:19:17'),
(2, 2, 'Order', 'a61526ce5fb9e139', '2012-07-24 08:05:22', '2012-07-24 08:05:22'),
(3, 3, 'Order', '423e8d661cc9c761', '2012-07-24 18:22:20', '2012-07-24 18:22:20'),
(4, 4, 'Order', '9c541eaaf1af0001', '2012-07-25 15:36:58', '2012-07-25 15:36:58'),
(5, 5, 'Order', 'e6045d0eb9fca3ae', '2012-07-25 19:13:55', '2012-07-25 19:13:55'),
(6, 6, 'Order', '9cd634bb7f6bc29c', '2012-07-26 14:46:09', '2012-07-26 14:46:09'),
(7, 7, 'Order', '1a6f99a21bbaa8c7', '2012-07-26 15:16:00', '2012-07-26 15:16:00'),
(8, 8, 'Order', '491a141af8f79bd8', '2012-07-26 15:22:00', '2012-07-26 15:22:00'),
(9, 9, 'Order', '2f5d168a2a57f4a8', '2012-07-26 15:25:49', '2012-07-26 15:25:49'),
(10, 10, 'Order', 'caa1a122e0d8190c', '2012-07-26 15:34:08', '2012-07-26 15:34:08'),
(11, 11, 'Order', '737eb8da6887c29e', '2012-07-26 22:46:41', '2012-07-26 22:46:41'),
(12, 12, 'Order', '2ac8e61680b848e2', '2012-07-26 22:46:54', '2012-07-26 22:46:54'),
(13, 13, 'Order', '9ddbc801c3706343', '2012-07-26 22:50:29', '2012-07-26 22:50:29'),
(14, 14, 'Order', '8a5722c019a55fa8', '2012-07-26 22:55:09', '2012-07-26 22:55:09'),
(15, 15, 'Order', 'fe52acf97a07b938', '2012-07-26 23:07:50', '2012-07-26 23:07:50'),
(16, 16, 'Order', 'f1438451074c0db4', '2012-07-27 01:03:13', '2012-07-27 01:03:13'),
(17, 17, 'Order', '89c1074e5416fa43', '2012-07-27 01:14:56', '2012-07-27 01:14:56'),
(18, 18, 'Order', '9419402076955136', '2012-07-27 09:25:01', '2012-07-27 09:25:01'),
(19, 19, 'Order', '6e998610a2758189', '2012-07-27 09:34:19', '2012-07-27 09:34:19'),
(20, 20, 'Order', '416bf7bd7b4194f2', '2012-07-27 09:56:56', '2012-07-27 09:56:56'),
(21, 21, 'Order', 'e7cf5c8c23ef7929', '2012-07-27 10:42:28', '2012-07-27 10:42:28'),
(22, 22, 'Order', '6348578b57e64220', '2012-07-27 10:58:29', '2012-07-27 10:58:29'),
(23, 23, 'Order', '707ed21adec09e32', '2012-07-27 10:59:37', '2012-07-27 10:59:37'),
(24, 24, 'Order', 'ed9238b86e30d0aa', '2012-07-27 11:38:48', '2012-07-27 11:38:48'),
(25, 25, 'Order', '98f3d77e3fb1afc6', '2012-07-27 11:52:25', '2012-07-27 11:52:25'),
(26, 26, 'Order', 'f294f28b6f375c66', '2012-07-27 11:53:25', '2012-07-27 11:53:25'),
(27, 27, 'Order', '67209d4d62f2ac1c', '2012-07-27 12:04:38', '2012-07-27 12:04:38'),
(28, 28, 'Order', '1f7ab312db892ee5', '2012-07-27 12:12:53', '2012-07-27 12:12:53'),
(29, 29, 'Order', '9f81f81aa34d03bf', '2012-07-27 12:43:08', '2012-07-27 12:43:08'),
(30, 30, 'Order', '07870903187a38e6', '2012-07-27 12:49:18', '2012-07-27 12:49:18'),
(31, 31, 'Order', 'f96a6a81bb4f6a8f', '2012-07-27 13:01:18', '2012-07-27 13:01:18'),
(32, 32, 'Order', '400b666e36d2ce3b', '2012-07-27 13:01:53', '2012-07-27 13:01:53'),
(33, 33, 'Order', '9add3ee202b33476', '2012-07-27 13:05:28', '2012-07-27 13:05:28'),
(34, 34, 'Order', '6d094140554e3a03', '2012-07-27 14:49:38', '2012-07-27 14:49:38'),
(35, 35, 'Order', '012bf3cf66eb21bf', '2012-07-27 16:44:00', '2012-07-27 16:44:00'),
(36, 36, 'Order', '4f1611372a3b6e14', '2012-07-30 07:50:33', '2012-07-30 07:50:33'),
(37, 37, 'Order', 'dbc98ea737586179', '2012-07-30 07:59:23', '2012-07-30 07:59:23'),
(38, 38, 'Order', '0da72255945bde81', '2012-07-30 07:59:41', '2012-07-30 07:59:41'),
(39, 39, 'Order', '4cff1a7130d38216', '2012-07-30 12:24:55', '2012-07-30 12:24:55'),
(40, 40, 'Order', 'c0a9375bb430f07d', '2012-07-31 14:53:51', '2012-07-31 14:53:51'),
(41, 41, 'Order', 'e071b74d4e2ee84a', '2012-07-31 19:38:41', '2012-07-31 19:38:41'),
(42, 42, 'Order', '65f28dd55162635a', '2012-08-01 12:12:41', '2012-08-01 12:12:41'),
(43, 43, 'Order', '6ac8c0f3d449f409', '2012-08-02 07:55:04', '2012-08-02 07:55:04'),
(44, 44, 'Order', '00e96529880ff2f9', '2012-08-02 09:23:45', '2012-08-02 09:23:45'),
(45, 45, 'Order', '6eb87034e943e0ce', '2012-08-06 08:32:58', '2012-08-06 08:32:58'),
(46, 46, 'Order', 'f3e82efa470d6311', '2012-08-06 09:34:51', '2012-08-06 09:34:51'),
(47, 47, 'Order', '206bbf120c2e3c1c', '2012-08-06 10:50:53', '2012-08-06 10:50:53'),
(48, 48, 'Order', '9c4290f584920422', '2012-08-06 20:06:07', '2012-08-06 20:06:07'),
(49, 49, 'Order', '780cce53a9099011', '2012-08-06 20:10:14', '2012-08-06 20:10:14'),
(50, 50, 'Order', '00d949701060ad56', '2012-08-06 20:11:29', '2012-08-06 20:11:29'),
(51, 51, 'Order', '6f14f02e53e1e01f', '2012-08-06 21:29:44', '2012-08-06 21:29:44'),
(52, 52, 'Order', '784d1a1c8a733045', '2012-08-06 22:00:27', '2012-08-06 22:00:27'),
(53, 53, 'Order', '777664da7227ffec', '2012-08-07 11:02:32', '2012-08-07 11:02:32'),
(54, 54, 'Order', '48f7a9cfd88bcca3', '2012-08-07 11:06:50', '2012-08-07 11:06:50'),
(55, 55, 'Order', 'f94359de54c260da', '2012-08-07 13:12:06', '2012-08-07 13:12:06'),
(56, 56, 'Order', '7ecb40e088a053f5', '2012-08-07 15:24:04', '2012-08-07 15:24:04'),
(57, 57, 'Order', '5d801ea1773da05b', '2012-08-07 16:34:32', '2012-08-07 16:34:32'),
(58, 58, 'Order', 'b9318ba1c6f3694b', '2012-08-08 08:57:48', '2012-08-08 08:57:48'),
(59, 59, 'Order', '85ffe481f247b935', '2012-08-08 09:19:34', '2012-08-08 09:19:34'),
(60, 60, 'Order', '58b980b772e19f6f', '2012-08-09 08:25:19', '2012-08-09 08:25:19'),
(61, 61, 'Order', '77cd5c45edb95eab', '2012-08-09 11:44:58', '2012-08-09 11:44:58'),
(62, 62, 'Order', '9cc59fbea919654c', '2012-08-09 13:03:48', '2012-08-09 13:03:48'),
(63, 63, 'Order', '56ef70efd18b5d06', '2012-08-09 13:42:49', '2012-08-09 13:42:49'),
(64, 64, 'Order', '21868f2d08bdfd8f', '2012-08-09 13:47:07', '2012-08-09 13:47:07'),
(65, 65, 'Order', '8dc526c262fb0570', '2012-08-09 13:48:11', '2012-08-09 13:48:11'),
(66, 66, 'Order', '9f4735bdc8c8a4c1', '2012-08-09 14:00:10', '2012-08-09 14:00:10'),
(67, 67, 'Order', '7445eb7651227dcd', '2012-08-09 16:07:04', '2012-08-09 16:07:04'),
(68, 68, 'Order', '5d18bbe4f4b5e824', '2012-08-09 21:34:36', '2012-08-09 21:34:36'),
(69, 69, 'Order', '561dc3b7743c850e', '2012-08-10 00:01:53', '2012-08-10 00:01:53'),
(70, 70, 'Order', '13a98679b8790e08', '2012-08-10 08:09:13', '2012-08-10 08:09:13'),
(71, 71, 'Order', '8988f36bd92d8950', '2012-08-10 09:54:46', '2012-08-10 09:54:46'),
(72, 72, 'Order', 'a0b587cabdfd9cbc', '2012-08-10 09:55:18', '2012-08-10 09:55:18'),
(73, 73, 'Order', '9540e9784d6a71f4', '2012-08-10 09:55:21', '2012-08-10 09:55:21'),
(74, 74, 'Order', '4fe4598aeaa0910a', '2012-08-10 12:04:59', '2012-08-10 12:04:59'),
(75, 75, 'Order', '6b1e7f2c6c89bace', '2012-08-10 12:19:30', '2012-08-10 12:19:30'),
(76, 76, 'Order', '662e80ce608c5357', '2012-08-10 12:20:07', '2012-08-10 12:20:07'),
(77, 77, 'Order', 'd29647ea80a9dbad', '2012-08-10 12:35:24', '2012-08-10 12:35:24'),
(78, 78, 'Order', '1bed115e8ae5c42d', '2012-08-10 12:40:19', '2012-08-10 12:40:19'),
(79, 79, 'Order', '024fa5c848e72bb5', '2012-08-10 12:43:12', '2012-08-10 12:43:12'),
(80, 80, 'Order', '271483d03dcddc71', '2012-08-10 12:46:04', '2012-08-10 12:46:04'),
(81, 81, 'Order', 'e845e467480e149f', '2012-08-10 12:48:11', '2012-08-10 12:48:11'),
(82, 82, 'Order', 'd37beababe5b1cc2', '2012-08-10 12:56:58', '2012-08-10 12:56:58'),
(83, 83, 'Order', 'd37afb827c765d14', '2012-08-10 13:11:44', '2012-08-10 13:11:44'),
(84, 84, 'Order', '4ff1cc05b029c530', '2012-08-10 13:25:05', '2012-08-10 13:25:05'),
(85, 85, 'Order', '8e2a2244acede7f1', '2012-08-10 13:28:39', '2012-08-10 13:28:39'),
(86, 86, 'Order', '6301aa3c14fc2fca', '2012-08-10 13:41:39', '2012-08-10 13:41:39'),
(87, 87, 'Order', 'f3a8bd91cd0cc66f', '2012-08-10 13:46:01', '2012-08-10 13:46:01'),
(88, 88, 'Order', 'd78d0b79fa737180', '2012-08-10 13:46:59', '2012-08-10 13:46:59'),
(89, 89, 'Order', 'bf41bf1d4603e18f', '2012-08-10 13:50:11', '2012-08-10 13:50:11'),
(90, 90, 'Order', '7d420be17d949950', '2012-08-10 14:01:21', '2012-08-10 14:01:21'),
(91, 91, 'Order', '8a1766c55f56bf06', '2012-08-10 14:28:30', '2012-08-10 14:28:30'),
(92, 92, 'Order', '84afb3671e03b3a9', '2012-08-12 15:41:56', '2012-08-12 15:41:56'),
(93, 93, 'Order', '878edf4777e108f0', '2012-08-12 20:01:23', '2012-08-12 20:01:23'),
(94, 94, 'Order', '54959aa01c168aae', '2012-08-13 13:02:55', '2012-08-13 13:02:55'),
(95, 95, 'Order', '36147ce5c0b63ba9', '2012-08-13 13:35:28', '2012-08-13 13:35:28'),
(96, 96, 'Order', '759b2e7c1ceaa53d', '2012-08-13 16:00:09', '2012-08-13 16:00:09'),
(97, 97, 'Order', 'c2e78603487a266d', '2012-08-13 16:03:42', '2012-08-13 16:03:42'),
(98, 98, 'Order', 'dd97a49f2bfa51aa', '2012-08-13 16:29:53', '2012-08-13 16:29:53'),
(99, 99, 'Order', 'ad4a59b5dc38d8ed', '2012-08-13 16:41:02', '2012-08-13 16:41:02'),
(100, 100, 'Order', 'b0dd5bb5323b3921', '2012-08-13 16:42:00', '2012-08-13 16:42:00'),
(101, 101, 'Order', 'dffc8d1834950fde', '2012-08-13 16:51:34', '2012-08-13 16:51:34'),
(102, 102, 'Order', '6585fb3d794449d9', '2012-08-13 21:12:33', '2012-08-13 21:12:33'),
(103, 103, 'Order', 'c0f664d1942a87eb', '2012-08-13 21:12:41', '2012-08-13 21:12:41'),
(104, 104, 'Order', '85316cdd2faee235', '2012-08-14 11:47:37', '2012-08-14 11:47:37'),
(105, 105, 'Order', '439e326d7347236c', '2012-08-14 16:25:32', '2012-08-14 16:25:32'),
(106, 106, 'Order', '60c878791df758c0', '2012-08-14 17:26:16', '2012-08-14 17:26:16'),
(107, 107, 'Order', '3ea57bacb550e3d3', '2012-08-14 17:47:56', '2012-08-14 17:47:56'),
(108, 108, 'Order', '965c43441f6d4b5c', '2012-08-15 16:43:35', '2012-08-15 16:43:35'),
(109, 109, 'Order', '986fba2f4aebbb4e', '2012-08-15 19:35:11', '2012-08-15 19:35:11'),
(110, 110, 'Order', 'f5d05f2aff6f96dd', '2012-08-16 09:49:07', '2012-08-16 09:49:07'),
(111, 111, 'Order', 'b5b3d347e669afeb', '2012-08-16 10:35:19', '2012-08-16 10:35:19'),
(112, 112, 'Order', 'e65d76d25fe2a634', '2012-08-16 10:46:10', '2012-08-16 10:46:10'),
(113, 113, 'Order', 'c6b9c962cae10e97', '2012-08-20 09:00:05', '2012-08-20 09:00:05'),
(114, 114, 'Order', '5da86269e764f154', '2012-08-20 09:00:17', '2012-08-20 09:00:17'),
(115, 115, 'Order', 'cbd5318c2cfbf283', '2012-08-20 09:12:55', '2012-08-20 09:12:55'),
(116, 116, 'Order', 'dbb96612fe1c9703', '2012-08-20 09:30:11', '2012-08-20 09:30:11'),
(117, 117, 'Order', '785587f1a3aa9211', '2012-08-20 09:30:45', '2012-08-20 09:30:45'),
(118, 118, 'Order', 'b41ec6b96bcb58b0', '2012-08-20 09:30:52', '2012-08-20 09:30:52'),
(119, 119, 'Order', '293349021cd13090', '2012-08-20 09:47:22', '2012-08-20 09:47:22'),
(120, 120, 'Order', 'ec5b3cdf53a0f50e', '2012-08-20 09:49:37', '2012-08-20 09:49:37'),
(121, 121, 'Order', '380a3079588ca573', '2012-08-20 09:49:41', '2012-08-20 09:49:41'),
(122, 122, 'Order', '0f5350eb0177ea42', '2012-08-20 09:50:33', '2012-08-20 09:50:33'),
(123, 123, 'Order', 'bbe1e90a43ef8b9b', '2012-08-20 11:16:24', '2012-08-20 11:16:24'),
(124, 124, 'Order', '0f7935694b650cbd', '2012-08-20 11:33:33', '2012-08-20 11:33:33'),
(125, 125, 'Order', '6aa1c1698a122be4', '2012-08-20 11:49:18', '2012-08-20 11:49:18'),
(126, 126, 'Order', '95e32a65afcdb69d', '2012-08-20 11:50:30', '2012-08-20 11:50:30'),
(127, 127, 'Order', '6e2ecd2954463ab6', '2012-08-20 12:13:32', '2012-08-20 12:13:32'),
(128, 128, 'Order', 'a20c710d65736e37', '2012-08-20 12:14:32', '2012-08-20 12:14:32'),
(129, 129, 'Order', 'aaf092e43b347593', '2012-08-20 12:16:53', '2012-08-20 12:16:53'),
(130, 130, 'Order', '92fe64a3bd25a434', '2012-08-20 12:29:42', '2012-08-20 12:29:42'),
(131, 131, 'Order', 'd259bbd93d6ad6c9', '2012-08-20 12:44:52', '2012-08-20 12:44:52'),
(132, 132, 'Order', '0664090286cd76d1', '2012-08-20 12:53:28', '2012-08-20 12:53:28'),
(133, 133, 'Order', 'a4a485b511cbabec', '2012-08-20 13:18:45', '2012-08-20 13:18:45'),
(134, 134, 'Order', '589e629a0aa0a005', '2012-08-20 13:24:54', '2012-08-20 13:24:54'),
(135, 135, 'Order', '1dbc69b452a31302', '2012-08-20 16:42:03', '2012-08-20 16:42:03'),
(136, 136, 'Order', 'b0709abcd114396f', '2012-08-20 16:43:11', '2012-08-20 16:43:11'),
(137, 137, 'Order', '78d3dac7768ee1af', '2012-08-20 18:55:34', '2012-08-20 18:55:34'),
(138, 138, 'Order', '0d9971e241135560', '2012-08-20 18:56:30', '2012-08-20 18:56:30'),
(139, 139, 'Order', 'c82e052d811c0aab', '2012-08-20 19:01:49', '2012-08-20 19:01:49');

-- --------------------------------------------------------

--
-- Структура таблицы `trackers`
--

CREATE TABLE IF NOT EXISTS `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_persistence_token` (`persistence_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `password_salt`, `remember_token`, `created_at`, `updated_at`, `persistence_token`, `reset_password_token`, `perishable_token`, `sign_in_count`, `failed_attempts`, `last_request_at`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `login`, `ship_address_id`, `bill_address_id`, `authentication_token`, `unlock_token`, `locked_at`, `remember_created_at`, `firstname`, `lastname`, `phone`) VALUES
(1, 'spree@example.com', '0227c4c92a8bbaa93233c94b991b9d88d9d75b92383d0cf37440eea3321906d09adadee7caec93c1526e42e62ea81e921956a5a284ccefdded2d64c499775610', '8SJcjKXzQvtBqdjQ0QAc', '2jo37ve1TcDETud30E69', '2012-07-23 07:09:19', '2012-08-21 12:35:43', NULL, NULL, NULL, 86, 0, NULL, '2012-08-21 12:35:43', '2012-08-21 07:13:30', '192.168.1.2', '82.193.140.168', 'spree@example.com', NULL, NULL, NULL, NULL, NULL, '2012-07-30 12:27:03', 'sdv', 'sdv', 'sdv'),
(2, 'sk7OejQlfCX_OPqE-gDa@example.net', 'e2b5f9920b4e0e7cf27dba7429dafd64111d14b91ef7102cb36265ee929e64d2934ec0b0ff0622c1fc305207c93b34ae4280cb767ea80f2ee143a67f64d286b8', 'CU4UtpeMI70jq6ZBLQhV', NULL, '2012-07-24 08:05:22', '2012-08-20 16:20:10', 'sk7OejQlfCX_OPqE-gDa', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'sk7OejQlfCX_OPqE-gDa@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(3, 'ctYwmiwJH52QnQCzTQPM@example.net', 'a31f4032d7d4ee1bdfe04f41b3d184da53a45fcd61b2c3a3dcd4a89f904c7831a6fa153c62d75e8442a97788af5798c2fa54dba45efd724174bb66d0d08fec5e', 'ghR38aW61drj7dViqe7a', NULL, '2012-07-24 18:22:20', '2012-08-20 16:20:10', 'ctYwmiwJH52QnQCzTQPM', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ctYwmiwJH52QnQCzTQPM@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(4, 'Mix-N7Eoh7knh5n2x5wI@example.net', '721814ffbef7329ff311f7e8ce7437a4b8cc450b82e04bc24ec7e00d85003238257226533fca16b89f0de3d8e36e291945d81d8eb1545f045ba305bda4fe1dbb', 'kxPAozhReBmjxMvC2rSF', NULL, '2012-07-25 15:36:58', '2012-08-20 16:20:10', 'Mix-N7Eoh7knh5n2x5wI', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Mix-N7Eoh7knh5n2x5wI@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(5, 'dq3CuKke8t9l3Bvf-W8j@example.net', 'fa7386eceea3183774c9d12a12a77c385d1be6bbbe6a34a2d658ef91851ce3e7384be8b454a3c646c14a5ce1ff2d14df92bf090e3338e05c3bd5756ef8f4711c', 'BvukTJyURWQI19qPC3lN', NULL, '2012-07-26 14:46:09', '2012-08-20 16:20:10', 'dq3CuKke8t9l3Bvf-W8j', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dq3CuKke8t9l3Bvf-W8j@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(6, 'pgBpkTL3FsJCv4WxQRKY@example.net', '24095c6ceb02e52b420c189e6be06dc1513a93f3fc74272e82dd53547ca7c8f9bb898faf99663b5cf0b16ee74d6264da4ca3184964e1ff2a3a93d8219d1a3579', 'DBZ2qmLz9Wu5RUW8XZv2', NULL, '2012-07-26 15:16:00', '2012-08-20 16:20:11', 'pgBpkTL3FsJCv4WxQRKY', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'pgBpkTL3FsJCv4WxQRKY@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(7, 'T8ighG-4FyR-BUUQTZZ6@example.net', '66b4d84068250a7702fd40eda6d2bc6d18c29b0b682a3831e87fa8b009e16ae2845abdf5d9fd03c8e7ba8f6ae5db1bde625d3a167f1bba3b4335d7f78d889c6d', 'ct58rXqaSjY2biJOj1lN', NULL, '2012-07-26 15:22:00', '2012-08-20 16:20:11', 'T8ighG-4FyR-BUUQTZZ6', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'T8ighG-4FyR-BUUQTZZ6@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(8, 'BP5YQVua9qJVVpk7oaMM@example.net', 'e3d2cc87226b2b7094e2318649b2ec2b618e208400a32b93426a962be41fa3c0b3eeb5c75c7e3d99cc4c4db3a68099b71a8cb98cc13064e046b585057782361f', 'SuSxHxRzJX1ZD0NUM3dy', NULL, '2012-07-26 15:25:49', '2012-08-20 16:20:11', 'BP5YQVua9qJVVpk7oaMM', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'BP5YQVua9qJVVpk7oaMM@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(9, 'XoM0D5MTzHpsj-rGJBwj@example.net', '826c5c108278c1cf7b10a1410f7e8a29907b7701aeec28f614a9b017f89f5328cdc95385e33dc12aadd7d5b94cb8eb755f47b4f9cbdae9e01d4d2e0d04291cfb', '9L7HQCsFPsUo9RXlvsIh', NULL, '2012-07-26 15:34:08', '2012-08-20 16:20:11', 'XoM0D5MTzHpsj-rGJBwj', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'XoM0D5MTzHpsj-rGJBwj@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(10, 'LeemXzi-RD8Q7-oY5tki@example.net', '449aef5afeaad4314ade9e1dc30b316885d037018ba2dbff85fba0ba19086936ec3219f6803923887cc9a845c3bbc081f56fc68ffa240df0ac1ff56a2ac5a138', 'gwy8YMp1qjoDMek1jCbX', NULL, '2012-07-26 22:46:41', '2012-08-20 16:20:11', 'LeemXzi-RD8Q7-oY5tki', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'LeemXzi-RD8Q7-oY5tki@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(11, '1iH87CCD-_bTt6Ns-y2Y@example.net', 'd34d74cf4eeb160b28ce2f63c57279545cfa91b255bc0351df38c51e80ab3390cafb613a5f5004626e4e7416a6ac232ab04e4d9eb270659a37e32b6f3111078d', 'hUJC7ktyZtlFEDLsxxvy', NULL, '2012-07-26 22:46:54', '2012-08-20 16:20:11', '1iH87CCD-_bTt6Ns-y2Y', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '1iH87CCD-_bTt6Ns-y2Y@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(12, 'aNEFFDkuLyQLXTajztAK@example.net', '1e6bf97dfd12d5e2ca0ca21f7e1c6c027efc06422139a0061df0f97e9790864180e88206889cd809cf57fad46b7badd795e05d049536ca473a4ac183dfcbafa6', 'MyCcZN1p9A7jh9ykgEsQ', NULL, '2012-07-26 22:50:29', '2012-08-20 16:20:12', 'aNEFFDkuLyQLXTajztAK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'aNEFFDkuLyQLXTajztAK@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(13, 'ga7r07__EjIMBivx6ktj@example.net', '5dc2c495e259fdf77a0b8b93956c8d866dfd23fcf5229557ee63a9a96750204c3e1182c97d8ba4a02f367db0e5ea68cbaeea7b2e9f7ac8b42a3e285ac37f8324', 'Isfe445eA4DWm3RAzN67', NULL, '2012-07-26 22:55:09', '2012-08-20 16:20:12', 'ga7r07__EjIMBivx6ktj', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ga7r07__EjIMBivx6ktj@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(14, 'Dcj8xlHsuaArsgXBY82_@example.net', '0b5ba1329aea1a7966e19774695424680e3d574b0fdba8c7ec0b3a99534a5dc13d94b84b825786d7cf877a59e6c8f3af163778174a08e6aaa6694154877ef49f', 'dRjYK91MlkFDN29dGMD9', NULL, '2012-07-26 23:07:50', '2012-08-20 16:20:12', 'Dcj8xlHsuaArsgXBY82_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Dcj8xlHsuaArsgXBY82_@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(15, 'rliATZahuIAPToQO0yS7@example.net', '23fcb916e3736d2d6bb7370c114d0b34bae63764cd8577536f4e4d82924f3f5530690987c62331963c5dc724df28f255b2265e657255ee2befd95c325f6ec0b7', 'vEyPVh7xn8SNuRQuLdwW', NULL, '2012-07-27 01:03:13', '2012-08-20 16:20:12', 'rliATZahuIAPToQO0yS7', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'rliATZahuIAPToQO0yS7@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(16, 'cQcswWFs7U7_w7R-TS2H@example.net', '633c347a9328bae8b9491ac386bd3b2fc31af3a85af642918623b46599f5e4a7d7f6f16775c2be05c26fbc677faaa2d59c831b6015a200bfac20e7fe35deb08e', 'xbhoM1A6WQQXTUHliwWS', NULL, '2012-07-27 01:14:56', '2012-08-20 16:20:13', 'cQcswWFs7U7_w7R-TS2H', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'cQcswWFs7U7_w7R-TS2H@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(17, 'TeZesf1tpw6kXheEdrSR@example.net', 'a5bb062a42d5cb53fe66394fdd14c1a50d009f27e7c9d13361e4564dae04f00f03d52f925ed0457b5a9d9b611d4038463b416df119eefff7c3bd173bc608501f', 'N2BdxeaWokpCvvIPJW3y', NULL, '2012-07-27 09:25:01', '2012-08-20 16:20:13', 'TeZesf1tpw6kXheEdrSR', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'TeZesf1tpw6kXheEdrSR@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(18, 'kgqiTSvXuBOCrAi6ff9R@example.net', '7c3cfb4f90b4edde5233908071a615f23987916402103057500a55cd3395ca33311cc711cda8d01426cdca045f3952c64395cc4e87826910711fb8f6bfdcea67', '6AtxNVO2vdCy4iDvYfxG', NULL, '2012-07-27 09:34:19', '2012-08-20 16:20:13', 'kgqiTSvXuBOCrAi6ff9R', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'kgqiTSvXuBOCrAi6ff9R@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(19, '5nDoo7UGGsGV7R6kCFaA@example.net', '71eb6ef3b6034abb5318ffc3c54f623d54318c40040864df7c47110d6ea9e3b099182ff70c5008a8aa5b0387a610dca37ccf0eb1890c30ade944d8b3cf66228f', '1Rn3arJ2GxJIiaip80Mw', NULL, '2012-07-27 09:56:56', '2012-08-20 16:20:14', '5nDoo7UGGsGV7R6kCFaA', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '5nDoo7UGGsGV7R6kCFaA@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(20, '0MwhjxchlDpsyuSNYuVq@example.net', 'd19261d2d53ac8963b36978408ea8861d69a605ffcf9949a3c80e98a82c3a2dacbe8398c2f3641854debced1ffe640a8f18a5b8d109eb6c69801aa8e50cdd4c6', 'B7a5wMiYrj6H5UtQpnp9', NULL, '2012-07-27 10:42:28', '2012-08-20 16:20:14', '0MwhjxchlDpsyuSNYuVq', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0MwhjxchlDpsyuSNYuVq@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(21, 'zpI9kcEn3QGVB9ApumWH@example.net', 'a8ba05cf6a43a31f910d4cde27b7aca06d1aaa63da910193a265d8d557df8780a6db59238a8b60066607b4e2c5d0a23693307df05d013081bd3d23fbab0ddbd3', 'rC4dnxssAeAUy1hn8Fyt', NULL, '2012-07-27 10:58:29', '2012-08-20 16:20:14', 'zpI9kcEn3QGVB9ApumWH', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'zpI9kcEn3QGVB9ApumWH@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(22, 'bALTL-BlsYmcoHwHNdRm@example.net', '8ebd3022a71d2bdd0aa2097cbf2506835b1b0abde039a53cceea293bd225fe4ed35b014eee365742585bb75ff9372b7941b1ab9fde65d5cb037e82931c1e55e5', 'bJN8gEjltOpnQcNUQHxK', NULL, '2012-07-27 10:59:37', '2012-08-20 16:20:14', 'bALTL-BlsYmcoHwHNdRm', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'bALTL-BlsYmcoHwHNdRm@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(23, 'juUW7cR-LGAs-UF9Qkq4@example.net', '929d89b6d7a676576b446193ba501225f0ebce9bbb0f1d052f92c5ec79d007659a25ffc0ceec9d6f79acd7e1a99978d271a6cd62068fbd39d180b76cfbc22d15', 'XstISdlxiuTD2T6fPwi2', NULL, '2012-07-27 11:38:47', '2012-08-20 16:20:14', 'juUW7cR-LGAs-UF9Qkq4', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'juUW7cR-LGAs-UF9Qkq4@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(24, '2BsX_z7hp4pItUjg79G2@example.net', '757bfe846caeba9145a27bf2cc5931ca45abf16fdac541b5badebeeaf37e9769682f4f25d71655b003d34ea5820ff181be32508c07d645a000a78ab6d8fbe352', 'hdRUZ7BAoaxD3x5108er', NULL, '2012-07-27 11:52:25', '2012-08-20 16:20:15', '2BsX_z7hp4pItUjg79G2', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2BsX_z7hp4pItUjg79G2@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(25, 'skGWoWOUEJCka71yspXZ@example.net', '1467d84a03ff2bcddf34558c365bb5af9db4a9200c0b157b0aca193207e329c4901d71c54609c16752633f2736c6eb1385eb059c5fc65d8e0ada1b10aa8cb432', '0eUDVJOUnLRshCOFMM1c', NULL, '2012-07-27 11:53:25', '2012-08-20 16:20:15', 'skGWoWOUEJCka71yspXZ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'skGWoWOUEJCka71yspXZ@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(26, 'e6UKFycPHXbBiXoie5ni@example.net', 'e87f0d5122bd9f54472acb897bf0cbf744ca345c5caa08253ccb6e1c1eb125bc8db0216fb1229eb7ffeccbfe488113a4e17ebae25bf35d6801f57aa9f703adb6', 'K1vkSu23ULWheGFBBIQB', NULL, '2012-07-27 12:04:38', '2012-08-20 16:20:15', 'e6UKFycPHXbBiXoie5ni', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'e6UKFycPHXbBiXoie5ni@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(27, 'cCHctBCRnmELN3hCh9s6@example.net', '6f2a45c1f4b8b47bd8fb1413301770f460564108f7206dc0e666e105f0944683030a3e48fcdf26144cf6e56cbf5bc2273d78a377e4aa37a8188cc3e94f66083c', 'cFJ70nBMdXcFkYLo9eR9', NULL, '2012-07-27 12:12:53', '2012-08-20 16:20:15', 'cCHctBCRnmELN3hCh9s6', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'cCHctBCRnmELN3hCh9s6@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(28, 'g85IuxYWNz1jSqmr609o@example.net', '4dc6afb58bb1e52a802cbbe82e058c6b2c534caedabecf784edb27d9af8929136a17f01686f073fb2ae819a164594989f1d13cced70e832bd690e08e12671937', 'LBwHXeVQy3uoKUglzXPs', NULL, '2012-07-27 12:43:08', '2012-08-20 16:20:16', 'g85IuxYWNz1jSqmr609o', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'g85IuxYWNz1jSqmr609o@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(29, '-CeAa9Kir_rt7JlJ4YJT@example.net', '4be1473048a681b560ae766962716f7062e9490fb01d7d6371125fb529b4a4c5431faf666d3ce44de91288f743f897d8f5339d6baad5a69f0f5838f70e1eab31', 'G6BxIazMrlxj305rbPsh', NULL, '2012-07-27 12:49:18', '2012-08-20 16:20:16', '-CeAa9Kir_rt7JlJ4YJT', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '-CeAa9Kir_rt7JlJ4YJT@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(30, 'SCsWOvd6jjtZuiruXyzI@example.net', 'ec35e0eadab1ec3f237d2e2a934878608cab8765743575e7f4e52414653cf934fba95259cac82e0b62b26f90abe8d90ca661af66b4ca73cde525b6f5e33d8fa5', 'QziC0HK74NQx7gYM5yFs', NULL, '2012-07-27 13:01:18', '2012-08-20 16:20:16', 'SCsWOvd6jjtZuiruXyzI', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'SCsWOvd6jjtZuiruXyzI@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(31, 'Wp4rIKqLElBdO_JTZU1I@example.net', '8df465e0f97b7787bd6c4c1fda70eb3c571861426663aa27477bd7bd44cb6d0431923b96e71c2b7f43f0de961dbc87d732a44b85e4304f4601f4698ef663f690', 'iRYhGeMOxFGvPBex5Rc6', NULL, '2012-07-27 13:01:53', '2012-08-20 16:20:17', 'Wp4rIKqLElBdO_JTZU1I', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Wp4rIKqLElBdO_JTZU1I@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(32, 'Biw20hzcqw-IgnmkVWq_@example.net', '26a40861ca9ca1bbc5c7fa4d52aa2293fabb0e51da65e18819eba6ba9eb0cc4e09115c0e0d4b93b6edf9a8199e18501404d52e3150d86faf5d49fb588405da10', 'Fbf0HnFb1Kl6kLMyYT8v', NULL, '2012-07-27 13:05:28', '2012-08-20 16:20:17', 'Biw20hzcqw-IgnmkVWq_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Biw20hzcqw-IgnmkVWq_@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(33, 'QtdiaRTq3MdnY4ylS4fq@example.net', 'cea6c15d269b2e8b5dcc9a58587de274514100e9fb6891927bcf447f28048e4a15fcb440688e8e4457a9160499c62911a6f77360ba0d783daf848d0f38241eab', 'nyVqajYoLdhFdTgUiSTO', NULL, '2012-07-27 14:49:38', '2012-08-20 16:20:17', 'QtdiaRTq3MdnY4ylS4fq', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'QtdiaRTq3MdnY4ylS4fq@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(34, 'AeIW5FS8Nz45XtPKTd9_@example.net', 'b4a0ad79d8a94a28447ca3d4207f937141f27892cf19eba2971577b691cdf251429218fb9f9698ede2f91f4ee121b470463a42866d5fbb414241e538dc014768', '3IyVHyKHL5HUW4AqH7Tk', NULL, '2012-07-27 16:44:00', '2012-08-20 16:20:17', 'AeIW5FS8Nz45XtPKTd9_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'AeIW5FS8Nz45XtPKTd9_@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(35, 'WREE5b7TNE5EkLUwQe1E@example.net', '17d87b449f7939b45b006b7c66714904712cd75b3b47fb011a5b6a31367b0c8a44a58901aa044cb0062f94e945bd76f79bb105502ae5e55a542142d57d4ecc30', 'vTTsbWdIaqYYjO2sYIlc', NULL, '2012-07-30 07:50:33', '2012-08-20 16:20:17', 'WREE5b7TNE5EkLUwQe1E', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'WREE5b7TNE5EkLUwQe1E@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(36, 'at1NAo-zkjHAnwDLuB3m@example.net', '73e456c59e59bd8971dbc75f159b9633a9fca2b4fd5ba04b9e0d73a8b7bc7f11fde050de49d2bd53a5eb804cc68735428b2f86155dcb53b8ad4b47639f6fe156', 'zdpz12TDuutu20nTKRSa', NULL, '2012-07-30 07:59:23', '2012-08-20 16:20:17', 'at1NAo-zkjHAnwDLuB3m', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'at1NAo-zkjHAnwDLuB3m@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(37, 'd38B4_GW2vtRBupaxqQw@example.net', 'def4c898eb46740957d78780b290ba8867c34cf046561128820b9da6dc00597c7bfd7507f89df0f00464a7eab609b9661361d1a8a5f2dcdf69a82e745237389d', 'eERXtjaHE0bJAFWCrtTC', NULL, '2012-07-30 07:59:41', '2012-08-20 16:20:18', 'd38B4_GW2vtRBupaxqQw', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'd38B4_GW2vtRBupaxqQw@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(38, 'sUtZil_7GtqwN8H5T9Ax@example.net', '30374ff4ff71fdd80494976f102db0394a8005e5fd163f023201b3a449bc96ee17c69ed7bbfaa18d9e182715cdc2a1d01783d7815157b5abbd8324c6e351721b', '3fWaYIxel1yZ7jDi3PwR', NULL, '2012-07-30 12:24:55', '2012-08-20 16:20:18', 'sUtZil_7GtqwN8H5T9Ax', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'sUtZil_7GtqwN8H5T9Ax@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(39, 'XG8aeVp2j4mbggKXKg-H@example.net', '940658f0fb4e32f2a4ea5d58d51885e3ef0ad066294293f946f6cc82d1f6684942da3c9edd9be50b9df7db83164eff191be7e7a6c03976659e68770545a706ba', 'RY6bMMttg8YuPf7ibXG4', NULL, '2012-07-31 14:53:51', '2012-08-20 16:20:18', 'XG8aeVp2j4mbggKXKg-H', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'XG8aeVp2j4mbggKXKg-H@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(40, 'ZjpawTjxt1GHwv3gX3Ye@example.net', '648981306c8a48aef077d329a1fd209aa8cfc9bcf97c8c0217bf32cab388e58a17380110eca1565a918a1e81a8c420e1bf778037407e02d92b3690c814b1e434', 'xhV0yLjCIUmnmNN4b6p8', NULL, '2012-07-31 19:38:41', '2012-08-20 16:20:18', 'ZjpawTjxt1GHwv3gX3Ye', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ZjpawTjxt1GHwv3gX3Ye@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(41, 'Ka-7xZqjF82j12QgZCdS@example.net', '9cfc473cac38d16d1c7d8ded34bc187ab344f2d9a38993163f62a51f85391068a9e93e69867f321821e8fbae45eedc2cc527def0eb1b3cfa7d9d5ad6a577935b', 'prRwjIxxKblRxx2VvEcT', NULL, '2012-08-01 12:12:41', '2012-08-20 16:20:18', 'Ka-7xZqjF82j12QgZCdS', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Ka-7xZqjF82j12QgZCdS@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(42, 'N5z6XWI5XQfSvWE06P1q@example.net', '14c5f18c5b031308f8a5e3ca5163e7e44507b579789fb267fd2cc091e6c3738312564d12db224bcb93815d0cb41f80b446f827df2e80a795b48120800a3a906c', 'iMyUxnsbMSn82HvRX9dA', NULL, '2012-08-02 07:55:04', '2012-08-20 16:20:18', 'N5z6XWI5XQfSvWE06P1q', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'N5z6XWI5XQfSvWE06P1q@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(43, 'xe6-GmXo2uWbkx6tF2aa@example.net', 'f8ae7c1028625ea825de693baeb3a01ff9b1210850deb2032335c08972ebc5388e55776f7aab8bc13197db11e1bd41b0986621a41bf762f83cd892db8df04c1e', '1DrUyfIl4yxPa5CJQlOh', NULL, '2012-08-02 09:23:45', '2012-08-20 16:20:18', 'xe6-GmXo2uWbkx6tF2aa', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'xe6-GmXo2uWbkx6tF2aa@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(44, 'gqemVzgVYsTf7PrCYbKY@example.net', 'ce5ea5e8000ee08808ac2a41c163a8a49a11d43bce7e2b7afe67d89dcfad2a3658d75b4679fe52bc4c12396f77667c3b776d4ae2059fcdca0f5297cb47230b24', 'yh7LZn10HmJN3lzFReDs', NULL, '2012-08-06 08:32:58', '2012-08-20 16:20:19', 'gqemVzgVYsTf7PrCYbKY', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'gqemVzgVYsTf7PrCYbKY@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(45, 'uK5QTW1HPBr8aA7GzW7f@example.net', '97007afd7c9fd0ae963e6a21c880a09f2218caeedd2e462603a41714adee954ebc2a65d1689ae0afcf12ce73a0500f6eeee497e1cad884666ea0b2af197ec403', 'YvUTTDIlFaKvRC83Yxxr', NULL, '2012-08-06 09:34:51', '2012-08-20 16:20:19', 'uK5QTW1HPBr8aA7GzW7f', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'uK5QTW1HPBr8aA7GzW7f@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(46, 'dFc7NROROqif8N0dPXgL@example.net', '0f442cb49ddda6b79ab746976d5e7b76318c3148ca071324b596e22da2374d9953c6856b33769becae67db0311f1771e69724479f2e0be6ac125e8bc1992822d', 'umfY8Gj9kXzOlzIKo4sH', NULL, '2012-08-06 10:50:53', '2012-08-20 16:20:19', 'dFc7NROROqif8N0dPXgL', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dFc7NROROqif8N0dPXgL@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(47, 'lelir4CtquTtGy6KblZA@example.net', '150b6d84ad6be02699d1e9eeb73696cbec8624f15b8f757b5f4442fd8b842bea6e1412ef247d30c469101c01c08bbdc1873667f93ea9c8982698154ec44c31b4', 'xbNMKSLWe8VqJJ6DIN2q', NULL, '2012-08-06 20:06:07', '2012-08-20 16:20:19', 'lelir4CtquTtGy6KblZA', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'lelir4CtquTtGy6KblZA@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(48, 'gogogog@example.com', '0863cd9927b6e5491ec36f1c6b25b75a3b4c892f0694f95050675afeec2ba04734c74ae7936b7cc8183ea65ef2fb37b7e801d0cb92b7d558574558bd987bdaa5', 'JFtxPq6zydM2TX7domnu', NULL, '2012-08-06 20:11:24', '2012-08-20 16:20:19', NULL, NULL, NULL, 1, 0, NULL, '2012-08-06 20:11:24', '2012-08-06 20:11:24', '188.134.62.16', '188.134.62.16', 'gogogog@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(49, 'rsedykh@whitescape.com', '990a060e82bde1e686d80b1a8cfa2d2f6dd64096b9666329a4673a31f58e8a29631f1d9900f6a9a744482f01a6e057ff05341303460a30fb9cfac6b2318fb1af', 'CxYm27K9YEBicyYex69k', '57AfARKv0c4ouB1BHCb9', '2012-08-06 20:43:45', '2012-08-20 16:20:19', NULL, NULL, NULL, 31, 0, NULL, '2012-08-13 14:16:23', '2012-08-13 14:00:26', '87.248.244.210', '87.248.244.210', 'rsedykh@whitescape.com', NULL, NULL, NULL, NULL, NULL, '2012-08-06 22:00:21', 'firstname', 'lastname', 'phone'),
(50, 'CFpjbjQwgyqxugc71lMB@example.net', 'f3bb566e08eb011e4b2cd2de7f8a0b150b324194574ae84b4d63352524e8c5b5610f89aa06473f2496a8133bd6ac9ab5a0534b02804032f15deaec47b63ebecb', 'KO7IVLd0ZLLsu3VDaEaP', NULL, '2012-08-07 11:02:32', '2012-08-20 16:20:19', 'CFpjbjQwgyqxugc71lMB', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CFpjbjQwgyqxugc71lMB@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(51, '6EqA28IOKfrub-ozy308@example.net', '6b5aff5221b37dfd2e074b06997fbab3b8c46e6ae84ae444250cafbae14bd2ddf5a54c6cfb42ba4471ca3ca7e67417d361cc19707caf503e9619b1bd75b7dcdf', 'efeOtpITqcUoeZ9Pj2F0', NULL, '2012-08-07 11:06:50', '2012-08-20 16:20:20', '6EqA28IOKfrub-ozy308', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '6EqA28IOKfrub-ozy308@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(52, 'Zx6MFvwxRwYy4WX1QEky@example.net', '239e75cfdda3d88d1d4f79e17020138320fb627dfc9603e723a164f0ba686867ee5d9e1d8458993f5684191c7e869a717c36d435a4db4a2981cd5270c7d68f32', 'npUUdDHhQWLiTy7alhNa', NULL, '2012-08-07 13:12:06', '2012-08-20 16:20:20', 'Zx6MFvwxRwYy4WX1QEky', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Zx6MFvwxRwYy4WX1QEky@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(53, 'UNr2aI-dGzX1ewzRPAAG@example.net', 'c1f754518aeb183aff077e7177a3b72e18650160b36216d9a1353ff40496e79743a69c8bd8337b43619109a2f0606dd119d5317b001d97104cb0dd06d04ad011', '9BjHPHU8foAEtcU9VFsy', NULL, '2012-08-07 15:24:04', '2012-08-20 16:20:20', 'UNr2aI-dGzX1ewzRPAAG', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'UNr2aI-dGzX1ewzRPAAG@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(54, 'a0RqtgqUUovcFmIx8zm2@example.net', '7b100890ae38d4d39ef7a8a2381c88934cfdaeda0f1fbbce9ded9a39d695ad0a0d7d9d7610d8a66d46ce3be0d01c1967201d86f04b72cc88e474680f2507ff19', 'yrkyfS1ccAsIBgFnczMF', NULL, '2012-08-08 08:57:48', '2012-08-20 16:20:20', 'a0RqtgqUUovcFmIx8zm2', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'a0RqtgqUUovcFmIx8zm2@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(55, 'd.cherevatenko@gmail.com', 'bc99ade2e63aa27ba06269c2c6d4abf876b37326a8525a38d25da0c77c40fe717e72e248819bedb2092751742b5699ce0982fde54174869aa44f0c71ca1d36e2', 'wik5LkbGiNUOcxL2UNQw', 'fBc7VGl3YwuPc2xU5U07', '2012-08-09 08:23:27', '2012-08-21 09:56:58', NULL, NULL, NULL, 15, 0, NULL, '2012-08-21 09:56:58', '2012-08-21 08:38:50', '213.138.68.154', '213.138.68.154', 'd.cherevatenko@gmail.com', NULL, NULL, NULL, NULL, NULL, '2012-08-20 12:50:43', 'Дмитрий', 'Череватенко', '+79185560091'),
(56, 'RNspSRbhMlybwYkxb_CF@example.net', 'fc9d0eac5747a0af2aca68bd70021a48f4b75281ee0cc81aaa0d06fff5246881373c826229ef0e0b2194e849b797fffdf0eb7c51a546e152783984d25b6e388f', 'SBk5kynBhYXrQYfQMrle', NULL, '2012-08-09 13:03:48', '2012-08-20 16:20:20', 'RNspSRbhMlybwYkxb_CF', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'RNspSRbhMlybwYkxb_CF@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(57, 'zHRBcAjuIWa-wC8fD_rS@example.net', '85034cf26a7c8e1b2ccaa426413af2ea86f5bbe489adefc6de769ea90c3c0bb1fff9114da71812c12a3317df8d3058b321722745287574b13352077e0f6c0032', 'Hof32yM72hGcUG2tlKxY', NULL, '2012-08-09 13:42:49', '2012-08-20 16:20:20', 'zHRBcAjuIWa-wC8fD_rS', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'zHRBcAjuIWa-wC8fD_rS@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(58, 'Mb_pTr8i3ooJi6DhFAh7@example.net', 'fa43d07a0595f5e4f8317c0689b942d33c1aefb0da755067a4bd00d97e74bb6f5bb9275f37c9f077e192fe74f5b394921a6a65adbecc21ca4709cf17a6802811', 'Z4v5VSlbIGKacASicIHo', NULL, '2012-08-09 13:47:07', '2012-08-20 16:20:21', 'Mb_pTr8i3ooJi6DhFAh7', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Mb_pTr8i3ooJi6DhFAh7@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(59, '2mrggE_FOWIaKypN13pU@example.net', '3e8cf0b61b91bb4c225a40fb87f6c2f84204ca7c7c1f4f2a6e91dec51c5e658be54b43d40b64acf3bdc4fadf973f6aa20660e3e269af3177bd5764054c3bfe19', 'UgA1ZOApEiuWFcyUBxrc', NULL, '2012-08-09 13:48:11', '2012-08-20 16:20:21', '2mrggE_FOWIaKypN13pU', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2mrggE_FOWIaKypN13pU@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(60, 'dxle1egseG36OTVS8hyF@example.net', 'e65fe283542357523c838525b029a7a83b7acc78fff2834c3f2de9c4e85202da380fd865603f9c7349eec2a53a74ca946417b8cdf658e612fc5d6e4cf269379d', 'DSq7FAJW85qDq27eJQ5c', NULL, '2012-08-09 14:00:10', '2012-08-20 16:20:21', 'dxle1egseG36OTVS8hyF', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dxle1egseG36OTVS8hyF@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(61, 'avbaWB09GKD9w14EfUDB@example.net', '8a3417195552167f24941366e76c70a42d5df862c95c97b183cb6b7528c3aa77be82087e7a28e6bd58ed492ee663a8f8c416dafd247f6890fdeb284b950409a2', 'udwp0xye6WxwjnqPUgmH', NULL, '2012-08-09 16:07:04', '2012-08-20 16:20:21', 'avbaWB09GKD9w14EfUDB', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'avbaWB09GKD9w14EfUDB@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(62, 'aeN7tySc-9Zub5zjVCQc@example.net', '73ecb716bdd328640145d37d2e0b16775f04677b9986de4d4803e15fc9036df139e14fcd12ca691087a1f76086bc471367a69906b0ffdae8424b310729cc832f', 'kE8RVghtNxFyiCFu8Ix6', NULL, '2012-08-09 21:34:36', '2012-08-20 16:20:21', 'aeN7tySc-9Zub5zjVCQc', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'aeN7tySc-9Zub5zjVCQc@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(63, 'lLUIEoZiRAMhkgYXpH91@example.net', 'e153c5d0d90824492c38b46d02d4e4bb031d5e323f1e131af229f2b9a80e3b801ba731fafcf668490b04a72d680d862f8564c467c300dd8a841aef0c08ca42da', 'K1FOjgQihda2Syvde9ny', NULL, '2012-08-10 08:09:13', '2012-08-20 16:20:21', 'lLUIEoZiRAMhkgYXpH91', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'lLUIEoZiRAMhkgYXpH91@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(64, 'fFckxx-yK9KPs_eom9eK@example.net', 'fb5c27bf3230411f16354fb1fb1ba0605290d69896ac59e6a649c25b20e3e2dfa453a9a5bb19c8334776088386af953c84f7b8fc08fa5bfa6ecdedfde6bf5bf5', 'yT6Ua2TKlfyFOSELlNzy', NULL, '2012-08-10 09:54:46', '2012-08-20 16:20:21', 'fFckxx-yK9KPs_eom9eK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'fFckxx-yK9KPs_eom9eK@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(65, 'qCX6oJk3Zgwljp5L_hnm@example.net', 'bf851345e2cf41fd553125ca355bef5c84022400d4fb4f157ee6fd8462f5155437ea5240f09a76df28fe0111fd97483df4b0bef1cb845041977a1cf68c7c1d05', 'yiTOnGTBfTHa8K2ratxt', NULL, '2012-08-10 09:55:18', '2012-08-20 16:20:22', 'qCX6oJk3Zgwljp5L_hnm', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'qCX6oJk3Zgwljp5L_hnm@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(66, 'nYU_Ex6n1W4cJfJ58rT3@example.net', 'e0fb9bbad1a217adfc33fe760f0c02010d3a6cb50d3ba24afb7d9760780935fa1eca229dd739d48c21c4e38d39efbf3a8e90ffae861aa258226c92b2ebee4fb2', 'X003E8lg26myfjP4mvGy', NULL, '2012-08-10 09:55:21', '2012-08-20 16:20:22', 'nYU_Ex6n1W4cJfJ58rT3', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'nYU_Ex6n1W4cJfJ58rT3@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(67, 'k2ffbVobbhq2ZcbIIIO1@example.net', '1307cbce1578dd59b93b69f78740df03a684471d23632c70aab848e3296718f41b910da84ec93be67e6c00a0d44611bd60fa91076c8cb7edb65ff6d35aae8367', 'rOx0vX1Z8LMcHdsdYIWq', NULL, '2012-08-10 12:19:30', '2012-08-20 16:20:22', 'k2ffbVobbhq2ZcbIIIO1', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'k2ffbVobbhq2ZcbIIIO1@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(68, 'admin@devilmaydie.name', '367771b988cebe60ca3adad859f07621e1a9d843c5ef18910008077711ee969350c6c7a0265ed77b19e19e7db7a7be5ed7f91f2492158541ea4278ef367351da', 'vQdgAI4bEgq3L1guNKo2', NULL, '2012-08-10 13:39:01', '2012-08-21 09:45:55', NULL, NULL, NULL, 11, 0, NULL, '2012-08-21 09:45:55', '2012-08-21 09:33:56', '82.193.140.168', '82.193.140.168', 'admin@devilmaydie.name', NULL, NULL, NULL, NULL, NULL, NULL, 'Gray', 'Hound', '89222085920'),
(69, 'AlJ9ocJBzqnS7MjAgR9-@example.net', '8af09ed83e6be5a47333af39d1263f0bc10dbb66e9c29da7be913e65b916fe566b142b26288abda039fc1fb4eeb160a85aa16cba64b3ff301510e2453e166104', 'zidt2y0MeyMNpmA0RXpP', NULL, '2012-08-10 13:41:39', '2012-08-20 16:20:22', 'AlJ9ocJBzqnS7MjAgR9-', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'AlJ9ocJBzqnS7MjAgR9-@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(70, 'H5e-9Z0JjP9X7Lc5Z4JJ@example.net', '9c9f331524f1af8fb81707fbcc66e5897d033ebafd8caae96f8e123aeac30e8e09c42d93c60810317e6ae190f7bda1a1d37a9cd9ea616eb819c5d81a9955b63a', 'y3n1U9mSOOv80YIb6xTv', NULL, '2012-08-10 13:46:59', '2012-08-20 16:20:22', 'H5e-9Z0JjP9X7Lc5Z4JJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'H5e-9Z0JjP9X7Lc5Z4JJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(71, 'NhoMNQ7LqPG2XGF84hpJ@example.net', '6b642568d7f6504a5558e6f7891f63847d1a75c1be90bd5f7b3139268802e42a7732a0cb750efe82920befe3c5b707587d44c2353c0503e49123ee6c815cab35', 'EfShd5clOlL10nMxsfWY', NULL, '2012-08-10 13:50:11', '2012-08-20 16:20:23', 'NhoMNQ7LqPG2XGF84hpJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'NhoMNQ7LqPG2XGF84hpJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(72, 'tiy2TJqxpmDb2Jjozh6K@example.net', '20681cac82db3f2fae82dd362373cd230155ae7409d55a5d77d886ae1a57ba0d683aa5f35d63b711af304d95dfe695151540b8ff1141baa7074741ea7a68a7f9', 'tSRH9lgfy87xarVyyGGS', NULL, '2012-08-10 14:01:21', '2012-08-20 16:20:23', 'tiy2TJqxpmDb2Jjozh6K', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'tiy2TJqxpmDb2Jjozh6K@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(73, 'tqpcz-niwDdinlc5O7XP@example.net', '1f8519b4e36a11c6118bcca7e63d3261a72774ad1d10a5b6ed6994c79403b3a176224cbd4312f105c1401404fa5bc0bd6050d7674d552b59b6b14c9da5063623', 'H4Aoxhr4z9eHnwHaam3h', NULL, '2012-08-12 15:41:56', '2012-08-20 16:20:23', 'tqpcz-niwDdinlc5O7XP', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'tqpcz-niwDdinlc5O7XP@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(74, 'rsedykh+test2@whitescape.com', '60471d6b044d897c3149becc2de26873f716d95c103824c177b317ebad4f1cc1a97dee9abbfc3137e781f3513e1c61876cbeb0cfa20cfd44ea21003bea83ba33', 'uPUcLtjKt6XIS9AArmHf', NULL, '2012-08-12 15:43:52', '2012-08-20 16:20:23', NULL, NULL, NULL, 1, 0, NULL, '2012-08-12 15:43:52', '2012-08-12 15:43:52', '109.167.200.251', '109.167.200.251', 'rsedykh+test2@whitescape.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Роман', 'Седых', '7123123123'),
(75, 'K574fk8pbWAcaivSY2zD@example.net', 'a5fb80430d9b29647e16e6a179d420585b791476cb913c0e482acc7f510c464f4b67b913299539d33a7529ebd8d5c19820236389a52c0466b99ff2ef2b606b24', 'UQ0hpRGHkTtoyuLIPVym', NULL, '2012-08-12 20:01:22', '2012-08-20 16:20:23', 'K574fk8pbWAcaivSY2zD', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'K574fk8pbWAcaivSY2zD@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(76, 'u9Ug3qv3ZidZbvOs845X@example.net', 'c1ecf3a36d058ed5422e87ff4b483439b5c3b492a94877ba1a141cc9a39c95c0cd9e58537917868345a9bbcffbd5ced89b053673689ed30f7b0d6f9227221d12', 'Tq0GkiVPPmcM3cEIZxtc', NULL, '2012-08-13 13:02:55', '2012-08-20 16:20:23', 'u9Ug3qv3ZidZbvOs845X', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'u9Ug3qv3ZidZbvOs845X@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(77, '_vutS2_UAGiKcMEkI6OH@example.net', '7aa78f3da6e76aada78dd38c919d6eab63e6860f0a09e648242ad715bc59a0fc21ba8daef6ef6183b3f6c18a06a048a7d13b16cf43c290ba4bed3ece3f5042ca', 'WSR1mOL5GlzQ1zvgMI8D', NULL, '2012-08-13 13:35:28', '2012-08-20 16:20:23', '_vutS2_UAGiKcMEkI6OH', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '_vutS2_UAGiKcMEkI6OH@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(78, 'akr@whitescape.com', '1b80d2d5c1ea95b3a821e7c0594723112f0573f768b7536d74c6704a7066b2ca8cab0b3f13dff8338c481604c694ebb42de1aad873137be98e91a9c0249ce6c7', 'hP26DrSMF6GoCX1X0Ytf', NULL, '2012-08-13 15:58:45', '2012-08-20 16:20:24', NULL, NULL, NULL, 1, 0, NULL, '2012-08-13 15:58:45', '2012-08-13 15:58:45', '217.145.145.179', '217.145.145.179', 'akr@whitescape.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Андрей', 'Карандин', '+7123456789'),
(79, 'd3vveg2vNPloEfkLNX-E@example.net', '890cfa8909e3d2009b475fe0af5d7caac0b1618e780962caa98d2191d6762ff2df0ec1bb07564237c28cf3cd6ee3db4aae27916c9255ab57cb1e27709cc11113', 'DxYMromqDfLL4wWX72X6', NULL, '2012-08-13 16:03:42', '2012-08-20 16:20:24', 'd3vveg2vNPloEfkLNX-E', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'd3vveg2vNPloEfkLNX-E@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(80, '77CJGYUyE-p-Hbm12olH@example.net', '4b5722190141c4e62666edfc29311068b1beca6227168b5efe7871b9eb758046dfa9ffe7781ef887f7cdf3be0be3fc86c3739c65acd541c378f7642060b46685', 'JC9t6LFTpwMrDv7ks70N', NULL, '2012-08-13 16:29:53', '2012-08-20 16:20:24', '77CJGYUyE-p-Hbm12olH', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '77CJGYUyE-p-Hbm12olH@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(81, 'WNBXKXmIZp-iTtKf9gqJ@example.net', 'e121bebc109c50b19f67ef6e51adefc024dd3bcc8d0821e33daf94f647a6a5a33fffdb55e0e4c09089af766f3eeecf065b8674f4520554df2fc8f1e741b9274a', 'QraRvePaY0QH1qJwAIyg', NULL, '2012-08-13 16:41:02', '2012-08-20 16:20:24', 'WNBXKXmIZp-iTtKf9gqJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'WNBXKXmIZp-iTtKf9gqJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(82, 'uhhQHIy_BPFgPTDntGbJ@example.net', '9b6d9c017fb91db7ff864a602048d9d014b114b802177962043961e0c1172f7d09bc993e623725b0c6ed1524ded891577d4cc794daef50853a9b333e1805b025', '1s3zGNVFBXF8GLBxfmcj', NULL, '2012-08-13 16:42:00', '2012-08-20 16:20:24', 'uhhQHIy_BPFgPTDntGbJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'uhhQHIy_BPFgPTDntGbJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(83, '7GE4jEsTz8CqcLtLDFj1@example.net', '7cc05dbaab776e823d09f07b78bbe0cc4a40ad52a36b2cfd57b5be7929b8d5d4197c0167ef84273cfb7d338f1644bb4309763eb3f76b29be84301a3d9d2a00b7', 'xipKyzKn3FviwOWC72zV', NULL, '2012-08-13 16:51:34', '2012-08-20 16:20:24', '7GE4jEsTz8CqcLtLDFj1', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '7GE4jEsTz8CqcLtLDFj1@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(84, 'pQ9Xi5uQTuBGD1x1QzLj@example.net', '4a814e95a8b023c82527763821171b84984ade83dfa82e009c4cfdce2a6cf461a36e4283804f4146216a71c5602d187843f5628fa99320e8175a5edc02ef806e', 'iKiqvh00BCGoo5txSQlj', NULL, '2012-08-13 21:12:33', '2012-08-20 16:20:25', 'pQ9Xi5uQTuBGD1x1QzLj', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'pQ9Xi5uQTuBGD1x1QzLj@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(85, 'iLD47KZKOvvYbRJ2M4hY@example.net', '0bf2dd325fb5c46108f104801fb07757f9ad72a0f59be21974ea20caf8efc33a87d410e5a6727d2195c9cf69c1503834be0ee4931aa90a9331a016951f1ba88b', 'I0JAJDoSFDsIWZltp2yW', NULL, '2012-08-13 21:12:41', '2012-08-20 16:20:25', 'iLD47KZKOvvYbRJ2M4hY', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'iLD47KZKOvvYbRJ2M4hY@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(86, 'vShTdFSdg7ZdBjepIwkA@example.net', 'b4ce8d498a2ded832773c578e71e9bc46c730694cf695eeb93127b1b43d27d068248b68731eeb6cc7c08b73f8e5b27be7a62c98c3d6e52f2e098f36e09127acc', '7SCawqdC7m3q3p01LaSY', NULL, '2012-08-14 11:47:37', '2012-08-20 16:20:25', 'vShTdFSdg7ZdBjepIwkA', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'vShTdFSdg7ZdBjepIwkA@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(87, 'dKXxSFJNBZGmeZ6CgQAK@example.net', '15abe5f3ac1ada21e1e1d517707c38435bd45c356975c8da322e9d1b5c8f09d25465657e2a041e1b0dd7b86697422919c8c42d975fb1cd2025959a7bc1754469', '2I2GpGuo1uKSmy091zAO', NULL, '2012-08-14 16:25:32', '2012-08-20 16:20:25', 'dKXxSFJNBZGmeZ6CgQAK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dKXxSFJNBZGmeZ6CgQAK@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(88, 'TB0Qok3uYxoKxznL61ck@example.net', '7ba9dbe8e9598d1b40bcf138867171286d452721c679357ea9452f1f7e9ee082c016bb8abe85f7892865e6b71953e2b97574a26591be4829617b551916f1cdd3', 'bx0y5LDu9rLckHMlCR5P', NULL, '2012-08-14 17:26:16', '2012-08-20 16:20:25', 'TB0Qok3uYxoKxznL61ck', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'TB0Qok3uYxoKxznL61ck@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(89, '-RARiTeDy-IxJ6pKldgK@example.net', '20812cfb2519f30eb2660814bf52790c21ad0ea8eaca8587284b9a76305dbe71155f44da2c7a1f5504989826818dfa435a3881491b45f83128220ae322b1d9c9', 'HLuGSwNj7GvuCtnRCzvJ', NULL, '2012-08-14 17:47:56', '2012-08-20 16:20:25', '-RARiTeDy-IxJ6pKldgK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '-RARiTeDy-IxJ6pKldgK@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(90, 'jqnggxqdccJEwpC3gRkw@example.net', '95253dbd04d1bb46ac94618aa0b917ca48cb20c694567fa5173225129c23f4681496cfd03188bb379dd71540a1e149224b8595d269f00a3960da37ad4d29fd8e', 'TnZfLROOkZHuhnE6heGs', NULL, '2012-08-15 16:43:35', '2012-08-20 16:20:26', 'jqnggxqdccJEwpC3gRkw', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'jqnggxqdccJEwpC3gRkw@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(91, '-ZV-wewpjZXLOBVEshcz@example.net', '8b55111ab3dcf35f115b238c255d3fa8c72816544b279833b2043e0064f98b5338cb0b48f59e6d89193c9b8f4042cbf8609644d8b4ebcdfdbe73180696ebb5ac', 'IM1lpVxsT4KiOLSSDv5R', NULL, '2012-08-15 19:35:11', '2012-08-20 16:20:26', '-ZV-wewpjZXLOBVEshcz', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '-ZV-wewpjZXLOBVEshcz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(92, 'pI2vYovANImqRGKw2UpV@example.net', '88f662e36d9bf099ade730484462ac2204ffa3e0b6ee895f242472b242ec813c61a6277d1a18776b86ecd5a3f6cfef2c7ed9527720289343801afb96ec7c1765', 'TJIPEzvooS5i0Cn8Mimp', NULL, '2012-08-16 09:49:07', '2012-08-20 16:20:26', 'pI2vYovANImqRGKw2UpV', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'pI2vYovANImqRGKw2UpV@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(93, '6wFLs49xjCAzwKvxoaod@example.net', 'baa423642cfa35b122e507a466b78a52c99215b8bfe8186e669ab009d66224d8b4b4bfdba31baf776e6b132e540f2f0f672825262caaf67a148a0e0f002ddd99', 'x5LGnQmilAuxWy82rzkX', NULL, '2012-08-16 10:35:19', '2012-08-20 16:20:26', '6wFLs49xjCAzwKvxoaod', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '6wFLs49xjCAzwKvxoaod@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(94, '2oGoDL3xMMvlaJnK6K99@example.net', 'd4cd06778ff8e25861148894b70551238fdcb5def4c0455eba9ce5d61f0c0b866a1abc55cab3b1a6f5bf74fae8067b564738fe7a6eb70e369dc077cce23c9f7a', 'JfYbFZLfuMm8wYhQXIvM', NULL, '2012-08-16 10:46:09', '2012-08-20 16:20:26', '2oGoDL3xMMvlaJnK6K99', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2oGoDL3xMMvlaJnK6K99@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(95, 'asdfasd@example.com', 'a68724461394566805aa4b8b800caba1d1f88ab0653e90c176da860a92905da79b5df175f22e2564a47c3891eb4fe7000a3bda2f26f3b52b0d063ac3dfb0c6aa', '2awNLwlOaIqAdU2WO4bM', NULL, '2012-08-16 10:47:18', '2012-08-20 16:20:26', NULL, NULL, NULL, 1, 0, NULL, '2012-08-16 10:47:18', '2012-08-16 10:47:18', '188.134.62.16', '188.134.62.16', 'asdfasd@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'asda', 'asdasd', '1341231234'),
(96, 'asdfasdg@example.com', 'b3dd7dcef9ae8407bd355ad3632d9f18e78b7e8440f7d9ff09b8db2e8d8b15cbf5ab10fbfe0614823b2adfb3ae18aa37a4e6d68f7142774479bee6d2070f4ddd', 'nFvAR2yFyBENC3T7UaZu', NULL, '2012-08-16 10:47:45', '2012-08-20 16:20:27', NULL, NULL, NULL, 1, 0, NULL, '2012-08-16 10:47:45', '2012-08-16 10:47:45', '188.134.62.16', '188.134.62.16', 'asdfasdg@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'asda', 'asdasd', '1341231234'),
(97, 'asdfasdgcvbncvbn@example.com', 'a0a6fac1c0948b3e8773c4dd5ef7acd314a25a7eef8d4beb4f19de485caf617c60e1ab0a180296ad8f3f0677ea94ca8bf6b5b458567d35e6034e912393575614', 'rO9yIa1OqNZBqWlkElId', NULL, '2012-08-16 10:48:02', '2012-08-20 16:20:27', NULL, NULL, NULL, 1, 0, NULL, '2012-08-16 10:48:02', '2012-08-16 10:48:02', '188.134.62.16', '188.134.62.16', 'asdfasdgcvbncvbn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'asda', 'asdasd', '1341231234'),
(98, 'fCDUMasI5j6BmTw14B9B@example.net', '4741c91b7bb897d6497ebc72e17659b57e42a2feef12c282b380564fac6a84026e6aea96c886dfb4ffeb648bf088f1ee477df12f484687e5d557ce65333492d1', '4zCRF0wPy6yly9jDeuYt', NULL, '2012-08-20 09:12:55', '2012-08-20 16:20:27', 'fCDUMasI5j6BmTw14B9B', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'fCDUMasI5j6BmTw14B9B@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(99, 'lnhzynsZj1JLvzhm2DfS@example.net', '41e4e7f85bdb5c1963752f5f220cd3d263ee030d117844e058339ace5d0c0469faace436739fb42ebb13ed2220ce1388c7b0b049024f2274f7be4b188eae4d00', 'UJd5yFOoal0IYmJejRBx', NULL, '2012-08-20 09:30:11', '2012-08-20 16:20:27', 'lnhzynsZj1JLvzhm2DfS', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'lnhzynsZj1JLvzhm2DfS@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(100, '4E11eKgqZTg9yMODwc_D@example.net', '4bfd3442659e005ff767e4eb15d4526dd4e58d880d592fb0168ab894505b35976ca9673b0f595820329c2587ac9e712af1b82ee450fe748dbfa6280fd5850499', '2CgCVKoobcyKHYWvNUWC', NULL, '2012-08-20 09:30:45', '2012-08-20 16:20:27', '4E11eKgqZTg9yMODwc_D', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '4E11eKgqZTg9yMODwc_D@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(101, 'uubBs0qXIgNj8x_Zn2XW@example.net', '3c28a61b5ecd3f1ded1377df43c2a08550b4db40277e5485900ea966e1211ef6b9adc6c836e3121d748821ae818d87c8745926523c355436e8a8eded569dd69e', 'qz2FZENn7kKgIFuZxqKU', NULL, '2012-08-20 09:30:52', '2012-08-20 16:20:27', 'uubBs0qXIgNj8x_Zn2XW', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'uubBs0qXIgNj8x_Zn2XW@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(102, '_ikMCmdfkC5KqLRCsXFe@example.net', '07e62020d63f4fffbaf25052e1cb345b3004eed260c327e46f813c3f952244e890800f6346c72336ec91fbafafa1f412b33e5d6cfe9ccccf0a9574d01f8ab9d7', 'yJWyasKR096E7MLyQQzt', NULL, '2012-08-20 11:16:24', '2012-08-20 16:20:27', '_ikMCmdfkC5KqLRCsXFe', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '_ikMCmdfkC5KqLRCsXFe@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(103, 'qaxV9tYQCdP35At5I1KM@example.net', '19ca9ff70228cf09a1f899701efa9dafabe7131b8810d472f5497c5f6c795d55cf3c080ad5c432c9209475ab6bbb689b0507f11194ae61dcbc4def9bb38598cc', 'ys6VS09khRo0MmpVcjS3', NULL, '2012-08-20 11:33:33', '2012-08-20 16:20:28', 'qaxV9tYQCdP35At5I1KM', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'qaxV9tYQCdP35At5I1KM@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(104, 'x0PvWqF4HVuqkAgsl-3-@example.net', '7c0711520920c367fede9265cf10e952b217dcbdc8b3157558de32726ace6581682f5d9a1f5196171389163141c431b76c96f6e91dd4cea385de3ed5d459ccc8', 'Zz0PmJWPPPxu0CzHcWxF', NULL, '2012-08-20 11:49:18', '2012-08-20 16:20:28', 'x0PvWqF4HVuqkAgsl-3-', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'x0PvWqF4HVuqkAgsl-3-@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(105, 'asdf@example.com', 'b3a32308509901f58d334c7a4a7fee5d7ddc1b8515e039960e84607eda7b0c750d39386ce94225a75f4dd11976f400fdab549a62d7010a1e53905044076605cc', 'G0FdDY6nU1PPjBAEufaw', NULL, '2012-08-20 11:50:07', '2012-08-20 16:20:28', NULL, NULL, NULL, 3, 0, NULL, '2012-08-20 11:50:42', '2012-08-20 11:50:35', '188.134.62.16', '188.134.62.16', 'asdf@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'qwe', 'qwe', 'q1231'),
(106, 'd04YaN53nPzo0DCKcJ5B@example.net', '22894a8a9630176f3fe18392d7833541d1bd53c0ec6191e2f89ede2f30e463a0183274b7d082f4c6d154151e6f6506f5c561dc546dcd88cabac2435282e3971f', 'pNThAZhI70JumRLRRifw', NULL, '2012-08-20 11:50:30', '2012-08-20 16:20:28', 'd04YaN53nPzo0DCKcJ5B', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'd04YaN53nPzo0DCKcJ5B@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(107, 'grigl@gmail.com', 'f63617d364acda37227e481d7256ef0238321b8a0c51f11b5bf6a21fa8edd2bef0c0425b7a1f5043407bb40208556d4b230d7c95ad47629c25bcaedc4f1d21e2', 'Hp1F9GCXT0zvce7Yv0K0', NULL, '2012-08-20 12:12:32', '2012-08-20 16:20:28', NULL, NULL, NULL, 1, 0, NULL, '2012-08-20 12:12:32', '2012-08-20 12:12:32', '188.134.62.16', '188.134.62.16', 'grigl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'qwe', 'qwe', 'qw'),
(108, '8H_zL-STIrOPBfoQAY1X@example.net', 'fc4f8f4c408ffe93a8f4fd5b0511024a6e2d3977fdcfbc00b8c6367db99eb8174c82990c57f1023578c0945f8a4de28217195ccaf5aa30225da5c72b93ece5d9', 'qRk3XYt1vhRjJe3HsThT', NULL, '2012-08-20 12:13:32', '2012-08-20 16:20:28', '8H_zL-STIrOPBfoQAY1X', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '8H_zL-STIrOPBfoQAY1X@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(109, 'gh@whitescape.com', '4446f3654a717304e49e341ea20a003e98af7bd11bfc70182a9660f0d170893020b44556db0fda6f2893d2daf0932ea53abc84e1485245d76e820d5f117bf9b0', 'XVhgoZxO9fkc4gDJyOFU', NULL, '2012-08-20 12:14:22', '2012-08-20 16:20:28', NULL, NULL, NULL, 1, 0, NULL, '2012-08-20 12:14:22', '2012-08-20 12:14:22', '82.193.140.168', '82.193.140.168', 'gh@whitescape.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Грэй', 'Хаунд', '79222085920'),
(110, 'x5PrYmi33f0LOvC3A52t@example.net', 'd0ad0bce1801b12e0e332c2ddd6c4d366a21f1822c4f9bf0ab7a82da05884df54be1bc81720f230b33f3ebc49cd7045890dc5fdb1f3a357238c92bacf04b9028', 'TyHlV9xzY9UYh1qT2Ozh', NULL, '2012-08-20 12:16:53', '2012-08-20 16:20:29', 'x5PrYmi33f0LOvC3A52t', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'x5PrYmi33f0LOvC3A52t@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(111, 'zp50zsnEzTcLmcZvVK48@example.net', 'a2b55d9fce968736f6d8e9e84ad4d169a65e28bb8227146144b268fba92d55c773376bb9bfcf1ba39f786fc65143105898318ec983c8d8168dee50eb1515319d', 'W5oYVyLbTgWAWu0Lb7n7', NULL, '2012-08-20 12:44:52', '2012-08-20 16:20:29', 'zp50zsnEzTcLmcZvVK48', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'zp50zsnEzTcLmcZvVK48@example.net', NULL, NULL, NULL, NULL, NULL, NULL, 'firstname', 'lastname', 'phone'),
(112, 'tarampam@example.com', '6deafe0d9f1073010e18636622f521f037c070875edd4e9f10eca0e35c59843829fce38876a6198e635809fd99c6aaa990c62cd740c69bdc11f77aa95a548c70', 'nrX3aPt2CKrpFeaNRKeC', NULL, '2012-08-20 16:41:58', '2012-08-20 16:41:58', NULL, NULL, NULL, 1, 0, NULL, '2012-08-20 16:41:58', '2012-08-20 16:41:58', '188.134.62.16', '188.134.62.16', 'tarampam@example.com', NULL, NULL, NULL, NULL, NULL, NULL, 'wer', 'wer', '123456'),
(113, 'no.americano@mail.ru', '4dd62361346f6dc13a98f30d23acbfec846ffc3ee28bcc130e8248504dd9f14ea325f55c53bf842d1503b82abe906ee43550e275efbd63257635d9ac9de226f4', 'QC7sqTSjFgu9p1C2vsJD', NULL, '2012-08-20 19:01:23', '2012-08-20 19:10:41', NULL, '1mDx_KAqxXc5XnhRYye5', NULL, 1, 0, NULL, '2012-08-20 19:01:23', '2012-08-20 19:01:23', '213.138.68.154', '213.138.68.154', 'no.americano@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, 'Василий', 'Васильев', '89185560091');

-- --------------------------------------------------------

--
-- Структура таблицы `variants`
--

CREATE TABLE IF NOT EXISTS `variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(8,2) NOT NULL,
  `weight` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `cost_price` decimal(8,2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `ms_good_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Дамп данных таблицы `variants`
--

INSERT INTO `variants` (`id`, `product_id`, `sku`, `price`, `weight`, `height`, `width`, `depth`, `deleted_at`, `is_master`, `count_on_hand`, `cost_price`, `position`, `ms_good_id`) VALUES
(1, 1, '', 2600.00, NULL, NULL, NULL, NULL, NULL, 1, -49, NULL, NULL, NULL),
(2, 2, '', 1899.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(3, 3, '', 2100.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL),
(4, 3, '', 2100.00, NULL, NULL, NULL, NULL, '2012-07-23 18:40:50', 0, 3, NULL, NULL, NULL),
(5, 1, '', 2600.00, NULL, NULL, NULL, NULL, '2012-07-23 18:35:42', 0, 4, NULL, NULL, NULL),
(6, 1, '', 2600.00, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, NULL, NULL),
(7, 1, '', 2600.00, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, NULL, NULL),
(8, 1, '', 2600.00, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, NULL, NULL),
(9, 4, 'B9083W', 309000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'lQQYJ2S_hNipz8f--uUMJ2'),
(10, 4, 'B9083W', 309000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'lQQYJ2S_hNipz8f--uUMJ2'),
(11, 5, 'B9071W', 479000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'j49dtD_-iFupxlsytsUxr2'),
(12, 5, 'B9071W', 479000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'j49dtD_-iFupxlsytsUxr2'),
(13, 6, 'B9065W', 479000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'yi3UkUhNjtyOw8dTZRUDS3'),
(14, 6, 'B9065W', 479000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'yi3UkUhNjtyOw8dTZRUDS3'),
(15, 7, 'B9030', 539000.00, NULL, NULL, NULL, NULL, NULL, 1, -4, NULL, NULL, 'RprfmuZzi9upWxm4J88Nb2'),
(16, 7, 'B9030', 539000.00, NULL, NULL, NULL, NULL, NULL, 0, -1, NULL, NULL, 'RprfmuZzi9upWxm4J88Nb2'),
(17, 8, 'B9001', 539000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'eipNiIluifq3dEeHNpse12'),
(18, 8, 'B9001', 539000.00, NULL, NULL, NULL, NULL, NULL, 0, -1, NULL, NULL, 'eipNiIluifq3dEeHNpse12'),
(19, 9, 'B9104', 539000.00, NULL, NULL, NULL, NULL, NULL, 1, -1, NULL, NULL, 'WED-WjsCgKaIRJNmdVuwv3'),
(20, 9, 'B9104', 539000.00, NULL, NULL, NULL, NULL, NULL, 0, -2, NULL, NULL, 'WED-WjsCgKaIRJNmdVuwv3'),
(21, 10, 'B9114', 359000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '9QvtW56-gcKSu2YK8nENd1'),
(22, 10, 'B9114', 359000.00, NULL, NULL, NULL, NULL, NULL, 0, -1, NULL, NULL, '9QvtW56-gcKSu2YK8nENd1'),
(23, 11, 'B9072W', 449000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'qVtDazj_jdqS9W4OmB6HA2'),
(24, 11, 'B9072W', 449000.00, NULL, NULL, NULL, NULL, NULL, 0, 100, NULL, NULL, 'qVtDazj_jdqS9W4OmB6HA2'),
(25, 11, 'B9072W', 449000.00, NULL, NULL, NULL, NULL, NULL, 0, 200, NULL, NULL, 'QNiKymIIj2y-THrk4fB7f1'),
(26, 12, '1000101', 280000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'FvU-pqCUhjekf0PDJ7YEo0'),
(27, 12, '1000101', 280000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'FvU-pqCUhjekf0PDJ7YEo0'),
(28, 13, '4110850', 115000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'DIN8_YEFi32e5h9ejV5Yd0'),
(29, 13, '4110850', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'DIN8_YEFi32e5h9ejV5Yd0'),
(30, 12, '1000101', 280000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'nqP8T_LOhfaREDT9DWWEr1'),
(31, 13, '4110850', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'sCyvPlCyibSw6osnmFAB70'),
(32, 13, '4110850', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '8mD4EX9VhhOa1FsvkGlR41'),
(33, 14, '4123206', 115000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'h7awjxEhghWLbL50tRsWc3'),
(34, 14, '4123206', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'h7awjxEhghWLbL50tRsWc3'),
(35, 14, '4123206', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'BmmdihqCj2u7PkK_PnrgY2'),
(36, 15, '4115549', 105000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'rpcRlEUDjv2tDQoiut-Da3'),
(37, 15, '4115549', 105000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'rpcRlEUDjv2tDQoiut-Da3'),
(38, 16, '4000039', 105000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '-AIAqvXWjumsda_ho5eGi0'),
(39, 16, '4000039', 105000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '-AIAqvXWjumsda_ho5eGi0'),
(40, 17, '4123110', 155000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'wehIIFA1iqqHcmJMudmDE3'),
(41, 17, '4123110', 155000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'wehIIFA1iqqHcmJMudmDE3'),
(42, 18, '4000032', 105000.00, NULL, NULL, NULL, NULL, NULL, 1, -1, NULL, NULL, 'KomAJpOTgpuUrjUfsg0fx1'),
(43, 18, '4000032', 105000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'KomAJpOTgpuUrjUfsg0fx1'),
(44, 15, '4115549', 105000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Lw0JLgxFjSadpGRmCzBtd3'),
(45, 19, '4123444', 115000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'UHxL1-1ajaeHEQni3f0TV3'),
(46, 19, '4123444', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'UHxL1-1ajaeHEQni3f0TV3'),
(47, 20, '4103358', 115000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '1R5Y4j8rgZ6RaTD6Jyj822'),
(48, 20, '4103358', 115000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '1R5Y4j8rgZ6RaTD6Jyj822'),
(49, 21, '4001280', 70000.00, NULL, NULL, NULL, NULL, NULL, 1, -12, NULL, NULL, 'ZrmbaPtCiEiYzWJQ6BO_f1'),
(50, 21, '4001280', 70000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'ZrmbaPtCiEiYzWJQ6BO_f1'),
(51, 15, '4115549', 105000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'MRe9lTLojYi4nQZjgl0OI1'),
(52, 22, '4000029', 80000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'Clu22Rrri42IGfh0KYm2Y0'),
(53, 22, '4000029', 80000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Clu22Rrri42IGfh0KYm2Y0'),
(54, 21, '4001280', 70000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'IC9RkS7qimaaM-zHyDqyr3'),
(55, 23, '11822002', 445000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '-EfWRL9cixep-VXPwEe4v1'),
(56, 23, '11822002', 445000.00, NULL, NULL, NULL, NULL, NULL, 0, -3, NULL, NULL, '-EfWRL9cixep-VXPwEe4v1'),
(57, 24, '14375230', 400000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'w3JSq3DzipG2qkx5b3fRe2'),
(58, 24, '14375230', 400000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'w3JSq3DzipG2qkx5b3fRe2'),
(59, 25, '11838002', 385000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'g3CL6OfXiuOvKtuwiu2Iy3'),
(60, 25, '11838002', 385000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'g3CL6OfXiuOvKtuwiu2Iy3'),
(61, 26, '10085001', 385000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'IOqV5t5KhvOqxWoKS4Pj43'),
(62, 26, '10085001', 385000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'IOqV5t5KhvOqxWoKS4Pj43'),
(63, 27, '14353001 1460', 430000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'G9teO-3Rip6i8nAKPvH-72'),
(64, 27, '14353001 1460', 430000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'G9teO-3Rip6i8nAKPvH-72'),
(65, 28, '14377410', 415000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'q5gfAj6TgveId7ZaBAgAv0'),
(66, 28, '14377410', 415000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'q5gfAj6TgveId7ZaBAgAv0'),
(67, 29, '11838600', 385000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '9JExH3qqhkO8IFxmxj2I-0'),
(68, 29, '11838600', 385000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '9JExH3qqhkO8IFxmxj2I-0'),
(69, 30, '14352410', 430000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'sLmHDaLQgKaHqgjzzICY73'),
(70, 30, '14352410', 430000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'sLmHDaLQgKaHqgjzzICY73'),
(71, 31, '14346100', 400000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'qsHjWP80hY_3qL7-4oXZf3'),
(72, 31, '14346100', 400000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'qsHjWP80hY_3qL7-4oXZf3'),
(73, 32, '14383001', 355000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'jPT95GGwjlu7JpfOXRN8K1'),
(74, 32, '14383001', 355000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'jPT95GGwjlu7JpfOXRN8K1'),
(75, 33, '14389020', 370000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '1X3GYstwjwCXopXQeMkQ00'),
(76, 33, '14389020', 370000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '1X3GYstwjwCXopXQeMkQ00'),
(77, 34, 'MP005', 370000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'Q9AzkdaHj7_m1VEuUo4xQ2'),
(78, 34, 'MP005', 370000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'Q9AzkdaHj7_m1VEuUo4xQ2'),
(79, 35, '14370400', 330000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'F1tSVnirjzagSobLFbGuB1'),
(80, 35, '14370400', 330000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'F1tSVnirjzagSobLFbGuB1'),
(81, 36, '10084100', 400000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'W1LdbvNgiImWIjcLrlVeL0'),
(82, 36, '10084100', 400000.00, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 'W1LdbvNgiImWIjcLrlVeL0'),
(83, 37, 'B9072E', 449000.00, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'QNiKymIIj2y-THrk4fB7f1');

-- --------------------------------------------------------

--
-- Структура таблицы `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `zones`
--

INSERT INTO `zones` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'РФ', 'Российская Федерация', '2012-07-23 07:07:47', '2012-07-23 07:07:47');

-- --------------------------------------------------------

--
-- Структура таблицы `zone_members`
--

CREATE TABLE IF NOT EXISTS `zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=764978543 ;

--
-- Дамп данных таблицы `zone_members`
--

INSERT INTO `zone_members` (`id`, `zone_id`, `zoneable_id`, `zoneable_type`, `created_at`, `updated_at`) VALUES
(764978542, 1, 168, 'Country', '2012-07-23 07:07:47', '2012-07-23 07:07:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
