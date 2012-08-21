-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 21 2012 г., 13:04
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(1, 'Gateway::Robokassa', 'Робокасса', '', 1, 'development', '2012-07-25 11:44:32', '2012-07-27 12:58:13', NULL, ''),
(2, 'PaymentMethod::Check', 'Чек', '', 1, 'development', '2012-07-25 11:45:09', '2012-07-27 12:58:21', NULL, ''),
(3, 'PaymentMethod::SberBankInvoice', 'Сберинвойс', 'Сберинвойс', 1, 'development', '2012-08-08 09:19:14', '2012-08-08 09:20:01', NULL, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243735700 ;

--
-- Дамп данных таблицы `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `owner_id`, `owner_type`, `group_id`, `group_type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'default_locale', 1, 'Configuration', NULL, NULL, 'ru', '2012-07-23 07:07:43', '2012-08-20 12:44:47'),
(2, 'default_country_id', 1, 'Configuration', NULL, NULL, '168', '2012-07-23 07:07:43', '2012-08-20 12:44:48'),
(3, 'allow_ssl_in_production', 1, 'Configuration', NULL, NULL, '0', '2012-07-23 07:07:43', '2012-08-20 12:44:48'),
(4, 'disable_bill_address', 1, 'Configuration', NULL, NULL, '1', '2012-07-23 07:07:43', '2012-08-20 12:44:48'),
(5, 'admin_interface_logo', 1, 'Configuration', NULL, NULL, 'admin/logo.png', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(6, 'store_email', 1, 'Configuration', NULL, NULL, 'test@site.ru', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(7, 'store_phone', 1, 'Configuration', NULL, NULL, '+7 (495) 1234567', '2012-07-23 07:07:43', '2012-07-23 07:07:43'),
(8, 'products_per_page', 1, 'Configuration', NULL, NULL, '9', '2012-07-23 07:07:43', '2012-08-20 12:44:48'),
(59769363, 'amount', 491052212, 'Calculator', NULL, NULL, '5', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(87531454, 'amount', 192811543, 'Calculator', NULL, NULL, '10', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(174063089, 'amount', 574015644, 'Calculator', NULL, NULL, '5', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(243735672, 'amount', 13537749, 'Calculator', NULL, NULL, '15', '2012-07-23 07:07:47', '2012-07-23 07:07:47'),
(243735673, 'checkout_zone', 1, 'Configuration', NULL, NULL, 'РФ', '2012-07-23 07:09:41', '2012-07-23 07:09:41'),
(243735674, 'last_check_for_spree_alerts', 1, 'Configuration', NULL, NULL, '10.08.2012 - 13:54', '2012-07-27 12:57:22', '2012-08-10 09:54:15'),
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
(243735699, 'smtp_password', 1, 'MailMethod', NULL, NULL, '', '2012-08-10 14:00:03', '2012-08-10 14:00:03');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `product_groups_products`
--

CREATE TABLE IF NOT EXISTS `product_groups_products` (
  `product_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
(1, 'Сопутствующие товары', '', 'Product', '2012-08-14 13:03:18', '2012-08-14 13:03:18');

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
('20120810132722');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Дамп данных таблицы `tokenized_permissions`
--

INSERT INTO `tokenized_permissions` (`id`, `permissable_id`, `permissable_type`, `token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Order', '76f01b3fbeb0b8f9', '2012-07-23 13:19:17', '2012-08-13 15:07:50'),
(2, NULL, 'Order', 'a61526ce5fb9e139', '2012-07-24 08:05:22', '2012-08-13 15:07:55'),
(3, NULL, 'Order', '423e8d661cc9c761', '2012-07-24 18:22:20', '2012-08-13 15:07:59'),
(4, NULL, 'Order', '9c541eaaf1af0001', '2012-07-25 15:36:58', '2012-08-13 15:08:05'),
(5, NULL, 'Order', 'e6045d0eb9fca3ae', '2012-07-25 19:13:55', '2012-08-13 15:08:10'),
(6, NULL, 'Order', '9cd634bb7f6bc29c', '2012-07-26 14:46:09', '2012-08-13 15:22:51'),
(7, NULL, 'Order', '1a6f99a21bbaa8c7', '2012-07-26 15:16:00', '2012-08-16 09:47:36'),
(8, NULL, 'Order', '491a141af8f79bd8', '2012-07-26 15:22:00', '2012-08-16 10:43:12'),
(9, NULL, 'Order', '2f5d168a2a57f4a8', '2012-07-26 15:25:49', '2012-08-20 12:34:37'),
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
(92, 92, 'Order', '98edb6f7660fa338', '2012-08-10 15:12:04', '2012-08-10 15:12:04'),
(93, 1, 'Order', 'dd5c79671bc5494d', '2012-08-13 15:07:50', '2012-08-13 15:07:50'),
(94, 2, 'Order', 'dcba3cbd2972805e', '2012-08-13 15:07:55', '2012-08-13 15:07:55'),
(95, 3, 'Order', '1f7f802c817a2ac8', '2012-08-13 15:07:59', '2012-08-13 15:07:59'),
(96, 4, 'Order', '088a93207d8a77ac', '2012-08-13 15:08:05', '2012-08-13 15:08:05'),
(97, 5, 'Order', '1a711fccf3e030cb', '2012-08-13 15:08:10', '2012-08-13 15:08:10'),
(98, 6, 'Order', '053fd60729318f89', '2012-08-13 15:22:51', '2012-08-13 15:22:51'),
(99, 7, 'Order', '29852af0d800cea0', '2012-08-16 09:47:36', '2012-08-16 09:47:36'),
(100, 8, 'Order', '69081227d6c31b8c', '2012-08-16 10:43:12', '2012-08-16 10:43:12'),
(101, 9, 'Order', '63f8701a07d6990e', '2012-08-20 12:34:37', '2012-08-20 12:34:37');

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
  PRIMARY KEY (`id`),
  KEY `index_users_on_persistence_token` (`persistence_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `password_salt`, `remember_token`, `created_at`, `updated_at`, `persistence_token`, `reset_password_token`, `perishable_token`, `sign_in_count`, `failed_attempts`, `last_request_at`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `login`, `ship_address_id`, `bill_address_id`, `authentication_token`, `unlock_token`, `locked_at`, `remember_created_at`) VALUES
(1, 'spree@example.com', '0227c4c92a8bbaa93233c94b991b9d88d9d75b92383d0cf37440eea3321906d09adadee7caec93c1526e42e62ea81e921956a5a284ccefdded2d64c499775610', '8SJcjKXzQvtBqdjQ0QAc', '2jo37ve1TcDETud30E69', '2012-07-23 07:09:19', '2012-08-20 11:58:19', NULL, 'SOVn1BaDC1ylCIm7OOFL', NULL, 43, 0, NULL, '2012-08-20 11:58:19', '2012-08-20 11:24:52', '192.168.1.2', '192.168.1.2', 'spree@example.com', NULL, NULL, NULL, NULL, NULL, '2012-07-30 12:27:03'),
(2, 'sk7OejQlfCX_OPqE-gDa@example.net', 'e2b5f9920b4e0e7cf27dba7429dafd64111d14b91ef7102cb36265ee929e64d2934ec0b0ff0622c1fc305207c93b34ae4280cb767ea80f2ee143a67f64d286b8', 'CU4UtpeMI70jq6ZBLQhV', NULL, '2012-07-24 08:05:22', '2012-07-24 08:05:22', 'sk7OejQlfCX_OPqE-gDa', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'sk7OejQlfCX_OPqE-gDa@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ctYwmiwJH52QnQCzTQPM@example.net', 'a31f4032d7d4ee1bdfe04f41b3d184da53a45fcd61b2c3a3dcd4a89f904c7831a6fa153c62d75e8442a97788af5798c2fa54dba45efd724174bb66d0d08fec5e', 'ghR38aW61drj7dViqe7a', NULL, '2012-07-24 18:22:20', '2012-07-24 18:22:20', 'ctYwmiwJH52QnQCzTQPM', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ctYwmiwJH52QnQCzTQPM@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Mix-N7Eoh7knh5n2x5wI@example.net', '721814ffbef7329ff311f7e8ce7437a4b8cc450b82e04bc24ec7e00d85003238257226533fca16b89f0de3d8e36e291945d81d8eb1545f045ba305bda4fe1dbb', 'kxPAozhReBmjxMvC2rSF', NULL, '2012-07-25 15:36:58', '2012-07-25 15:36:58', 'Mix-N7Eoh7knh5n2x5wI', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Mix-N7Eoh7knh5n2x5wI@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'dq3CuKke8t9l3Bvf-W8j@example.net', 'fa7386eceea3183774c9d12a12a77c385d1be6bbbe6a34a2d658ef91851ce3e7384be8b454a3c646c14a5ce1ff2d14df92bf090e3338e05c3bd5756ef8f4711c', 'BvukTJyURWQI19qPC3lN', NULL, '2012-07-26 14:46:09', '2012-07-26 14:46:09', 'dq3CuKke8t9l3Bvf-W8j', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dq3CuKke8t9l3Bvf-W8j@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'pgBpkTL3FsJCv4WxQRKY@example.net', '24095c6ceb02e52b420c189e6be06dc1513a93f3fc74272e82dd53547ca7c8f9bb898faf99663b5cf0b16ee74d6264da4ca3184964e1ff2a3a93d8219d1a3579', 'DBZ2qmLz9Wu5RUW8XZv2', NULL, '2012-07-26 15:16:00', '2012-07-26 15:16:00', 'pgBpkTL3FsJCv4WxQRKY', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'pgBpkTL3FsJCv4WxQRKY@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'T8ighG-4FyR-BUUQTZZ6@example.net', '66b4d84068250a7702fd40eda6d2bc6d18c29b0b682a3831e87fa8b009e16ae2845abdf5d9fd03c8e7ba8f6ae5db1bde625d3a167f1bba3b4335d7f78d889c6d', 'ct58rXqaSjY2biJOj1lN', NULL, '2012-07-26 15:22:00', '2012-07-26 15:22:00', 'T8ighG-4FyR-BUUQTZZ6', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'T8ighG-4FyR-BUUQTZZ6@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'BP5YQVua9qJVVpk7oaMM@example.net', 'e3d2cc87226b2b7094e2318649b2ec2b618e208400a32b93426a962be41fa3c0b3eeb5c75c7e3d99cc4c4db3a68099b71a8cb98cc13064e046b585057782361f', 'SuSxHxRzJX1ZD0NUM3dy', NULL, '2012-07-26 15:25:49', '2012-07-26 15:25:49', 'BP5YQVua9qJVVpk7oaMM', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'BP5YQVua9qJVVpk7oaMM@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'XoM0D5MTzHpsj-rGJBwj@example.net', '826c5c108278c1cf7b10a1410f7e8a29907b7701aeec28f614a9b017f89f5328cdc95385e33dc12aadd7d5b94cb8eb755f47b4f9cbdae9e01d4d2e0d04291cfb', '9L7HQCsFPsUo9RXlvsIh', NULL, '2012-07-26 15:34:08', '2012-07-26 15:34:08', 'XoM0D5MTzHpsj-rGJBwj', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'XoM0D5MTzHpsj-rGJBwj@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'LeemXzi-RD8Q7-oY5tki@example.net', '449aef5afeaad4314ade9e1dc30b316885d037018ba2dbff85fba0ba19086936ec3219f6803923887cc9a845c3bbc081f56fc68ffa240df0ac1ff56a2ac5a138', 'gwy8YMp1qjoDMek1jCbX', NULL, '2012-07-26 22:46:41', '2012-07-26 22:46:41', 'LeemXzi-RD8Q7-oY5tki', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'LeemXzi-RD8Q7-oY5tki@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '1iH87CCD-_bTt6Ns-y2Y@example.net', 'd34d74cf4eeb160b28ce2f63c57279545cfa91b255bc0351df38c51e80ab3390cafb613a5f5004626e4e7416a6ac232ab04e4d9eb270659a37e32b6f3111078d', 'hUJC7ktyZtlFEDLsxxvy', NULL, '2012-07-26 22:46:54', '2012-07-26 22:46:54', '1iH87CCD-_bTt6Ns-y2Y', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '1iH87CCD-_bTt6Ns-y2Y@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'aNEFFDkuLyQLXTajztAK@example.net', '1e6bf97dfd12d5e2ca0ca21f7e1c6c027efc06422139a0061df0f97e9790864180e88206889cd809cf57fad46b7badd795e05d049536ca473a4ac183dfcbafa6', 'MyCcZN1p9A7jh9ykgEsQ', NULL, '2012-07-26 22:50:29', '2012-07-26 22:50:29', 'aNEFFDkuLyQLXTajztAK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'aNEFFDkuLyQLXTajztAK@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ga7r07__EjIMBivx6ktj@example.net', '5dc2c495e259fdf77a0b8b93956c8d866dfd23fcf5229557ee63a9a96750204c3e1182c97d8ba4a02f367db0e5ea68cbaeea7b2e9f7ac8b42a3e285ac37f8324', 'Isfe445eA4DWm3RAzN67', NULL, '2012-07-26 22:55:09', '2012-07-26 22:55:09', 'ga7r07__EjIMBivx6ktj', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ga7r07__EjIMBivx6ktj@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Dcj8xlHsuaArsgXBY82_@example.net', '0b5ba1329aea1a7966e19774695424680e3d574b0fdba8c7ec0b3a99534a5dc13d94b84b825786d7cf877a59e6c8f3af163778174a08e6aaa6694154877ef49f', 'dRjYK91MlkFDN29dGMD9', NULL, '2012-07-26 23:07:50', '2012-07-26 23:07:50', 'Dcj8xlHsuaArsgXBY82_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Dcj8xlHsuaArsgXBY82_@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'rliATZahuIAPToQO0yS7@example.net', '23fcb916e3736d2d6bb7370c114d0b34bae63764cd8577536f4e4d82924f3f5530690987c62331963c5dc724df28f255b2265e657255ee2befd95c325f6ec0b7', 'vEyPVh7xn8SNuRQuLdwW', NULL, '2012-07-27 01:03:13', '2012-07-27 01:03:13', 'rliATZahuIAPToQO0yS7', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'rliATZahuIAPToQO0yS7@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'cQcswWFs7U7_w7R-TS2H@example.net', '633c347a9328bae8b9491ac386bd3b2fc31af3a85af642918623b46599f5e4a7d7f6f16775c2be05c26fbc677faaa2d59c831b6015a200bfac20e7fe35deb08e', 'xbhoM1A6WQQXTUHliwWS', NULL, '2012-07-27 01:14:56', '2012-07-27 01:14:56', 'cQcswWFs7U7_w7R-TS2H', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'cQcswWFs7U7_w7R-TS2H@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'TeZesf1tpw6kXheEdrSR@example.net', 'a5bb062a42d5cb53fe66394fdd14c1a50d009f27e7c9d13361e4564dae04f00f03d52f925ed0457b5a9d9b611d4038463b416df119eefff7c3bd173bc608501f', 'N2BdxeaWokpCvvIPJW3y', NULL, '2012-07-27 09:25:01', '2012-07-27 09:25:01', 'TeZesf1tpw6kXheEdrSR', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'TeZesf1tpw6kXheEdrSR@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'kgqiTSvXuBOCrAi6ff9R@example.net', '7c3cfb4f90b4edde5233908071a615f23987916402103057500a55cd3395ca33311cc711cda8d01426cdca045f3952c64395cc4e87826910711fb8f6bfdcea67', '6AtxNVO2vdCy4iDvYfxG', NULL, '2012-07-27 09:34:19', '2012-07-27 09:34:19', 'kgqiTSvXuBOCrAi6ff9R', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'kgqiTSvXuBOCrAi6ff9R@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '5nDoo7UGGsGV7R6kCFaA@example.net', '71eb6ef3b6034abb5318ffc3c54f623d54318c40040864df7c47110d6ea9e3b099182ff70c5008a8aa5b0387a610dca37ccf0eb1890c30ade944d8b3cf66228f', '1Rn3arJ2GxJIiaip80Mw', NULL, '2012-07-27 09:56:56', '2012-07-27 09:56:56', '5nDoo7UGGsGV7R6kCFaA', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '5nDoo7UGGsGV7R6kCFaA@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '0MwhjxchlDpsyuSNYuVq@example.net', 'd19261d2d53ac8963b36978408ea8861d69a605ffcf9949a3c80e98a82c3a2dacbe8398c2f3641854debced1ffe640a8f18a5b8d109eb6c69801aa8e50cdd4c6', 'B7a5wMiYrj6H5UtQpnp9', NULL, '2012-07-27 10:42:28', '2012-07-27 10:42:28', '0MwhjxchlDpsyuSNYuVq', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '0MwhjxchlDpsyuSNYuVq@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'zpI9kcEn3QGVB9ApumWH@example.net', 'a8ba05cf6a43a31f910d4cde27b7aca06d1aaa63da910193a265d8d557df8780a6db59238a8b60066607b4e2c5d0a23693307df05d013081bd3d23fbab0ddbd3', 'rC4dnxssAeAUy1hn8Fyt', NULL, '2012-07-27 10:58:29', '2012-07-27 10:58:29', 'zpI9kcEn3QGVB9ApumWH', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'zpI9kcEn3QGVB9ApumWH@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'bALTL-BlsYmcoHwHNdRm@example.net', '8ebd3022a71d2bdd0aa2097cbf2506835b1b0abde039a53cceea293bd225fe4ed35b014eee365742585bb75ff9372b7941b1ab9fde65d5cb037e82931c1e55e5', 'bJN8gEjltOpnQcNUQHxK', NULL, '2012-07-27 10:59:37', '2012-07-27 10:59:37', 'bALTL-BlsYmcoHwHNdRm', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'bALTL-BlsYmcoHwHNdRm@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'juUW7cR-LGAs-UF9Qkq4@example.net', '929d89b6d7a676576b446193ba501225f0ebce9bbb0f1d052f92c5ec79d007659a25ffc0ceec9d6f79acd7e1a99978d271a6cd62068fbd39d180b76cfbc22d15', 'XstISdlxiuTD2T6fPwi2', NULL, '2012-07-27 11:38:47', '2012-07-27 11:38:47', 'juUW7cR-LGAs-UF9Qkq4', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'juUW7cR-LGAs-UF9Qkq4@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2BsX_z7hp4pItUjg79G2@example.net', '757bfe846caeba9145a27bf2cc5931ca45abf16fdac541b5badebeeaf37e9769682f4f25d71655b003d34ea5820ff181be32508c07d645a000a78ab6d8fbe352', 'hdRUZ7BAoaxD3x5108er', NULL, '2012-07-27 11:52:25', '2012-07-27 11:52:25', '2BsX_z7hp4pItUjg79G2', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2BsX_z7hp4pItUjg79G2@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'skGWoWOUEJCka71yspXZ@example.net', '1467d84a03ff2bcddf34558c365bb5af9db4a9200c0b157b0aca193207e329c4901d71c54609c16752633f2736c6eb1385eb059c5fc65d8e0ada1b10aa8cb432', '0eUDVJOUnLRshCOFMM1c', NULL, '2012-07-27 11:53:25', '2012-07-27 11:53:25', 'skGWoWOUEJCka71yspXZ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'skGWoWOUEJCka71yspXZ@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'e6UKFycPHXbBiXoie5ni@example.net', 'e87f0d5122bd9f54472acb897bf0cbf744ca345c5caa08253ccb6e1c1eb125bc8db0216fb1229eb7ffeccbfe488113a4e17ebae25bf35d6801f57aa9f703adb6', 'K1vkSu23ULWheGFBBIQB', NULL, '2012-07-27 12:04:38', '2012-07-27 12:04:38', 'e6UKFycPHXbBiXoie5ni', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'e6UKFycPHXbBiXoie5ni@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'cCHctBCRnmELN3hCh9s6@example.net', '6f2a45c1f4b8b47bd8fb1413301770f460564108f7206dc0e666e105f0944683030a3e48fcdf26144cf6e56cbf5bc2273d78a377e4aa37a8188cc3e94f66083c', 'cFJ70nBMdXcFkYLo9eR9', NULL, '2012-07-27 12:12:53', '2012-07-27 12:12:53', 'cCHctBCRnmELN3hCh9s6', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'cCHctBCRnmELN3hCh9s6@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'g85IuxYWNz1jSqmr609o@example.net', '4dc6afb58bb1e52a802cbbe82e058c6b2c534caedabecf784edb27d9af8929136a17f01686f073fb2ae819a164594989f1d13cced70e832bd690e08e12671937', 'LBwHXeVQy3uoKUglzXPs', NULL, '2012-07-27 12:43:08', '2012-07-27 12:43:08', 'g85IuxYWNz1jSqmr609o', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'g85IuxYWNz1jSqmr609o@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(29, '-CeAa9Kir_rt7JlJ4YJT@example.net', '4be1473048a681b560ae766962716f7062e9490fb01d7d6371125fb529b4a4c5431faf666d3ce44de91288f743f897d8f5339d6baad5a69f0f5838f70e1eab31', 'G6BxIazMrlxj305rbPsh', NULL, '2012-07-27 12:49:18', '2012-07-27 12:49:18', '-CeAa9Kir_rt7JlJ4YJT', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '-CeAa9Kir_rt7JlJ4YJT@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'SCsWOvd6jjtZuiruXyzI@example.net', 'ec35e0eadab1ec3f237d2e2a934878608cab8765743575e7f4e52414653cf934fba95259cac82e0b62b26f90abe8d90ca661af66b4ca73cde525b6f5e33d8fa5', 'QziC0HK74NQx7gYM5yFs', NULL, '2012-07-27 13:01:18', '2012-07-27 13:01:18', 'SCsWOvd6jjtZuiruXyzI', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'SCsWOvd6jjtZuiruXyzI@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Wp4rIKqLElBdO_JTZU1I@example.net', '8df465e0f97b7787bd6c4c1fda70eb3c571861426663aa27477bd7bd44cb6d0431923b96e71c2b7f43f0de961dbc87d732a44b85e4304f4601f4698ef663f690', 'iRYhGeMOxFGvPBex5Rc6', NULL, '2012-07-27 13:01:53', '2012-07-27 13:01:53', 'Wp4rIKqLElBdO_JTZU1I', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Wp4rIKqLElBdO_JTZU1I@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Biw20hzcqw-IgnmkVWq_@example.net', '26a40861ca9ca1bbc5c7fa4d52aa2293fabb0e51da65e18819eba6ba9eb0cc4e09115c0e0d4b93b6edf9a8199e18501404d52e3150d86faf5d49fb588405da10', 'Fbf0HnFb1Kl6kLMyYT8v', NULL, '2012-07-27 13:05:28', '2012-07-27 13:05:28', 'Biw20hzcqw-IgnmkVWq_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Biw20hzcqw-IgnmkVWq_@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'QtdiaRTq3MdnY4ylS4fq@example.net', 'cea6c15d269b2e8b5dcc9a58587de274514100e9fb6891927bcf447f28048e4a15fcb440688e8e4457a9160499c62911a6f77360ba0d783daf848d0f38241eab', 'nyVqajYoLdhFdTgUiSTO', NULL, '2012-07-27 14:49:38', '2012-07-27 14:49:38', 'QtdiaRTq3MdnY4ylS4fq', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'QtdiaRTq3MdnY4ylS4fq@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'AeIW5FS8Nz45XtPKTd9_@example.net', 'b4a0ad79d8a94a28447ca3d4207f937141f27892cf19eba2971577b691cdf251429218fb9f9698ede2f91f4ee121b470463a42866d5fbb414241e538dc014768', '3IyVHyKHL5HUW4AqH7Tk', NULL, '2012-07-27 16:44:00', '2012-07-27 16:44:00', 'AeIW5FS8Nz45XtPKTd9_', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'AeIW5FS8Nz45XtPKTd9_@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'WREE5b7TNE5EkLUwQe1E@example.net', '17d87b449f7939b45b006b7c66714904712cd75b3b47fb011a5b6a31367b0c8a44a58901aa044cb0062f94e945bd76f79bb105502ae5e55a542142d57d4ecc30', 'vTTsbWdIaqYYjO2sYIlc', NULL, '2012-07-30 07:50:33', '2012-07-30 07:50:33', 'WREE5b7TNE5EkLUwQe1E', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'WREE5b7TNE5EkLUwQe1E@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'at1NAo-zkjHAnwDLuB3m@example.net', '73e456c59e59bd8971dbc75f159b9633a9fca2b4fd5ba04b9e0d73a8b7bc7f11fde050de49d2bd53a5eb804cc68735428b2f86155dcb53b8ad4b47639f6fe156', 'zdpz12TDuutu20nTKRSa', NULL, '2012-07-30 07:59:23', '2012-07-30 07:59:23', 'at1NAo-zkjHAnwDLuB3m', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'at1NAo-zkjHAnwDLuB3m@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'd38B4_GW2vtRBupaxqQw@example.net', 'def4c898eb46740957d78780b290ba8867c34cf046561128820b9da6dc00597c7bfd7507f89df0f00464a7eab609b9661361d1a8a5f2dcdf69a82e745237389d', 'eERXtjaHE0bJAFWCrtTC', NULL, '2012-07-30 07:59:41', '2012-07-30 07:59:41', 'd38B4_GW2vtRBupaxqQw', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'd38B4_GW2vtRBupaxqQw@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'sUtZil_7GtqwN8H5T9Ax@example.net', '30374ff4ff71fdd80494976f102db0394a8005e5fd163f023201b3a449bc96ee17c69ed7bbfaa18d9e182715cdc2a1d01783d7815157b5abbd8324c6e351721b', '3fWaYIxel1yZ7jDi3PwR', NULL, '2012-07-30 12:24:55', '2012-07-30 12:24:55', 'sUtZil_7GtqwN8H5T9Ax', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'sUtZil_7GtqwN8H5T9Ax@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'XG8aeVp2j4mbggKXKg-H@example.net', '940658f0fb4e32f2a4ea5d58d51885e3ef0ad066294293f946f6cc82d1f6684942da3c9edd9be50b9df7db83164eff191be7e7a6c03976659e68770545a706ba', 'RY6bMMttg8YuPf7ibXG4', NULL, '2012-07-31 14:53:51', '2012-07-31 14:53:51', 'XG8aeVp2j4mbggKXKg-H', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'XG8aeVp2j4mbggKXKg-H@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'ZjpawTjxt1GHwv3gX3Ye@example.net', '648981306c8a48aef077d329a1fd209aa8cfc9bcf97c8c0217bf32cab388e58a17380110eca1565a918a1e81a8c420e1bf778037407e02d92b3690c814b1e434', 'xhV0yLjCIUmnmNN4b6p8', NULL, '2012-07-31 19:38:41', '2012-07-31 19:38:41', 'ZjpawTjxt1GHwv3gX3Ye', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'ZjpawTjxt1GHwv3gX3Ye@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Ka-7xZqjF82j12QgZCdS@example.net', '9cfc473cac38d16d1c7d8ded34bc187ab344f2d9a38993163f62a51f85391068a9e93e69867f321821e8fbae45eedc2cc527def0eb1b3cfa7d9d5ad6a577935b', 'prRwjIxxKblRxx2VvEcT', NULL, '2012-08-01 12:12:41', '2012-08-01 12:12:41', 'Ka-7xZqjF82j12QgZCdS', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Ka-7xZqjF82j12QgZCdS@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'N5z6XWI5XQfSvWE06P1q@example.net', '14c5f18c5b031308f8a5e3ca5163e7e44507b579789fb267fd2cc091e6c3738312564d12db224bcb93815d0cb41f80b446f827df2e80a795b48120800a3a906c', 'iMyUxnsbMSn82HvRX9dA', NULL, '2012-08-02 07:55:04', '2012-08-02 07:55:04', 'N5z6XWI5XQfSvWE06P1q', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'N5z6XWI5XQfSvWE06P1q@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'xe6-GmXo2uWbkx6tF2aa@example.net', 'f8ae7c1028625ea825de693baeb3a01ff9b1210850deb2032335c08972ebc5388e55776f7aab8bc13197db11e1bd41b0986621a41bf762f83cd892db8df04c1e', '1DrUyfIl4yxPa5CJQlOh', NULL, '2012-08-02 09:23:45', '2012-08-02 09:23:45', 'xe6-GmXo2uWbkx6tF2aa', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'xe6-GmXo2uWbkx6tF2aa@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'gqemVzgVYsTf7PrCYbKY@example.net', 'ce5ea5e8000ee08808ac2a41c163a8a49a11d43bce7e2b7afe67d89dcfad2a3658d75b4679fe52bc4c12396f77667c3b776d4ae2059fcdca0f5297cb47230b24', 'yh7LZn10HmJN3lzFReDs', NULL, '2012-08-06 08:32:58', '2012-08-06 08:32:58', 'gqemVzgVYsTf7PrCYbKY', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'gqemVzgVYsTf7PrCYbKY@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'uK5QTW1HPBr8aA7GzW7f@example.net', '97007afd7c9fd0ae963e6a21c880a09f2218caeedd2e462603a41714adee954ebc2a65d1689ae0afcf12ce73a0500f6eeee497e1cad884666ea0b2af197ec403', 'YvUTTDIlFaKvRC83Yxxr', NULL, '2012-08-06 09:34:51', '2012-08-06 09:34:51', 'uK5QTW1HPBr8aA7GzW7f', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'uK5QTW1HPBr8aA7GzW7f@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'dFc7NROROqif8N0dPXgL@example.net', '0f442cb49ddda6b79ab746976d5e7b76318c3148ca071324b596e22da2374d9953c6856b33769becae67db0311f1771e69724479f2e0be6ac125e8bc1992822d', 'umfY8Gj9kXzOlzIKo4sH', NULL, '2012-08-06 10:50:53', '2012-08-06 10:50:53', 'dFc7NROROqif8N0dPXgL', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dFc7NROROqif8N0dPXgL@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'lelir4CtquTtGy6KblZA@example.net', '150b6d84ad6be02699d1e9eeb73696cbec8624f15b8f757b5f4442fd8b842bea6e1412ef247d30c469101c01c08bbdc1873667f93ea9c8982698154ec44c31b4', 'xbNMKSLWe8VqJJ6DIN2q', NULL, '2012-08-06 20:06:07', '2012-08-06 20:06:07', 'lelir4CtquTtGy6KblZA', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'lelir4CtquTtGy6KblZA@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'gogogog@example.com', '0863cd9927b6e5491ec36f1c6b25b75a3b4c892f0694f95050675afeec2ba04734c74ae7936b7cc8183ea65ef2fb37b7e801d0cb92b7d558574558bd987bdaa5', 'JFtxPq6zydM2TX7domnu', NULL, '2012-08-06 20:11:24', '2012-08-06 20:11:24', NULL, NULL, NULL, 1, 0, NULL, '2012-08-06 20:11:24', '2012-08-06 20:11:24', '188.134.62.16', '188.134.62.16', 'gogogog@example.com', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'rsedykh@whitescape.com', '990a060e82bde1e686d80b1a8cfa2d2f6dd64096b9666329a4673a31f58e8a29631f1d9900f6a9a744482f01a6e057ff05341303460a30fb9cfac6b2318fb1af', 'CxYm27K9YEBicyYex69k', '57AfARKv0c4ouB1BHCb9', '2012-08-06 20:43:45', '2012-08-10 13:41:27', NULL, NULL, NULL, 25, 0, NULL, '2012-08-10 13:41:27', '2012-08-10 13:41:26', '87.248.244.210', '87.248.244.210', 'rsedykh@whitescape.com', NULL, NULL, NULL, NULL, NULL, '2012-08-06 22:00:21'),
(50, 'CFpjbjQwgyqxugc71lMB@example.net', 'f3bb566e08eb011e4b2cd2de7f8a0b150b324194574ae84b4d63352524e8c5b5610f89aa06473f2496a8133bd6ac9ab5a0534b02804032f15deaec47b63ebecb', 'KO7IVLd0ZLLsu3VDaEaP', NULL, '2012-08-07 11:02:32', '2012-08-07 11:02:32', 'CFpjbjQwgyqxugc71lMB', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'CFpjbjQwgyqxugc71lMB@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(51, '6EqA28IOKfrub-ozy308@example.net', '6b5aff5221b37dfd2e074b06997fbab3b8c46e6ae84ae444250cafbae14bd2ddf5a54c6cfb42ba4471ca3ca7e67417d361cc19707caf503e9619b1bd75b7dcdf', 'efeOtpITqcUoeZ9Pj2F0', NULL, '2012-08-07 11:06:50', '2012-08-07 11:06:50', '6EqA28IOKfrub-ozy308', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '6EqA28IOKfrub-ozy308@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Zx6MFvwxRwYy4WX1QEky@example.net', '239e75cfdda3d88d1d4f79e17020138320fb627dfc9603e723a164f0ba686867ee5d9e1d8458993f5684191c7e869a717c36d435a4db4a2981cd5270c7d68f32', 'npUUdDHhQWLiTy7alhNa', NULL, '2012-08-07 13:12:06', '2012-08-07 13:12:06', 'Zx6MFvwxRwYy4WX1QEky', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Zx6MFvwxRwYy4WX1QEky@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'UNr2aI-dGzX1ewzRPAAG@example.net', 'c1f754518aeb183aff077e7177a3b72e18650160b36216d9a1353ff40496e79743a69c8bd8337b43619109a2f0606dd119d5317b001d97104cb0dd06d04ad011', '9BjHPHU8foAEtcU9VFsy', NULL, '2012-08-07 15:24:04', '2012-08-07 15:24:04', 'UNr2aI-dGzX1ewzRPAAG', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'UNr2aI-dGzX1ewzRPAAG@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'a0RqtgqUUovcFmIx8zm2@example.net', '7b100890ae38d4d39ef7a8a2381c88934cfdaeda0f1fbbce9ded9a39d695ad0a0d7d9d7610d8a66d46ce3be0d01c1967201d86f04b72cc88e474680f2507ff19', 'yrkyfS1ccAsIBgFnczMF', NULL, '2012-08-08 08:57:48', '2012-08-08 08:57:48', 'a0RqtgqUUovcFmIx8zm2', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'a0RqtgqUUovcFmIx8zm2@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'd.cherevatenko@gmail.com', 'c17812974cd95e8fa5ae2c48c7b9025e55dcc9fce5f6dddc0460e7d65e1e375d3285046c485832d582957f50ec323f6f2fe99cd024008e3f1917d47715a60dec', 'mHYRgtdDgU11yxIPDwJa', NULL, '2012-08-09 08:23:27', '2012-08-09 08:23:27', NULL, NULL, NULL, 1, 0, NULL, '2012-08-09 08:23:27', '2012-08-09 08:23:27', '213.138.68.154', '213.138.68.154', 'd.cherevatenko@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'RNspSRbhMlybwYkxb_CF@example.net', 'fc9d0eac5747a0af2aca68bd70021a48f4b75281ee0cc81aaa0d06fff5246881373c826229ef0e0b2194e849b797fffdf0eb7c51a546e152783984d25b6e388f', 'SBk5kynBhYXrQYfQMrle', NULL, '2012-08-09 13:03:48', '2012-08-09 13:03:48', 'RNspSRbhMlybwYkxb_CF', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'RNspSRbhMlybwYkxb_CF@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'zHRBcAjuIWa-wC8fD_rS@example.net', '85034cf26a7c8e1b2ccaa426413af2ea86f5bbe489adefc6de769ea90c3c0bb1fff9114da71812c12a3317df8d3058b321722745287574b13352077e0f6c0032', 'Hof32yM72hGcUG2tlKxY', NULL, '2012-08-09 13:42:49', '2012-08-09 13:42:49', 'zHRBcAjuIWa-wC8fD_rS', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'zHRBcAjuIWa-wC8fD_rS@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Mb_pTr8i3ooJi6DhFAh7@example.net', 'fa43d07a0595f5e4f8317c0689b942d33c1aefb0da755067a4bd00d97e74bb6f5bb9275f37c9f077e192fe74f5b394921a6a65adbecc21ca4709cf17a6802811', 'Z4v5VSlbIGKacASicIHo', NULL, '2012-08-09 13:47:07', '2012-08-09 13:47:07', 'Mb_pTr8i3ooJi6DhFAh7', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'Mb_pTr8i3ooJi6DhFAh7@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2mrggE_FOWIaKypN13pU@example.net', '3e8cf0b61b91bb4c225a40fb87f6c2f84204ca7c7c1f4f2a6e91dec51c5e658be54b43d40b64acf3bdc4fadf973f6aa20660e3e269af3177bd5764054c3bfe19', 'UgA1ZOApEiuWFcyUBxrc', NULL, '2012-08-09 13:48:11', '2012-08-09 13:48:11', '2mrggE_FOWIaKypN13pU', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, '2mrggE_FOWIaKypN13pU@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'dxle1egseG36OTVS8hyF@example.net', 'e65fe283542357523c838525b029a7a83b7acc78fff2834c3f2de9c4e85202da380fd865603f9c7349eec2a53a74ca946417b8cdf658e612fc5d6e4cf269379d', 'DSq7FAJW85qDq27eJQ5c', NULL, '2012-08-09 14:00:10', '2012-08-09 14:00:10', 'dxle1egseG36OTVS8hyF', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dxle1egseG36OTVS8hyF@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'avbaWB09GKD9w14EfUDB@example.net', '8a3417195552167f24941366e76c70a42d5df862c95c97b183cb6b7528c3aa77be82087e7a28e6bd58ed492ee663a8f8c416dafd247f6890fdeb284b950409a2', 'udwp0xye6WxwjnqPUgmH', NULL, '2012-08-09 16:07:04', '2012-08-09 16:07:04', 'avbaWB09GKD9w14EfUDB', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'avbaWB09GKD9w14EfUDB@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'aeN7tySc-9Zub5zjVCQc@example.net', '73ecb716bdd328640145d37d2e0b16775f04677b9986de4d4803e15fc9036df139e14fcd12ca691087a1f76086bc471367a69906b0ffdae8424b310729cc832f', 'kE8RVghtNxFyiCFu8Ix6', NULL, '2012-08-09 21:34:36', '2012-08-09 21:34:36', 'aeN7tySc-9Zub5zjVCQc', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'aeN7tySc-9Zub5zjVCQc@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'lLUIEoZiRAMhkgYXpH91@example.net', 'e153c5d0d90824492c38b46d02d4e4bb031d5e323f1e131af229f2b9a80e3b801ba731fafcf668490b04a72d680d862f8564c467c300dd8a841aef0c08ca42da', 'K1FOjgQihda2Syvde9ny', NULL, '2012-08-10 08:09:13', '2012-08-10 08:09:13', 'lLUIEoZiRAMhkgYXpH91', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'lLUIEoZiRAMhkgYXpH91@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'fFckxx-yK9KPs_eom9eK@example.net', 'fb5c27bf3230411f16354fb1fb1ba0605290d69896ac59e6a649c25b20e3e2dfa453a9a5bb19c8334776088386af953c84f7b8fc08fa5bfa6ecdedfde6bf5bf5', 'yT6Ua2TKlfyFOSELlNzy', NULL, '2012-08-10 09:54:46', '2012-08-10 09:54:46', 'fFckxx-yK9KPs_eom9eK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'fFckxx-yK9KPs_eom9eK@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'qCX6oJk3Zgwljp5L_hnm@example.net', 'bf851345e2cf41fd553125ca355bef5c84022400d4fb4f157ee6fd8462f5155437ea5240f09a76df28fe0111fd97483df4b0bef1cb845041977a1cf68c7c1d05', 'yiTOnGTBfTHa8K2ratxt', NULL, '2012-08-10 09:55:18', '2012-08-10 09:55:18', 'qCX6oJk3Zgwljp5L_hnm', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'qCX6oJk3Zgwljp5L_hnm@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'nYU_Ex6n1W4cJfJ58rT3@example.net', 'e0fb9bbad1a217adfc33fe760f0c02010d3a6cb50d3ba24afb7d9760780935fa1eca229dd739d48c21c4e38d39efbf3a8e90ffae861aa258226c92b2ebee4fb2', 'X003E8lg26myfjP4mvGy', NULL, '2012-08-10 09:55:21', '2012-08-10 09:55:21', 'nYU_Ex6n1W4cJfJ58rT3', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'nYU_Ex6n1W4cJfJ58rT3@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'k2ffbVobbhq2ZcbIIIO1@example.net', '1307cbce1578dd59b93b69f78740df03a684471d23632c70aab848e3296718f41b910da84ec93be67e6c00a0d44611bd60fa91076c8cb7edb65ff6d35aae8367', 'rOx0vX1Z8LMcHdsdYIWq', NULL, '2012-08-10 12:19:30', '2012-08-10 12:19:30', 'k2ffbVobbhq2ZcbIIIO1', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'k2ffbVobbhq2ZcbIIIO1@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'admin@devilmaydie.name', 'da6593b7152cb54318699d95d9c269b9f43cdb2ec1c01e107c07589f81083f92f0651a589cc8eb26a796133b3cbe013ee5608059f17a09ad098ef9459a00f19c', 'NUFjGXret04tmUK1LqW5', NULL, '2012-08-10 13:39:01', '2012-08-14 14:20:28', NULL, '8x8yw-bnHKRKoB59JbIW', NULL, 1, 0, NULL, '2012-08-10 13:39:01', '2012-08-10 13:39:01', '82.193.140.168', '82.193.140.168', 'admin@devilmaydie.name', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'AlJ9ocJBzqnS7MjAgR9-@example.net', '8af09ed83e6be5a47333af39d1263f0bc10dbb66e9c29da7be913e65b916fe566b142b26288abda039fc1fb4eeb160a85aa16cba64b3ff301510e2453e166104', 'zidt2y0MeyMNpmA0RXpP', NULL, '2012-08-10 13:41:39', '2012-08-10 13:41:39', 'AlJ9ocJBzqnS7MjAgR9-', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'AlJ9ocJBzqnS7MjAgR9-@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'H5e-9Z0JjP9X7Lc5Z4JJ@example.net', '9c9f331524f1af8fb81707fbcc66e5897d033ebafd8caae96f8e123aeac30e8e09c42d93c60810317e6ae190f7bda1a1d37a9cd9ea616eb819c5d81a9955b63a', 'y3n1U9mSOOv80YIb6xTv', NULL, '2012-08-10 13:46:59', '2012-08-10 13:46:59', 'H5e-9Z0JjP9X7Lc5Z4JJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'H5e-9Z0JjP9X7Lc5Z4JJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'NhoMNQ7LqPG2XGF84hpJ@example.net', '6b642568d7f6504a5558e6f7891f63847d1a75c1be90bd5f7b3139268802e42a7732a0cb750efe82920befe3c5b707587d44c2353c0503e49123ee6c815cab35', 'EfShd5clOlL10nMxsfWY', NULL, '2012-08-10 13:50:11', '2012-08-10 13:50:11', 'NhoMNQ7LqPG2XGF84hpJ', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'NhoMNQ7LqPG2XGF84hpJ@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'tiy2TJqxpmDb2Jjozh6K@example.net', '20681cac82db3f2fae82dd362373cd230155ae7409d55a5d77d886ae1a57ba0d683aa5f35d63b711af304d95dfe695151540b8ff1141baa7074741ea7a68a7f9', 'tSRH9lgfy87xarVyyGGS', NULL, '2012-08-10 14:01:21', '2012-08-10 14:01:21', 'tiy2TJqxpmDb2Jjozh6K', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'tiy2TJqxpmDb2Jjozh6K@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'dcLJ1sxi37YPLBKKL5tK@example.net', '4cde114b03d1e79d59763682d4e88d17c40522af79ade0a95099e024dcc61ef6e640b2a8c34e8520d343ec61e8a398077b136a4dafe6aae26f1c7997e6f11db9', 'tBRjHnyQvVbvyfckiRml', NULL, '2012-08-10 15:12:03', '2012-08-10 15:12:03', 'dcLJ1sxi37YPLBKKL5tK', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'dcLJ1sxi37YPLBKKL5tK@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'z29n1hqLennDBL8e2KrL@example.net', 'ca20e7c46f9f15ab9ff1590db3df2e9599ee9051b27aacb208de744696e26e2b21c44f84174487b168229b709f14cd3f5914c21de0d18b1cd78ed7f0dbc978c1', '1YQ7lqEMfuKAccrlvlL3', NULL, '2012-08-16 09:47:36', '2012-08-16 09:47:36', 'z29n1hqLennDBL8e2KrL', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'z29n1hqLennDBL8e2KrL@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'bbIRUCmljpAr33N9a-mp@example.net', 'ec0958b41d87dda860c168e5e06f6b326db81a5cd19c367359701e6193a19295c4f72b76f67ccacd1a6d4f957b7537b3dd191aecd0abf9bb9e42db846762d306', 'JMR6GURuOYobEBQEq8L7', NULL, '2012-08-16 10:43:12', '2012-08-16 10:43:12', 'bbIRUCmljpAr33N9a-mp', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'bbIRUCmljpAr33N9a-mp@example.net', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'XDRWdCXkAGRE5dO1BMgH@example.net', 'c582b3093f93f2b7bee4a192d2ed28fc7d03a9d165854916f7c26df20be4de8834b5b988558c625051e777a9f564828b9a1f970efc4ae8622edc209bca6d66a2', 'yCSpxu9Tnem9Tfa5Suvm', NULL, '2012-08-20 12:34:37', '2012-08-20 12:34:37', 'XDRWdCXkAGRE5dO1BMgH', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'XDRWdCXkAGRE5dO1BMgH@example.net', NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
