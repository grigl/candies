-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: 10.126.0.29
-- Generation Time: Jul 02, 2012 at 01:40 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thecand8_wa`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCESSRIGHTS_LINK`
--

DROP TABLE IF EXISTS `ACCESSRIGHTS_LINK`;
CREATE TABLE IF NOT EXISTS `ACCESSRIGHTS_LINK` (
  `AR_PATH` varchar(255) NOT NULL,
  `AR_OBJECT_ID` varchar(50) NOT NULL,
  `LINK_AR_PATH` varchar(255) NOT NULL,
  `LINK_AR_OBJECT_ID` varchar(50) NOT NULL,
  PRIMARY KEY  (`AR_PATH`,`AR_OBJECT_ID`),
  KEY `LINK_AR_PATH` (`LINK_AR_PATH`,`LINK_AR_OBJECT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ACCESSRIGHTS_LINK`
--


-- --------------------------------------------------------

--
-- Table structure for table `advensed_stock`
--

DROP TABLE IF EXISTS `advensed_stock`;
CREATE TABLE IF NOT EXISTS `advensed_stock` (
  `productID` int(11) NOT NULL,
  `colorID` int(11) NOT NULL,
  `sizeID` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY  (`productID`,`colorID`,`sizeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advensed_stock`
--

INSERT INTO `advensed_stock` (`productID`, `colorID`, `sizeID`, `amount`) VALUES
(674, 9, 5, 5),
(674, 8, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `APPSETTINGS`
--

DROP TABLE IF EXISTS `APPSETTINGS`;
CREATE TABLE IF NOT EXISTS `APPSETTINGS` (
  `APP_ID` char(2) NOT NULL,
  `SETTINGS` text,
  PRIMARY KEY  (`APP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `APPSETTINGS`
--


-- --------------------------------------------------------

--
-- Table structure for table `CFOLDER`
--

DROP TABLE IF EXISTS `CFOLDER`;
CREATE TABLE IF NOT EXISTS `CFOLDER` (
  `CF_ID` varchar(255) NOT NULL,
  `CF_ID_PARENT` varchar(255) default NULL,
  `CF_NAME` varchar(255) default NULL,
  `CT_ID` char(3) default NULL,
  `CF_STATUS` int(11) NOT NULL default '0',
  PRIMARY KEY  (`CF_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CFOLDER`
--


-- --------------------------------------------------------

--
-- Table structure for table `COMPANY`
--

DROP TABLE IF EXISTS `COMPANY`;
CREATE TABLE IF NOT EXISTS `COMPANY` (
  `COM_NAME` varchar(30) NOT NULL default '',
  `COM_ADDRESSSTREET` varchar(50) default NULL,
  `COM_ADDRESSCITY` varchar(30) default NULL,
  `COM_ADDRESSSTATE` varchar(30) default NULL,
  `COM_ADDRESSZIP` varchar(10) NOT NULL default '',
  `COM_ADDRESSCOUNTRY` varchar(30) default NULL,
  `COM_CONTACTPERSON` varchar(50) default NULL,
  `COM_EMAIL` varchar(50) default NULL,
  `COM_PHONE` varchar(50) default NULL,
  `COM_FAX` varchar(50) default NULL,
  PRIMARY KEY  (`COM_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMPANY`
--

INSERT INTO `COMPANY` (`COM_NAME`, `COM_ADDRESSSTREET`, `COM_ADDRESSCITY`, `COM_ADDRESSSTATE`, `COM_ADDRESSZIP`, `COM_ADDRESSCOUNTRY`, `COM_CONTACTPERSON`, `COM_EMAIL`, `COM_PHONE`, `COM_FAX`) VALUES
('Company', NULL, NULL, NULL, '', NULL, 'Admin User', 'eric.abdulin@yug.articus.ru', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CONTACT`
--

DROP TABLE IF EXISTS `CONTACT`;
CREATE TABLE IF NOT EXISTS `CONTACT` (
  `C_ID` int(11) NOT NULL auto_increment,
  `CT_ID` int(11) NOT NULL default '1',
  `CF_ID` varchar(255) default NULL,
  `C_CREATEDATETIME` datetime default NULL,
  `C_CREATECID` int(11) default NULL,
  `C_CREATEAPP_ID` varchar(3) default NULL,
  `C_CREATEMETHOD` varchar(20) default NULL,
  `C_CREATESOURCE` varchar(255) default NULL,
  `C_MODIFYDATETIME` datetime default NULL,
  `C_MODIFYCID` int(11) default NULL,
  `C_LANGUAGE` varchar(3) default NULL,
  `C_SUBSCRIBER` smallint(6) default NULL,
  `C_FULLNAME` varchar(255) default NULL,
  `C_FIRSTNAME` varchar(50) default NULL,
  `C_MIDDLENAME` varchar(50) default NULL,
  `C_LASTNAME` varchar(50) default NULL,
  `C_TITLE` varchar(50) default NULL,
  `C_COMPANY` varchar(255) default NULL,
  `C_EMAILADDRESS` varchar(255) NOT NULL default '',
  `C_PHOTO` text,
  `C_HOMEPHONE` varchar(50) default NULL,
  `C_WORKPHONE` varchar(50) default NULL,
  `C_MOBILEPHONE` varchar(50) default NULL,
  `C_HOMEFAX` varchar(50) default NULL,
  `C_WORKFAX` varchar(50) default NULL,
  `C_ICQ` varchar(20) default NULL,
  `C_MSN` varchar(50) default NULL,
  `C_SKYPE` varchar(50) default NULL,
  `C_HOMESTREET` varchar(255) default NULL,
  `C_HOMECITY` varchar(50) default NULL,
  `C_HOMESTATE` varchar(50) default NULL,
  `C_HOMEPOSTALCODE` varchar(50) default NULL,
  `C_HOMECOUNTRY` varchar(100) default NULL,
  `C_BIRTHDAY` date default NULL,
  `C_PERSONALWEBPAGE` varchar(255) default NULL,
  `C_WORKSTREET` varchar(255) default NULL,
  `C_WORKCITY` varchar(50) default NULL,
  `C_WORKSTATE` varchar(50) default NULL,
  `C_WORKPOSTALCODE` varchar(50) default NULL,
  `C_WORKCOUNTRY` varchar(50) default NULL,
  `C_WORKWEBPAGE` varchar(255) default NULL,
  `C_OTHERINFO` text,
  PRIMARY KEY  (`C_ID`),
  KEY `CF_ID` (`CF_ID`),
  KEY `C_FIRSTNAME` (`C_FIRSTNAME`),
  KEY `C_LASTNAME` (`C_LASTNAME`),
  KEY `C_EMAILADDRESS` (`C_EMAILADDRESS`),
  KEY `C_FULLNAME` (`C_FULLNAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `CONTACT`
--

INSERT INTO `CONTACT` (`C_ID`, `CT_ID`, `CF_ID`, `C_CREATEDATETIME`, `C_CREATECID`, `C_CREATEAPP_ID`, `C_CREATEMETHOD`, `C_CREATESOURCE`, `C_MODIFYDATETIME`, `C_MODIFYCID`, `C_LANGUAGE`, `C_SUBSCRIBER`, `C_FULLNAME`, `C_FIRSTNAME`, `C_MIDDLENAME`, `C_LASTNAME`, `C_TITLE`, `C_COMPANY`, `C_EMAILADDRESS`, `C_PHOTO`, `C_HOMEPHONE`, `C_WORKPHONE`, `C_MOBILEPHONE`, `C_HOMEFAX`, `C_WORKFAX`, `C_ICQ`, `C_MSN`, `C_SKYPE`, `C_HOMESTREET`, `C_HOMECITY`, `C_HOMESTATE`, `C_HOMEPOSTALCODE`, `C_HOMECOUNTRY`, `C_BIRTHDAY`, `C_PERSONALWEBPAGE`, `C_WORKSTREET`, `C_WORKCITY`, `C_WORKSTATE`, `C_WORKPOSTALCODE`, `C_WORKCOUNTRY`, `C_WORKWEBPAGE`, `C_OTHERINFO`) VALUES
(1, 1, 'PRIVATE1', '2012-06-05 18:47:48', 1, NULL, NULL, NULL, '2012-06-05 18:48:41', 1, NULL, NULL, 'Admin User', 'Admin', NULL, 'User', NULL, NULL, 'thecandiesstore@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CONTACTFIELD`
--

DROP TABLE IF EXISTS `CONTACTFIELD`;
CREATE TABLE IF NOT EXISTS `CONTACTFIELD` (
  `CF_ID` int(11) NOT NULL auto_increment,
  `CF_DBNAME` varchar(50) default NULL,
  `CF_TYPE` varchar(50) NOT NULL default '',
  `CF_OPTIONS` text,
  `CF_NAME` text,
  `CF_STD` tinyint(1) NOT NULL default '0',
  `CF_SECTION` int(11) default NULL,
  `CF_SORTING` int(11) NOT NULL,
  PRIMARY KEY  (`CF_ID`),
  UNIQUE KEY `CF_DBNAME` (`CF_DBNAME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `CONTACTFIELD`
--

INSERT INTO `CONTACTFIELD` (`CF_ID`, `CF_DBNAME`, `CF_TYPE`, `CF_OPTIONS`, `CF_NAME`, `CF_STD`, `CF_SECTION`, `CF_SORTING`) VALUES
(1, 'C_FIRSTNAME', 'VARCHAR', '50', 'First name', 2, 8, 1),
(2, 'C_MIDDLENAME', 'VARCHAR', '50', 'Middle name', 2, 8, 2),
(3, 'C_LASTNAME', 'VARCHAR', '50', 'Last name', 2, 8, 3),
(4, 'C_TITLE', 'VARCHAR', '50', 'Title', 2, 8, 4),
(5, 'C_COMPANY', 'VARCHAR', '255', 'Company', 1, 8, 5),
(6, 'C_EMAILADDRESS', 'EMAIL', '255', 'Email', 1, 8, 6),
(7, 'C_PHOTO', 'IMAGE', '96', 'Photo', 1, 8, 7),
(8, NULL, 'SECTION', '{"search":1}', 'Main section', 1, NULL, 1),
(9, 'C_HOMEPHONE', 'VARCHAR', '50', 'Home phone', 0, 14, 1),
(10, 'C_WORKPHONE', 'VARCHAR', '50', 'Work phone', 0, 14, 2),
(11, 'C_MOBILEPHONE', 'MOBILE', '50', 'Mobile phone', 0, 14, 3),
(12, 'C_HOMEFAX', 'VARCHAR', '50', 'Home fax', 0, 14, 4),
(13, 'C_WORKFAX', 'VARCHAR', '50', 'Work fax', 0, 14, 5),
(14, NULL, 'SECTION', '', 'Phone numbers', 0, NULL, 2),
(15, 'C_ICQ', 'VARCHAR', '50', 'ICQ', 0, 18, 1),
(16, 'C_MSN', 'VARCHAR', '50', 'MSN', 0, 18, 2),
(17, 'C_SKYPE', 'VARCHAR', '50', 'Skype', 0, 18, 3),
(18, NULL, 'SECTION', '', 'Instant messengers', 0, NULL, 3),
(19, 'C_HOMESTREET', 'VARCHAR', '255', 'Street address', 0, 24, 1),
(20, 'C_HOMECITY', 'VARCHAR', '50', 'City', 0, 24, 2),
(21, 'C_HOMESTATE', 'VARCHAR', '50', 'State', 0, 24, 3),
(22, 'C_HOMEPOSTALCODE', 'VARCHAR', '50', 'Postal code', 0, 24, 4),
(23, 'C_HOMECOUNTRY', 'VARCHAR', '50', 'Country', 0, 24, 5),
(24, NULL, 'SECTION', '', 'Home address', 0, NULL, 4),
(25, 'C_BIRTHDAY', 'DATE', '', 'Date of birth', 0, 27, 1),
(26, 'C_PERSONALWEBPAGE', 'URL', '255', 'Personal website', 0, 27, 2),
(27, NULL, 'SECTION', '', 'Personal information', 0, NULL, 5),
(28, 'C_WORKSTREET', 'VARCHAR', '255', 'Street address', 0, 34, 1),
(29, 'C_WORKCITY', 'VARCHAR', '50', 'City', 0, 34, 2),
(30, 'C_WORKSTATE', 'VARCHAR', '50', 'State', 0, 34, 3),
(31, 'C_WORKPOSTALCODE', 'VARCHAR', '50', 'Postal code', 0, 34, 4),
(32, 'C_WORKCOUNTRY', 'VARCHAR', '50', 'Country', 0, 34, 5),
(33, 'C_WORKWEBPAGE', 'URL', '255', 'Company website', 0, 34, 6),
(34, NULL, 'SECTION', '', 'Work address', 0, NULL, 6),
(35, 'C_OTHERINFO', 'TEXT', '', 'Other info', 0, 36, 1),
(36, NULL, 'SECTION', '', 'Misc', 0, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `CONTACTTYPE`
--

DROP TABLE IF EXISTS `CONTACTTYPE`;
CREATE TABLE IF NOT EXISTS `CONTACTTYPE` (
  `CT_ID` int(11) NOT NULL auto_increment,
  `CT_NAME` text NOT NULL,
  `CT_OPTIONS` text NOT NULL,
  `CT_STD` tinyint(1) NOT NULL,
  PRIMARY KEY  (`CT_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `CONTACTTYPE`
--

INSERT INTO `CONTACTTYPE` (`CT_ID`, `CT_NAME`, `CT_OPTIONS`, `CT_STD`) VALUES
(1, 'Person', '{"fname_required":["1","3"],"fname_format":["!1! !2! !3!"],"fields":[["1"],["2"],["3"],["4"],["5"],["6"],["7"],["9"],["10"],["11"],["12"],["13"],["15"],["16"],["17"],["19"],["20"],["21"],["22"],["23"],["25"],["26"],["28"],["29"],["30"],["31"],["32"],["33"],["35"]]}', 1),
(2, 'Company', '{"fname_required":["5"],"fname_format":["!5!"],"fields":[["5"],["6"],["7"],["10"],["11"],["13"],["15"],["16"],["17"],["28"],["29"],["30"],["31"],["32"],["33"],["35"]]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `CURRENCY`
--

DROP TABLE IF EXISTS `CURRENCY`;
CREATE TABLE IF NOT EXISTS `CURRENCY` (
  `CUR_ID` char(3) NOT NULL default '',
  `CUR_NAME` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`CUR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CURRENCY`
--

INSERT INTO `CURRENCY` (`CUR_ID`, `CUR_NAME`) VALUES
('USD', 'US Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `DISK_USAGE`
--

DROP TABLE IF EXISTS `DISK_USAGE`;
CREATE TABLE IF NOT EXISTS `DISK_USAGE` (
  `DU_USER_ID` varchar(20) NOT NULL,
  `DU_APP_ID` char(10) NOT NULL,
  `DU_SIZE` bigint(20) default NULL,
  PRIMARY KEY  (`DU_USER_ID`,`DU_APP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DISK_USAGE`
--


-- --------------------------------------------------------

--
-- Table structure for table `EMAIL_CONTACT`
--

DROP TABLE IF EXISTS `EMAIL_CONTACT`;
CREATE TABLE IF NOT EXISTS `EMAIL_CONTACT` (
  `EC_ID` int(11) NOT NULL,
  `EC_EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY  (`EC_ID`,`EC_EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EMAIL_CONTACT`
--

INSERT INTO `EMAIL_CONTACT` (`EC_ID`, `EC_EMAIL`) VALUES
(1, 'thecandiesstore@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `MMMESSAGE`
--

DROP TABLE IF EXISTS `MMMESSAGE`;
CREATE TABLE IF NOT EXISTS `MMMESSAGE` (
  `MMM_ID` int(11) NOT NULL default '0',
  `MMF_ID` varchar(255) NOT NULL default '0',
  `MMM_STATUS` int(11) NOT NULL default '0',
  `MMM_DATETIME` datetime default NULL,
  `MMM_PRIORITY` int(11) NOT NULL default '0',
  `MMM_FROM` varchar(128) default NULL,
  `MMM_REPLY_TO` varchar(128) default NULL,
  `MMM_TO` text,
  `MMM_CC` text,
  `MMM_BCC` text,
  `MMM_LISTS` varchar(255) default NULL,
  `MMM_SUBJECT` varchar(255) default NULL,
  `MMM_LEAD` varchar(255) NOT NULL default '',
  `MMM_CONTENT` text,
  `MMM_ATTACHMENT` text,
  `MMM_IMAGES` text,
  `MMM_SIZE` int(11) NOT NULL,
  `MMM_USERID` varchar(20) NOT NULL default '',
  `MMM_APP_ID` char(2) NOT NULL default 'MM',
  `MMM_HEADER` text,
  PRIMARY KEY  (`MMM_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MMMESSAGE`
--


-- --------------------------------------------------------

--
-- Table structure for table `MMMSENTTO`
--

DROP TABLE IF EXISTS `MMMSENTTO`;
CREATE TABLE IF NOT EXISTS `MMMSENTTO` (
  `MMM_ID` int(11) NOT NULL default '0',
  `MMMST_EMAIL` varchar(100) NOT NULL default '',
  `MMMST_STATUS` varchar(255) NOT NULL default '0',
  PRIMARY KEY  (`MMM_ID`,`MMMST_EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MMMSENTTO`
--


-- --------------------------------------------------------

--
-- Table structure for table `MMSENT`
--

DROP TABLE IF EXISTS `MMSENT`;
CREATE TABLE IF NOT EXISTS `MMSENT` (
  `MMS_DATE` date NOT NULL,
  `MMS_COUNT` int(11) default NULL,
  PRIMARY KEY  (`MMS_DATE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MMSENT`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_aff_commissions`
--

DROP TABLE IF EXISTS `SC_aff_commissions`;
CREATE TABLE IF NOT EXISTS `SC_aff_commissions` (
  `cID` int(11) NOT NULL auto_increment,
  `Amount` float default NULL,
  `CurrencyISO3` varchar(3) default NULL,
  `xDateTime` datetime default NULL,
  `Description` varchar(255) default NULL,
  `OrderID` int(11) default NULL,
  `CustomerID` int(11) default NULL,
  PRIMARY KEY  (`cID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_aff_commissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_aff_payments`
--

DROP TABLE IF EXISTS `SC_aff_payments`;
CREATE TABLE IF NOT EXISTS `SC_aff_payments` (
  `pID` int(11) NOT NULL auto_increment,
  `CustomerID` int(11) default NULL,
  `Amount` float default NULL,
  `CurrencyISO3` varchar(3) default NULL,
  `xDate` date default NULL,
  `Description` varchar(255) default NULL,
  PRIMARY KEY  (`pID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_aff_payments`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_aux_pages`
--

DROP TABLE IF EXISTS `SC_aux_pages`;
CREATE TABLE IF NOT EXISTS `SC_aux_pages` (
  `aux_page_ID` int(11) NOT NULL auto_increment,
  `aux_page_text_type` int(11) default NULL,
  `aux_page_name_en` varchar(64) default NULL,
  `aux_page_text_en` text,
  `aux_page_slug` varchar(64) default NULL,
  `meta_keywords_en` varchar(255) default NULL,
  `meta_description_en` text,
  `aux_page_enabled` smallint(1) unsigned NOT NULL default '0',
  `aux_page_priority` int(10) unsigned NOT NULL default '0',
  `aux_page_name_ru` varchar(64) default NULL,
  `aux_page_text_ru` text,
  `meta_keywords_ru` varchar(255) default NULL,
  `meta_description_ru` text,
  PRIMARY KEY  (`aux_page_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `SC_aux_pages`
--

INSERT INTO `SC_aux_pages` (`aux_page_ID`, `aux_page_text_type`, `aux_page_name_en`, `aux_page_text_en`, `aux_page_slug`, `meta_keywords_en`, `meta_description_en`, `aux_page_enabled`, `aux_page_priority`, `aux_page_name_ru`, `aux_page_text_ru`, `meta_keywords_ru`, `meta_description_ru`) VALUES
(1, NULL, 'About us', '<h1>About us</h1><p>Write about your company here.</p>', '1', '', '', 1, 1, 'О магазине', '<h1>О магазине</h1><p>Напишите о вашем интернет-магазине на этой странице.</p>', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `SC_categories`
--

DROP TABLE IF EXISTS `SC_categories`;
CREATE TABLE IF NOT EXISTS `SC_categories` (
  `categoryID` int(11) NOT NULL auto_increment,
  `parent` int(11) default NULL,
  `products_count` int(11) default NULL,
  `picture` varchar(30) default NULL,
  `products_count_admin` int(11) default NULL,
  `sort_order` int(11) default '0',
  `viewed_times` int(11) default '0',
  `allow_products_comparison` int(11) default '0',
  `allow_products_search` int(11) default '1',
  `show_subcategories_products` int(11) default '1',
  `name_en` varchar(255) default NULL,
  `description_en` text,
  `meta_title_en` varchar(255) default NULL,
  `meta_description_en` varchar(255) default NULL,
  `meta_keywords_en` varchar(255) default NULL,
  `slug` varchar(255) NOT NULL default '',
  `name_ru` varchar(255) default NULL,
  `description_ru` text,
  `meta_title_ru` varchar(255) default NULL,
  `meta_description_ru` varchar(255) default NULL,
  `meta_keywords_ru` varchar(255) default NULL,
  `vkontakte_type` int(11) default '0',
  `id_1c` varchar(36) default NULL,
  PRIMARY KEY  (`categoryID`),
  KEY `parent` (`parent`),
  KEY `slug` (`slug`),
  KEY `sort_order` (`sort_order`),
  KEY `name_en` (`name_en`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=573 ;

--
-- Dumping data for table `SC_categories`
--

INSERT INTO `SC_categories` (`categoryID`, `parent`, `products_count`, `picture`, `products_count_admin`, `sort_order`, `viewed_times`, `allow_products_comparison`, `allow_products_search`, `show_subcategories_products`, `name_en`, `description_en`, `meta_title_en`, `meta_description_en`, `meta_keywords_en`, `slug`, `name_ru`, `description_ru`, `meta_title_ru`, `meta_description_ru`, `meta_keywords_ru`, `vkontakte_type`, `id_1c`) VALUES
(1, NULL, 7, NULL, 7, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', 'ROOT', NULL, NULL, NULL, NULL, 0, NULL),
(560, 558, 1, '', 1, 0, 2, 0, 0, 0, '', '', '', '', '', '', 'Рибок', '', '', '', '', 0, 'hBw7bCxuhJqHn9TbtmfYP0'),
(561, 558, 1, '', 1, 0, 2, 0, 0, 0, '', '', '', '', '', '', 'Пума', '', '', '', '', 0, 'bWSfNCcHhF_rLsASY12s43'),
(562, 572, 3, '', 3, 0, 7, 0, 0, 0, '', '', '', '', '', '', 'Ж', '', '', '', '', 0, 'MNyWO-zYiP29gI0hUMEkJ1'),
(563, 562, 1, '', 1, 0, 11, 0, 0, 0, '', '', '', '', '', '', 'Адидас', '', '', '', '', 0, 'aPqZnI3MgCqj69Ku3hDlf0'),
(564, 562, 1, '', 1, 0, 10, 0, 0, 0, '', '', '', '', '', '', 'Рибок', '', '', '', '', 0, 'ZNfKP9ToheWNscwslhfkV0'),
(559, 558, 1, '', 1, 0, 6, 0, 0, 0, '', '', '', '', '', '', 'Адидас', '', '', '', '', 0, 'oyFI7l1-hXSUU6SHsMJ_Z0'),
(558, 572, 4, '', 4, 0, 4, 0, 0, 0, '', '', '', '', '', '', 'М', '', '', '', '', 0, 'i_YRzNqmin__dy7_jhu3X0'),
(565, 562, 1, '', 1, 0, 13, 0, 0, 0, '', '', '', '', '', '', 'Найк', '', '', '', '', 0, 'vN9QvoKmixeKByi509Xb71'),
(566, 558, 1, '', 1, 0, 13, 0, 0, 0, '', '', '', '', '', '', 'Doctor Martines', '', '', '', '', 0, 'rv0zn_nWhlWupq7lyremB3'),
(567, 566, 0, '', 0, 0, 7, 0, 0, 0, '', '', '', '', '', '', 'SS12', '', '', '', '', 0, '4xu6VMFYiW_GGZyR_DoaT2'),
(572, 1, 7, '', 7, 0, 1, 0, 0, 0, '', '', '', '', '', '', 'Candies', '', '', '', '', 0, 'nzWnQLK7gd6rDPp3SS35N0');

-- --------------------------------------------------------

--
-- Table structure for table `SC_category_product`
--

DROP TABLE IF EXISTS `SC_category_product`;
CREATE TABLE IF NOT EXISTS `SC_category_product` (
  `productID` int(11) NOT NULL default '0',
  `categoryID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`productID`,`categoryID`),
  KEY `categoryID` (`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_category_product`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_category_product_options__variants`
--

DROP TABLE IF EXISTS `SC_category_product_options__variants`;
CREATE TABLE IF NOT EXISTS `SC_category_product_options__variants` (
  `optionID` int(11) NOT NULL default '0',
  `categoryID` int(11) NOT NULL default '0',
  `variantID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`optionID`,`categoryID`,`variantID`),
  KEY `categoryID` (`categoryID`),
  KEY `variantID` (`variantID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_category_product_options__variants`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_category__product_options`
--

DROP TABLE IF EXISTS `SC_category__product_options`;
CREATE TABLE IF NOT EXISTS `SC_category__product_options` (
  `optionID` int(11) NOT NULL default '0',
  `categoryID` int(11) NOT NULL default '0',
  `set_arbitrarily` int(11) default '1',
  PRIMARY KEY  (`optionID`,`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_category__product_options`
--

INSERT INTO `SC_category__product_options` (`optionID`, `categoryID`, `set_arbitrarily`) VALUES
(12, 543, 1),
(12, 544, 1),
(12, 545, 1),
(12, 546, 1),
(12, 547, 1),
(12, 548, 1),
(12, 549, 1),
(12, 550, 1),
(12, 551, 1),
(12, 552, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SC_config_settings`
--

DROP TABLE IF EXISTS `SC_config_settings`;
CREATE TABLE IF NOT EXISTS `SC_config_settings` (
  `ModuleConfigID` int(10) unsigned NOT NULL default '0',
  `SettingName` varchar(30) default NULL,
  `SettingValue` varchar(255) default NULL,
  `SettingType` int(10) unsigned NOT NULL default '0',
  KEY `ModuleConfigID` (`ModuleConfigID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_config_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_countries`
--

DROP TABLE IF EXISTS `SC_countries`;
CREATE TABLE IF NOT EXISTS `SC_countries` (
  `countryID` int(11) NOT NULL auto_increment,
  `country_iso_2` varchar(2) default NULL,
  `country_iso_3` varchar(3) default NULL,
  `country_name_en` varchar(64) default NULL,
  `country_name_ru` varchar(64) default NULL,
  PRIMARY KEY  (`countryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `SC_countries`
--

INSERT INTO `SC_countries` (`countryID`, `country_iso_2`, `country_iso_3`, `country_name_en`, `country_name_ru`) VALUES
(1, 'AF', 'AFG', 'Afghanistan', 'Афганистан'),
(2, 'AL', 'ALB', 'Albania', 'Албания'),
(3, 'DZ', 'DZA', 'Algeria', 'Алжир'),
(4, 'AS', 'ASM', 'American Samoa', 'Американское Самоа'),
(5, 'AD', 'AND', 'Andorra', 'Андорра'),
(6, 'AO', 'AGO', 'Angola', 'Ангола'),
(7, 'AI', 'AIA', 'Anguilla', 'Ангилья'),
(9, 'AG', 'ATG', 'Antigua and Barbuda', 'Антигуа и Барбуда'),
(10, 'AR', 'ARG', 'Argentina', 'Аргентина'),
(11, 'AM', 'ARM', 'Armenia', 'Армения'),
(12, 'AW', 'ABW', 'Aruba', 'Аруба'),
(13, 'AU', 'AUS', 'Australia', 'Австралия'),
(14, 'AT', 'AUT', 'Austria', 'Австрия'),
(15, 'AZ', 'AZE', 'Azerbaijan', 'Азербайджан'),
(16, 'BS', 'BHS', 'Bahamas', 'Багамы'),
(17, 'BH', 'BHR', 'Bahrain', 'Бахрейн'),
(18, 'BD', 'BGD', 'Bangladesh', 'Бангладеш'),
(19, 'BB', 'BRB', 'Barbados', 'Барбадос'),
(20, 'BY', 'BLR', 'Belarus', 'Беларусь'),
(21, 'BE', 'BEL', 'Belgium', 'Бельгия'),
(22, 'BZ', 'BLZ', 'Belize', 'Белиз'),
(23, 'BJ', 'BEN', 'Benin', 'Бенин'),
(24, 'BM', 'BMU', 'Bermuda', 'Бермуды'),
(25, 'BT', 'BTN', 'Bhutan', 'Бутан'),
(26, 'BO', 'BOL', 'Bolivia', 'Боливия'),
(27, 'BA', 'BIH', 'Bosnia and Herzegowina', 'Босния и Герцеговина'),
(28, 'BW', 'BWA', 'Botswana', 'Ботсвана'),
(29, 'BV', 'BVT', 'Bouvet Island', 'Остров Буве'),
(30, 'BR', 'BRA', 'Brazil', 'Бразилия'),
(32, 'BN', 'BRN', 'Brunei Darussalam', 'Бруней-Даруссалам'),
(33, 'BG', 'BGR', 'Bulgaria', 'Болгария'),
(34, 'BF', 'BFA', 'Burkina Faso', 'Буркина-Фасо'),
(35, 'BI', 'BDI', 'Burundi', 'Бурунди'),
(36, 'KH', 'KHM', 'Cambodia', 'Камбоджа'),
(37, 'CM', 'CMR', 'Cameroon', 'Камерун'),
(38, 'CA', 'CAN', 'Canada', 'Канада'),
(39, 'CV', 'CPV', 'Cape Verde', 'Кабо-Верде'),
(40, 'KY', 'CYM', 'Cayman Islands', 'Острова Кайман'),
(41, 'CF', 'CAF', 'Central African Republic', 'Центрально-Африканская Республика'),
(42, 'TD', 'TCD', 'Chad', 'Чад'),
(43, 'CL', 'CHL', 'Chile', 'Чили'),
(44, 'CN', 'CHN', 'China', 'Китай'),
(46, 'CC', 'CCK', 'Cocos (Keeling) Islands', 'Кокосовые (Килинг) острова'),
(47, 'CO', 'COL', 'Colombia', 'Колумбия'),
(48, 'KM', 'COM', 'Comoros', 'Коморы'),
(49, 'CG', 'COG', 'Congo', 'Конго'),
(50, 'CK', 'COK', 'Cook Islands', 'Острова Кука'),
(51, 'CR', 'CRI', 'Costa Rica', 'Коста-Рика'),
(52, 'CI', 'CIV', 'Cote D''Ivoire', 'Кот д’Ивуар'),
(53, 'HR', 'HRV', 'Croatia', 'Хорватия'),
(54, 'CU', 'CUB', 'Cuba', 'Куба'),
(55, 'CY', 'CYP', 'Cyprus', 'Кипр'),
(56, 'CZ', 'CZE', 'Czech Republic', 'Чехия'),
(57, 'DK', 'DNK', 'Denmark', 'Дания'),
(58, 'DJ', 'DJI', 'Djibouti', 'Джибути'),
(59, 'DM', 'DMA', 'Dominica', 'Доминика'),
(60, 'DO', 'DOM', 'Dominican Republic', 'Доминиканская Республика'),
(61, 'TP', 'TMP', 'East Timor', 'Восточный Тимор'),
(62, 'EC', 'ECU', 'Ecuador', 'Эквадор'),
(63, 'EG', 'EGY', 'Egypt', 'Египет'),
(64, 'SV', 'SLV', 'El Salvador', 'Сальвадор'),
(65, 'GQ', 'GNQ', 'Equatorial Guinea', 'Экваториальная Гвинея'),
(66, 'ER', 'ERI', 'Eritrea', 'Эритрея'),
(67, 'EE', 'EST', 'Estonia', 'Эстония'),
(68, 'ET', 'ETH', 'Ethiopia', 'Эфиопия'),
(69, 'FK', 'FLK', 'Falkland Islands (Malvinas)', 'Фолклендские острова (Мальвинские)'),
(70, 'FO', 'FRO', 'Faroe Islands', 'Фарерские острова'),
(71, 'FJ', 'FJI', 'Fiji', 'Фиджи'),
(72, 'FI', 'FIN', 'Finland', 'Финляндия'),
(73, 'FR', 'FRA', 'France', 'Франция'),
(75, 'GF', 'GUF', 'French Guiana', 'Французская Гвиана'),
(76, 'PF', 'PYF', 'French Polynesia', 'Французская Полинезия'),
(78, 'GA', 'GAB', 'Gabon', 'Габон'),
(79, 'GM', 'GMB', 'Gambia', 'Гамбия'),
(80, 'GE', 'GEO', 'Georgia', 'Грузия'),
(81, 'DE', 'DEU', 'Germany', 'Германия'),
(82, 'GH', 'GHA', 'Ghana', 'Гана'),
(83, 'GI', 'GIB', 'Gibraltar', 'Гибралтар'),
(84, 'GR', 'GRC', 'Greece', 'Греция'),
(85, 'GL', 'GRL', 'Greenland', 'Гренландия'),
(86, 'GD', 'GRD', 'Grenada', 'Гренада'),
(87, 'GP', 'GLP', 'Guadeloupe', 'Гваделупа'),
(88, 'GU', 'GUM', 'Guam', 'Гуам'),
(89, 'GT', 'GTM', 'Guatemala', 'Гватемала'),
(90, 'GN', 'GIN', 'Guinea', 'Гвинея'),
(91, 'GW', 'GNB', 'Guinea-bissau', 'Гвинея-Бисау'),
(92, 'GY', 'GUY', 'Guyana', 'Гайана'),
(93, 'HT', 'HTI', 'Haiti', 'Гаити'),
(94, 'HM', 'HMD', 'Heard and Mc Donald Islands', 'Остров Херд и острова Макдональд'),
(95, 'HN', 'HND', 'Honduras', 'Гондурас'),
(96, 'HK', 'HKG', 'Hong Kong', 'Гонконг'),
(97, 'HU', 'HUN', 'Hungary', 'Венгрия'),
(98, 'IS', 'ISL', 'Iceland', 'Исландия'),
(99, 'IN', 'IND', 'India', 'Индия'),
(100, 'ID', 'IDN', 'Indonesia', 'Индонезия'),
(101, 'IR', 'IRN', 'Iran (Islamic Republic of)', 'Иран, исламская республика'),
(102, 'IQ', 'IRQ', 'Iraq', 'Ирак'),
(103, 'IE', 'IRL', 'Ireland', 'Ирландия'),
(104, 'IL', 'ISR', 'Israel', 'Израиль'),
(105, 'IT', 'ITA', 'Italy', 'Италия'),
(106, 'JM', 'JAM', 'Jamaica', 'Ямайка'),
(107, 'JP', 'JPN', 'Japan', 'Япония'),
(108, 'JO', 'JOR', 'Jordan', 'Иордания'),
(109, 'KZ', 'KAZ', 'Kazakhstan', 'Казахстан'),
(110, 'KE', 'KEN', 'Kenya', 'Кения'),
(111, 'KI', 'KIR', 'Kiribati', 'Кирибати'),
(112, 'KP', 'PRK', 'Korea, Democratic People''s Republic of', 'Корея, народно-демократическая республика'),
(113, 'KR', 'KOR', 'Korea, Republic of', 'Корея, республика'),
(114, 'KW', 'KWT', 'Kuwait', 'Кувейт'),
(115, 'KG', 'KGZ', 'Kyrgyzstan', 'Киргизия'),
(116, 'LA', 'LAO', 'Lao People''s Democratic Republic', 'Лаосская Народно-Демократическая Республика'),
(117, 'LV', 'LVA', 'Latvia', 'Латвия'),
(118, 'LB', 'LBN', 'Lebanon', 'Ливан'),
(119, 'LS', 'LSO', 'Lesotho', 'Лесото'),
(120, 'LR', 'LBR', 'Liberia', 'Либерия'),
(121, 'LY', 'LBY', 'Libyan Arab Jamahiriya', 'Ливийская Арабская Джамахирия'),
(122, 'LI', 'LIE', 'Liechtenstein', 'Лихтенштейн'),
(123, 'LT', 'LTU', 'Lithuania', 'Литва'),
(124, 'LU', 'LUX', 'Luxembourg', 'Люксембург'),
(125, 'MO', 'MAC', 'Macau', 'Макао'),
(126, 'MK', 'MKD', 'Macedonia, The Former Yugoslav Republic of', 'Македония, бывшая Югославская Республика'),
(127, 'MG', 'MDG', 'Madagascar', 'Мадагаскар'),
(128, 'MW', 'MWI', 'Malawi', 'Малави'),
(129, 'MY', 'MYS', 'Malaysia', 'Малайзия'),
(130, 'MV', 'MDV', 'Maldives', 'Мальдивы'),
(131, 'ML', 'MLI', 'Mali', 'Мали'),
(132, 'MT', 'MLT', 'Malta', 'Мальта'),
(133, 'MH', 'MHL', 'Marshall Islands', 'Маршалловы Острова'),
(134, 'MQ', 'MTQ', 'Martinique', 'Мартиника'),
(135, 'MR', 'MRT', 'Mauritania', 'Мавритания'),
(136, 'MU', 'MUS', 'Mauritius', 'Маврикий'),
(138, 'MX', 'MEX', 'Mexico', 'Мексика'),
(139, 'FM', 'FSM', 'Micronesia, Federated States of', 'Микронезия, федеративные штаты'),
(140, 'MD', 'MDA', 'Moldova, Republic of', 'Молдавия'),
(141, 'MC', 'MCO', 'Monaco', 'Монако'),
(142, 'MN', 'MNG', 'Mongolia', 'Монголия'),
(143, 'MS', 'MSR', 'Montserrat', 'Монтсеррат'),
(144, 'MA', 'MAR', 'Morocco', 'Марокко'),
(145, 'MZ', 'MOZ', 'Mozambique', 'Мозамбик'),
(146, 'MM', 'MMR', 'Myanmar', 'Мьянма'),
(147, 'NA', 'NAM', 'Namibia', 'Намибия'),
(148, 'NR', 'NRU', 'Nauru', 'Науру'),
(149, 'NP', 'NPL', 'Nepal', 'Непал'),
(150, 'NL', 'NLD', 'Netherlands', 'Нидерланды'),
(151, 'AN', 'ANT', 'Netherlands Antilles', 'Нидерландские Антилы'),
(152, 'NC', 'NCL', 'New Caledonia', 'Новая Каледония'),
(153, 'NZ', 'NZL', 'New Zealand', 'Новая Зеландия'),
(154, 'NI', 'NIC', 'Nicaragua', 'Никарагуа'),
(155, 'NE', 'NER', 'Niger', 'Нигер'),
(156, 'NG', 'NGA', 'Nigeria', 'Нигерия'),
(157, 'NU', 'NIU', 'Niue', 'Ниуэ'),
(158, 'NF', 'NFK', 'Norfolk Island', 'Остров Норфолк'),
(159, 'MP', 'MNP', 'Northern Mariana Islands', 'Северные Марианские острова'),
(160, 'NO', 'NOR', 'Norway', 'Норвегия'),
(161, 'OM', 'OMN', 'Oman', 'Оман'),
(162, 'PK', 'PAK', 'Pakistan', 'Пакистан'),
(163, 'PW', 'PLW', 'Palau', 'Палау'),
(164, 'PA', 'PAN', 'Panama', 'Панама'),
(165, 'PG', 'PNG', 'Papua New Guinea', 'Папуа — Новая Гвинея'),
(166, 'PY', 'PRY', 'Paraguay', 'Парагвай'),
(167, 'PE', 'PER', 'Peru', 'Перу'),
(168, 'PH', 'PHL', 'Philippines', 'Филиппины'),
(169, 'PN', 'PCN', 'Pitcairn', 'Питкерн'),
(170, 'PL', 'POL', 'Poland', 'Польша'),
(171, 'PT', 'PRT', 'Portugal', 'Португалия'),
(172, 'PR', 'PRI', 'Puerto Rico', 'Пуэрто-Рико'),
(173, 'QA', 'QAT', 'Qatar', 'Катар'),
(174, 'RE', 'REU', 'Reunion', 'Реюньон'),
(175, 'RO', 'ROM', 'Romania', 'Румыния'),
(176, 'RU', 'RUS', 'Russian Federation', 'Россия'),
(177, 'RW', 'RWA', 'Rwanda', 'Руанда'),
(178, 'KN', 'KNA', 'Saint Kitts and Nevis', 'Сент-Китс и Невис'),
(179, 'LC', 'LCA', 'Saint Lucia', 'Сент-Люсия'),
(180, 'VC', 'VCT', 'Saint Vincent and the Grenadines', 'Сент-Винсент и Гренадины'),
(181, 'WS', 'WSM', 'Samoa', 'Самоа'),
(182, 'SM', 'SMR', 'San Marino', 'Сан-Марино'),
(183, 'ST', 'STP', 'Sao Tome and Principe', 'Сан-Томе и Принсипи'),
(184, 'SA', 'SAU', 'Saudi Arabia', 'Саудовская Аравия'),
(185, 'SN', 'SEN', 'Senegal', 'Сенегал'),
(186, 'SC', 'SYC', 'Seychelles', 'Сейшелы'),
(187, 'SL', 'SLE', 'Sierra Leone', 'Сьерра-Леоне'),
(188, 'SG', 'SGP', 'Singapore', 'Сингапур'),
(189, 'SK', 'SVK', 'Slovakia (Slovak Republic)', 'Словакия'),
(190, 'SI', 'SVN', 'Slovenia', 'Словения'),
(191, 'SB', 'SLB', 'Solomon Islands', 'Соломоновы Острова'),
(192, 'SO', 'SOM', 'Somalia', 'Сомали'),
(193, 'ZA', 'ZAF', 'South Africa', 'Южная Африка'),
(245, 'CS', 'SCG', 'Serbia And Montenegro', 'Сербия и Черногория'),
(195, 'ES', 'ESP', 'Spain', 'Испания'),
(196, 'LK', 'LKA', 'Sri Lanka', 'Шри-Ланка'),
(197, 'SH', 'SHN', 'St. Helena', 'Святая Елена'),
(198, 'PM', 'SPM', 'St. Pierre and Miquelon', 'Сент-Пьер и Микелон'),
(199, 'SD', 'SDN', 'Sudan', 'Судан'),
(200, 'SR', 'SUR', 'Suriname', 'Суринам'),
(201, 'SJ', 'SJM', 'Svalbard and Jan Mayen Islands', 'Шпицберген и Ян Майен'),
(202, 'SZ', 'SWZ', 'Swaziland', 'Свазиленд'),
(203, 'SE', 'SWE', 'Sweden', 'Швеция'),
(204, 'CH', 'CHE', 'Switzerland', 'Швейцария'),
(205, 'SY', 'SYR', 'Syrian Arab Republic', 'Сирийская Арабская Республика'),
(206, 'TW', 'TWN', 'Taiwan', 'Тайвань'),
(207, 'TJ', 'TJK', 'Tajikistan', 'Таджикистан'),
(208, 'TZ', 'TZA', 'Tanzania, United Republic of', 'Танзания, объединенная республика'),
(209, 'TH', 'THA', 'Thailand', 'Таиланд'),
(210, 'TG', 'TGO', 'Togo', 'Того'),
(211, 'TK', 'TKL', 'Tokelau', 'Токелау'),
(212, 'TO', 'TON', 'Tonga', 'Тонга'),
(213, 'TT', 'TTO', 'Trinidad and Tobago', 'Тринидад и Тобаго'),
(214, 'TN', 'TUN', 'Tunisia', 'Тунис'),
(215, 'TR', 'TUR', 'Turkey', 'Турция'),
(216, 'TM', 'TKM', 'Turkmenistan', 'Туркмения'),
(217, 'TC', 'TCA', 'Turks and Caicos Islands', 'Острова Теркс и Кайкос'),
(218, 'TV', 'TUV', 'Tuvalu', 'Тувалу'),
(219, 'UG', 'UGA', 'Uganda', 'Уганда'),
(220, 'UA', 'UKR', 'Ukraine', 'Украина'),
(221, 'AE', 'ARE', 'United Arab Emirates', 'Объединенные Арабские Эмираты'),
(222, 'GB', 'GBR', 'United Kingdom', 'Соединенное Королевство'),
(223, 'US', 'USA', 'United States', 'Соединенные Штаты Америки'),
(225, 'UY', 'URY', 'Uruguay', 'Уругвай'),
(226, 'UZ', 'UZB', 'Uzbekistan', 'Узбекистан'),
(227, 'VU', 'VUT', 'Vanuatu', 'Вануату'),
(228, 'VA', 'VAT', 'Vatican City State (Holy See)', 'Ватикан'),
(229, 'VE', 'VEN', 'Venezuela', 'Венесуэла'),
(230, 'VN', 'VNM', 'Viet Nam', 'Вьетнам'),
(231, 'VG', 'VGB', 'Virgin Islands (British)', 'Виргинские острова, Британские'),
(232, 'VI', 'VIR', 'Virgin Islands (U.S.)', 'Виргинские острова, США'),
(233, 'WF', 'WLF', 'Wallis and Futuna Islands', 'Острова Уоллис и Футуна'),
(234, 'EH', 'ESH', 'Western Sahara', 'Западная Сахара'),
(235, 'YE', 'YEM', 'Yemen', 'Йемен'),
(244, 'PS', 'PSE', 'Palestine', 'Палестина'),
(238, 'ZM', 'ZMB', 'Zambia', 'Замбия'),
(239, 'ZW', 'ZWE', 'Zimbabwe', 'Зимбабве');

-- --------------------------------------------------------

--
-- Table structure for table `SC_currency_types`
--

DROP TABLE IF EXISTS `SC_currency_types`;
CREATE TABLE IF NOT EXISTS `SC_currency_types` (
  `CID` int(11) NOT NULL auto_increment,
  `code` varchar(7) default NULL,
  `currency_value` double default NULL,
  `where2show` int(11) default NULL,
  `sort_order` int(11) default '0',
  `currency_iso_3` varchar(3) default NULL,
  `display_template_en` varchar(20) default NULL,
  `Name_en` varchar(30) default NULL,
  `decimal_symbol` char(1) NOT NULL default '',
  `decimal_places` int(10) unsigned NOT NULL default '0',
  `thousands_delimiter` char(1) NOT NULL default '',
  `Name_ru` varchar(30) default NULL,
  `display_template_ru` varchar(20) default NULL,
  PRIMARY KEY  (`CID`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `SC_currency_types`
--

INSERT INTO `SC_currency_types` (`CID`, `code`, `currency_value`, `where2show`, `sort_order`, `currency_iso_3`, `display_template_en`, `Name_en`, `decimal_symbol`, `decimal_places`, `thousands_delimiter`, `Name_ru`, `display_template_ru`) VALUES
(3, 'руб.', 1, 1, 0, 'RUR', '{value} руб.', 'Roubles', '.', 2, '', 'Рубли', '{value} руб.'),
(6, NULL, 0.0416, NULL, 0, 'USD', '${value}', 'US Dollars', '.', 2, ',', 'Доллары США', '${value}'),
(7, NULL, 0.02777, NULL, 0, 'EUR', '&euro;{value}', 'Euro', '.', 2, '_', 'Евро', '&euro;{value}'),
(8, NULL, 0.019, NULL, 0, 'GBP', '&pound;{value}', 'Pounds', '.', 2, ',', 'Фунты', '&pound;{value}');

-- --------------------------------------------------------

--
-- Table structure for table `SC_custgroups`
--

DROP TABLE IF EXISTS `SC_custgroups`;
CREATE TABLE IF NOT EXISTS `SC_custgroups` (
  `custgroupID` int(11) NOT NULL auto_increment,
  `custgroup_discount` float default '0',
  `sort_order` int(11) default '0',
  `custgroup_name_en` varchar(64) default NULL,
  `custgroup_name_ru` varchar(64) default NULL,
  PRIMARY KEY  (`custgroupID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SC_custgroups`
--

INSERT INTO `SC_custgroups` (`custgroupID`, `custgroup_discount`, `sort_order`, `custgroup_name_en`, `custgroup_name_ru`) VALUES
(3, 0, 1, 'Retail', 'Розница'),
(4, 10, 2, 'Wholesale', 'Опт');

-- --------------------------------------------------------

--
-- Table structure for table `SC_customers`
--

DROP TABLE IF EXISTS `SC_customers`;
CREATE TABLE IF NOT EXISTS `SC_customers` (
  `customerID` int(11) NOT NULL auto_increment,
  `Login` varchar(32) NOT NULL,
  `cust_password` varchar(255) NOT NULL default '',
  `Email` varchar(64) default NULL,
  `first_name` varchar(32) default NULL,
  `last_name` varchar(32) default NULL,
  `subscribed4news` int(11) default NULL,
  `custgroupID` int(11) default NULL,
  `addressID` int(11) default NULL,
  `reg_datetime` datetime default NULL,
  `CID` int(11) default NULL,
  `affiliateID` int(11) NOT NULL default '0',
  `affiliateEmailOrders` int(11) NOT NULL default '1',
  `affiliateEmailPayments` int(11) NOT NULL default '1',
  `ActivationCode` varchar(16) NOT NULL default '',
  `vkontakte_id` int(11) default NULL,
  PRIMARY KEY  (`customerID`),
  KEY `AFFILIATEID` (`affiliateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `SC_customers`
--

INSERT INTO `SC_customers` (`customerID`, `Login`, `cust_password`, `Email`, `first_name`, `last_name`, `subscribed4news`, `custgroupID`, `addressID`, `reg_datetime`, `CID`, `affiliateID`, `affiliateEmailOrders`, `affiliateEmailPayments`, `ActivationCode`, `vkontakte_id`) VALUES
(1, 'rp', '0LnRhtGD0LrQtdC9', 'rp+candies@whitescape.com', 'rp', 'rp', 1, 3, 1, '2012-06-08 17:51:46', 3, 0, 1, 1, '', NULL),
(2, 'rsedykh', 'dGVzdHRlc3Q=', 'rsedykh@whitescape.com', 'Роман', 'Седых', 0, 3, 0, '2012-06-25 14:46:51', 0, 0, 0, 0, '', 0),
(3, '', '', 'rp@whitescape.com', 'Имя', 'Фамилия', 1, 3, 0, '2012-06-26 16:33:10', 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_customer_addresses`
--

DROP TABLE IF EXISTS `SC_customer_addresses`;
CREATE TABLE IF NOT EXISTS `SC_customer_addresses` (
  `addressID` int(11) NOT NULL auto_increment,
  `customerID` int(11) NOT NULL default '0',
  `first_name` varchar(64) default NULL,
  `last_name` varchar(64) default NULL,
  `countryID` int(11) default NULL,
  `zoneID` int(11) default NULL,
  `zip` varchar(64) default NULL,
  `state` varchar(64) default NULL,
  `city` varchar(64) default NULL,
  `address` text,
  PRIMARY KEY  (`addressID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `SC_customer_addresses`
--

INSERT INTO `SC_customer_addresses` (`addressID`, `customerID`, `first_name`, `last_name`, `countryID`, `zoneID`, `zip`, `state`, `city`, `address`) VALUES
(1, 1, 'rp', 'rp', 176, 186, '123456789', '', '123456789', '123456789'),
(2, 2, 'Роман', 'Седых', 176, 234, '190000', 'Ленинградская область', 'Санкт-Петербург', 'Дворцовая наб. 20'),
(3, 2, 'Роман', 'Седых', 176, 234, '190000', '', 'Санкт-Петербург', 'Дворцовая наб. 20'),
(4, 3, 'Имя', 'Фамилия', 176, 186, '123456', '', 'Город', 'Адрес'),
(5, 3, 'Имя', 'Фамилия', 176, 186, '123456', '', 'Город', 'Адрес');

-- --------------------------------------------------------

--
-- Table structure for table `SC_customer_reg_fields`
--

DROP TABLE IF EXISTS `SC_customer_reg_fields`;
CREATE TABLE IF NOT EXISTS `SC_customer_reg_fields` (
  `reg_field_ID` int(11) NOT NULL auto_increment,
  `reg_field_required` tinyint(1) default NULL,
  `sort_order` int(11) default NULL,
  `reg_field_name_en` varchar(32) default NULL,
  `reg_field_name_ru` varchar(32) default NULL,
  PRIMARY KEY  (`reg_field_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `SC_customer_reg_fields`
--

INSERT INTO `SC_customer_reg_fields` (`reg_field_ID`, `reg_field_required`, `sort_order`, `reg_field_name_en`, `reg_field_name_ru`) VALUES
(1, 1, 1, 'Phone number', 'Телефон'),
(2, 0, 2, 'Subway station', 'Метро (Москва)');

-- --------------------------------------------------------

--
-- Table structure for table `SC_customer_reg_fields_values`
--

DROP TABLE IF EXISTS `SC_customer_reg_fields_values`;
CREATE TABLE IF NOT EXISTS `SC_customer_reg_fields_values` (
  `reg_field_ID` int(11) NOT NULL default '0',
  `customerID` int(11) NOT NULL default '0',
  `reg_field_value` varchar(255) default NULL,
  UNIQUE KEY `UNQ_reg_cust` (`reg_field_ID`,`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_customer_reg_fields_values`
--

INSERT INTO `SC_customer_reg_fields_values` (`reg_field_ID`, `customerID`, `reg_field_value`) VALUES
(1, 1, '123456789'),
(1, 2, '+79876543322'),
(1, 3, '123');

-- --------------------------------------------------------

--
-- Table structure for table `SC_customer_reg_fields_values_quickreg`
--

DROP TABLE IF EXISTS `SC_customer_reg_fields_values_quickreg`;
CREATE TABLE IF NOT EXISTS `SC_customer_reg_fields_values_quickreg` (
  `reg_field_ID` int(11) NOT NULL default '0',
  `orderID` int(11) NOT NULL default '0',
  `reg_field_value` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_customer_reg_fields_values_quickreg`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_discount_coupons`
--

DROP TABLE IF EXISTS `SC_discount_coupons`;
CREATE TABLE IF NOT EXISTS `SC_discount_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_code` char(10) character set utf8 collate utf8_bin NOT NULL,
  `is_active` enum('N','Y') character set utf8 collate utf8_bin NOT NULL default 'N',
  `coupon_type` enum('SU','MX','MN') character set utf8 collate utf8_bin NOT NULL default 'SU',
  `expire_date` int(11) NOT NULL,
  `discount_percent` decimal(12,2) NOT NULL default '0.00',
  `discount_absolute` decimal(12,2) NOT NULL default '0.00',
  `discount_type` enum('P','A') character set utf8 collate utf8_bin NOT NULL default 'P',
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY  (`coupon_id`),
  UNIQUE KEY `coupon_code` (`coupon_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SC_discount_coupons`
--

INSERT INTO `SC_discount_coupons` (`coupon_id`, `coupon_code`, `is_active`, `coupon_type`, `expire_date`, `discount_percent`, `discount_absolute`, `discount_type`, `comment`) VALUES
(4, '93B1BC4487', 'Y', 'SU', 1230238799, 5.00, 0.00, 'P', 'Выдан Василию Пупкину'),
(3, 'XMAS', 'Y', 'MX', 1230238799, 25.00, 0.00, 'P', 'Christmas sale!');

-- --------------------------------------------------------

--
-- Table structure for table `SC_discussions`
--

DROP TABLE IF EXISTS `SC_discussions`;
CREATE TABLE IF NOT EXISTS `SC_discussions` (
  `DID` int(11) NOT NULL auto_increment,
  `productID` int(11) default NULL,
  `Author` varchar(40) default NULL,
  `Body` text,
  `add_time` datetime default NULL,
  `Topic` varchar(255) default NULL,
  PRIMARY KEY  (`DID`),
  KEY `productID` (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `SC_discussions`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_divisions`
--

DROP TABLE IF EXISTS `SC_divisions`;
CREATE TABLE IF NOT EXISTS `SC_divisions` (
  `xID` int(10) unsigned NOT NULL auto_increment,
  `xName` varchar(255) NOT NULL default '',
  `xKey` varchar(255) NOT NULL default '',
  `xUnicKey` varchar(255) NOT NULL default '',
  `xParentID` int(10) unsigned NOT NULL default '0',
  `xEnabled` tinyint(1) NOT NULL default '0',
  `xPriority` smallint(5) unsigned NOT NULL default '0',
  `xTemplate` varchar(100) NOT NULL default '',
  `xLinkDivisionUKey` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`xID`,`xParentID`),
  KEY `xUnicKey` (`xUnicKey`),
  KEY `xEnabled` (`xEnabled`),
  KEY `xPriority` (`xPriority`),
  KEY `xParentID` (`xParentID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=212 ;

--
-- Dumping data for table `SC_divisions`
--

INSERT INTO `SC_divisions` (`xID`, `xName`, `xKey`, `xUnicKey`, `xParentID`, `xEnabled`, `xPriority`, `xTemplate`, `xLinkDivisionUKey`) VALUES
(1, 'pgn_mainpage', '', 'TitlePage', 0, 1, 10, 'frame.html', ''),
(6, 'sub hello', '', '', 2, 0, 0, '', ''),
(8, 'Администрирование', '', 'admin', 0, 1, 0, 'backend/index.html', 'admin_orders_list'),
(9, 'pgn_catalog', '', 'catalog', 8, 1, 14, '', 'categorygoods'),
(10, 'pgn_orders', '', 'admin_orders', 8, 1, 18, '', 'admin_orders_list'),
(11, 'pgn_settings', '', '', 8, 1, 8, '', 'bsettings'),
(12, 'pgn_modules', '', '', 8, 1, 12, '', 'product_widgets'),
(14, 'pgn_products_categories', '', 'categorygoods', 9, 1, 20, '', ''),
(15, 'pgn_import_products', '', '', 9, 1, 16, '', ''),
(16, 'pgn_export_products', '', '', 9, 1, 14, '', ''),
(17, 'Синхронизация баз данных', '', '', 9, 0, 4, '', ''),
(18, 'pgn_product_customparams', '', '', 9, 1, 10, '', ''),
(20, 'pgn_product_reviews', '', '', 9, 1, 18, '', ''),
(21, 'pgn_orders', '', 'admin_orders_list', 10, 1, 8, '', ''),
(22, 'pgn_customers', '', 'admin_users_list', 89, 1, 8, '', ''),
(24, 'pgn_general_settings', '', 'bsettings', 11, 1, 100, '', ''),
(25, 'pgn_shipping_methods', '', '', 11, 1, 80, '', ''),
(26, 'pgn_payment_methods', '', '', 11, 1, 70, '', ''),
(29, 'pgn_mainpage', '', 'home', 1, 1, 76, '', 'TitlePage'),
(30, 'pgn_my_account', '', 'office', 1, 0, 74, '', ''),
(32, 'pgn_feedback', '', 'feedback', 1, 1, 66, '', ''),
(33, 'pgn_linkexchange', '', 'linkexchange', 1, 1, 64, '', ''),
(34, 'pgn_product', '', 'product', 1, 0, 50, '', ''),
(35, 'pgn_news', '', 'news', 1, 1, 56, '', ''),
(36, 'pgn_discuss_product', '', 'discuss_product', 1, 0, 54, '', ''),
(37, 'pgn_cart', '', 'cart', 1, 0, 58, '', ''),
(38, 'pgn_contact_info', '', 'contact_info', 30, 1, 8, '', ''),
(39, 'pgn_address_book', '', 'address_book', 30, 1, 7, '', ''),
(40, 'pgn_order_history', '', 'order_history', 30, 1, 6, '', ''),
(42, 'pgn_affiliate_program', '', 'affiliate_program', 30, 0, 2, '', 'affiliate_balance'),
(43, 'pgn_customer_fields', '', '', 11, 1, 30, '', ''),
(44, 'pgn_add_address', '', 'add_address', 39, 0, 1, '', ''),
(45, 'pgn_edit_address', '', 'address_editor', 39, 0, 2, '', ''),
(46, 'pgn_order_detailed', '', 'order_detailed', 40, 0, 0, '', ''),
(49, 'pgn_affiliate_balance', '', 'affiliate_balance', 42, 1, 0, '', ''),
(50, 'pgn_affpr_payments_history', '', 'affiliate_history', 42, 1, 0, '', ''),
(51, 'pgn_affpr_earn_money', '', 'affiliate_money', 42, 1, 0, '', ''),
(52, 'pgn_affilite_program', '', 'admin_affprogram', 89, 1, 7, '', ''),
(53, 'pgn_affiliate_settings', '', 'affiliate_settings', 42, 1, 0, '', ''),
(54, 'pgn_register', '', 'register', 1, 1, 72, '', ''),
(55, 'pgn_successful_registration', '', 'successful_registration', 1, 0, 46, '', ''),
(59, 'pgn_change_address', '', 'change_address', 1, 0, 0, '', ''),
(67, 'pgn_link_exchange_admin', '', '', 12, 1, 70, '', ''),
(68, 'pgn_news_administration', '', 'manage_news', 12, 1, 90, '', ''),
(69, 'pgn_survey_administration', '', '', 12, 1, 80, '', ''),
(70, 'pgn_transaction_result', '', 'transaction_result', 1, 0, 48, '', ''),
(71, 'Список модулей', '', 'modules_list', 12, 0, 16, '', ''),
(72, 'pgn_export2googlebase', '', '', 9, 1, 12, '', ''),
(73, 'pgn_yandex_market', '', '', 9, 1, 11, '', ''),
(74, 'pgn_currency_types', '', 'currencies', 11, 1, 90, '', ''),
(75, 'pgn_countries', '', '', 11, 1, 60, '', ''),
(76, 'pgn_regions', '', '', 11, 1, 50, '', ''),
(77, 'pgn_taxes', '', '', 11, 1, 40, '', ''),
(79, 'pgn_aux_pages', '', 'aux_pages', 12, 1, 100, '', ''),
(87, 'pgn_order_statuses', '', '', 10, 1, 7, '', ''),
(88, 'pgn_custgroups', '', 'admin_custgroups', 89, 1, 6, '', ''),
(89, 'pgn_customers', '', 'customers', 8, 1, 16, '', 'admin_users_list'),
(90, 'pgn_user_info', '', 'user_info', 22, 0, 0, '', 'admin_contact_info'),
(91, 'pgn_contact_info', '', 'admin_contact_info', 90, 1, 11, '', ''),
(92, 'pgn_address_book', '', '', 90, 1, 10, '', ''),
(93, 'pgn_order_history', '', 'admin_user_order_history', 90, 1, 6, '', ''),
(95, 'affp_title', '', '', 90, 1, 2, '', ''),
(96, 'pgn_order_detailed', '', 'admin_order_detailed', 21, 0, 0, '', ''),
(98, 'pgn_divsettings', '', 'div_settings', 23, 0, 0, '', ''),
(99, 'pgn_newsletter_subscribers', '', '', 89, 1, 2, '', ''),
(100, 'pgn_discounts', '', 'discount_settings', 10, 1, 6, '', ''),
(102, 'pgn_home', '', 'home', 8, 0, 2, '', 'TitlePage'),
(103, 'pgn_reports', '', '', 8, 1, 13, '', 'sales_report'),
(104, 'pgn_categories_reports', '', '', 103, 1, 80, '', ''),
(106, 'pgn_products_reports', '', '', 103, 1, 90, '', ''),
(107, 'pgn_pricelist', '', 'pricelist', 1, 1, 70, '', ''),
(108, 'Настройки категории', '', 'category_settings', 14, 0, 0, '', ''),
(109, 'pgn_addmod_product', '', 'product_settings', 14, 0, 0, '', ''),
(110, 'pgn_addmod_product', '', 'option_value_configurator', 109, 0, 0, 'backend/product_option_configuration.tpl.html', ''),
(111, 'Рекомендуемые товары', '', 'related_products_setup', 109, 0, 0, 'backend/related_products_setup.tpl.html', ''),
(113, 'pgn_print_version', '', 'printable', 1, 0, 24, '', ''),
(114, 'pgn_invoice', '', 'invoice', 1, 0, 0, '', ''),
(116, 'pgn_invoice', '', 'invoice_phys', 1, 0, 28, '', ''),
(117, 'Счет на оплату', '', 'invoice_jur', 1, 0, 2, '', ''),
(118, 'linkpoint', '', 'linkpoint', 1, 0, 42, '', ''),
(119, 'pgn_cart', '', 'cart_popup', 1, 0, 36, '', ''),
(120, 'pgn_authorization', '', 'register_authorization', 1, 0, 38, '', ''),
(121, 'pgn_registration', '', 'quick_register', 1, 0, 20, '', ''),
(122, 'Быстрое оформление заказа', '', '', 1, 0, 4, '', ''),
(123, 'pgn_delivery', '', 'order2_shipping_quick', 122, 0, 0, '', ''),
(124, 'pgn_payment', '', 'order3_billing_quick', 122, 0, 0, '', ''),
(125, 'pgn_order_confirmation', '', 'order4_confirmation_quick', 122, 0, 0, '', ''),
(126, 'pgn_customer_activation', '', 'act_customer', 1, 0, 30, '', ''),
(127, 'Установка модуля', '', 'module_installation', 71, 0, 0, '', ''),
(128, 'Настройка конфига', '', 'config_settings', 71, 0, 0, '', ''),
(131, 'pgn_add_news', '', 'add_news', 68, 0, 0, '', ''),
(134, 'Добавить интерфейс', '', 'add_divinterface', 23, 0, 0, 'backend/noframe.htm', ''),
(135, 'YourPay Connect', '', 'yourpaymentconnect', 1, 0, 6, '', ''),
(136, 'payment', '', 'pmethod_list', 11, 0, 11, '', ''),
(137, 'pmnt_edit_method', '', 'mod_pmethod', 136, 0, 0, '', ''),
(138, 'pmnt_add_method', '', 'add_pmethod', 136, 0, 0, '', ''),
(149, 'pgn_languages', '', 'languages', 167, 1, 100, '', ''),
(150, 'pgn_addmod_language', '', 'addmod_language', 149, 0, 0, '', ''),
(151, 'PP Express Checkout - order confirmation', '', 'ppexpresscheckout_orderconfirmation', 1, 0, 12, '', ''),
(152, 'PP Express Checkout - order success', '', 'ppec_order_success', 1, 0, 10, '', ''),
(153, 'Google Checkout handler', '', 'googlecheckout_handler', 0, 0, 0, '', ''),
(154, 'pgn_edit_locals', '', 'locals', 149, 0, 0, '', ''),
(155, 'pgn_find_local', '', 'find_local', 149, 0, 0, '', ''),
(156, 'pgn_add_language', '', 'add_language', 149, 0, 0, '', ''),
(157, 'pgn_change_deflang', '', 'change_default_language', 149, 0, 0, '', ''),
(160, 'pgn_themes_list', '', 'themes_list', 167, 1, 110, '', ''),
(161, 'pgn_theme_edit', '', 'theme_edit', 160, 0, 0, '', ''),
(162, 'pgn_cpt_constructor', '', 'cpt_constructor', 1, 0, 32, '', ''),
(163, 'pgn_theme_preview', '', 'theme_preview', 1, 0, 14, '', ''),
(164, 'pgn_category_tree', '', 'category_tree', 14, 0, 0, 'backend/js_categorytree.html', ''),
(165, 'pgn_sales_report', '', 'sales_report', 103, 1, 100, '', ''),
(166, 'pgn_change_default_currency', '', 'change_default_currency', 74, 0, 0, '', ''),
(167, 'pgn_presentation', '', '', 8, 1, 6, '', 'themes_list'),
(168, 'pgn_checkout', '', 'checkout', 1, 0, 34, '', ''),
(169, 'pgn_images_manager', '', '', 167, 1, 90, '', ''),
(170, 'pgn_cpt_settings', '', 'cpt_settings', 161, 0, 0, '', ''),
(171, 'pgn_remind_password', '', 'remind_password', 1, 0, 18, '', ''),
(175, 'pgn_erase_products', '', '', 9, 1, 2, '', ''),
(176, 'prd_product_comparison', '', 'product_comparison', 1, 0, 8, '', ''),
(177, 'pgn_simple_search', '', 'search', 1, 0, 16, '', ''),
(178, 'pgn_checkout_replacement', '', '', 11, 1, 0, '', ''),
(179, 'pgn_product_widgets', '', 'product_widgets', 12, 1, 110, '', ''),
(180, 'pgn_product_widget', '', 'product_widget', 1, 0, 22, '', ''),
(182, 'pgn_product_lists', '', 'product_lists', 9, 1, 6, '', ''),
(183, 'pgn_login', '', 'auth', 1, 1, 71, '', ''),
(184, 'pgn_logout', '', 'logout', 1, 0, 26, '', ''),
(185, 'err_product_not_found', '', 'product_not_found', 1, 0, 44, '', ''),
(186, 'pgn_googleanalytics', '', 'googleanalytics', 12, 1, 0, '', ''),
(187, 'pgn_category_search', '', 'category_search', 1, 0, 0, '', ''),
(188, 'pgn_sms_notifications', '', 'wasms', 10, 1, 0, '', ''),
(189, 'pgn_discount_coupons', '', 'discount_coupons', 10, 1, 7, '', ''),
(190, 'pgn_order_editor', '', 'order_editor', 21, 0, 0, '', ''),
(191, 'pgn_configuration', '', 'configuration', 24, 0, 0, '', ''),
(192, 'pgn_order_creater', '', 'order_creater', 21, 0, 0, '', ''),
(193, 'pgn_gmapi_key_checker', '', 'gmapi_key_checker', 21, 0, 0, '', ''),
(194, 'Google Checkout handler', '', 'googlecheckout_handler', 0, 0, 0, '', ''),
(196, 'PP Express Checkout - order confirmation', '', 'ppexpresscheckout_orderconfirmation', 1, 0, 0, '', ''),
(197, 'PP Express Checkout - order success', '', 'ppec_order_success', 1, 0, 0, '', ''),
(198, 'pgn_ap_1', '', 'auxpage_1', 1, 0, 0, '', ''),
(200, 'pgn_order_status', '', 'order_status', 1, 1, 0, '', ''),
(201, 'pgn_google_sitemap', '', 'sitemap', 12, 1, 1, '', ''),
(202, 'pgn_printforms', '', 'formmanagment', 12, 1, 0, '', ''),
(203, 'pgn_printforms', '', 'print_form', 1, 0, 0, '', ''),
(204, 'prd_out_of_stock', '', 'product_out_of_stock', 1, 0, 0, '', ''),
(205, 'print_form', '', 'admin_print_form', 21, 0, 0, '', ''),
(206, 'pgn_social_networks', '', 'social_networks', 12, 1, 97, '', ''),
(207, 'pgn_1c', '', '', 12, 1, 95, '', ''),
(208, '1c_exchange', '', '1c_exchange', 1, 0, 0, '', ''),
(209, 'Google Checkout handler', '', 'googlecheckout_handler', 0, 0, 0, '', ''),
(210, 'PP Express Checkout - order confirmation', '', 'ppexpresscheckout_orderconfirmation', 1, 0, 0, '', ''),
(211, 'PP Express Checkout - order success', '', 'ppec_order_success', 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `SC_division_access`
--

DROP TABLE IF EXISTS `SC_division_access`;
CREATE TABLE IF NOT EXISTS `SC_division_access` (
  `xDivisionID` int(11) NOT NULL default '0',
  `xU_ID` varchar(20) NOT NULL default '',
  `xID_TYPE` smallint(1) unsigned NOT NULL default '0',
  KEY `xDivisionID` (`xDivisionID`,`xU_ID`),
  KEY `xID_TYPE` (`xID_TYPE`),
  KEY `xU_ID` (`xU_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_division_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_division_custom_settings`
--

DROP TABLE IF EXISTS `SC_division_custom_settings`;
CREATE TABLE IF NOT EXISTS `SC_division_custom_settings` (
  `xDivisionID` int(10) unsigned NOT NULL default '0',
  `xSettingID` int(10) unsigned NOT NULL auto_increment,
  `xKey` varchar(30) NOT NULL default '',
  `xName` varchar(30) NOT NULL default '',
  `xValue` varchar(255) NOT NULL default '',
  KEY `xDivisionID` (`xDivisionID`,`xSettingID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_division_custom_settings`
--

INSERT INTO `SC_division_custom_settings` (`xDivisionID`, `xSettingID`, `xKey`, `xName`, `xValue`) VALUES
(39, 1, 'short_info', 'Интерфейс кратк', 'wrapper->short_address_book'),
(38, 1, 'short_info', 'Интерфейс кратк', 'wrapper->short_contact_info'),
(40, 1, 'short_info', 'Интерфейс кратк', 'wrapper->short_orders_history'),
(41, 1, 'short_info', 'Интерфейс кратк', 'wrapper->short_visits'),
(42, 1, 'short_info', 'Интерфейс кратк', 'affiliate_program->short_affiliate_program'),
(29, 1, 'icon', 'Иконка', 'images/home.gif'),
(30, 1, 'icon', 'Иконка', 'images/register.gif'),
(54, 1, 'icon', 'Иконка', 'images/register.gif'),
(31, 1, 'icon', 'Иконка', 'images/price.gif'),
(63, 1, 'icon', 'Иконка', ''),
(64, 1, 'icon', 'Иконка', 'images/price.gif'),
(65, 1, 'icon', 'Иконка', 'images/price.gif'),
(66, 1, 'icon', 'Иконка', 'images/price.gif'),
(32, 1, 'icon', 'Иконка', 'images/feedback.gif'),
(33, 1, 'icon', 'Иконка', 'images/price.gif'),
(107, 1, 'icon', 'Иконка', 'images/price.gif');

-- --------------------------------------------------------

--
-- Table structure for table `SC_division_interface`
--

DROP TABLE IF EXISTS `SC_division_interface`;
CREATE TABLE IF NOT EXISTS `SC_division_interface` (
  `xDivisionID` int(10) unsigned NOT NULL default '0',
  `xInterface` varchar(100) NOT NULL default '0',
  `xPriority` smallint(5) unsigned NOT NULL default '0',
  `xInheritable` tinyint(1) NOT NULL default '0',
  KEY `divisionID` (`xDivisionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_division_interface`
--

INSERT INTO `SC_division_interface` (`xDivisionID`, `xInterface`, `xPriority`, `xInheritable`) VALUES
(1, '1_categorytree', 29, 1),
(1, '1_fcurrency', 30, 1),
(1, '1_FrontendTitle', 24, 0),
(1, '25_google_analytics', 26, 1),
(1, '25_head', 40, 1),
(14, '1_b_categories_products', 0, 0),
(15, '1_b_import2csv', 0, 0),
(16, '1_b_export_products2csv', 0, 0),
(18, '1_b_product_options', 0, 0),
(20, '1_b_catalog_discuss', 0, 0),
(21, '7_borders_list', 0, 0),
(22, '21_busers_list', 0, 0),
(24, '1_b_settings', 0, 0),
(25, '48_shipping_methods', 0, 0),
(26, '48_payment_methods', 0, 0),
(30, '1_user_account', 0, 0),
(32, '12_', 0, 0),
(32, '12_feedback', 0, 0),
(33, '13_flinkexchange', 0, 0),
(34, '1_categorytree', 0, 0),
(34, '1_fcurrency', 10, 0),
(34, '2_show product', 5, 0),
(34, '5_cart_info', 0, 0),
(35, '1_categorytree', 0, 0),
(35, '1_fcurrency', 0, 0),
(35, '3_news list frontend', 0, 0),
(36, '1_categorytree', 2, 0),
(36, '2_discuss product', 5, 0),
(37, '1_categorytree', 0, 0),
(37, '1_fcurrency', 110, 0),
(37, '25_googlecheckout_checkoutbutton', 0, 0),
(37, '25_ppexpresscheckout', 0, 0),
(37, '25_ppexpresscheckout_button', 0, 0),
(37, '25_vkontaktecheckout_button', 0, 0),
(37, '5_cart', 100, 0),
(37, '5_cart_info', 0, 0),
(38, '1_contact_info', 0, 0),
(39, '1_address_book', 0, 0),
(40, '1_orders_history', 0, 0),
(43, '1_b_regfields', 0, 0),
(44, '1_add_address', 0, 0),
(45, '1_edit_address', 0, 0),
(46, '1_order_detailed', 0, 0),
(48, '1_BDivisionsTree', 0, 0),
(49, '6_fbalance', 0, 0),
(50, '6_fpayments_history', 0, 0),
(51, '6_fattract_guide', 0, 0),
(52, '6_b_custord_affpr', 0, 0),
(53, '6_fsettings', 0, 0),
(54, '1_fregister', 0, 0),
(55, '1_fsuccessful_registration', 0, 0),
(57, '1_fcurrency', 10, 0),
(57, '7_shipping', 0, 0),
(58, '7_billing', 0, 0),
(59, '7_change_address', 0, 0),
(61, '7_bpayment_modules', 0, 0),
(62, '1_fcurrency', 10, 0),
(62, '25_ppexpresscheckout', 0, 0),
(62, '7_confirmation', 0, 0),
(67, '13_blinkexchange', 0, 0),
(68, '3_bnews', 0, 0),
(69, '4_bpoll', 0, 0),
(70, '7_ftransaction_result', 0, 0),
(71, '27_modules_list', 0, 0),
(72, '14_export_page', 0, 0),
(73, '15_export_page', 0, 0),
(74, '1_bcurrency', 0, 0),
(75, '1_bcountries', 0, 0),
(76, '1_bzones', 0, 0),
(77, '1_btaxes', 0, 0),
(79, '16_bauxpage', 0, 0),
(87, '48_order_statuses', 0, 0),
(88, '1_busers_group', 0, 0),
(91, '21_bcontact_info', 0, 0),
(92, '21_baddress_book', 0, 0),
(93, '7_buser_orders', 0, 0),
(95, '6_buser_info', 0, 0),
(96, '7_border_detailed', 0, 0),
(97, '22_bdivisionstree', 0, 0),
(98, '22_divisions', 0, 0),
(99, '3_b_subscribers', 0, 0),
(100, '7_b_discounts', 0, 0),
(101, '23_bsms_order_notify', 0, 0),
(104, '1_b_reports_vcategories', 0, 0),
(106, '1_b_reports_products', 0, 0),
(107, '24_pricelist', 0, 0),
(108, '1_b_category_settings', 0, 0),
(109, '2_b_product_settings', 0, 0),
(110, '2_b_product_option_configuration', 0, 0),
(111, '2_b_related_products_setup', 0, 0),
(112, '15_xml_file_access', 0, 0),
(113, '1_printable', 0, 0),
(114, '7_invoice', 0, 0),
(115, '25_invoice_phys', 0, 0),
(116, '25_invoice_phys', 0, 0),
(117, '25_invoice_jur', 0, 0),
(118, '25_linkpoint', 0, 0),
(119, '25_googlecheckout_checkoutbutton', 0, 0),
(119, '25_ppexpresscheckout', 0, 0),
(119, '5_cart_popup', 0, 0),
(119, '25_ppexpresscheckout_button', 0, 0),
(120, '21_register_authorization', 0, 0),
(121, '7_quick_register', 0, 0),
(123, '7_shipping_quick', 0, 0),
(124, '7_billing_quick', 0, 0),
(125, '25_ppexpresscheckout', 0, 0),
(125, '7_confirmation_quick', 0, 0),
(126, '21_register_activation', 0, 0),
(127, '27_module_installation', 0, 0),
(128, '27_config_settings', 0, 0),
(129, '39_bsms_order_notify', 0, 0),
(130, '40_bsms_order_notify', 0, 0),
(131, '3_add_news', 0, 0),
(132, '41_localizations_list', 0, 0),
(134, '22_baddinterface', 0, 0),
(135, '25_yourpaymentconnect', 0, 0),
(136, '7_admin_paymentmethods', 0, 0),
(137, '7_admin_addmod_pmethod', 0, 0),
(138, '7_admin_addmod_pmethod', 0, 0),
(144, '25_ppexpresscheckout_orderconfirmation', 0, 0),
(145, '25_ppexpresscheckout_orderconfirmation', 0, 0),
(149, '41_languages_list', 0, 0),
(150, '41_addmod_language', 0, 0),
(151, '25_ppexpresscheckout_orderconfirmation', 0, 0),
(152, '25_ppec_order_success', 0, 0),
(153, '25_googlecheckout_handler', 0, 0),
(154, '25_locals', 0, 0),
(155, '25_find_local', 0, 0),
(156, '41_add_language', 0, 0),
(157, '41_change_default_language', 0, 0),
(160, '48_themes_list', 0, 0),
(161, '48_theme_edit', 0, 0),
(162, '48_cpt_constructor', 0, 0),
(163, '48_theme_preview', 0, 0),
(164, '48_category_tree', 0, 0),
(165, '48_sales_report', 0, 0),
(166, '48_change_default_currency', 0, 0),
(168, '25_checkout', 0, 0),
(168, '25_ppexpresscheckout_button', 0, 0),
(169, '48_images_manager', 0, 0),
(170, '48_cpt_settings', 0, 0),
(171, '25_remind_password', 0, 0),
(175, '48_erase_products', 0, 0),
(176, '2_comparison_products', 0, 0),
(177, '1_search_simple', 0, 0),
(178, '48_checkout_replacement', 0, 0),
(179, '48_product_widgets', 0, 0),
(180, '25_product_widget', 0, 0),
(182, '48_product_lists', 0, 0),
(183, '1_auth', 0, 0),
(184, '1_logout', 0, 0),
(185, '25_htmlpage', 0, 0),
(186, '48_googleanalytics', 0, 0),
(187, '1_category_search_result', 0, 0),
(188, '48_sms_wa', 0, 0),
(189, '52_manage_coupons', 0, 0),
(190, '53_edit_order', 0, 0),
(191, '54_req_setting', 0, 0),
(192, '55_create_order', 0, 0),
(193, '54_check_gmapi_key', 0, 0),
(194, '25_googlecheckout_handler', 0, 0),
(196, '25_ppexpresscheckout_orderconfirmation', 0, 0),
(197, '25_ppec_order_success', 0, 0),
(198, '16_auxpage_1', 0, 0),
(200, '1_order_status', 0, 0),
(201, '48_google_sitemap', 0, 0),
(202, '48_formmanagment', 0, 0),
(203, '25_print_form', 0, 0),
(204, '25_htmlpage', 0, 0),
(205, '48_admin_print_form', 0, 0),
(206, '48_social_networks', 0, 0),
(207, '56_export_page', 0, 0),
(208, '56_exchange_1c', 0, 0),
(37, '25_googlecheckout_checkoutbutton', 0, 0),
(119, '25_googlecheckout_checkoutbutton', 0, 0),
(209, '25_googlecheckout_handler', 0, 0),
(37, '25_ppexpresscheckout_button', 0, 0),
(119, '25_ppexpresscheckout_button', 0, 0),
(210, '25_ppexpresscheckout_orderconfirmation', 0, 0),
(211, '25_ppec_order_success', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_htmlcodes`
--

DROP TABLE IF EXISTS `SC_htmlcodes`;
CREATE TABLE IF NOT EXISTS `SC_htmlcodes` (
  `key` varchar(20) NOT NULL default '',
  `title` varchar(30) NOT NULL default '',
  `code` text NOT NULL,
  PRIMARY KEY  (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_htmlcodes`
--

INSERT INTO `SC_htmlcodes` (`key`, `title`, `code`) VALUES
('2309usj8', 'appliance', '<div class="col_header lightbluebg">{lbl_news}</div>'),
('5sck5tch', 'appliance', '<a href="" class="apl_logo"><span class="apl_l1">YOUR</span><span class="apl_l2">COMPANY</span><span class="apl_l3">NAME</span></a>'),
('7055hfy8', 'appliance', '<div class="apl_slogan"><span class="apl_s1">New</span><span class="apl_s2">Appliance</span><span class="apl_s3">Shop</span></div>'),
('eiqt7wv3', 'appliance', '<div class="apl_lang">{lbl_str_language}:</div>'),
('gou00yo7', 'appliance', '<div class="col_header bluebg">{lbl_catalog}</div>'),
('j1zduv0p', 'appliance', '<div class="background1" style="padding: 10px; font-size: 120%; font-weight: bold;">{lbl_browse_by_category}</div>'),
('k5e43nju', 'appliance', '<div class="col_header bluebg">{lbl_poll}</div>'),
('857zn7vi', 'aqua', '<div class="news_header"><h3>{lbl_news}</h3></div>'),
('b5kq0gbj', 'aqua', '<div class="aqu_company"><a href=""><span class="light">Company</span><span class="dark">Name</span></a></div>'),
('hm1eo41h', 'aqua', '<div class="poll_header"><h3>{lbl_poll}</h3></div>'),
('hyh8mor9', 'aqua', '<span class="aqu_tel">(123) 555-1234\r\n</span>'),
('n026s0bl', 'aqua', '<div class="cat_header"><h3>{lbl_catalog}</h3></div>'),
('whofto05', 'aqua', '<h1 class="aqu_browse" class="mdr_main_header">{lbl_browse_by_category}:</h1>'),
('ww71q5hv', 'aqua', '<div class="lang_label">{lbl_str_language}:</div>'),
('1idtjfyd', 'city', '<div class="right_bg_pink"> </div>'),
('2j3zx20a', 'city', '<a href=""><span class="cty_l1">YOUR</span><span class="cty_l2">COMPANY</span><span class="cty_l3">NAME</span></a>'),
('bfe2ltrx', 'city', '<div class="right_bg_red"> </div>'),
('oil2iz4a', 'city', '<div class="left_bg_navy"> </div>'),
('4j8ucbo7', 'classic', '<div class="col_header">{lbl_catalog}</div>'),
('j4qyt14q', 'classic', '<div class="col_header">{lbl_str_language}</div>'),
('t72gcmgp', 'classic', '<h1 style="color: white">My Store</h1>'),
('uhyltsyy', 'classic', '<div class="col_header">{lbl_poll}</div>'),
('wst55wn7', 'classic', '<div class="col_header">{lbl_news}</div>'),
('1vxl4z1u', 'computer', '<div class="col_header">{lbl_poll}</div>'),
('4u9yjvxt', 'computer', '<div class="col_header">{lbl_news}</div>'),
('gnz1m6o2', 'computer', '<div class="col_header"></div>'),
('o9lzcmgm', 'computer', '<div class="col_header">&nbsp;</div>'),
('omphg9kb', 'computer', '<div class="col_header">{lbl_catalog}</div>'),
('0b6u45d4', 'default', '<div class="news_header"><h3>{lbl_news}</h3></div>'),
('3hmk7pem', 'default', '<label>{lbl_search}: </label>'),
('7tqa7d2d', 'default', '<div class="poll_header"><h3>{lbl_poll}</h3></div>'),
('8g1gd6h8', 'default', '<h1 class="companyname">My shop</h1>'),
('c7wj287f', 'default', '<div class="cat_header"><h3>{lbl_catalog}</h3></div>'),
('de9hsbax', 'default', '<h1 class="mdr_main_header">{lbl_browse_by_category}</h1>'),
('jymcwcmu', 'default', '<span class="tls_tel">(123) 555-1234\r\n</span>'),
('ncxrvx57', 'default', '<div class="lang_label">{lbl_str_language}:</div>'),
('njr3gga6', 'default', '<h1 class="welcome">{lbl_welcome_to_storefront} "{$smarty.const.CONF_SHOP_NAME}"</h1>\r\n'),
('p5kgoddr', 'default', '<span class="lang_label">{lbl_str_language}:</span>'),
('j65towo9', 'demo', '<div class="col_header pink">{lbl_poll}</div>'),
('rjxn8oml', 'demo', '<div class="col_header green">{lbl_news}</div>'),
('1f4a22e4', 'flowers', '<div class="flw_bl"></div>'),
('2tuzady5', 'flowers', '<div class="flw_br"></div><div class="flw_bl"></div><div class="flw_tl"></div><div class="flw_tr"></div>'),
('otcfncdy', 'flowers', '<div class="flw_company"><a href=""><span class="light">Company</span><span class="dark">Name</span></a></div>'),
('qt8jxz12', 'flowers', '<div class="lang_label">{lbl_str_language}:</div>'),
('r0lm25kj', 'flowers', '<div class="flw_company"><a href=""><span class="light">Company</span><span class="dark">Name</span></a></div>'),
('wbsbuve7', 'flowers', '<div class="flw_tr"></div>'),
('zigtewl3', 'flowers', '<div class="flw_tl"></div>'),
('1g2qude4', 'glamour', '<div class="col_header pink3bg r_header">{lbl_currency}</div>'),
('6ey329o1', 'glamour', '<div class="col_header pinkbg r_header">{lbl_str_language}</div>'),
('ea4wstp3', 'glamour', '<a href=""><span class="glr_l1">YOUR</span><span class="glr_l2">COMPANY</span><span class="glr_l3">NAME</span></a>'),
('fpneb9ck', 'glamour', '<div class="col_header pinkbg">{lbl_search}</div>'),
('jlwqn5pj', 'glamour', '<div class="col_header pink2bg r_header">{lbl_news}</div>'),
('ntj3gaot', 'glamour', '<div class="col_header purpurbg">{lbl_cataloge}</div>'),
('zlpc2hvu', 'glamour', '<div class="darkpinkbg"><div class="whiteborder"><div class="purpurfolder">&nbsp;</div></div></div>'),
('zyp0nrpq', 'glamour', '<div class="purpurbg"><div class="whiteborder"><div class="pinkfolder">&nbsp;</div></div></div>'),
('2vgnavg7', 'green', '<div class="cpt_custom_html"><a href=""><span class="grn_l1">YOUR</span><span class="grn_l2">COMPANY</span><span class="grn_l3">NAME</span></a></div>'),
('iek3eg75', 'green', '<div class="col_header">{lbl_news}</div>'),
('iy000qa3', 'green', '<div class="col_header">{lbl_catalog}</div>'),
('j1gq0b6t', 'green', '<div class="under_searchform"> </div>'),
('o5fwylp5', 'green', '<div class="col_header_dark">{lbl_poll}</div>'),
('uid5yfy7', 'green', '<a href=""><span class="grn_l1">YOUR</span><span class="grn_l2">COMPANY</span><span class="grn_l3">NAME</span></a>'),
('3vm6694u', 'modern', '<div class="col_header green">{lbl_str_search}</div>'),
('gyfor9rz', 'modern', '<a href="/"><span class="mdr_l1">Your</span><span class="mdr_l2">Company</span><span class="mdr_l3">Name</span></a>'),
('lch82oy0', 'modern', '<div class="col_header">{lbl_catalog}</div>'),
('n0oy9wvn', 'modern', '<div class="col_header green">{lbl_poll}</div>'),
('fjuuxwn8', 'ocean', '<div class="ocn_left_wh"><div class="col_header bluebg">{lbl_str_language}</div></div>'),
('ieabmzcx', 'ocean', '<div class="ocn_left_wh"><div class="col_header bluebg">{lbl_catalog}</div>'),
('ixo6s12z', 'ocean', '<div class="ocn_left_wh"><div class="col_header orangebg">{lbl_search}</div></div>'),
('lxbqae3k', 'ocean', '<div class="ocn_right_wh"><div class="ocn_rightrel"><div class="ocn_guy">  </div></div></div>'),
('np1b607u', 'ocean', '<div class="ocn_left_wh"><div class="col_header bluebg">{lbl_currency}</div></div>'),
('qigab725', 'ocean', '<a href="" class="ocn_logo"><span class="ocn_l1">YOUR</span><span class="ocn_l2">COMPANY</span><span class="ocn_l3">NAME</span></a>'),
('tcfisslq', 'ocean', '<div class="ocn_left_wh"><div class="col_header greenbg">{lbl_news}</div></div>'),
('w0c87mi6', 'ocean', '<div class="ocn_left_wh"><div class="col_header bluebg">{lbl_poll}</div></div>'),
('4e9wmn6l', 'photo', '<div class="pht_white"> <div class="pht-h-tl"></div> <div class="pht-h-tr"></div> <div class="pht-mainhead">{lbl_browse_by_category}</div></div>'),
('8fh7g6tl', 'photo', '<div class="col_header">{lbl_news}</div>'),
('dbjgyz5p', 'photo', '<div class="col_header">{lbl_search}</div>'),
('hzl3kfaj', 'photo', '<div class="col_header first">{lbl_catalog}</div>'),
('k9d8aq0c', 'photo', '<div class="col_header">{lbl_poll}</div>'),
('mw2w3xyf', 'photo', '<div class="pht_lang">{lbl_str_language}:</div>'),
('o2tr1rl5', 'photo', '<div class="pht_white"> <div class="pht-h-tl"></div> <div class="pht-h-tr"></div> <div class="pht-mainhead">{lbl_special_offers}</div></div>'),
('q11rslde', 'photo', '<div class="pht_main-pic"><div class="pht_promo_slogan">New <span>Special</span> Offers</div></div>'),
('0m8bt2r7', 'sale', '<span class="sale_tel">(123) 555-1234\r\n</span>'),
('7chazboj', 'sale', '<div class="red_header"><h3>{lbl_news}</h3></div>'),
('9yfp12we', 'sale', '<div class="red_header"><h3>{lbl_poll}</h3></div>'),
('n6fo06i1', 'sale', '<div class="lang_label">{lbl_str_language}:</div>'),
('uq5irul3', 'sale', '<div class="search_header"><label for="searchstring">{lbl_search}: </label></div>'),
('14fuvuhc', 'sci', '<div class="sci_box_right_b"></div>'),
('77i7m2cq', 'sci', '<div class="col_header">{lbl_catalog}</div>'),
('gcrhhlwd', 'sci', '<div class="sci_box_left_b"></div>'),
('kcb6pimm', 'sci', '<div class="col_header">{lbl_search}</div>'),
('s98230gp', 'sci', '<div class="col_header">{lbl_poll}</div>'),
('sgbhydje', 'sci', '<h1>Welcome</h1>'),
('umlp7cha', 'sci', '<a href=""><span class="sci_l1">Your</span><span class="sci_l2">Company</span><span class="sci_l3">Name</span></a>'),
('vubushuf', 'sci', '<div class="col_header">{lbl_news}</div>'),
('0a5i24lc', 'shopping', '<div class="col_header bluebg">{lbl_catalog}</div>'),
('1fkcmhu7', 'shopping', '<div class="col_header bluebg">{lbl_news}</div>'),
('fq5rhkq1', 'shopping', '<div class="col_header middlebluebg">{lbl_poll}</div>'),
('m2uhjlb1', 'shopping', '<div class="col_header pinkbg">{lbl_str_language}</div>'),
('pv7too9w', 'shopping', '<a href="" class="shp_logo"><span class="shp_l1">YOUR</span><span class="shp_l2">COMPANY</span><span class="shp_l3">NAME</span></a>'),
('3u28ilit', 'tableware', '<div class="news_header"><h3>{lbl_news}</h3></div>'),
('9kt3luhk', 'tableware', '<div class="lang_label">{lbl_str_language}:</div>'),
('cw9d10vf', 'tableware', '<div class="poll_header"><h3>{lbl_poll}</h3></div>'),
('htv7izvs', 'tableware', '<div class="cat_header"><h3>{lbl_catalog}</h3></div>'),
('pne5kpsa', 'tableware', '<div class="tbw_company_name"><a href=""><span class="light">Company</span><span class="dark">Name</span></a></div>'),
('wq7w3cb8', 'tableware', '<div class="tbw_company"><a href=""><span class="light">Company</span><span class="dark">Name</span></a></div>'),
('y46y0wg8', 'tableware', '<h2 class="tbw_category">{lbl_browse_by_category}</h2>'),
('blnq0vma', 'time', '<h1>{lbl_special_offers}</h1>'),
('pdhnxqq7', 'time', '<div class="tim_logo">Your Company</div>'),
('22wpr1g4', 'toys', '<h2>{lbl_browse_by_category}</h2>'),
('8ynhvcyo', 'toys', '<h2>{lbl_special_offers}</h2>'),
('bf3vztnb', 'toys', '<div class="tys_lang_label">{lbl_str_language}:</div>'),
('ch251y70', 'toys', '<div class="tys_ltop4"></div>'),
('w4a0p6wf', 'toys', '<div class="col_header tys_ltop2">{lbl_news}</div>'),
('x15293g0', 'toys', '<div class="col_header tys_ltop1">{lbl_catalog}</div>'),
('x7o1m64e', 'toys', '<div class="col_header tys_ltop3">{lbl_poll}</div>');

-- --------------------------------------------------------

--
-- Table structure for table `SC_interface_interfaces`
--

DROP TABLE IF EXISTS `SC_interface_interfaces`;
CREATE TABLE IF NOT EXISTS `SC_interface_interfaces` (
  `xInterfaceCaller` varchar(100) NOT NULL default '',
  `xInterfaceCalled` varchar(100) NOT NULL default '',
  `xPriority` smallint(5) unsigned NOT NULL default '0',
  KEY `xInterfaceCaller` (`xInterfaceCaller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_interface_interfaces`
--

INSERT INTO `SC_interface_interfaces` (`xInterfaceCaller`, `xInterfaceCalled`, `xPriority`) VALUES
('7_successful_ordering', '40_successful_ordering_notify', 0),
('7_successful_ordering', '39_successful_ordering_notify', 0),
('51_cpt_connector', '51_custom_html', 0),
('51_cpt_connector', '1_category_tree', 0),
('51_cpt_connector', '1_maincontent', 0),
('51_cpt_connector', '1_shopping_cart_info', 0),
('51_cpt_connector', '3_news_short_list', 0),
('51_cpt_connector', '4_survey', 0),
('51_cpt_connector', '1_logo', 0),
('51_cpt_connector', '1_root_categories', 0),
('51_cpt_connector', '1_product_search', 0),
('51_cpt_connector', '1_currency_selection', 0),
('51_cpt_connector', '1_language_selection', 0),
('51_cpt_connector', '1_product_images', 0),
('51_cpt_connector', '1_product_category_info', 0),
('51_cpt_connector', '1_product_details_request', 0),
('51_cpt_connector', '1_product_related_products', 0),
('51_cpt_connector', '1_product_add2cart_button', 0),
('51_cpt_connector', '1_product_description', 0),
('51_cpt_connector', '1_product_discuss_link', 0),
('51_cpt_connector', '1_product_rate_form', 0),
('51_cpt_connector', '1_product_name', 0),
('51_cpt_connector', '1_product_price', 0),
('51_cpt_connector', '16_auxpages_navigation', 0),
('51_cpt_connector', '1_divisions_navigation', 0),
('51_cpt_connector', '51_product_lists', 0),
('51_cpt_connector', '1_product_params_fixed', 10),
('51_cpt_connector', '1_product_params_selectable', 10),
('51_cpt_connector', '51_tag_cloud', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_language`
--

DROP TABLE IF EXISTS `SC_language`;
CREATE TABLE IF NOT EXISTS `SC_language` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `enabled` tinyint(1) unsigned NOT NULL default '0',
  `thumbnail` varchar(50) NOT NULL default '',
  `iso2` varchar(2) default NULL,
  `priority` int(11) unsigned NOT NULL default '0',
  `direction` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `enabled` (`enabled`),
  KEY `iso2` (`iso2`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `SC_language`
--

INSERT INTO `SC_language` (`id`, `name`, `enabled`, `thumbnail`, `iso2`, `priority`, `direction`) VALUES
(1, 'Русский', 1, '1.gif', 'ru', 2, 0),
(2, 'English', 1, '2.gif', 'en', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_linkexchange_categories`
--

DROP TABLE IF EXISTS `SC_linkexchange_categories`;
CREATE TABLE IF NOT EXISTS `SC_linkexchange_categories` (
  `le_cID` int(11) NOT NULL auto_increment,
  `le_cName` varchar(100) default NULL,
  `le_cSortOrder` int(11) default NULL,
  PRIMARY KEY  (`le_cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_linkexchange_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_linkexchange_links`
--

DROP TABLE IF EXISTS `SC_linkexchange_links`;
CREATE TABLE IF NOT EXISTS `SC_linkexchange_links` (
  `le_lID` int(11) NOT NULL auto_increment,
  `le_lText` varchar(255) default NULL,
  `le_lURL` varchar(255) default NULL,
  `le_lCategoryID` int(11) default NULL,
  `le_lVerified` datetime default NULL,
  PRIMARY KEY  (`le_lID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SC_linkexchange_links`
--

INSERT INTO `SC_linkexchange_links` (`le_lID`, `le_lText`, `le_lURL`, `le_lCategoryID`, `le_lVerified`) VALUES
(1, 'WebAsyst Shop-Script', 'http://www.shop-script.ru', 0, '2008-04-18 14:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `SC_local`
--

DROP TABLE IF EXISTS `SC_local`;
CREATE TABLE IF NOT EXISTS `SC_local` (
  `id` varchar(255) NOT NULL default '',
  `lang_id` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  `group` enum('hidden','front','back','general') NOT NULL default 'hidden',
  `subgroup` varchar(3) default NULL,
  PRIMARY KEY  (`id`,`lang_id`),
  KEY `lang_id` (`lang_id`),
  KEY `id` (`id`),
  KEY `group` (`group`),
  KEY `subgroup` (`subgroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_local`
--

INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('auxp_lbl_enabled', 1, 'Включен', 'back', 'gen'),
('auxp_lbl_priority', 1, 'Приоритет', 'back', 'gen'),
('btn_add', 1, 'Добавить', 'general', 'gen'),
('btn_apply', 1, 'Применить', 'general', 'gen'),
('btn_cancel', 1, 'Отмена', 'general', 'gen'),
('btn_close', 1, 'Закрыть', 'general', 'gen'),
('btn_collapse', 1, 'Свернуть', 'back', 'gen'),
('btn_delete', 1, 'Удалить', 'general', 'gen'),
('btn_down', 1, 'Вниз', 'back', 'gen'),
('btn_edit', 1, 'Редактировать', 'general', 'gen'),
('btn_expand', 1, 'Развернуть', 'back', 'gen'),
('btn_goto_division', 1, 'Перейти в раздел', 'back', 'dvn'),
('btn_hide_tags', 1, 'Спрятать теги', 'back', 'gen'),
('btn_login', 1, 'Вход', 'general', 'gen'),
('btn_ok', 1, 'OK', 'general', 'gen'),
('btn_save', 1, 'Сохранить', 'general', 'gen'),
('btn_show_tags', 1, 'Показать теги', 'back', 'gen'),
('btn_sort_asc', 1, 'Сортировать по возрастающей', 'back', 'gen'),
('btn_sort_desc', 1, 'Сортировать по убывающей', 'back', 'gen'),
('btn_up', 1, 'Наверх', 'back', 'gen'),
('btn_upload', 1, 'Загрузить', 'general', 'gen'),
('cfg_allow_comparison_in_simple_search_description', 1, 'Включите, чтобы разрешить покупателям сравнивать товары при простом поиске (по имени и описанию)', 'back', 'cfg'),
('cfg_allow_comparison_in_simple_search_title', 1, 'Разрешить сравнение продуктов в результатах простого поиска', 'back', 'cfg'),
('cfg_allow_ordering_description', 1, 'Выключите эту опцию, если вы хотите отключить возможность оформления заказов и добавления товаров в корзину', 'back', 'cfg'),
('cfg_allow_ordering_title', 1, 'Возможность добавления товаров в корзину и оформления заказов', 'back', 'cfg'),
('cfg_catpict_size_description', 1, 'При загрузке логотипа категории его размер автоматически уменьшается. Укажите в пикселях размер, к которому нужно приводить загружаемое изображение, если его размер превышает указанный.', 'back', 'cfg'),
('cfg_catpict_size_title', 1, 'Размер изображения (логотипа) категории', 'back', 'cfg'),
('cfg_check_stock_description', 1, 'В случае, если опция выключена, информация о наличии товаров на складе не будет обновляться и проверяться', 'back', 'cfg'),
('cfg_check_stock_title', 1, 'Вести учет товаров на складе', 'back', 'cfg'),
('cfg_columns_per_page_description', 1, 'при просмотре категорий и результатов поиска', 'back', 'cfg'),
('cfg_columns_per_page_title', 1, 'Количество столбцов при показе товаров на странице', 'back', 'cfg'),
('cfg_completed_order_status_description', 1, 'Выберите статус заказа', 'back', 'cfg'),
('cfg_completed_order_status_title', 1, 'Статус завершенного (выполненного) заказа', 'back', 'cfg'),
('cfg_confirmation_code_description', 1, 'При отправке данных через форму в вашем магазине (обратная связь, регистрация, оформление заказов) запрашивать у пользователя ввод случайного числа, изображенного на рисунке. Настоятельно рекомендуем включить, чтобы злоумышленники не могли отправить данные в формы вашего магазина через сторонние скрипты.', 'back', 'cfg'),
('cfg_confirmation_code_title', 1, 'Защита от отправки данных в магазин через сторонние скрипты (captcha)', 'back', 'cfg'),
('cfg_country_description', 1, 'Страна, в которой находится Ваш магазин (необходимо для расчета стоимости доставки)', 'back', 'cfg'),
('cfg_country_title', 1, 'Страна', 'back', 'cfg'),
('cfg_cpt_news_number_description', 1, 'Пожалуйста, укажите, сколько последних новостей показывать в столбце с аннотациями', 'back', 'cfg'),
('cfg_cpt_news_number_title', 1, 'Количество записей в кратком содержании блога', 'back', 'cfg'),
('cfg_customer_actiovation_description', 1, 'Если включить эту опцию, покупателю после регистрации будет отправлен код активации аккаунта, который он должен будет ввести для того, чтобы начать пользоваться аккаунтом в вашем магазине.', 'back', 'cfg'),
('cfg_customer_actiovation_title', 1, 'Требовать активацию аккаунта покупателем после регистрации', 'back', 'cfg'),
('cfg_date_format_description', 1, 'Выберите формат отображения даты', 'back', 'cfg'),
('cfg_date_format_title', 1, 'Формат даты', 'back', 'cfg'),
('cfg_default_currency_description', 1, 'cтрана по умолчанию в форме регистрации покупателя', 'back', 'cfg'),
('cfg_default_currency_title', 1, 'Страна по умолчанию', 'back', 'cfg'),
('cfg_default_customer_group_description', 1, 'группа пользователей, к которой будет автоматически отнесен каждый новый покупатель после регистрации', 'back', 'cfg'),
('cfg_default_customer_group_title', 1, 'Группа по умолчанию', 'back', 'cfg'),
('cfg_default_tax_class_description', 1, 'класс налогов, устанавливаемый по умолчанию для всех товаров, которые вы добавляете в магазин', 'back', 'cfg'),
('cfg_default_tax_class_title', 1, 'Класс налогов по умолчанию', 'back', 'cfg'),
('cfg_default_title_description', 1, 'Текст, который вы введете здесь, будет добавлен в качестве заголовка (TITLE) главной страницы магазина (витрина)', 'back', 'cfg'),
('cfg_default_title_title', 1, 'Заголовок главной страницы магазина', 'back', 'cfg'),
('cfg_exact_product_balance_description', 1, 'Если включена, покупатель увидит точное количество продукта на складе (число). Если выключена, пользователю будет только показано, есть продукт на складе или нет.', 'back', 'cfg'),
('cfg_exact_product_balance_title', 1, 'Показывать пользователю точный остаток товаров на складе', 'back', 'cfg'),
('cfg_first_weekday_description', 1, 'Понедельник или воскресенье', 'back', 'cfg'),
('cfg_first_weekday_title', 1, 'Первый день недели', 'back', 'cfg'),
('cfg_force_smarty_description', 1, 'Настоятельно рекомендуется оставить включенным при изменении дизайна вашего магазина (когда вы изменяете файлы шаблонов); после того, как редизайн будет закончен, выключите эту опцию (это увеличит скорость работы магазина)', 'back', 'cfg'),
('cfg_force_smarty_title', 1, 'Принудительное перекомпиллирование шаблонов Smarty', 'back', 'cfg'),
('cfg_fully_expand_categories_in_admin_description', 1, 'Рекомендуется выключить эту опцию, если количество категорий в вашем магазине превышает 100. Это увеличит скорость загрузки форм (окон) редактора.', 'back', 'cfg'),
('cfg_fully_expand_categories_in_admin_title', 1, 'Полностью "разворачивать" список категорий в окнах редактирования то', 'back', 'cfg'),
('cfg_ga_account_number_description', 1, 'Введите номер профиля в Google Analytics. Например, 123456-1 или UA-123456-1.', 'back', 'cfg'),
('cfg_ga_account_number_title', 1, 'Номер аккаунта', 'back', 'cfg'),
('cfg_ga_enable_description', 1, '&nbsp;', 'back', 'cfg'),
('cfg_ga_enable_title', 1, 'Включить интеграцию с Google Analytics', 'back', 'cfg'),
('cfg_ga_usd_description', 1, 'Суммы заказов, которые передаются в Google Analytics в момент их оформления в долларах США. Укажите валюту вашего интернет-магазина, которая представляет доллары США. Это необходимо для правильного пересчета сумм заказов.', 'back', 'cfg'),
('cfg_ga_usd_title', 1, 'Валюта "Доллары США"', 'back', 'cfg'),
('cfg_general_email_description', 1, 'Этот электронный адрес будет использоваться как обратный адрес (From и Reply-to) в электронных письмах, которые магазин отправляет вашим покупателям (например, уведомления о заказах). На этот адрес будут приходить сообщения, отправляемые покупателями через формы обратной связи.', 'back', 'cfg'),
('cfg_general_email_title', 1, 'Основной email-адрес магазина', 'back', 'cfg'),
('cfg_grp_cart_ordering', 1, 'Корзина и заказы', 'back', 'cfg'),
('cfg_grp_catalog', 1, 'Каталог', 'back', 'cfg'),
('cfg_grp_customers', 1, 'Покупатели', 'back', 'cfg'),
('cfg_grp_general', 1, 'Настройки магазина', 'back', 'cfg'),
('cfg_homepage_metadescription_description', 1, 'Текст, который вы введете здесь, будет добавлен в качестве META Description главной страницы магазина (витрина).', 'back', 'cfg'),
('cfg_homepage_metadescription_title', 1, 'META Description главной страницы', 'back', 'cfg'),
('cfg_homepage_metakeywords_description', 1, 'Текст, который вы введете здесь, будет добавлен в качестве META Keywords главной страницы магазина (витрина).', 'back', 'cfg'),
('cfg_homepage_metakeywords_title', 1, 'META Keywords главной страницы', 'back', 'cfg'),
('cfg_how_toshow_shoppingcart_description', 1, 'Выберите как покупатели вашего магазина будут просматривать страницу корзины с покупками', 'back', 'cfg'),
('cfg_how_toshow_shoppingcart_title', 1, 'Как показывать корзину покупок', 'back', 'cfg'),
('cfg_min_order_amount_description', 1, 'Возможность оформления заказов, сумма которых меньше указанной, будет заблокирована.<br>Укажите 0, чтобы отключить ограничение на минимальный заказ', 'back', 'cfg'),
('cfg_min_order_amount_title', 1, 'Минимальная сумма заказа (в текущей валюте)', 'back', 'cfg'),
('cfg_new_order_status_description', 1, 'Все новые заказы будут автоматически приобретать этот статус', 'back', 'cfg'),
('cfg_new_order_status_title', 1, 'Статус нового заказа', 'back', 'cfg'),
('cfg_orders_email_description', 1, 'Введите электронный адрес, на который вы будете получать уведомления о новых заказах.', 'back', 'cfg'),
('cfg_orders_email_title', 1, 'Email для отправки уведомлений о заказах', 'back', 'cfg'),
('cfg_prdpict_standard_size_description', 1, 'При загрузке изображений продуктов их размер автоматически уменьшается. Укажите в пикселях размер, к которому нужно приводить загружаемые изображения, если их размер превышает указанные.', 'back', 'cfg'),
('pgn_category_search', 1, 'Результаты поиска в категории', 'general', 'gen'),
('cfg_prdpict_standard_size_title', 1, 'Размер стандартного изображения продукта', 'back', 'cfg'),
('cfg_prdpict_thumbnail_size_description', 1, 'При загрузке изображений продуктов их размер автоматически уменьшается. Укажите в пикселях размер, к которому нужно приводить загружаемые изображения, если их размер превышает указанные.', 'back', 'cfg'),
('cfg_prdpict_thumbnail_size_title', 1, 'Размер уменьшенного изображения продукта (preview)', 'back', 'cfg'),
('cfg_products_per_page_description', 1, 'Максимальное число продуктов, которое показывается на одной странице в пользовательской части магазина (в результатах поиска и при просмотре продуктов внутри категории)', 'back', 'cfg'),
('cfg_products_per_page_title', 1, 'Количество продуктов на одной странице', 'back', 'cfg'),
('cfg_product_sort_description', 1, 'Предоставлять пользователям возможность сортировки товарных позиций в одной товарной категории по цене, наименованию, рейтингу', 'back', 'cfg'),
('cfg_product_sort_title', 1, 'Сортировка товаров', 'back', 'cfg'),
('cfg_quick_checkout_description', 1, 'Выключите, если вы хотите, чтобы заказы могли оформлять только пользователи, зарегистрированные в вашем магазине.', 'back', 'cfg'),
('cfg_quick_checkout_title', 1, 'Оформление заказов без регистрации разрешено', 'back', 'cfg'),
('cfg_request_billing_address_description', 1, 'Включите эту опцию, если адрес плательщика может отличаться от адреса доставки заказа, и вы хотите запрашивать у покупателя адрес выставления счета отдельно от адреса доставки заказа', 'back', 'cfg'),
('cfg_request_billing_address_title', 1, 'Запрашивать у покупателя адрес выставления счета (адрес плательщика)', 'back', 'cfg'),
('cfg_secure_checkout_description', 1, 'Включите, если вы хотите, чтобы оформление заказов всегда производилось в защищенном режиме SSL. Если ваш магазин работает по адресу на домене webasyst.net (например, yourcompany.webasyst.net), то рекомендуем включить эту опцию, потому что для этого доменного имени SSL-сертификат уже предустановлен. Если магазин работает на доменном имени второго уровня (например, www.yourcompany.ru), то для того, чтобы заказ происходил в защищенном режиме, вы должны приобрести и установить SSL-сертификат для этого доменного имени. По этому вопросу вы можете обратиться к регистратору доменного имени.', 'back', 'cfg'),
('cfg_secure_checkout_title', 1, 'Оформление заказа производится в защищенном режиме (SSL)', 'back', 'cfg'),
('cfg_shipping_tax_description', 1, 'Если на стоимость доставки необходимо вычислять налог, пожалуйста, укажите класс налогов, по которому будет вычисляться ставка налога.', 'back', 'cfg'),
('cfg_shipping_tax_title', 1, 'Доставка облагается налогом', 'back', 'cfg'),
('cfg_store_name_description', 1, 'Введенное значение будет добавляться в TITLE всех страниц магазина, а также в сообщения покупателям (например, в уведомления о заказах)', 'back', 'cfg'),
('cfg_store_name_title', 1, 'Название магазина', 'back', 'cfg'),
('cfg_store_url_description', 1, 'Укажите полный адрес вашего магазина вместе с http://, без index.php, адрес должен заканчиваться символом /. Например, http://www.yourshop.ru/shop/<br>Если адрес указан неверно, магазин может работать некорректно!', 'back', 'cfg'),
('cfg_store_url_title', 1, 'Полный адрес магазина в Интернет', 'back', 'cfg'),
('cfg_update_gcv_description', 1, 'Рекомендуется выключить эту опцию при количестве товаров более 10000 (десяти тысяч)', 'back', 'cfg'),
('cfg_update_gcv_title', 1, 'Автоматически обновлять количество товаров на складе', 'back', 'cfg'),
('cfg_weight_unit_description', 1, 'Выберите единицу измерения веса, в которой вы указываете вес товаров в магазине.', 'back', 'cfg'),
('cfg_weight_unit_title', 1, 'Единица измерения веса', 'back', 'cfg'),
('cfg_region_description', 1, 'Область, в которой находится Ваш магазин (необходимо для расчета стоимости доставки)', 'back', 'cfg'),
('cfg_region_title', 1, 'Область', 'back', 'cfg'),
('checkout_already_have_account', 1, 'У вас уже есть аккаунт в %SHOPNAME%?', 'front', 'gen'),
('checkout_as_newcustomer', 1, 'Оформление заказа от имени нового покупателя', 'general', 'gen'),
('checkout_email_exists', 1, 'Пользователь с электроадресом <strong>[email]</strong> уже зарегистрирован', 'front', 'gen'),
('checkout_next_step', 1, 'Далее', 'front', 'gen'),
('checkout_permanent_registering', 1, 'Я хочу зарегистрировать постоянный аккаунт в %SHOPNAME%, чтобы повторно не вводить информацию при будущих заказах', 'front', 'gen'),
('checkout_yourinfo_header', 1, 'Ваш адрес', 'front', 'gen'),
('cpts_nosettings', 1, 'У компонента нет настроек', 'back', 'thm'),
('cpts_settings_updated', 1, 'Настройки компонента обновлены.<br /><br />Изменения вступят в силу ТОЛЬКО после того, как вы сохраните весь шаблон и затем обновите страницу пользовательской части магазина в браузере (F5).', 'back', 'thm'),
('cpt_bin', 1, 'Корзина', 'general', 'cpt'),
('cpt_lbl_auxpages_navigation', 1, 'Информационные страницы', 'general', 'cpt'),
('cpt_lbl_divisions_navigation', 1, 'Разделы', 'general', 'cpt'),
('cpt_lbl_horizontal', 1, 'Горизонтальный', 'general', 'cpt'),
('cpt_lbl_product_add2cart_button', 1, 'Кнопка "Добавить в корзину"', 'general', 'cpt'),
('cpt_lbl_product_description', 1, 'Описание продукта', 'general', 'cpt'),
('cpt_lbl_product_details_request', 1, 'Форма запроса дополнительной информации о продукте', 'general', 'cpt'),
('cpt_lbl_product_discuss_link', 1, 'Отзывы', 'general', 'cpt'),
('cpt_lbl_product_images', 1, 'Изображения продукта', 'general', 'cpt'),
('cpt_lbl_product_name', 1, 'Название продукта', 'general', 'cpt'),
('cpt_lbl_product_price', 1, 'Цена', 'general', 'cpt'),
('cpt_lbl_product_rate_form', 1, 'Оценка продукта', 'general', 'cpt'),
('cpt_lbl_product_related_products', 1, 'Связанные продукты', 'general', 'cpt'),
('cpt_lbl_selectauxpages', 1, 'Выберите страницы', 'general', 'cpt'),
('cpt_lbl_selectaux_type_all', 1, 'Все страницы', 'general', 'cpt'),
('cpt_lbl_selectaux_type_selected', 1, 'Выберите страницы', 'general', 'cpt'),
('cpt_lbl_selectdivisions', 1, 'Выберите разделы', 'general', 'cpt'),
('cpt_lbl_vertical', 1, 'Вертикальный', 'general', 'cpt'),
('cpt_lbl_view', 1, 'Выберите вид', 'general', 'cpt'),
('curr_add_currency', 1, 'Добавить валюту', 'back', 'cur'),
('curr_change_default_currency', 1, 'изменить', 'back', 'cur'),
('curr_change_default_curr_important', 1, 'ВАЖНО: При изменении валюты по умолчанию все цены на продукты вашего интернет-магазина будут пересчитаны на новую валюту согласно указанному курсу.', 'back', 'cur'),
('curr_curr_output_example', 1, 'Пример', 'back', 'cur'),
('curr_dec_placed', 1, 'Количество дробных знаков', 'back', 'cur'),
('curr_dec_symbol', 1, 'Разделитель целой и дробной части', 'back', 'cur'),
('curr_default_currency', 1, 'Валюта по умолчанию', 'back', 'cur'),
('curr_enter_positive_rate', 1, 'Введите положительное число', 'back', 'cur'),
('curr_exchange_rate', 1, 'Курс', 'back', 'cur'),
('curr_nothing', 1, 'ничего', 'back', 'cur'),
('curr_other_currencies', 1, 'Остальные валюты', 'back', 'cur'),
('curr_output_format', 1, 'Шаблон', 'back', 'cur'),
('curr_return_to_currencies', 1, 'Вернуться к списку валют', 'back', 'cur'),
('curr_select_new_default_currency', 1, 'Выберите валюту по умолчанию', 'back', 'cur'),
('curr_space', 1, 'пробел', 'back', 'cur'),
('curr_thousands_delimiter', 1, 'Разделитель групп разрядов', 'back', 'cur'),
('deinstall', 1, 'Удалить', 'general', 'gen'),
('disable', 1, 'Отключить', 'general', 'gen'),
('disabled_short', 1, 'Выкл.', 'general', 'gen'),
('div_connected_interfaces', 1, 'Подключенные интерфейсы', 'back', 'dvn'),
('div_cross_key', 1, 'Ключ перекрестного раздела', 'back', 'dvn'),
('div_enable_fld', 1, 'Включен', 'back', 'dvn'),
('div_etxrafld_name', 1, 'Название', 'back', 'dvn'),
('div_extrafld_key', 1, 'Ключ', 'back', 'dvn'),
('div_extra_field', 1, 'Дополнительное поле', 'back', 'dvn'),
('div_id_fld', 1, 'Номер раздела', 'back', 'dvn'),
('div_key_fld', 1, 'Ключ', 'back', 'dvn'),
('div_name_fld', 1, 'Название', 'back', 'dvn'),
('div_pid_fld', 1, 'Номер родительского раздела', 'back', 'dvn'),
('div_priority_fld', 1, 'Приоритет', 'back', 'dvn'),
('div_template_fld', 1, 'Шаблон', 'back', 'dvn'),
('div_ukey_fld', 1, 'Уникальный ключ', 'back', 'dvn'),
('enable', 1, 'Включить', 'general', 'gen'),
('enabled_short', 1, 'вкл.', 'general', 'gen'),
('forbidden_page', 1, 'У вас нет прав для доступа к этому экрану', 'general', 'gen'),
('imm_description', 1, 'В этом разделе вы можете загрузить изображения для вашего интернет-магазина.<br />\r\nПоддерживается возможность загрузки следующих типов изображений: GIF, JPG, BMP, PNG.', 'back', 'imm'),
('imm_image_deleted', 1, 'Изображение удалено', 'back', 'imm'),
('imm_image_uploaded', 1, 'Изображение загружено', 'back', 'imm'),
('imm_img_delete_confirmation', 1, 'Удалить файл с сервера?', 'back', 'imm'),
('imm_notimage', 1, 'Разрешена только загрузка изображений следующих типов: GIF, JPG, BMP, PNG', 'back', 'imm'),
('int_heritable', 1, 'Наследуемый', 'back', 'dvn'),
('int_priority', 1, 'Приоритет', 'back', 'dvn'),
('lang_english', 1, 'Английский', 'back', 'gen'),
('lang_russian', 1, 'Русский', 'back', 'gen'),
('lgr_back', 1, 'Администрирование', 'back', 'gen'),
('lgr_front', 1, 'Витрина', 'back', 'gen'),
('lgr_general', 1, 'Общие', 'back', 'gen'),
('link_exchange', 1, 'Обмен ссылками', 'front', 'gen'),
('loc_add_local', 1, 'Добавить новую строку', 'back', 'loc'),
('loc_btn_addlang', 1, 'Добавить язык', 'back', 'loc'),
('loc_btn_changedeflang', 1, 'Изменить основной язык', 'back', 'loc'),
('loc_couldnt_delete_deflang', 1, 'Вы не можете удалить основной язык.', 'back', 'loc'),
('loc_current_default_language', 1, 'Текущий', 'back', 'loc'),
('loc_default_lang', 1, 'основной', 'back', 'loc'),
('loc_del_confirmation', 1, 'Вы уверены, что хотите удалить запись?', 'back', 'loc'),
('loc_edit_locals', 1, 'Редактировать перевод', 'back', 'loc'),
('loc_empty_loc_defvalue', 1, 'Пожалуйста, введите перевод для основного языка', 'back', 'loc'),
('loc_empty_loc_id', 1, 'Пожалуйста, введите ID локализации.', 'back', 'loc'),
('loc_error_file_upload', 1, 'Произошла ошибка при загрузке файла.', 'back', 'loc'),
('loc_find', 1, 'Найти', 'back', 'loc'),
('loc_flag', 1, 'Флаг', 'back', 'loc'),
('loc_highlight', 1, 'Выделить', 'back', 'loc'),
('loc_highlight_nottranslated', 1, 'Подсветить непереведенные строки', 'back', 'loc'),
('loc_iso2_reserved', 1, 'Этот ISO2 код языка уже используется. Измените код и повторите попытку сохранения', 'back', 'loc'),
('loc_langdel_confirmation', 1, 'Вы уверены, что хотите удалить язык? Действие необратимо.', 'back', 'loc'),
('loc_langicon_upload', 1, 'Загрузить', 'back', 'loc'),
('loc_langiso2_descr', 1, '2 символа', 'back', 'loc'),
('loc_langorder_saved', 1, 'Порядок сортировки был сохранен', 'back', 'loc'),
('loc_language', 1, 'Язык', 'back', 'loc'),
('loc_languages', 1, 'Список языков', 'back', 'loc'),
('loc_languages_added', 1, 'Язык добавлен.', 'back', 'loc'),
('loc_lang_delete', 1, 'Удалить', 'back', 'loc'),
('loc_lang_enable', 1, 'Включить', 'back', 'loc'),
('loc_lang_enabled', 1, 'Включен', 'back', 'loc'),
('loc_lang_icon', 1, 'Иконка (<a href="http://www.famfamfam.com/lab/icons/flags/" target="_blank">загрузить красивые иконки флагов</a>)', 'back', 'loc'),
('loc_lang_id', 1, 'ID', 'back', 'loc'),
('loc_lang_iso2', 1, 'Код', 'back', 'loc'),
('loc_lang_name', 1, 'Название', 'back', 'loc'),
('loc_local_defvalue', 1, 'Основной', 'back', 'loc'),
('loc_local_id', 1, 'ID', 'back', 'loc'),
('loc_local_subgroup', 1, 'Группа', 'back', 'loc'),
('loc_local_value', 1, 'Перевод', 'back', 'loc'),
('loc_local_was_deleted', 1, 'Строка была удалена.', 'back', 'loc'),
('loc_msg_lang_removed', 1, 'Выбранный вами язык был удален.', 'back', 'loc'),
('loc_new_default_language', 1, 'Новый', 'back', 'loc'),
('loc_notsupported_filetype', 1, 'Данный тип файлов не поддерживается.', 'back', 'loc'),
('loc_nottranslated', 1, 'Не переведенные', 'back', 'loc'),
('loc_no_searchresults', 1, 'Строки локализации не найдены.', 'back', 'loc'),
('loc_q_remove_lang', 1, 'Удалить', 'back', 'loc'),
('loc_q_remove_local', 1, 'Удалить строку', 'back', 'loc'),
('loc_required_fields', 1, '* Обязательные поля', 'back', 'loc'),
('loc_reserved_loc_id', 1, 'Строка с указанным ID уже существует. Измените ID и попробуйте еще раз.', 'back', 'loc'),
('loc_return_to_localslist', 1, 'Вернуться к редактированию строк', 'back', 'loc'),
('loc_search_results', 1, 'Результаты поиска', 'back', 'loc'),
('loc_settings', 1, 'Настройки', 'back', 'loc'),
('loc_show_empty_translations', 1, 'Показать остальные языки', 'back', 'loc'),
('lsgr_components', 1, 'Компоненты', 'back', 'gen'),
('lsgr_configuration', 1, 'Настройки', 'back', 'gen'),
('lsgr_currencies', 1, 'Валюты', 'back', 'gen'),
('lsgr_division', 1, 'Раздел', 'back', 'gen'),
('lsgr_general', 1, 'Общие', 'back', 'gen'),
('lsgr_immanager', 1, 'Загрузка изображений', 'back', 'gen'),
('lsgr_localization', 1, 'Локализация', 'back', 'gen'),
('lsgr_modules', 1, 'Модули', 'back', 'gen'),
('lsgr_other', 1, 'Остальные', 'back', 'gen'),
('lsgr_products', 1, 'Продукты', 'back', 'gen'),
('lsgr_reports', 1, 'Отчеты', 'back', 'gen'),
('lsgr_themes', 1, 'Темы', 'back', 'gen'),
('mdl_enabled', 1, 'Включен', 'back', 'mdl'),
('mdl_selected_configs', 1, 'Отмеченные конфигурации', 'back', 'mdl'),
('msg_dragable', 1, 'Перетащите для сортировки', 'back', 'gen'),
('msg_error_diskusage', 1, 'Недостаточно дискового пространства. Вы можете увеличить допустимое дисковое пространство в контрольной панели аккаунта ВебАсист (если у вас нет доступа к контрольной панели, обратитесь к администратору аккаунта).', 'general', 'gen'),
('msg_error_filecopy', 1, 'Не удалось скопировать файл', 'general', 'gen'),
('msg_error_filemoveupload', 1, 'Не удалось переместить загруженный файл', 'general', 'gen'),
('msg_error_fileremove', 1, 'Не удалось удалить файл', 'general', 'gen'),
('msg_field_required', 1, 'Поле `%s` обязательно для заполнения', 'general', 'gen'),
('msg_fill_required_fields', 1, 'Пожалуйста, заполните обязательные поля.', 'back', 'gen'),
('msg_information_save', 1, 'Информация сохранена!', 'back', 'gen'),
('msg_no_data', 1, 'Нет данных', 'general', 'gen'),
('msg_unsaved_changes', 1, 'Если вы покинете эту страницу, ваши изменения будут утеряны.', 'hidden', 'gen'),
('news', 1, 'Блог / Новости', 'general', 'gen'),
('order_saved', 1, 'Порядок сортировки был сохранен', 'back', 'gen'),
('payment', 1, 'Оплата', 'general', 'gen'),
('pgn_ap_1', 1, 'О магазине', 'general', 'gen'),
('pgn_addlanguage', 1, 'Добавить язык', 'back', 'gen'),
('pgn_addmod_language', 1, 'Настройки языка', 'back', 'gen'),
('pgn_addmod_product', 1, 'Настройки товара', 'back', 'gen'),
('pgn_address_book', 1, 'Адресная книга', 'general', 'cmr'),
('pgn_add_address', 1, 'Добавить адрес', 'general', 'cmr'),
('pgn_add_language', 1, 'Добавить язык', 'back', 'gen'),
('pgn_add_news', 1, 'Новое сообщение', 'back', 'gen'),
('pgn_affiliate_balance', 1, 'Баланс', 'general', 'gen'),
('pgn_affiliate_program', 1, 'Партнерская программа', 'general', 'gen'),
('pgn_affiliate_settings', 1, 'Настройки', 'general', 'gen'),
('pgn_affilite_program', 1, 'Партнерская программа', 'back', 'gen'),
('pgn_affpr_earn_money', 1, 'Как заработать деньги на партнерской программе', 'general', 'gen'),
('pgn_affpr_payments_history', 1, 'История выплат', 'general', 'gen'),
('pgn_authorization', 1, 'Авторизация', 'general', 'gen'),
('pgn_auxpages', 1, 'Информационные страницы', 'general', 'gen'),
('pgn_auxpages_admin', 1, 'Управление дополнительными страницами', 'general', 'gen'),
('pgn_aux_pages', 1, 'Информационные страницы', 'back', 'gen'),
('pgn_cart', 1, 'Корзина', 'general', 'gen'),
('pgn_catalog', 1, 'Продукты', 'back', 'gen'),
('pgn_categories_reports', 1, 'Отчет по категориям', 'back', 'gen'),
('pgn_category_tree', 1, 'Категории', 'general', 'gen'),
('pgn_change_address', 1, 'Изменить адрес', 'general', 'gen'),
('pgn_change_default_currency', 1, 'Изменить валюту по умолчанию', 'general', 'gen'),
('pgn_change_deflang', 1, 'Выбрать основной язык', 'back', 'gen'),
('pgn_contact_info', 1, 'Контактная информация', 'general', 'gen'),
('pgn_countries', 1, 'Страны', 'back', 'gen'),
('pgn_cpt_constructor', 1, 'Конструктор компонентов', 'general', 'gen'),
('pgn_cpt_settings', 1, 'Настройки компонента', 'back', 'gen'),
('pgn_currency_types', 1, 'Валюты', 'back', 'gen'),
('pgn_custgroups', 1, 'Группы покупателей', 'back', 'gen'),
('pgn_customers', 1, 'Покупатели', 'back', 'gen'),
('pgn_customer_activation', 1, 'Активация пользователя', 'general', 'gen'),
('pgn_customer_fields', 1, 'Форма регистрации и оформления заказов', 'back', 'gen'),
('pgn_delivery', 1, 'Доставка', 'general', 'gen'),
('pgn_discounts', 1, 'Скидки', 'back', 'gen'),
('pgn_discuss_product', 1, 'Обсуждение продукта', 'general', 'gen'),
('pgn_divisions', 1, 'Разделы', 'back', 'gen'),
('pgn_divsettings', 1, 'Настройки раздела', 'back', 'gen'),
('pgn_edit_address', 1, 'Редактирование адреса', 'general', 'gen'),
('pgn_edit_locals', 1, 'Редактирование строк локализации', 'back', 'gen'),
('pgn_export2googlebase', 1, 'Google Base', 'back', 'gen'),
('pgn_export_products', 1, 'Экспорт', 'back', 'gen'),
('pgn_feedback', 1, 'Обратная связь', 'general', 'gen'),
('pgn_find_local', 1, 'Найти строку локализации', 'back', 'gen'),
('pgn_general_settings', 1, 'Настройки', 'back', 'gen'),
('pgn_home', 1, 'Витрина', 'general', 'gen'),
('pgn_images_manager', 1, 'Загрузка изображений', 'back', 'gen'),
('pgn_import_products', 1, 'Импорт', 'back', 'gen'),
('pgn_invoice', 1, 'Инвойс', 'general', 'gen'),
('pgn_languages', 1, 'Языки и перевод', 'back', 'gen'),
('pgn_linkexchange', 1, 'Обмен ссылками', 'general', 'gen'),
('pgn_link_exchange_admin', 1, 'Обмен ссылками', 'back', 'gen'),
('pgn_login_log', 1, 'Журнал авторизации пользователей', 'back', 'gen'),
('pgn_mainpage', 1, 'Главная страница', 'general', 'gen'),
('pgn_modules', 1, 'Инструменты', 'back', 'gen'),
('pgn_my_account', 1, 'Мой счет', 'general', 'gen'),
('pgn_news', 1, 'Блог / Новости', 'general', 'gen'),
('pgn_newsletter_subscribers', 1, 'Подписчики на новости', 'back', 'gen'),
('pgn_news_administration', 1, 'Блог / Новости', 'back', 'gen'),
('pgn_orders', 1, 'Заказы', 'back', 'gen'),
('pgn_order_confirmation', 1, 'Подтверждение заказа', 'general', 'gen'),
('pgn_order_detailed', 1, 'Информация о заказе', 'general', 'gen'),
('pgn_order_history', 1, 'История заказов', 'general', 'cmr'),
('pgn_order_processing', 1, 'Оформление заказа', 'general', 'gen'),
('pgn_order_statuses', 1, 'Статусы заказов', 'back', 'gen'),
('pgn_payment', 1, 'Способ оплаты', 'general', 'gen'),
('pgn_payment_methods', 1, 'Оплата', 'back', 'gen'),
('pgn_payment_modules', 1, 'Модули оплаты', 'back', 'gen'),
('pgn_presentation', 1, 'Дизайн', 'back', 'gen'),
('pgn_pricelist', 1, 'Прайс-лист', 'general', 'gen'),
('pgn_print_version', 1, 'Версия для печати', 'general', 'gen'),
('pgn_product', 1, 'Продукт', 'general', 'gen'),
('pgn_products_categories', 1, 'Продукты и категории', 'back', 'gen'),
('pgn_products_reports', 1, 'Отчёт по продуктам', 'back', 'gen'),
('pgn_product_customparams', 1, 'Доп. характеристики', 'back', 'gen'),
('pgn_product_reviews', 1, 'Отзывы', 'general', 'gen'),
('pgn_register', 1, 'Зарегистрироваться', 'general', 'gen'),
('pgn_registration', 1, 'Регистрация', 'general', 'gen'),
('pgn_remind_password', 1, 'Напомнить пароль', 'general', 'gen'),
('pgn_reports', 1, 'Отчеты', 'back', 'gen'),
('pgn_sales_report', 1, 'Отчет о продажах', 'general', 'gen'),
('pgn_settings', 1, 'Настройки', 'back', 'gen'),
('pgn_shipping_methods', 1, 'Доставка', 'back', 'gen'),
('pgn_shipping_modules', 1, 'Модули доставки', 'back', 'gen'),
('pgn_sms_notifications', 1, 'SMS', 'back', 'gen'),
('pgn_successful_registration', 1, 'Успешная регистрация', 'general', 'gen'),
('pgn_survey_administration', 1, 'Голосование', 'back', 'gen'),
('pgn_taxes', 1, 'Налоги', 'back', 'gen'),
('pgn_themes_list', 1, 'Редактор дизайна', 'general', 'gen'),
('pgn_theme_edit', 1, 'Редактирование темы', 'general', 'gen'),
('pgn_transaction_result', 1, 'Результат транзакции', 'general', 'gen'),
('pgn_user_activation', 1, 'Активация пользователя', 'general', 'gen'),
('pgn_visits_log', 1, 'Журнал посещений', 'general', 'gen'),
('pgn_yandex_market', 1, 'Яндекс.Маркет', 'back', 'gen'),
('pgn_regions', 1, 'Области', 'back', 'gen'),
('prdset_btn_delete_pict', 1, 'Удалить', 'back', 'prd'),
('prdset_btn_hide_products', 1, 'Убрать список', 'back', 'prd'),
('prdset_btn_next_products', 1, 'Вперед', 'back', 'prd'),
('prdset_btn_prev_products', 1, 'Назад', 'back', 'prd'),
('prdset_btn_setdefault_pict', 1, 'Сделать основной', 'back', 'prd'),
('prdset_freeshipping_description', 1, 'раз', 'back', 'prd'),
('prdset_lnk_choose_parentcategory', 1, 'Выбрать', 'back', 'prd'),
('prdset_lnk_to_product_list', 1, 'Список продуктов', 'back', 'prd'),
('prdset_lnk_upload', 1, 'Загрузить', 'back', 'prd'),
('prdset_msg_choosen_relatedproduct', 1, 'Добавлен %s', 'back', 'prd'),
('prdset_msg_confirm_pict_delete', 1, 'Удалить изображение продукта?', 'back', 'prd'),
('prdset_msg_fill_productname', 1, 'Введите название продукта', 'back', 'prd'),
('prdset_msg_loading_products', 1, 'Загружаю продукты', 'back', 'prd'),
('prdset_msg_onlyimages', 1, 'Вы можете загружать только изображения', 'back', 'prd'),
('prdset_str_category', 1, 'Категория', 'back', 'prd'),
('prdset_str_extraoptions', 1, 'Параметры', 'back', 'prd'),
('prdset_str_images', 1, 'Изображения', 'back', 'prd'),
('prdset_str_invisible', 1, 'Скрытый', 'back', 'prd'),
('prdset_str_meta', 1, 'Мета', 'back', 'prd'),
('prdset_str_metadescription', 1, 'Описание', 'back', 'prd'),
('prdset_str_metakeywords', 1, 'Ключевые слова', 'back', 'prd'),
('prdset_str_noappendcategories', 1, 'Дополнительные категории не выбраны', 'back', 'prd'),
('prdset_str_ordering_available', 1, 'Можно купить', 'back', 'prd'),
('prdset_str_tags', 1, 'Тэги (разделитель - запятая)', 'back', 'prd'),
('prdset_tab_advanced', 1, 'Дополнительно', 'back', 'prd'),
('prdset_tab_simple', 1, 'Основное', 'back', 'prd'),
('prep_invisible_in_storefront', 1, '(не представлен в пользовательской части)', 'back', 'rep'),
('prep_invisible_products', 1, '[products] продуктов не представлены в пользовательской части интернет-магазина.', 'back', 'rep'),
('prep_notinstock_products', 1, '[products] продуктов с нулевым остатком на складе!', 'back', 'rep'),
('prep_total_products', 1, 'В вашем интернет-магазине [products] продуктов, распределенных по [categories] категориям.', 'back', 'rep'),
('shipping', 1, 'Доставка', 'general', 'gen'),
('srep_allorders', 1, 'Все заказы', 'back', 'rep'),
('srep_compare', 1, 'Сравнить', 'back', 'rep'),
('srep_data_range', 1, 'Выборка данных за', 'back', 'rep'),
('srep_delivered_orders', 1, 'Доставленные заказы', 'back', 'rep'),
('srep_last_month', 1, 'Предыдущий месяц', 'back', 'rep'),
('srep_last_week', 1, 'Предыдущая неделя', 'back', 'rep'),
('srep_last_year', 1, 'Предыдущий год', 'back', 'rep'),
('srep_noorders', 1, 'Нет заказов', 'back', 'rep'),
('srep_outofstock', 1, 'Нет на складе', 'back', 'rep'),
('srep_sreport_alltime', 1, 'Продажи за весь период работы магазина', 'back', 'rep'),
('srep_sreport_thismonth', 1, 'Динамика продаж', 'back', 'rep'),
('srep_this_month', 1, 'Текущий месяц', 'back', 'rep'),
('srep_this_p_month', 1, 'Текущий и предыдущий месяцы', 'back', 'rep'),
('srep_this_p_week', 1, 'Текущая и предыдущая недели', 'back', 'rep'),
('srep_this_p_year', 1, 'Текущий и предыдущий годы', 'back', 'rep'),
('srep_this_week', 1, 'Текущая неделя', 'back', 'rep'),
('srep_this_year', 1, 'Текущий год', 'back', 'rep'),
('stg_fade_layout', 1, 'Затемнять страницу и показывать поверх (рекомендуется)', 'back', 'cfg'),
('stg_new_page_cart', 1, 'Как отдельную страницу магазина', 'back', 'cfg'),
('str_all', 1, 'все', 'general', 'gen'),
('str_show_rows', 1, 'Кол-во записей', 'general', 'gen'),
('thm_advanced_tab', 1, 'Редактировать HTML-код', 'back', 'thm'),
('thm_btn_embed', 1, 'Добавить в шаблон', 'hidden', 'thm'),
('thm_btn_save_tpl', 1, 'Сохранить шаблон', 'general', 'thm'),
('thm_cpt_embed_btn', 1, 'Вставить', 'back', 'thm'),
('thm_css_link', 1, 'Стили (CSS)', 'back', 'thm'),
('thm_designeditor_descr_advanced', 1, 'Редактирование HTML-кода страницы, которую вы видите в простом режиме редактирования дизайна(конструкторе).<br />Используйте панель справа для добавления новых компонент в ваш магазин.<br />Смотрите более подробную информацию в нашем <a href="http://www.webasyst.ru/support/shop/manual.html#Redaktor-dizaina" target="_blank">описании работы редактора дизайна</a> и <a href="http://www.shop-script.ru/demo/design-editor-tutorial.html" target="_blank">описании примера пошагового изменения дизайна</a>.', 'back', 'gen'),
('thm_designeditor_descr_css', 1, 'Редактирование стилей (CSS) вашего магазина. Здесь вы можете изменить используемые шрифты, некоторое цветовое оформление и вид других элементов дизайна.<br />Смотрите <a href="http://www.webasyst.ru/shop/design-editor-guidelines.html" target="_blank">подробное описание работы редактора дизайна</a>.', 'back', 'thm'),
('thm_designeditor_descr_head', 1, 'Редактирование HTML-кода, который помещается между тэгами &lt;head&gt; ... &lt;/head&gt; всех страниц пользовательской части вашего интернет-магазина.', 'back', 'thm'),
('thm_designeditor_descr_simple', 1, '<b>Перетаскивайте компоненты магазина</b>, обозначенные красной пунктирной линией, по странице с помощью мышки. Вы можете перемещать каждый компонент между контейнерами (областями, обозначенными серой пунктирной линией).<br /><b>Двойной клик по компоненту</b> для редактирования его настроек.<br />Используйте колонку справа для того, чтобы добавлять новые компоненты.<br />Смотрите более подробную информацию в нашем <a href="http://www.shop-script.ru/demo/design-editor-tutorial.html" target="_blank">описании примера пошагового изменения дизайна</a>.', 'back', 'gen'),
('thm_exit', 1, 'К списку тем', 'back', 'thm'),
('thm_fill_all_fields', 1, 'Пожалуйста, заполните все поля', 'back', 'thm'),
('thm_generallayout_link', 1, 'Основная разметка', 'back', 'thm'),
('thm_head_link', 1, 'Head', 'back', 'thm'),
('thm_homepage_link', 1, 'Витрина', 'back', 'thm'),
('thm_htmlcode_key_exists', 1, 'Пожалуйста, выберите другой идентификатор для кода', 'back', 'thm'),
('thm_lnk_setforstorefront', 1, 'Сделать текущей', 'back', 'thm'),
('thm_msg_confirm_reset', 1, 'Вы уверены, что хотите сбросить все изменения, произведенные с этой темой? Действие необратимо.', 'back', 'thm'),
('thm_msg_cpt_settings_saved', 1, 'Настройки компонента сохранены', 'back', 'thm'),
('thm_msg_error_upload', 1, 'Ошибка загрузки файла', 'general', 'gen'),
('thm_msg_logo_exists', 1, 'Файл с таким именем уже существует. Пожалуйста, загрузите другой файл.', 'general', 'gen'),
('thm_msg_logo_only_imgs', 1, 'Вы можете загрузить только изображение', 'general', 'gen'),
('thm_msg_successful_reset', 1, 'Тема возвращена к первоначальному состоянию', 'back', 'thm'),
('thm_msg_theme_applied', 1, 'Сохранено', 'back', 'thm'),
('thm_notheme_msg', 1, 'Тема не найдена', 'back', 'thm'),
('thm_preview_link', 1, 'Посмотреть тему', 'back', 'thm'),
('thm_productinfo_link', 1, 'Продукт', 'back', 'thm'),
('thm_reset_link', 1, 'Сбросить все изменения (вернуть к первоначальному виду)', 'back', 'thm'),
('thm_simple_tab', 1, 'Конструктор (WYSIWYG)', 'back', 'thm'),
('thm_str_author', 1, 'Автор', 'back', 'thm'),
('thm_str_current_theme', 1, 'Текущая тема', 'back', 'thm'),
('thm_str_last_customized', 1, 'последний раз изменялась', 'back', 'thm'),
('thm_str_other_themes', 1, 'Другие темы', 'back', 'thm'),
('thm_template_saved_msg', 1, 'Шаблон успешно сохранен', 'hidden', 'thm'),
('survey', 1, 'Голосование', 'front', 'gen'),
('affp_amount_percent', 1, 'Процент от суммы заказа привлеченного клиента:', 'back', 'aff'),
('affp_commissions_calculate', 1, 'Расчет комиссионных вознаграждений', 'back', 'aff'),
('affp_edit_commission', 1, 'Редактирование комиссионного начисления', 'back', 'aff'),
('affp_edit_payment', 1, 'Редактирование выплаты пользователю', 'back', 'aff'),
('affp_enable_program', 1, 'Включить партнерскую программу', 'back', 'aff'),
('affp_msg_error_date_format', 1, 'Неверный формат даты', 'back', 'aff'),
('affp_new_commission', 1, 'Новое вознаграждение', 'back', 'aff'),
('affp_new_payment', 1, 'Новая выплата', 'back', 'aff');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('affp_submit_new_commission', 1, 'Добавить начисление комиссионных', 'back', 'aff'),
('affp_submit_new_payment', 1, 'Добавить выплату', 'back', 'aff'),
('affp_user_settings_control', 1, 'Управление настройками пользователя', 'back', 'aff'),
('affr_email_new_commission_ctrl', 1, 'Отправлять пользователям уведомления о начислении новых комиссионных по электронной почте', 'back', 'aff'),
('affr_email_new_payment_ctrl', 1, 'Отправлять пользователям уведомления о новых выплатах по электронной почте', 'back', 'aff'),
('blog_emailposttosubscribers', 1, 'Разослать эту новость подписчикам', 'back', 'nws'),
('blog_err_empty_texttoemail', 1, 'Заполните текст для отправки подписчикам', 'back', 'nws'),
('blog_err_empty_titletext', 1, 'Заголовок или текст записи должны быть заполнены', 'back', 'nws'),
('blog_msg_picture_deleted', 1, 'Изображение, прикрепленное к записи, удалено', 'back', 'nws'),
('blog_msg_post_added', 1, 'Сообщение опубликовано', 'back', 'nws'),
('blog_msg_post_deleted', 1, 'Запись удалена', 'back', 'nws'),
('blog_msg_post_emailed_to_subscribers', 1, 'Запись была отправлена подписчикам', 'back', 'nws'),
('blog_post_body', 1, 'Запись', 'back', 'nws'),
('blog_post_list', 1, 'Блог / Новости', 'back', 'nws'),
('blog_post_newsletter_body', 1, 'Текст для отправки подписчикам', 'back', 'nws'),
('blog_post_title', 1, 'Заголовок', 'back', 'nws'),
('blog_postdate', 1, 'Дата', 'back', 'nws'),
('blog_str_html', 1, 'HTML', 'back', 'nws'),
('blog_str_not_html', 1, 'не HTML', 'back', 'nws'),
('blog_writepost', 1, 'Написать сообщение', 'back', 'nws'),
('cntr_all_countries', 1, 'Все страны', 'back', 'cnr'),
('cntr_all_other_countries', 1, 'Все остальные страны', 'back', 'cnr'),
('cntr_countries', 1, 'Страны', 'back', 'cnr'),
('cntr_country_iso2', 1, 'Код страны ISO2', 'back', 'cnr'),
('cntr_country_iso3', 1, 'Код страны ISO3', 'back', 'cnr'),
('rgn_all_other_regions', 1, 'Все остальные области', 'back', 'cnr'),
('rgn_all_regions', 1, 'Все области', 'back', 'cnr'),
('rgn_region_code', 1, 'код', 'back', 'cnr'),
('rgn_region_name', 1, 'Область', 'back', 'cnr'),
('rgn_regions', 1, 'Области', 'back', 'cnr'),
('curr_currency_exchangerate', 1, 'Курс1', 'back', 'cur'),
('curr_currency_id', 1, 'Обозначение в магазине1', 'back', 'cur'),
('curr_currency_name', 1, 'Название валюты', 'back', 'cur'),
('curr_currency_types', 1, 'Валюты1', 'back', 'cur'),
('curr_iso3', 1, 'Код валюты ISO 3', 'back', 'cur'),
('msg_customers_exported_to_file', 1, 'Пользователи успешно экспортированы в файл', 'back', 'cmr'),
('regform_address_configurator', 1, 'Настройка формы ввода адреса', 'back', 'cmr'),
('regform_address_configurator_country_hint', 1, 'В случае, если список стран не пуст (Настройки -> Страны), "Страна" - обязательное поле в форме ввода адреса.<br>Если же список стран пуст, то в форме ввода адреса это поле будет отсутствовать.', 'back', 'cmr'),
('regform_customfields_configurator', 1, 'Произвольные поля в форме регистрации', 'back', 'cmr'),
('regform_not_requested', 1, 'Не запрашивается', 'back', 'cmr'),
('regform_optional_field', 1, 'Необязательно для заполнения', 'back', 'cmr'),
('usr_account_confirm_activate', 1, 'Активировать учетную запись пользователя [email]?', 'back', 'cmr'),
('usr_custinfo_custom_field_name', 1, 'Название поля', 'back', 'cmr'),
('usr_custinfo_custom_field_required', 1, 'Обязательно для заполнения', 'back', 'cmr'),
('usr_custinfo_fields_descr', 1, 'В этом разделе вы можете определить, какую информацию должен вводить пользователь в форме регистрации (например, номер телефона/факса, ИНН, ближайшее метро и пр.), а также определить, какие поля являются обязательными для заполнения, а какие - нет.', 'back', 'cmr'),
('usr_custinfo_group_discount', 1, 'Скидка, %', 'general', 'cmr'),
('usr_custinfo_regtime', 1, 'Время регистрации', 'back', 'cmr'),
('usr_customer_search_back_to_form', 1, 'вернуться к форме поиска покупателей', 'back', 'cmr'),
('usr_customer_search_descr', 1, 'Пожалуйста, введите критерии поиска покупателя.<br> Для того, чтобы просмотреть всех покупателей, оставьте все поля пустыми (незаполненные поля не учитываются).', 'back', 'cmr'),
('usr_export_userlist_to_csv', 1, 'Экспортировать этих пользователей в CSV-файл (MS Excel, OpenOffice)', 'back', 'gen'),
('dscnt_disabled', 1, 'Скидки отключены', 'back', 'dsc'),
('dscnt_method_cust_group', 1, 'Скидка группы пользователя', 'back', 'dsc'),
('dscnt_method_cust_group_plus_order_amount', 1, 'Скидка вычисляется как сумма скидки группы пользователя и скидки от суммы заказа', 'back', 'dsc'),
('dscnt_method_max_of_cust_group_and_order_amount', 1, 'Скидка вычисляется как максимальная из скидки группы пользователя и скидки от суммы заказа', 'back', 'dsc'),
('dscnt_method_order_amount', 1, 'Скидка вычисляется исходя из общей стоимости заказа пользователя (критерий задается ниже)', 'back', 'dsc'),
('dscnt_method_order_amount_criteria', 1, 'Расчет скидки исходя из общей стоимости заказа пользователя:', 'back', 'dsc'),
('dscnt_method_order_amount_criteria_descr', 1, 'В следующей таблице вы можете задать критерий расчета скидки на заказ в зависимости от общей стоимости заказа. Укажите в левой колонке какая скидка будет действовать, если стоимость заказа привысит значение, указанное в правом столбце.', 'back', 'dsc'),
('err_dc_code_exists', 1, 'Купон с таким кодом уже существует', 'back', 'dsc'),
('dscnt_order_amount', 1, 'Сумма заказа (в основной валюте)', 'back', 'dsc'),
('dscnt_order_amount_percent_value', 1, 'Действующая скидка, если стоимость заказа выше указанной левее суммы, %', 'back', 'gen'),
('dscnt_select_calculation_method', 1, 'Выберите метод, по которому будут рассчитываться скидки при оформлении заказов:', 'back', 'dsc'),
('err_couldnt_delete_order_status', 1, 'Невозможно удалить статус, так как существуют заказы, находящиеся в этом статусе', 'back', 'err'),
('err_new_and_complete_statuses_match', 1, 'Статус нового заказа не может совпадать со статусом завершенного заказа', 'back', 'err'),
('err_percent_is_out_of_0_100', 1, 'Укажите значение в процентах от 0 до 100', 'back', 'err'),
('err_should_have_atleast_2statuses', 1, 'Необходимо добавить хотя бы два статуса заказов, соответствующих новому и выполненному заказам', 'back', 'err'),
('btn_addcategory', 1, 'Добавить категорию', 'back', 'gen'),
('btn_addproduct', 1, 'Добавить продукт', 'back', 'gen'),
('cfg_config_no_options', 1, 'Нет настроек', 'back', 'gen'),
('cfg_config_option', 1, 'Настройка', 'back', 'gen'),
('cfg_country_undefined', 1, 'Страна не определена', 'back', 'gen'),
('cfg_ordr_status_undefined', 1, 'Статус не определён', 'back', 'gen'),
('msg_days', 1, 'дней', 'general', 'gen'),
('msg_safemode_info_blocked', 1, 'Заблокировано к показу в защищенном режиме', 'back', 'gen'),
('msg_safemode_warning', 1, 'Включен безопасный режим. Действие не выполнено.', 'back', 'gen'),
('msg_select_country_to_see_regions', 1, 'Для добавления областей нужно добавить хотя бы одну страну', 'back', 'gen'),
('msg_update_successful', 1, 'Обновление прошло успешно', 'back', 'gen'),
('pgn_categories_products', 1, 'Категории и продукты', 'back', 'gen'),
('pgn_customer_groups', 1, 'Группы пользователей', 'back', 'gen'),
('pgn_customer_groups_descr', 1, 'В этом разделе вы можете определить группы пользователей вашего магазина и установить скидки индивидуально для каждой группы.<br>Обратите внимание на то, что скидки будут рассчитываться для пользователей, когда вы установите соответствующую опцию в разделе "Скидки".', 'back', 'gen'),
('pgn_customer_search', 1, 'Поиск покупателей', 'back', 'gen'),
('pgn_customers_and_orders', 1, 'Заказы и покупатели', 'back', 'gen'),
('pgn_email_subscribers', 1, 'Подписчики на новости', 'back', 'gen'),
('pgn_export_to_google_base', 1, 'Google Base', 'back', 'gen'),
('pgn_infopages', 1, 'Информационные страницы', 'back', 'gen'),
('pgn_link_exchange', 1, 'Обмен ссылками', 'back', 'gen'),
('pgn_new_orders', 1, 'Справочник заказов', 'back', 'gen'),
('pgn_prdexport_csv', 1, 'Экспорт продуктов в CSV (Excel, 1C)', 'back', 'gen'),
('pgn_prdimport_csv', 1, 'Импорт продуктов из CSV (Excel, 1C)', 'back', 'gen'),
('pgn_product_options', 1, 'Дополнительные характеристики продуктов', 'back', 'gen'),
('pgn_product_reports', 1, 'Отчёт по продуктам', 'back', 'gen'),
('pgn_sms', 1, 'SMS-уведомления', 'back', 'gen'),
('pgn_special_offers', 1, 'Спец-предложения', 'back', 'gen'),
('pgn_synchronize_tools', 1, 'Синхронизация баз данных', 'back', 'gen'),
('pgn_taxes_define_rates', 1, 'Определить ставки для класса налогов', 'back', 'gen'),
('pgn_voting', 1, 'Голосование', 'back', 'gen'),
('prdspecial_add_special_offer', 1, 'Добавить в список спец-предложений', 'back', 'prd'),
('str_addition', 1, 'ДОПОЛНИТЕЛЬНО?', 'back', 'gen'),
('str_admin_gotofrontend', 1, 'Открыть витрину магазина', 'back', 'gen'),
('str_admin_title', 1, 'Администрирование', 'back', 'gen'),
('str_admin_welcome', 1, '<p><font class=big>Добро пожаловать в режим администрирования!</font><p>Используйте меню для доступа к разделам администраторской части.', 'back', 'gen'),
('str_file_is_not_uploaded', 1, 'Файл не загружен', 'back', 'gen'),
('str_file_is_uploaded', 1, 'Файл загружен', 'back', 'gen'),
('str_group', 1, 'Группа', 'back', 'gen'),
('str_image_not_uploaded', 1, 'Изображение не загружено', 'back', 'gen'),
('str_regions_notdefined', 1, 'Не определено ни одной области для этой страны', 'back', 'gen'),
('str_return_to_messages', 1, 'к списку всех сообщений', 'back', 'gen'),
('str_sort_order', 1, 'Сортировка', 'back', 'gen'),
('dbsync_sync_desc', 1, 'В этом разделе вы можете синхронизировать содержимое баз данных между\r\nнесколькими магазинами.<br>\r\nК примеру, экспортировать базу продуктов и категорий из одного магазина, и заменить ей базу другого магазина.', 'back', 'ine'),
('dbsync_sync_header', 1, 'Импортировать базу из SQL-файла<br>(используйте файлы, созданные Shop-Script)<br>\r\n	<b>Все текущее содержимое базы данных продуктов и категорий будет удалено!</b>', 'back', 'ine'),
('gglbase_btn_create_feed', 1, 'Создать файл для Google Base', 'back', 'ine'),
('gglbase_description_hint1', 1, 'Пожалуйста, укажите, какое описание должно экспортироваться в файл для Google Base:', 'back', 'ine'),
('gglbase_description_hint2', 1, 'ВАЖНО: Описания продуктов не должны содержать HTML-тэгов. В противном случае файл не будет принят системой Google Base.', 'back', 'ine'),
('gglbase_err_cant_create_file', 1, 'Ошибка при создании файла для Google Base (temp/froogle.txt)', 'back', 'ine'),
('gglbase_err_select_currency', 1, 'Не указан тип валюты', 'back', 'ine'),
('gglbase_msg_exported_products', 1, 'Продукты были успешно экспортированы в файл для Google Base', 'back', 'ine'),
('gglbase_pricing_description', 1, 'Цены на продукты, которые экспортируются в файл для Google Base, указываются в долларах США (USD).<br>Выберите валюту доллары США в следующем списке (необходимо для правильного экспорта цен на продукты).', 'back', 'ine'),
('gglbase_usd_currency_type', 1, 'Доллары США', 'back', 'ine'),
('prdexport_btn_export_db_to_sql_file', 1, 'Экспортировать базу в SQL-файл', 'back', 'ine'),
('prdexport_csv_btn_export', 1, 'Экспортировать продукты', 'back', 'ine'),
('prdexport_csv_descr', 1, 'В этом разделе вы можете <strong>экспортировать продукты магазина в файл CSV</strong> (Comma Separated Values; файл с разделителями-запятыми).<br>Экспортированный файл может быть загружен для редактирования в Microsoft Excel или <a href="http://ru.openoffice.org/" target="_blank">OpenOffice</a>, а также импортирован в ваш интернет-магазин в разделе "Импорт".<p>Пожалуйста, выберите разделитель в CSV файле, категории, которые вы хотели бы экспортировать, и нажмите кнопку "Экспортировать продукты".<br />\r\nИнструменты экспорта и импорта продуктов удобно использовать, например, для создания резервной копии всех продуктов магазина, или же, для быстрого редактирования продуктов в одной таблице с помощью Microsoft Excel или OpenOffice.', 'back', 'ine'),
('prdexport_csv_msg_successful', 1, 'Выбранные категории и продукты были экспортированы в CSV файл:', 'back', 'ine'),
('prdexport_msg_db_exported_to', 1, 'База успешно экспортирована в файл', 'back', 'ine'),
('prdimport_csv_add_column_as_new_option', 1, ' - добавить эти данные как дополнительную характеристику продукта -', 'back', 'ine'),
('prdimport_csv_browse_for_file', 1, 'Выберите CSV файл, из которого вы хотели бы загрузить данные', 'back', 'ine'),
('prdimport_csv_clear_db', 1, 'Удалить все продукты, категории и настройки продуктов', 'back', 'ine'),
('prdimport_csv_clear_db_desc', 1, 'Полностью очистить базу данных категорий и продуктов (в этом случае можно не указывать путь к файлу CSV).', 'back', 'ine'),
('prdimport_csv_delimeter_semicolon', 1, 'Точка с запятой', 'back', 'ine'),
('prdimport_csv_desc1', 1, 'В этом разделе вы можете <strong>импортировать продукты в ваш магазин из файла CSV</strong> (Comma Separated Values; файл с разделителями-запятыми). CSV файлы вы можете создать и редактировать с помощью Microsoft Excel или <a href="http://ru.openoffice.org/" target="_blank">OpenOffice</a>.<br /><br />Например, если вы хотите импортировать продукты в интернет-магазин из вашего прайс-листа в Excel, нужно сохранить прайс-лист в формате CSV (пункт в меню "Сохранить как..." - затем выберите CSV в выборе формата файла).<br />Далее, выберите сохраненный файл в следующей форме, и укажите кодировку файла (наиболее вероятно, это будет кодировка cp1251).<br /><strong>ВАЖНО: Система может производить загрузку данных только из CSV файлов только с определенной организацией (структурой) строк и столбцов.</strong> Это значит, что вам необходимо привести ваш прайс-лист к такой структуре для того, чтобы загрузить файл.<br />Посмотрите <a href="http://www.webasyst.ru/support/shop/manual.html#import-kataloga-tovarov-iz-csv" target="_blank">подробное описание структуры файла</a>.<br /><br />Также в этом разделе вы можете импортировать продукты из <strong>файла со списком номенклатуры, экспортированного из 1С: Предприятие</strong>.<br />Различие только в разделителе файла: в файле Excel - это точка с запятой (по умолчанию), а в списке номенклатуры 1С - табуляция.<br />Файл со списком номенклатуры можно получить в программе 1С: Предприятие в разделе "Список номенклатуры". Файл должен быть сохранен в формате "Текстовый файл (с разделителями-табуляциями)".', 'back', 'gen'),
('prdimport_csv_desc2', 1, 'В закачанном файле обнаружены следующие колонки.<br>Соотнесите каждую из этих колонок с полем в базе данных.<br>В левой колонке указаны названия столбцов.', 'back', 'ine'),
('prdimport_csv_desc3', 1, 'Если продукт есть и в базе, и в файле (ищется совпадение по колонке идентификации), то обновить информацию о нем.<br>Если же продукт найден только в файле, то добавить его в базу данных.<br>Иначе (если продукт есть только в базе данных) оставить его без изменений.', 'back', 'ine'),
('prdimport_csv_ignorecolumn', 1, ' - пропустить этот столбец -', 'back', 'ine'),
('prdimport_csv_update_db', 1, 'Обновить (добавить новые продукты и обновить информацию о существующих)', 'back', 'ine'),
('prdimport_csvl_delimeter', 1, 'Разделитель в импортируемом CSV файле:<br>(задается в настройках Windows;<br>по умолчанию - точка с запятой).<br>В случае списка номенклатуры 1С<br>выберите разделитель "Табуляция".', 'back', 'ine'),
('prdimport_csvl_delimeter_comma', 1, 'Запятая', 'back', 'ine'),
('prdimport_csvl_delimeter_tab', 1, 'Табуляция', 'back', 'ine'),
('prdimport_primary_column', 1, 'Колонка идентификации: ', 'back', 'ine'),
('prdimport_primary_column_desc', 1, '(укажите колонку, значение в которой однозначно идентифицирует продукт)<br><b>Будьте внимательны при ее выборе - неверный выбор может привести к непредсказуемым последствиям!</b>', 'back', 'ine'),
('prdimport_update_gc_value_button', 1, 'Обновить значение количества продуктов для категорий', 'back', 'ine'),
('infpg_addnewpage', 1, 'Добавить страницу', 'back', 'inf'),
('infpg_page_ref', 1, 'HTML-код ссылки, который необходимо поместить в шаблон магазина', 'back', 'inf'),
('infpg_page_text', 1, 'Текст', 'back', 'inf'),
('infpg_page_text_type', 1, 'Тип страницы', 'back', 'inf'),
('infpg_pagename', 1, 'Имя страницы', 'back', 'inf'),
('infpg_pages_description', 1, 'Ниже представлены все информационные страницы вашего интернет-магазина (страницы со статическим содержимым), например, "О магазине", "Доставка", "Оплата" и т.п.<br />\r\nЕсли вы добавите новую страницу, она автоматически появится в пользовательской части вашего интернет-магазина (в случае, если вы не удалили компоненту, которая отображает список всех информационных страниц).<br />\r\nДля изменения порядка сортировки страниц просто перетаскивайте их с помощью мышки.', 'back', 'inf'),
('le_all_categories', 1, 'Все разделы', 'general', 'lke'),
('le_btn_add_new_category', 1, 'Добавить новый раздел', 'back', 'lke'),
('le_btn_approve', 1, 'Отметить как &quot;проверено&quot;', 'back', 'lke'),
('le_btn_decline', 1, 'Отметить как &quot;не проверено&quot;', 'back', 'lke'),
('le_err_link_category_exists', 1, 'Такая категория уже существует!', 'back', 'lke'),
('le_link_not_verified', 1, 'не проверена', 'back', 'lke'),
('le_link_text', 1, 'Текст', 'general', 'lke'),
('le_link_url', 1, 'URL', 'general', 'lke'),
('le_link_verified', 1, 'Дата проверки', 'back', 'lke'),
('le_with_selected', 1, 'С отмеченными:', 'back', 'lke'),
('mdl_actions', 1, 'Действия', 'back', 'mdl'),
('mdl_configure', 1, 'Настроить модуль', 'back', 'mdl'),
('mdl_install', 1, 'Установить модуль', 'back', 'mdl'),
('mdl_installed', 1, 'Установлен', 'back', 'mdl'),
('mdl_name', 1, 'Модуль', 'back', 'mdl'),
('mdl_not_installed', 1, 'Не установлен', 'back', 'mdl'),
('mdl_payment_module_setup', 1, 'Настройка модуля оплаты', 'back', 'mdl'),
('mdl_payment_modules_description', 1, 'Для того, чтобы включить расчет стоимости доставки в реальном времени через какую-либо компанию, предлагающую такие услуги (например, UPS, USPS), вам необходимо зарегистрироваться на сайте этой компании (получить более подробную информацию о регистрации вы можете на веб-сайте этой компании).<br>После того, как вы зарегистрировались, установите модуль для работы с этой компанией (см. ниже) и введите данные о вашей учетной записи в настройках модуля.<br>Далее, перейдите в раздел администрирования "Настройки" -> "Доставка" и подключите установленный модуль к какому-либо способу доставки.', 'back', 'mdl'),
('mdl_payment_types_using_this_module', 1, 'способы оплаты,<br> использующие этот модуль', 'back', 'mdl'),
('mdl_shipping_methods_are_allowed', 1, 'Тип оплаты допустим для следующих способов доставки', 'back', 'mdl'),
('mdl_shipping_module_setup', 1, 'Настройка модуля доставки', 'back', 'mdl'),
('mdl_shipping_types_using_this_module', 1, 'способы доставки,<br> использующие этот модуль', 'back', 'mdl'),
('msg_installed_modules', 1, 'Установленные модули (редактирование конфигураций)', 'back', 'mdl'),
('msg_no_installed_modules', 1, 'Нет ни одного установленного модуля', 'back', 'mdl'),
('ordr_ccinfo_shown_only_in_https', 1, 'Эта информация доступна только при защищенном соединении (SSL). Для доступа к этой информации выйдите из аккаунта, и войдите вновь, используя безопасное SSL соединение (нужно включить соответствующую галочку).', 'back', 'ord'),
('ordr_change_status', 1, 'Произвольный статус...', 'back', 'ord'),
('ordr_custinfo', 1, 'Информация о пользователе', 'back', 'ord'),
('ordr_msg_about_prices', 1, 'Цены указаны на момент оформления заказа.', 'back', 'ord'),
('ordr_order_statuses', 1, 'Статусы заказов', 'back', 'ord'),
('ordr_send_buyer_message', 1, 'Уведомить покупателя об этом изменении по email', 'back', 'ord'),
('pmnt_calctax_for_this_payment_type', 1, 'Раcсчитывать налог для этого способа оплаты', 'back', 'gen'),
('pmnt_email_comments_text', 1, 'Инструкции по оплате и прочие комментарии (отправляется покупателю в email-уведомлении о заказе)', 'back', 'ord'),
('shp_email_comments_text', 1, 'Комментарии о доставке (отправляется покупателю в email-уведомлении о заказе)', 'back', 'ord'),
('prd_msg_could_not_delete', 1, 'Невозможно удалить этот продукт', 'back', 'prd'),
('prd_msg_could_not_delete_these_products', 1, 'Невозможно удалить эти продукты', 'back', 'prd'),
('prd_msg_root_warning', 1, '<font color=red>Все продукты, находящиеся в корне, не видны пользователям!</font>', 'back', 'prd'),
('prd_product_visible_in_storefront', 1, 'Показывается в пользовательской части', 'back', 'prd'),
('prd_productlist', 1, 'Продукты', 'back', 'prd'),
('prdcat_advsearch_customoption_availablevalues', 1, 'Возможные варианты выбора', 'back', 'prd'),
('prdcat_advsearch_in_this_category_allow', 1, 'Разрешить подборку продуктов при просмотре категории', 'back', 'prd'),
('prdcat_advsearch_in_this_category_allow_descr', 1, 'включите этот параметр, если Вы хотите предоставить пользователю возможность подбора продуктов в этой категории не только при расширенном поиске, но и при обычном просмотре этой категории', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_input', 1, 'Задается произвольно', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_select_descr', 1, 'Пожалуйста, выберите параметры, по которым возможен расширенный поиск продуктов в данной категории', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_selectable', 1, 'Выбор из значений', 'back', 'prd'),
('prdcat_allow_products_comparison', 1, 'Предоставлять ли возможность пользователю сравнивать продукты в этой категории или нет', 'back', 'prd'),
('prdcat_category_descr', 1, 'Описание категории', 'back', 'prd'),
('prdcat_category_logo', 1, 'Логотип категории', 'back', 'prd'),
('prdcat_category_move_to', 1, 'Переместить в...', 'back', 'prd'),
('prdcat_category_name', 1, 'Название категории', 'back', 'prd'),
('prdcat_category_new', 1, 'Создать новую категорию', 'back', 'prd'),
('prdcat_category_parent', 1, 'Родительская категория', 'back', 'prd'),
('prdcat_category_root', 1, 'Корень', 'back', 'prd'),
('prdcat_category_title', 1, 'Категории', 'back', 'prd'),
('prdcat_show_products_from_subcategories', 1, 'Показывать пользователю продукты из подкатегорий при просмотре этой категории', 'back', 'prd'),
('prdcustopt_availablevalues', 1, 'Возможные варианты значений для характеристики "%OPTION_NAME%"', 'back', 'prd'),
('prdcustopt_option_has_no_values', 1, 'У этой характеристики нет предустановленных вариантов значений', 'back', 'prd'),
('prdcustopt_optionname', 1, 'Характеристика', 'back', 'prd'),
('prdcustopt_value', 1, 'Значение', 'back', 'prd'),
('prdcustopt_value_add', 1, 'Добавить вариант значения этой характеристики', 'back', 'prd'),
('prdcustopt_value_variants', 1, 'Возможные значения', 'back', 'prd'),
('prdopt_add_new_option', 1, 'Добавить характеристику', 'back', 'prd'),
('prdopt_custom_option_title', 1, 'Название характеристики', 'back', 'prd'),
('prdopt_no_product_options', 1, 'Не определено ни одной дополнительной характеристи продуктов', 'back', 'prd'),
('prdreview_postaddtime', 1, 'Время публикации отзыва', 'back', 'prd'),
('prdreview_reply', 1, 'Ответить', 'back', 'prd'),
('prdset_addproduct', 1, 'Добавить продукт', 'back', 'prd'),
('prdset_choose_selectable_option_values', 1, 'Выбрать варианты выбора', 'back', 'prd'),
('prdset_configurator_title', 1, 'Варианты выбора для ', 'back', 'prd'),
('prdset_custom_value', 1, 'Произвольное значение (текст)', 'back', 'prd'),
('prdset_customoption_configurator', 1, 'Настроить дополнительные характеристики', 'back', 'prd'),
('prdset_date_added', 1, 'Дата добавления', 'back', 'prd'),
('prdset_date_modified', 1, 'Дата изменения', 'back', 'prd'),
('prdset_download_is_available_for', 1, 'Файл доступен ', 'general', 'prd'),
('prdset_download_is_available_for_2', 1, 'Количество дней для скачивания', 'back', 'prd'),
('prdset_download_max_number_allowed', 1, 'Количество загрузок (раз)', 'back', 'prd'),
('prdset_eproduct_filename', 1, 'Файл электронного продукта', 'back', 'prd'),
('prdset_free_shipping', 1, 'Бесплатная доставка', 'back', 'prd'),
('prdset_free_shipping_2', 1, 'Бесплатная доставка', 'back', 'prd'),
('prdset_image_preview', 1, 'Просмотр', 'back', 'prd'),
('prdset_meta_description', 1, 'Тэг META description', 'back', 'prd'),
('prdset_meta_keywords', 1, 'Тэг META keywords', 'back', 'prd'),
('prdset_min_qunatity_to_order', 1, 'Ограничение на минимальный заказ продукта (штук)', 'back', 'prd'),
('prdset_option_value_variants', 1, 'возможных вариантов', 'back', 'prd'),
('prdset_optvalue_price_surplus', 1, 'Наценка к стоимости продукта, если выбрана эта опция', 'back', 'prd'),
('prdset_product_bigpicture', 1, 'Большая фотография', 'back', 'prd'),
('prdset_product_code', 1, 'Артикул', 'general', 'gen'),
('prdset_product_extra_categories', 1, 'Дополнительные родительские категории', 'back', 'prd'),
('prdset_product_filename', 1, 'Файл продукта', 'back', 'prd'),
('prdset_product_is_downloadable', 1, 'Продукт является программой', 'back', 'prd'),
('prdset_product_listprice', 1, 'Старая цена', 'back', 'prd'),
('prdset_product_picture', 1, 'Фотография', 'back', 'prd'),
('prdset_product_pictures', 1, 'Фотографии продуктов', 'back', 'prd'),
('prdset_product_rating', 1, 'Рейтинг', 'back', 'prd'),
('prdset_product_sold', 1, 'Продано', 'back', 'prd'),
('prdset_product_thumbnail', 1, 'Маленькая фотография', 'back', 'prd'),
('prdset_product_votes', 1, 'Голосов', 'back', 'prd'),
('prdset_productpicture_default', 1, 'Изображение по умолчанию', 'back', 'prd'),
('prdset_prompt_option_value_str', 1, 'Предложить выбрать значение этой опции', 'back', 'prd'),
('prdset_prompt_option_value_times', 1, 'раз(а) для этого продукта', 'back', 'prd'),
('prdset_related_products_select', 1, 'Пожалуйста, выберите продукт', 'back', 'prd'),
('prdset_save_photos', 1, 'Сохранить фотографии', 'back', 'prd'),
('prdset_selectable_from_values', 1, 'Выбор из предустановленных значений ', 'back', 'prd'),
('prdset_selected_products', 1, 'Выбранные продукты', 'back', 'prd'),
('prdspecial_no_special_offers', 1, 'Спец-предложения не выбраны', 'back', 'prd'),
('prdspecial_special_offers_desc', 1, 'Спец-предложения показываются на витрине Вашего магазина.<br>\r\nВыбрать товарные позиции, которые будут показаны как спец-предложения<br>\r\nВы можете в подразделе <a href="admin.php?dpt=catalog&sub=products_categories">"Категории и товары"</a>, кликнув по значку <img src="images/special_offer.gif" border=0> в таблице товаров.<br>\r\nВ спец-предложения можно выбрать только товары с фотографией.', 'back', 'prd'),
('rep_best_viewed_categories', 1, 'Самые просматриваемые категории?', 'back', ''),
('rep_views_count', 1, 'Количество просмотров', 'back', ''),
('sms_current_time', 1, '(сейчас &mdash; %s)', 'back', 'sms'),
('sms_disable_module', 1, 'Отключить SMS-уведомления', 'back', 'sms'),
('sms_enable_notifications', 1, 'Включить SMS-уведомления', 'back', 'sms'),
('sms_gateway_module_config', 1, 'Настройки модуля SMS-уведомлений', 'back', 'sms'),
('sms_gateway_modules', 1, 'Модули SMS-уведомлений', 'back', 'sms'),
('sms_mail_choose_sms_sending_module', 1, '<b>Выберите модуль для отправки SMS-уведомлений о заказах:</b>', 'back', 'sms'),
('sms_message_new_order', 1, 'Поступил новый заказ!', 'general', 'sms'),
('sms_modules_description', 1, 'Для того, чтобы включить отправку SMS-уведомлений, вам необходимо зарегистрироваться в какой-либо системе работы с SMS-сообщениями (получить более подробную информацию о регистрации вы можете на веб-сайте каждой из систем).<br>После того, как вы зарегистрировались, установите модуль для работы с этой системой (см. ниже) и введите данные о вашей учетной записи в настройках модуля.<br>Далее, включите галочку "Включить отправку SMS-уведомлений", выберите модуль для отправки SMS и укажите номер(а), на который(ые) необходимо доставлять SMS-уведомления о заказах.', 'back', 'sms'),
('sms_new_phone_number', 1, 'Новый телефонный номер', 'back', 'sms'),
('sms_notify_error_period', 1, 'Неверный формат времени. Пожалуйста, вводите время в формате HH:MM', 'back', 'sms'),
('sms_phone_list_descr', 1, '<b>Список телефонов, на которые будут отправляться уведомления о заказах</b>\r\n	<div class="small">Телефон должен быть указан в международном формате (например: 79161112233): <table border="0">\r\n	<tr class="gridheader">\r\n		<td>Код страны</td>\r\n		<td>Код оператора</td>\r\n		<td>Номер телефона</td>\r\n	</tr>\r\n	<tr class="gridline">\r\n		<td align=center><b>7</b></td>\r\n		<td align=center><b>916</b></td>\r\n		<td align=center><b>1112233</b></td>\r\n	</tr>\r\n	</table>\r\n	Для <b>добавления</b> телефона введите в поле "новый телефон" номер и нажмите кнопку "Сохранить".<br />Если вы хотите <b>удалить</b> номер из списка, оставьте соответствующее ему поле ввода пустым и нажмите кнопку "Сохранить".</div>', 'back', 'sms'),
('sms_sending_allowed_timeframe', 1, '<b>Разрешенное время для отправки сообщений (по времени сервера)</b><div class="small">Во временной промежуток вне этого интервала сообщения отправляться не будут</div>', 'back', 'sms'),
('sbscrbrs_description', 1, 'Здесь вы можете просматривать и удалять подписчиков на новости (блог) вашего интернет-магазина, импортировать новые записи в список и экспортировать их в файл (текстовый файл, в котором каждый электронный адрес указан на отдельной строке).', 'back', 'sbr'),
('sbscrbrs_err_creating_file', 1, 'Ошибка при создании файла', 'back', 'sbr'),
('sbscrbrs_err_empty_file', 1, 'Не найдено ни одной записи в загруженном файле', 'back', 'sbr'),
('sbscrbrs_err_uploading_file', 1, 'Ошибка при загрузке файла на сервер', 'back', 'sbr'),
('sbscrbrs_export_to_file', 1, 'Экспорт списка подписчиков в текстовый файл', 'back', 'sbr'),
('sbscrbrs_import_from_file', 1, 'Импорт подписчиков из текстового файла', 'back', 'sbr'),
('sbscrbrs_msg_deleted_all_records', 1, '{*EMAILS_NUMBER*} записей успешно удалены', 'back', 'sbr'),
('sbscrbrs_msg_email_deleted', 1, 'Адрес {*EMAIL*} был успешно удален из списка', 'back', 'sbr'),
('sbscrbrs_msg_export_successful', 1, 'Список был успешно экспортирован в файл<br /><a href="{*URL*}">Скачать файл</a>', 'back', 'sbr'),
('sbscrbrs_msg_import_successful', 1, '{*EMAILS_NUMBER*} записи(ей) были успешно добавлены из файла.', 'back', 'sbr'),
('survey_answeroptions', 1, 'Варианты ответов (каждый вариант на отдельной строке):', 'back', 'srv'),
('survey_btn_new_survey', 1, 'Начать новое голосование', 'back', 'srv'),
('survey_new_survey_warning', 1, '<strong>ВАЖНО:</strong> Результаты предыдущего голосования будут аннулированы.', 'back', 'srv'),
('survey_question', 1, 'Вопрос голосования', 'back', 'srv'),
('tax_back_to_country_list', 1, 'вернуться к определению налогов по странам', 'back', 'txs'),
('tax_back_to_tax_types', 1, 'вернуться к списку классов налогов', 'back', 'txs'),
('tax_name', 1, 'Название вида налогов', 'back', 'txs'),
('tax_rate', 1, 'Ставка', 'back', 'txs'),
('tax_rate_depends_on_region', 1, 'Ставка зависит от области (ставки определены для {N} областей из {M})', 'back', 'txs'),
('tax_sales_tax_is_based_on_address', 1, 'Адрес, на основании которого рассчитывается ставка налога', 'back', 'txs'),
('tax_set_rates_for_countries', 1, 'Пожалуйста, вводите ставки класса налогов для стран из списка', 'back', 'txs'),
('tax_set_rates_for_regions', 1, 'Пожалуйста, вводите ставки класса налогов для областей из списка', 'back', 'txs'),
('tax_set_rates_for_zip', 1, 'Ставки класса налогов в зависимости от почтовых индексов', 'back', 'txs'),
('tax_set_rates_for_zip_descr', 1, 'Если ставка налога может изменяться внутри какой-то области в зависимости от округа, вы можете указать зависимость ставки от почтового индекса. В следующей таблице вводите шаблоны почтовых индексов в виде комбинации символов индекса (цифр и букв) и "звездочки" *, которая обозначает произвольный символ. К примеру, шаблон 12*** будет обозначать все почтовые индексы, начинающиеся с двух символов 12, и состоящие из 5 символов - например, 12365, 12963, 12AB7 (символами в индексе могут быть как цифры, так и буквы). Среди всех шаблонов, которые описывают индекс, введенный покупателем, будет выбран наиболее подходящий. Например, если в таблице определены шаблоны 92*** и 923**, а покупатель ввел индекс 92301, то для заказа будет взята ставка для записи 923**, а запись 92*** учтена не будет.', 'back', 'txs'),
('tax_set_rates_for_zip_descr2', 1, 'Ставки, определенные в этой таблице, имеют больший приоритет, чем ставки по областям. Если покупатель при оформлении заказа введет почтовый индекс, ставка для которого определена, расчет налога будет производиться по почтовому индексу, а не по области.', 'back', 'txs'),
('tax_single_overall_rate', 1, 'Общая ставка', 'back', 'txs'),
('tax_type', 1, 'Вид налога', 'back', 'txs'),
('tax_types', 1, 'Виды налогов', 'back', 'txs'),
('checkout_another_address', 1, 'Другой адрес', 'front', 'chk'),
('checkout_comment', 1, 'Комментарии к заказу (заполняется по желанию)', 'front', 'chk'),
('checkout_continue_tip', 1, 'Для оформления заказа Вам необходимо зарегистрироваться.', 'front', 'chk'),
('checkout_enter_address', 1, 'Укажите ваш адрес для продолжения оформления заказа', 'front', 'chk'),
('checkout_i_am_new_customer', 1, 'Я новый пользователь', 'front', 'chk'),
('checkout_msg_thank_you_for_ordering', 1, 'В ближайшее время мы свяжемся с вами.', 'front', 'chk'),
('checkout_success_title', 1, 'Спасибо за Ваш заказ!', 'front', 'chk'),
('checkout_no_address_specified', 1, '< адрес не указан >', 'front', 'chk'),
('checkout_no_payment_methods', 1, 'Нет доступных способов для оплаты', 'front', 'chk'),
('checkout_no_shipping_methods', 1, 'Нет доступных способов доставки', 'front', 'chk'),
('checkout_order_ship_to', 1, 'Заказ будет доставлен по адресу', 'front', 'chk'),
('checkout_place_order', 1, 'Оформить заказ', 'front', 'chk'),
('checkout_select_payment_type', 1, 'Выберите способ оплаты', 'front', 'chk'),
('checkout_select_shipping_type', 1, 'Выберите способ доставки заказа', 'front', 'chk'),
('checkout_shipping', 1, 'Доставка', 'front', 'chk'),
('checkout_transaction_result_failure', 1, 'Пожалуйста, повторите попытку позже или свяжитесь с нами для разрешения проблемы. В своем сообщении укажите номер заказа.', 'front', 'chk'),
('checkout_transaction_result_success', 1, 'Спасибо! Ваш платеж принят.', 'front', 'chk'),
('checkout_with_no_registration', 1, 'Быстрое оформление', 'front', 'chk'),
('str_checkout', 1, 'Оформить заказ', 'front', 'chk'),
('affp_attract_guide', 1, '<p><B>Заработать с помощью нашей партнерской программы очень просто!</B><br>Вы получаете вознаграждение за каждый заказ привлеченного Вами пользователя - {aff_percent}% от суммы каждого заказа.<p>Вы можете привлекать покупателей двумя способами:<ol><li>Пользователь считается привлеченным вами, если при регистрации он указывает ваш логин в поле "Кто направил" - <B>{login}</B>.<br><br></li><li>Добавьте на ваш веб-сайт следующую ссылку:<br><br><B>{URL}</B><br><br>Если кто-либо из посетителей, пришедших с вашего веб-сайта, сделает заказ, вы автоматически получите вознаграждение.<br>В этом случае посетителю не нужно будет вводить ваш логин - система сама определит, что он пришел по вашей ссылке.</li></ol>', 'front', 'cmr'),
('usr_account_input_activation_key', 1, 'Для продолжения оформления заказа введите ключ активации, отправленный Вам по электронной почте. Данная мера необходима для проверки введенного Вами электронного адреса', 'front', 'cmr'),
('usr_account_update_successful', 1, 'Данные успешно изменены.<br />Спасибо!', 'front', 'cmr'),
('usr_addresses_added', 1, 'Следующие адреса успешно добавлены в адресную книгу', 'front', 'cmr'),
('usr_cant_find_user_in_db', 1, 'Пользователь с такими данными не зарегистрирован', 'front', 'cmr'),
('usr_custinfo_referrer', 1, 'Кто направил (логин пользователя)<br /><i>оставьте это поле пустым, если сомневаетесь</i>', 'front', 'cmr');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('usr_forgot_password_descr', 1, 'Введите <strong>логин</strong> или <strong>адрес электронной почты</strong>:', 'front', 'cmr'),
('usr_msg_registration_successful', 1, 'Регистрация прошла успешно.<br />Спасибо!', 'front', 'cmr'),
('usr_password_sent', 1, 'Пароль был отправлен вам по электронной почте', 'front', 'cmr'),
('usr_successful_account_termination', 1, 'Ваша регистрация была успешно отменена. Спасибо за покупки!', 'front', 'cmr'),
('usr_thank_you_for_subscription', 1, 'Спасибо за подписку!', 'front', 'cmr'),
('usrreg_authorization_fields', 1, 'ВХОД В МАГАЗИН', 'front', 'cmr'),
('usrreg_confirm_acc_activation', 1, 'Активация учетной записи', 'front', 'cmr'),
('usrreg_confirm_err_wrong_actcode', 1, 'Неверный ключ активации', 'front', 'cmr'),
('usrreg_confirm_notactivated', 1, 'Ваша учетная запись не активирована', 'front', 'cmr'),
('usrreg_confirm_subject', 1, 'Регистрация', 'front', 'cmr'),
('usrreg_confirm_success', 1, '<p>Ваша учетная запись успешно активирована.</p><p>Перейти в <a href="%ACCOUNT_URL%">раздел управления учетной записью</a>.</p>', 'front', 'cmr'),
('usrreg_confirm_type_code', 1, 'Для активации учетной записи, пожалуйста, введите ключ активации (отправлен вам по email):<br />', 'front', 'cmr'),
('usrreg_confirmation_code', 1, 'Код подтверждения', 'front', 'cmr'),
('usrreg_contact_information', 1, 'КОНТАКТНАЯ ИНФОРМАЦИЯ', 'front', 'cmr'),
('usrreg_customer_confirm_password', 1, 'Подтвердите пароль', 'front', 'cmr'),
('usrreg_required_regform_fields_descr', 1, '<font color=red>*</font> обязательны для заполнения', 'front', 'cmr'),
('usrreg_subscribe_for_blognews', 1, 'Подписаться на новости', 'general', 'cmr'),
('err_access_to_product_downloadable_file_denied', 1, 'Доступ к файлу запрещен (заказ не оплачен)', 'front', 'err'),
('err_input_all_required_fields', 1, 'Пожалуйста, заполните все обязательные поля в форме', 'front', 'err'),
('err_invalid_symbols_in_login_or_password', 1, 'В поле ввода логина и пароля не допустимы символы '', \\, ", <, >', 'front', 'err'),
('err_region_does_not_belong_to_country', 1, 'Выберите область из выпадающего списка', 'general', 'err'),
('err_wrong_ccode', 1, 'Неверно введены цифры, изображенные на рисунке', 'front', 'err'),
('err_wrong_referrer', 1, 'Неправильный логин пользователя в поле "Кто направил".<br>Если вы сомневаетесь, что указывать в этом поле, оставьте его пустым.', 'front', 'err'),
('feedback_description_general', 1, 'Вы можете отправить нам запрос по электронной почте с помощью следующей формы.', 'front', 'fdk'),
('feedback_description_general_2', 1, 'Вы можете задать нам вопрос(ы) с помощью следующей формы.', 'front', 'fdk'),
('feedback_description_productpage', 1, 'Пожалуйста, сформулируйте Ваши вопросы относительно ', 'front', 'fdk'),
('feedback_message_text', 1, 'Сообщение', 'front', 'fdk'),
('feedback_msg_sent_successfully', 1, '<B>Сообщение успешно отправлено.</B><br>Мы ответим Вам в ближайшее время. Спасибо за Ваш запрос!', 'front', 'fdk'),
('feedback_title_productpage', 1, 'Есть вопросы?', 'front', 'fdk'),
('blog_view_all_posts', 1, 'Смотреть все', 'front', 'gen'),
('btn_back_to_shopping', 1, 'Вернуться к покупкам', 'front', 'gen'),
('btn_compare_products', 1, 'Сравнить выбранные продукты', 'front', 'gen'),
('btn_post_message', 1, 'Отправить сообщение', 'front', 'gen'),
('btn_vote', 1, 'Оценить', 'front', 'gen'),
('lnk_administrativemode', 1, '>> АДМИНИСТРИРОВАНИЕ <<', 'front', 'gen'),
('lnk_change_currency', 1, 'Валюта:', 'front', 'gen'),
('lnk_forgot_password', 1, 'Забыли пароль?', 'front', 'gen'),
('lnk_logout', 1, 'Выйти из сеанса...', 'front', 'gen'),
('lnk_my_account', 1, 'Личный кабинет', 'front', 'gen'),
('lnk_myaccount', 1, 'Личный кабинет', 'front', 'gen'),
('lnk_reviewproduct', 1, 'Показать все отзывы (%REVIEWS_NUM%) или написать собственный отзыв', 'front', 'gen'),
('lnk_terminate_account', 1, 'Удалить учетную запись', 'front', 'gen'),
('msg_n_matches_found', 1, 'Найдено {N} записи(-ей)', 'general', 'gen'),
('msg_price_isnot_set', 1, 'Цена не указана', 'front', 'gen'),
('pgn_advanced_search', 1, 'Расширенный поиск', 'general', 'prd'),
('str_add_to_cart_string', 1, 'добавить в корзину', 'front', 'gen'),
('str_authorization', 1, 'Вход для пользователей', 'front', 'gen'),
('str_category', 1, 'Категория', 'front', 'gen'),
('str_choose_products', 1, 'Выберите категории и продукты', 'general', 'gen'),
('str_delivery_address', 1, 'Адрес доставки заказа', 'front', 'gen'),
('str_discount_is_not_less_than', 1, 'скидка не менее', 'front', 'gen'),
('str_enter_ccode', 1, 'Введите число, изображенное на рисунке', 'front', 'gen'),
('str_general_information', 1, 'Общая информация', 'front', 'gen'),
('str_greetings', 1, '<h1>Спасибо за ваш выбор Shop-Script PREMIUM!</h1>', 'front', 'gen'),
('str_i_am_registered_customer', 1, 'Я зарегистрированный пользователь', 'front', 'gen'),
('str_please_select', 1, 'Пожалуйста, выберите', 'general', 'gen'),
('str_posts_for_item_string', 1, 'мнений', 'front', 'gen'),
('str_register', 1, 'Регистрация', 'front', 'gen'),
('str_same_as_shipping_address', 1, 'Совпадает с адресом доставки заказа', 'front', 'gen'),
('str_search_in_subcategories', 1, 'искать в подкатегориях', 'front', 'gen'),
('str_search_products_in_this_category', 1, 'Найти продукт в этой категории', 'general', 'gen'),
('str_show_all_product_in_this_category', 1, 'показать все продукты категории', 'front', 'gen'),
('str_subject', 1, 'Тема', 'general', 'gen'),
('str_your_name', 1, 'Имя', 'general', 'gen'),
('warning_delete_install_php', 1, 'Файл <b>install.php</b> не удален из директории со скриптами. Вам необходимо удалить его вручную.<br>', 'front', 'gen'),
('warning_magic_quotes_gpc', 1, 'В настройках PHP установлено <b>magic_quotes_gpc = Off</b>. Для правильной работы скрипта необходимо включить этот параметр (On).', 'front', 'gen'),
('warning_wrong_chmod', 1, 'Недостаточные права доступа установлены для папок products_files, products_pictures, temp и templates_c (либо какая-то из этих папок не существует).<br>Необходимо установить атрибуты (chmod) на это папки для разрешения (пере)записи файлов в этих папках (как правило, это атрибуты chmod 775).', 'front', 'gen'),
('prd_download_downloads_left', 1, 'осталось', 'front', 'prd'),
('prd_download_number_of_downloads_exceeded', 1, 'Количество загрузок файла превысило допустимое', 'front', 'prd'),
('prd_download_period_expired', 1, 'Допустимое время для загрузки файлов истёк', 'front', 'prd'),
('prd_download_str_downloads', 1, 'скачиваний', 'front', 'prd'),
('prd_final_price', 1, 'Цена с учётом выбранных опций', 'front', 'prd'),
('prd_product_comparison', 1, 'Сравнение продуктов', 'front', 'prd'),
('prd_select_to_comparison', 1, 'Сравнить', 'front', 'prd'),
('prd_sort_main_control_string', 1, 'Сортировать по: наименованию ({ASC_NAME} | {DESC_NAME}), цене ({ASC_PRICE} | {DESC_PRICE}), рейтингу ({ASC_RATING} | {DESC_RATING})', 'front', 'prd'),
('prd_sort_pricelist_control_string', 1, 'Сортировать по: наименованию ({ASC_NAME} | {DESC_NAME}), цене ({ASC_PRICE} | {DESC_PRICE})', 'front', 'prd'),
('prd_str_productpictures', 1, 'Все фотографии', 'front', 'prd'),
('prddiscussion_add_message', 1, 'Написать отзыв', 'front', 'prd'),
('prddiscussion_body', 1, 'Ваш отзыв', 'general', 'prd'),
('prddiscussion_delete_post_link', 1, 'удалить это сообщение', 'front', 'prd'),
('prddiscussion_no_posts_on_item_string', 1, 'Нет отзывов об этом продукте', 'front', 'prd'),
('prddiscussion_title', 1, 'Отзывы о продукте <a href="%PRODUCT_URL%">%PRODUCT_NAME%</a>', 'general', 'prd'),
('prdset_product_is_downloadable_msg_2customer', 1, '<p><strong>Вы сможете скачать этот продукт</strong> с сайта магазина сразу после того, как закажете его и оплатите заказ', 'front', 'prd'),
('prdset_value_is_undefined', 1, '[не определено]', 'front', 'prd'),
('srch_products_within_category', 1, 'Поиск продукта в этой категории', 'front', 'prd'),
('str_enlarge_picture', 1, 'увеличить...', 'front', 'prd'),
('str_more_info_on_product', 1, 'подробнее...', 'front', 'prd'),
('str_related_items', 1, 'Рекомендуем посмотреть', 'general', 'prd'),
('str_you_save', 1, 'Вы экономите', 'front', 'prd'),
('vote_average', 1, 'Средне', 'front', 'prd'),
('vote_excellent', 1, 'Отлично', 'front', 'prd'),
('vote_for_item_title', 1, 'Оцените этот продукт', 'front', 'prd'),
('vote_good', 1, 'Хорошо', 'front', 'prd'),
('vote_numerofvotes', 1, 'Голосов', 'general', 'prd'),
('vote_poor', 1, 'Плохо', 'front', 'prd'),
('vote_puny', 1, 'Очень плохо', 'front', 'prd'),
('cart_cart_is_empty', 1, 'Ваша корзина пуста', 'front', 'crt'),
('cart_clear_cart', 1, 'Очистить корзину', 'front', 'crt'),
('cart_content_empty', 1, '(пусто)', 'front', 'crt'),
('cart_content_not_empty', 1, 'продукт(ов): ', 'front', 'crt'),
('cart_items_left_from_prev_session', 1, 'В вашей корзине обнаружены продукты, добавленные при предыдущем пользовании нашего магазина. Пожалуйста, уточните содержимое заказа перед оформлением.', 'front', 'crt'),
('cart_min_order_amount_not_reached', 1, 'Сумма заказа должна быть не менее ', 'front', 'crt'),
('cart_product_quantity', 1, 'Кол-во', 'general', 'crt'),
('cart_products_total', 1, 'Стоимость', 'front', 'crt'),
('cart_reg_customers_apply_for_discounts', 1, 'Зарегистрированные пользователи магазина получают скидки при заказах. Пожалуйста, свяжитесь с менеджером для получения дополнительной информации', 'front', 'crt'),
('cart_reg_customers_apply_for_discounts_extra', 1, 'Зарегистрированные пользователи интернет-магазина могут получить дополнительные скидки. Свяжитесь с нами для получения дополнительной информации.', 'front', 'crt'),
('cart_title', 1, 'Моя корзина', 'front', 'crt'),
('affp_commission_description', 1, 'Комиссия за заказ #{ORDERID} сделаный пользователем ''{USERLOGIN}''', 'general', 'aff'),
('affp_commission_payments', 1, 'Комиссионные и выплаты', 'general', 'aff'),
('affp_customer_commissions', 1, 'Начисленные комиссионные', 'general', 'aff'),
('affp_emailorders', 1, 'Я хочу получать email-уведомления, когда привлеченный покупатель делает заказ', 'general', 'aff'),
('affp_emailpayments', 1, 'Получать email-уведомления о новых выплатах', 'general', 'aff'),
('affp_mail_new_commission', 1, 'На Ваш счет в нашем интернет-магазине начислено новое вознаграждение по партнерской программе в размере {MONEY}', 'general', 'aff'),
('affp_mail_new_payment', 1, 'Вам была произведена выплата в размере {MONEY}. Более подробная информация может быть получена в разделе "Мой счет" нашего интернет-магазина.', 'general', 'aff'),
('affp_msg_commission_deleted', 1, 'Запись о начислении комиссии удалена', 'general', 'aff'),
('affp_msg_new_commission_ok', 1, 'Запись о начислении комиссии добавлена', 'general', 'aff'),
('affp_msg_new_pay_ok', 1, 'Запись о выплате успешно добавлена', 'general', 'aff'),
('affp_msg_no_balance', 1, 'У Вас нулевой баланс', 'general', 'aff'),
('affp_msg_no_payments', 1, 'До текущего момента выплаты вам не производились', 'general', 'aff'),
('affp_msg_nocommisisons_found', 1, 'Не найдено ни одного начисления комиссии за указанный период', 'general', 'aff'),
('affp_msg_nopayments_found', 1, 'Не найдено ни одного платежа за указанный период', 'general', 'aff'),
('affp_msg_payment_deleted', 1, 'Запись о выплате удалена', 'general', 'aff'),
('affp_msg_program_disabled', 1, 'Партнерская программа отключена', 'general', 'aff'),
('affp_no_customers_referred', 1, 'Привлеченных покупателей нет', 'general', 'aff'),
('affp_payment_number', 1, 'Номер выплаты', 'general', 'aff'),
('affp_payments_history', 1, 'История выплат', 'general', 'aff'),
('affp_payments_to_customers', 1, 'Выплаты', 'general', 'aff'),
('affp_referred_customers', 1, 'Привлеченные покупатели', 'general', 'aff'),
('affp_remove_user', 1, 'Удалить из списка привлеченных пользователей?', 'general', 'aff'),
('affp_title', 1, 'Партнерская программа', 'general', 'aff'),
('affp_total_earnings', 1, 'Общее вознаграждение', 'general', 'aff'),
('affp_total_payments', 1, 'Выплаты', 'general', 'aff'),
('affp_user_balance', 1, 'Баланс', 'general', 'aff'),
('msg_timeframe_isnot_specified', 1, 'Период не установлен', 'general', 'aff'),
('lnk_auth_history', 1, 'Просмотр журнала посещений', 'general', 'cmr'),
('lnk_manage_address_book', 1, 'Посмотреть/редактировать адресную книгу', 'general', 'cmr'),
('lnk_update_contact_info', 1, 'Посмотреть/редактировать контактную информацию', 'general', 'cmr'),
('lnk_view_order_history', 1, 'Посмотреть историю заказов', 'general', 'cmr'),
('pgn_contact_information', 1, 'Контактная информация', 'general', 'cmr'),
('pgn_customer_auth_log', 1, 'Журнал авторизации пользователей', 'general', 'cmr'),
('pgn_visit_history', 1, 'История посещений', 'general', 'cmr'),
('str_address', 1, 'Адрес', 'general', 'gen'),
('usr_account_activated', 1, 'Активирована', 'general', 'cmr'),
('usr_account_activation_key', 1, 'Ключ активации', 'general', 'cmr'),
('usr_account_notactivated', 1, 'Не активирована', 'general', 'cmr'),
('usr_account_state', 1, 'Статус учетной записи', 'general', 'cmr'),
('usr_custinfo_city', 1, 'Город', 'general', 'cmr'),
('usr_custinfo_country', 1, 'Страна', 'general', 'cmr'),
('usr_custinfo_default_address', 1, 'Адрес по умолчанию', 'general', 'cmr'),
('usr_custinfo_email', 1, 'Email', 'general', 'cmr'),
('usr_custinfo_first_name', 1, 'Имя', 'general', 'cmr'),
('usr_custinfo_last_name', 1, 'Фамилия', 'general', 'cmr'),
('usr_custinfo_login', 1, 'Логин', 'general', 'cmr'),
('usr_custinfo_logintime', 1, 'Время авторизации', 'general', 'cmr'),
('usr_custinfo_password', 1, 'Пароль', 'general', 'cmr'),
('usr_custinfo_state', 1, 'Область', 'general', 'cmr'),
('usr_custinfo_zip', 1, 'Почтовый индекс', 'general', 'cmr'),
('usr_shopping_history', 1, 'История заказов', 'general', 'cmr'),
('usrreg_registration_form', 1, 'Зарегистрироваться', 'general', 'cmr'),
('email_bestregards', 1, 'С наилучшими пожеланиями', 'general', 'eml'),
('email_change_order_status_subject', 1, 'Статус вашего заказа изменен', 'general', 'eml'),
('email_change_order_status_text', 1, 'Статус вашего заказа #{ORDERID} был изменен на <strong>{STATUS}</strong>', 'general', 'eml'),
('email_hello', 1, 'Здравствуйте', 'general', 'eml'),
('email_message_parameters', 1, 'Content-Type: text/plain; charset="utf-8"', 'general', 'eml'),
('email_news_of', 1, 'Новости', 'general', 'eml'),
('email_ordr_ordered_products', 1, 'Заказанные продукты', 'general', 'eml'),
('email_ordr_payment', 1, 'Оплата заказа', 'general', 'eml'),
('email_ordr_payment_comments', 1, 'Информация об оплате', 'general', 'eml'),
('email_ordr_shipping', 1, 'Доставка заказа', 'general', 'eml'),
('email_ordr_shipping_comments', 1, 'Информация по доставке', 'general', 'eml'),
('email_ordr_total_tax', 1, 'Общий налог на заказ', 'general', 'eml'),
('email_regconfirmation', 1, 'Для активации Вашей учетной записи, пожалуйста, при входе в аккаунт введите ключ активации: [code]<br />Или нажмите по следующей ссылке для автоматической активации Вашей учетной записи:<br /><a href="[codeurl]">[codeurl]</a>', 'general', 'eml'),
('email_subject_forgot_password', 1, 'Ваш пароль', 'general', 'eml'),
('email_subject_registration', 1, 'Регистрация', 'general', 'eml'),
('email_thank_you_for_shopping_at', 1, 'Спасибо за ваш выбор', 'general', 'eml'),
('email_we_contact_you_asap', 1, 'Мы свяжемся с вами в ближайшее время.', 'general', 'eml'),
('email_your_registration_info', 1, 'Ваша регистрационная информация:', 'general', 'eml'),
('email_youve_registered_at', 1, 'Вы успешно зарегистрировались в', 'general', 'eml'),
('err_cant_find_required_page', 1, 'Извините, запрашиваемый документ не был найден на сервере', 'general', 'err'),
('err_cant_read_file', 1, 'Не удалось прочитать файл', 'general', 'err'),
('err_csvimport_update_column_is_not_set', 1, 'Не указан столбец идентификации, однозначно определяющий продукт. Невозможно произвести импорт продуктов.', 'general', 'err'),
('err_curlexec', 1, '1001', 'general', 'err'),
('err_curlinit', 1, '1000', 'general', 'err'),
('err_failed_to_upload_file', 1, '<b><font color=red>Не удалось закачать файл(ы) на сервер. Убедитесь,<br>что у Вас есть права на создание файлов на сервере</font></b>', 'general', 'err'),
('err_forbidden', 1, 'У Вас нет прав на просмотр этой страницы.', 'general', 'err'),
('err_input_address', 1, 'Пожалуйста, введите Ваш адрес', 'general', 'err'),
('err_input_city', 1, 'Пожалуйста, введите название города', 'general', 'err'),
('err_input_email', 1, 'Введите правильный электронный адрес', 'general', 'err'),
('err_input_login', 1, 'Пожалуйста, введите логин', 'general', 'err'),
('err_input_message_subject', 1, 'Пожалуйста, введите тему сообщения', 'general', 'err'),
('err_input_name', 1, 'Пожалуйста, введите Ваши ФИО', 'general', 'err'),
('err_input_nickname', 1, 'Пожалуйста, введите Ваш псевдоним', 'general', 'err'),
('err_input_price', 1, 'Цена должна быть положительным числом', 'general', 'err'),
('err_input_state', 1, 'Пожалуйста, введите область', 'general', 'err'),
('err_input_zip', 1, 'Пожалуйста, введите почтовый индекс', 'general', 'err'),
('err_login_should_start_with_latin_symbol', 1, 'Логин должен начинаться с латинского символа', 'general', 'err'),
('err_password_confirm_failed', 1, 'Неверный пароль', 'general', 'err'),
('err_payment_processing', 1, 'Ошибка при оплате', 'general', 'err'),
('err_user_already_exists', 1, 'Пользователь с указанным логином уже зарегистрирован', 'general', 'err'),
('err_wrong_password', 1, 'Неверный логин и/или пароль', 'general', 'err'),
('btn_activate', 1, 'Активировать', 'general', 'gen'),
('btn_change', 1, 'Изменить', 'general', 'gen'),
('btn_change_address', 1, 'Изменить адрес', 'general', 'gen'),
('btn_clear', 1, 'Очистить', 'general', 'gen'),
('btn_continue', 1, 'Продолжить', 'general', 'gen'),
('btn_delete_all', 1, 'Удалить все', 'general', 'gen'),
('btn_download', 1, 'Скачать', 'general', 'gen'),
('btn_find', 1, 'Найти', 'general', 'gen'),
('btn_printable_version', 1, 'Версия для печати', 'general', 'gen'),
('btn_reset', 1, 'Очистить', 'general', 'gen'),
('btn_select', 1, 'Выбрать', 'general', 'gen'),
('btn_show', 1, 'Показать', 'general', 'gen'),
('btn_update', 1, 'Обновить', 'general', 'gen'),
('btn_view', 1, 'Посмотреть', 'general', 'gen'),
('cnfrm_areyousure', 1, 'Вы уверены?', 'general', 'gen'),
('cnfrm_delete', 1, 'Удалить?', 'general', 'gen'),
('cnfrm_delete_picture', 1, 'Удалить изображение?', 'general', 'gen'),
('cnfrm_unsubscribe', 1, 'Вы уверены, что хотите удалить вашу учетную запись в магазине?', 'general', 'gen'),
('infpg_goback_to_aux_pages', 1, '<< назад к списку', 'general', 'gen'),
('lnk_homepage', 1, 'Главная', 'general', 'gen'),
('msg_information_saved', 1, 'Информация сохранена', 'general', 'gen'),
('msg_saved_changes', 1, 'Изменения сохранены', 'general', 'gen'),
('prdcustopt_goback_to_option_list', 1, '<< назад к списку', 'general', 'gen'),
('srch_no_matches_found', 1, 'Ничего не найдено', 'general', 'gen'),
('str_addresses', 1, 'Адреса', 'general', 'gen'),
('str_after', 1, 'после', 'general', 'gen'),
('str_all_products', 1, 'Все продукты', 'general', 'gen'),
('str_answer_no', 1, 'нет', 'general', 'gen'),
('str_answer_yes', 1, 'да', 'general', 'gen'),
('str_any', 1, 'Не имеет значения', 'general', 'gen'),
('str_any_country', 1, 'Не зависит от страны', 'general', 'gen'),
('str_any_region', 1, 'Не зависит от области', 'general', 'gen'),
('str_anyvalue', 1, 'не имеет значения', 'general', 'gen'),
('str_ascending', 1, 'возр', 'general', 'gen'),
('str_before', 1, 'до', 'general', 'gen'),
('str_default', 1, 'По умолчанию', 'general', 'gen'),
('str_default_charset', 1, 'utf-8', 'general', 'gen'),
('str_descending', 1, 'убыв', 'general', 'gen'),
('str_description', 1, 'Описание', 'general', 'gen'),
('str_discount', 1, 'скидка', 'general', 'gen'),
('str_empty_category', 1, 'Нет продуктов', 'general', 'gen'),
('str_empty_list', 1, 'пустой список', 'general', 'gen'),
('str_from', 1, 'от', 'general', 'gen'),
('str_gram', 1, 'Граммы', 'general', 'gen'),
('str_in_stock', 1, 'На складе', 'general', 'gen'),
('str_indicate_period', 1, 'Укажите период:', 'general', 'gen'),
('str_invoice_title', 1, 'ЗАКАЗ', 'general', 'gen'),
('str_items', 1, 'шт.', 'general', 'gen'),
('str_kg', 1, 'Килограммы', 'general', 'gen'),
('str_language', 1, 'Язык', 'general', 'gen'),
('str_lbs', 1, 'Фунты', 'general', 'gen'),
('str_list_price', 1, 'Старая цена', 'general', 'gen'),
('str_month_april', 1, 'Апрель', 'general', 'gen'),
('str_month_august', 1, 'Август', 'general', 'gen'),
('str_month_december', 1, 'Декабрь', 'general', 'gen'),
('str_month_february', 1, 'Февраль', 'general', 'gen'),
('str_month_january', 1, 'Январь', 'general', 'gen'),
('str_month_july', 1, 'Июль', 'general', 'gen'),
('str_month_june', 1, 'Июнь', 'general', 'gen'),
('str_month_march', 1, 'Март', 'general', 'gen'),
('str_month_may', 1, 'Май', 'general', 'gen'),
('str_month_november', 1, 'Ноябрь', 'general', 'gen'),
('str_month_october', 1, 'Октябрь', 'general', 'gen'),
('str_month_september', 1, 'Сентябрь', 'general', 'gen'),
('str_name', 1, 'Название', 'general', 'gen'),
('str_next', 1, 'след', 'general', 'gen'),
('str_no_orders', 1, 'нет заказов', 'general', 'gen'),
('str_not_defined', 1, 'Не определено', 'general', 'gen'),
('str_number', 1, 'числа', 'general', 'gen'),
('str_number_of_orders_in_status', 1, 'заказ(ов) в статусе', 'general', 'gen'),
('str_number_only', 1, 'только число', 'general', 'gen'),
('str_previous', 1, 'пред', 'general', 'gen'),
('str_price', 1, 'Цена', 'general', 'gen'),
('str_priority', 1, 'Приоритет сортировки', 'general', 'gen'),
('str_records', 1, 'запись(ей)', 'general', 'gen'),
('str_search', 1, 'Поиск', 'general', 'gen'),
('str_search_in_results', 1, 'искать в найденном', 'general', 'gen'),
('str_show', 1, 'показывать', 'general', 'gen'),
('str_showall', 1, 'показать все', 'general', 'gen'),
('str_status', 1, 'Статус', 'general', 'gen'),
('str_time', 1, 'Время', 'general', 'gen'),
('str_to', 1, 'По', 'general', 'gen'),
('str_total', 1, 'Итого', 'general', 'gen'),
('str_universal_currency', 1, 'в валюте, выбранной по умолчанию', 'general', 'gen'),
('str_view', 1, 'посмотреть', 'general', 'gen'),
('usr_custinfo_address_list_link', 1, '<< назад к списку', 'general', 'gen'),
('le_add_link', 1, 'Добавить ссылку', 'general', 'lke'),
('le_categories', 1, 'Разделы', 'general', 'lke'),
('le_category', 1, 'Раздел', 'general', 'lke'),
('le_err_choose_category', 1, 'Выберите раздел', 'general', 'lke'),
('le_err_enter_link', 1, 'Пожалуйста введите ссылку!', 'general', 'lke'),
('le_err_enter_text', 1, 'Пожалуйста введите описание для ссылки!', 'general', 'lke'),
('le_err_link_exists', 1, 'Такая ссылка уже есть в каталоге!', 'general', 'lke'),
('le_links', 1, 'Ссылки', 'general', 'lke'),
('le_msg_link_added', 1, 'Спасибо! Ссылка добавлена в каталог и будет опубликована после проверки администратором!', 'general', 'lke'),
('ordr_back_to_order_list', 1, 'вернуться к списку заказов', 'general', 'ord'),
('ordr_billing_address', 1, 'Адрес плательщика', 'general', 'ord'),
('ordr_billing_first_name', 1, 'Имя плательщика', 'general', 'ord'),
('ordr_billing_last_name', 1, 'Фамилия плательщика', 'general', 'ord'),
('ordr_cccvv', 1, 'CVV', 'general', 'ord'),
('ordr_ccexpires', 1, 'Истекает', 'general', 'ord'),
('ordr_ccholdername', 1, 'Держатель карты', 'general', 'ord'),
('ordr_ccinfo', 1, 'Информация о кредитной карте', 'general', 'ord'),
('ordr_ccnumber', 1, 'Номер кредитной карты', 'general', 'ord'),
('ordr_comment', 1, 'Комментарий', 'general', 'ord'),
('ordr_customer', 1, 'Покупатель', 'general', 'ord'),
('ordr_customer_comments', 1, 'Ваши комментарии или пожелания по заказу', 'general', 'ord'),
('ordr_customer_ip', 1, 'IP покупателя', 'general', 'ord'),
('ordr_filter_by_status', 1, 'Заказы по статусам', 'general', 'ord'),
('ordr_id', 1, 'Номер заказа', 'general', 'ord'),
('ordr_itemprice_excluding_tax', 1, 'Стоимость (без налога)', 'general', 'ord'),
('ordr_order', 1, 'Заказ', 'general', 'ord'),
('ordr_order_confirmation', 1, 'Подтверждение', 'general', 'ord'),
('ordr_order_processing_history', 1, 'История работы с заказом', 'general', 'ord'),
('ordr_order_time', 1, 'Время заказа', 'general', 'ord'),
('ordr_order_total', 1, 'Стоимость заказа', 'general', 'ord'),
('ordr_ordered_products', 1, 'Заказанные продукты', 'general', 'ord'),
('ordr_payee', 1, 'Плательщик', 'general', 'ord'),
('ordr_payment_type', 1, 'Оплата', 'general', 'ord'),
('ordr_recipient', 1, 'Получатель', 'general', 'ord'),
('ordr_search_by_id', 1, 'Поиск заказа по номеру', 'general', 'ord'),
('ordr_shipping_address', 1, 'Адрес доставки заказа', 'general', 'ord'),
('ordr_shipping_first_name', 1, 'Имя получателя', 'general', 'ord'),
('ordr_shipping_handling_cost', 1, 'Стоимость доставки', 'general', 'ord'),
('ordr_shipping_last_name', 1, 'Фамилия получателя', 'general', 'ord'),
('ordr_shipping_type', 1, 'Доставка', 'general', 'ord'),
('ordr_status', 1, 'Статус заказа', 'general', 'ord'),
('ordr_status_cancelled', 1, 'Отменен', 'general', 'ord'),
('ordr_subtotal', 1, 'Подытог', 'general', 'ord'),
('ordr_tax', 1, 'Налог', 'general', 'ord'),
('prd_out_of_stock', 1, 'Нет на складе', 'general', 'prd'),
('prdset_description_brief', 1, 'Краткое описание', 'general', 'prd'),
('prdset_handling_charge', 1, 'Стоимость упаковки', 'general', 'prd'),
('prdset_minimal_order_quantity', 1, 'Минимальный заказ', 'general', 'prd'),
('prdset_product_name', 1, 'Наименование', 'general', 'prd'),
('prdset_weight', 1, 'Вес продукта', 'general', 'prd'),
('srch_found', 1, 'Найдено ', 'general', 'prd'),
('srch_price_to', 1, 'до', 'general', 'prd'),
('srch_products_plural', 1, 'продукт(ов)', 'general', 'prd'),
('catset_slug', 1, 'ID страницы (часть URL; используется в ссылках на эту страницу)', 'back', 'prd'),
('prdset_slug', 1, 'ID страницы (часть URL; используется в ссылках на эту страницу)', 'back', 'prd'),
('loc_find_string', 1, 'Найти строку', 'back', 'loc'),
('loc_iso2_should_be', 1, 'Код языка должен состоять из 2 латинских символов (a-z)', 'back', 'loc'),
('lsgr_import_export', 1, 'Импорт / Экспорт', 'back', 'gen'),
('prdine_default_charset', 1, 'cp1251', 'back', 'ine'),
('prdimport_file_charset', 1, 'Кодировка файла', 'back', 'ine'),
('prdcat_erase_confirmation', 1, 'Вы действительно хотите удалить все продукты? Действие необратимо.', 'back', 'prd'),
('prdcat_erase', 1, 'Удалить', 'back', 'prd'),
('prdcat_erase_products_description', 1, 'Здесь вы можете нажатием одной кнопки удалить все продукты, категории продуктов и их характеристики (действие необратимое).<br />Нажатие по кнопке не затронет списки заказов и покупателей вашего магазина, информационные страницы, блог и прочие настройки.', 'back', 'prd'),
('prdcat_products_erased', 1, 'Всe продукты были удалены', 'back', 'prd'),
('pgn_erase_products', 1, 'Удалить все', 'general', 'prd'),
('str_autodetect', 1, 'Автоопределение', 'general', 'gen'),
('msg_occupied_slug', 1, 'Этот ID страницы уже используется. Измените ID и повторите попытку сохранения.', 'back', 'gen'),
('prd_ordering_not_available', 1, 'продукт сейчас нельзя заказать', 'back', 'prd'),
('mdl_edit_module', 1, 'Редактирование модуля', 'back', 'mdl'),
('pmnt_add_method', 1, 'Добавить способ оплаты', 'back', 'ord'),
('pmnt_method_removed', 1, 'Способ оплаты удален', 'back', 'ord'),
('pmnt_to_list', 1, 'Способы оплаты', 'back', 'ord'),
('pmnt_edit_method', 1, 'Редактирование способа оплаты', 'back', 'ord'),
('pmnt_add_payment_method', 1, 'Добавление способа оплаты (шаг %STEP_NUMBER% из 3)', 'back', 'ord'),
('btn_next', 1, 'Дальше >>', 'general', 'gen'),
('pmnt_paymtd_manual_description', 1, '<strong>Ручная обработка платежей</strong><br /> Платежи, которые вы контролируете вручную. Например, оплата наличными, оплата по квитанции, по счету для юридических лиц, наложенным платежем и так далее.', 'back', 'ord'),
('pmnt_paymtd_online_description', 1, '<strong>Через платежную онлайн-систему</strong><br /> Прием платежей в таких платежных системах как WebMoney, Яндекс.Деньги, PayPal и другие.', 'back', 'gen'),
('pmnt_paymtd_cc_description', 1, '<strong>По кредитным картам</strong><br /> Прием платежей по кредитным картам через различные платежные системы или ручная обработка платежей по кредитным картам (пользователь вводит информации о карте при оформлении заказа, и затем вы вручную обрабатываете платеж через какую-либо платежную систему).', 'back', 'ord'),
('btn_back', 1, '<< Назад', 'general', 'gen'),
('enabled', 1, 'Включен', 'general', 'gen'),
('mdlc_russianpost_title', 1, 'Почта России', 'back', 'mdl'),
('mdlc_upsshippingmodule_title', 1, '', 'back', 'mdl'),
('mdlc_uspsshippingmodule_title', 1, '', 'back', 'mdl'),
('mdlc_intershippermodule_title', 1, 'Компания-перевозчик', 'back', 'mdl'),
('mdlc_couriershippingmodule_title', 1, 'Курьер', 'back', 'mdl'),
('mdlc_fedexshippingmodule_title', 1, '', 'back', 'mdl'),
('mdlc_dhlshippingmodule_title', 1, '', 'back', 'mdl'),
('mdlc_couriershippingmodule2_title', 1, 'Курьер', 'back', 'mdl'),
('mdlc_clinkpoint_description', 1, '', 'back', 'mdl'),
('mdlc_clinkpoint_title', 1, '', 'back', 'mdl'),
('mdlc_linkpointapicc_description', 1, '', 'back', 'mdl'),
('mdlc_linkpointapicc_title', 1, '', 'back', 'mdl'),
('mdlc_jccredirectlink_description', 1, '', 'back', 'mdl'),
('mdlc_jccredirectlink_title', 1, '', 'back', 'mdl'),
('mdlc_innovativegateway_description', 1, '', 'back', 'mdl'),
('mdlc_innovativegateway_title', 1, '', 'back', 'mdl'),
('mdlc_ideal_basic_description', 1, '', 'back', 'mdl'),
('mdlc_ideal_basic_title', 1, '', 'back', 'mdl'),
('mdlc_hsbc_description', 1, '', 'back', 'mdl'),
('mdlc_hsbc_title', 1, '', 'back', 'mdl'),
('mdlc_gspay_description', 1, '', 'back', 'mdl'),
('mdlc_gspay_title', 1, '', 'back', 'mdl'),
('mdlc_eselectplus_description', 1, '', 'back', 'mdl'),
('mdlc_eselectplus_title', 1, '', 'back', 'mdl'),
('mdlc_ceprocessingnetwork_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_ceprocessingnetwork_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_epdq_description', 1, '', 'back', 'mdl'),
('mdlc_epdq_title', 1, '', 'back', 'mdl'),
('mdlc_cegold_description', 1, 'Оплата через платежную систему <a href="http://www.e-gold.com">E-Gold</a>. У вас должен быть аккаунт в платежной системе E-Gold для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cegold_title', 1, '', 'back', 'mdl'),
('mdlc_cyberplat_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cyberplat_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_chronopay_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_chronopay_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_chronopaydirect_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_chronopaydirect_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_paymentech_description', 1, '', 'back', 'mdl'),
('mdlc_paymentech_title', 1, '', 'back', 'mdl'),
('mdlc_ccavenue_description', 1, '', 'back', 'mdl'),
('mdlc_ccavenue_title', 1, '', 'back', 'mdl'),
('mdlc_cauthorizenetsim_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cauthorizenetsim_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cauthorizenetaim_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cauthorizenetaim_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cassist_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_c2checkout_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cassist_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_c2checkout_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cyandexmoney_description', 1, 'Оплата через платежную систему <a href="http://money.yandex.ru">Яндекс.Деньги</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cyandexmoney_title', 1, 'Яндекс.Деньги', 'back', 'mdl'),
('mdlc_cinvoicephys_description', 1, 'Оплата по квитанции в ближайшем отделении банка. Квитанция на оплату будет оформлена автоматически после оформления заказа.', 'back', 'mdl'),
('mdlc_cinvoicephys_title', 1, 'Оплата по квитанции', 'back', 'mdl'),
('mdlc_cinvoicejur_description', 1, 'Счет на имя вашей организации будет оформлен автоматически после оформления заказа.', 'back', 'mdl'),
('mdlc_cinvoicejur_title', 1, 'Оплата по счету', 'back', 'mdl'),
('mdlc_yandexcpp_description', 1, 'Оплата через платежную систему <a href="http://money.yandex.ru">Яндекс.Деньги</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_yandexcpp_title', 1, 'Яндекс.Деньги', 'back', 'mdl'),
('mdlc_cworldpay_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cworldpay_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cwebmoney_description', 1, 'Оплата через платежную систему <a href="http://www.webmoney.ru">WebMoney</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cwebmoney_title', 1, 'WebMoney', 'back', 'mdl'),
('mdlc_usaepay_description', 1, '', 'back', 'mdl'),
('mdlc_usaepay_title', 1, '', 'back', 'mdl'),
('mdlc_tclink_description', 1, '', 'back', 'mdl'),
('mdlc_tclink_title', 1, '', 'back', 'mdl'),
('mdlc_streamlinedo_description', 1, '', 'back', 'mdl'),
('mdlc_streamlinedo_title', 1, '', 'back', 'mdl'),
('mdlc_skipjackdc_description', 1, '', 'back', 'mdl'),
('mdlc_skipjackdc_title', 1, '', 'back', 'mdl'),
('mdlc_setcomcheckoutbtn_description', 1, '', 'back', 'mdl'),
('mdlc_setcomcheckoutbtn_title', 1, '', 'back', 'mdl'),
('mdlc_csecurepay_description', 1, '', 'back', 'mdl'),
('mdlc_csecurepay_title', 1, '', 'back', 'mdl'),
('mdlc_secpay_description', 1, '', 'back', 'mdl'),
('mdlc_secpay_title', 1, '', 'back', 'mdl'),
('mdlc_crupaypaymentrequest_description', 1, 'Оплата через платежную систему <a href="http://www.rupay.com">RUpay</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_crupaypaymentrequest_title', 1, 'RUpay', 'back', 'mdl'),
('mdlc_crupay_description', 1, 'Оплата через платежную систему <a href="http://www.rupay.com">RUpay</a>. У вас должен быть счет в этой системе для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_crupay_title', 1, 'RUpay', 'back', 'mdl'),
('mdlc_roboxchange_description', 1, '', 'back', 'mdl'),
('mdlc_roboxchange_title', 1, '', 'back', 'mdl'),
('mdlc_cpsigatehtml_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cpsigatehtml_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cprotx_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cprotx_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cpaypal_description', 1, 'Оплата через платежную систему <a href="http://www.paypal.com">PayPal</a>. У вас должен быть аккаунт в платежной системе PayPal для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cpaypal_title', 1, '', 'back', 'mdl'),
('mdlc_cpaypaldirect_description', 1, '', 'back', 'mdl'),
('mdlc_cpaypaldirect_title', 1, '', 'back', 'mdl'),
('mdlc_payflowpro_description', 1, '', 'back', 'mdl'),
('mdlc_payflowpro_title', 1, '', 'back', 'mdl'),
('mdlc_cverisignlink_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cverisignlink_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cnochex_description', 1, 'Оплата через платежную систему <a href="http://www.nochex.com">NOCHEX</a>. У вас должен быть аккаунт в платежной системе NOCHEX для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cnochex_title', 1, '', 'back', 'mdl'),
('mdlc_cnetregistry_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cnetregistry_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_nab_nsips_description', 1, '', 'back', 'mdl'),
('mdlc_nab_nsips_title', 1, '', 'back', 'mdl'),
('mdlc_cmoneybookers_description', 1, 'Оплата через платежную систему <a href="http://www.moneybookers.com">Moneybookers</a>. У вас должен быть аккаунт в платежной системе Moneybookers для того, чтобы произвести оплату.', 'back', 'mdl'),
('mdlc_cmoneybookers_title', 1, '', 'back', 'mdl'),
('mdlc_cmanualccprocessing_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cmanualccprocessing_title', 1, 'Кредитная карта', 'back', 'mdl'),
('mdlc_cmalse_description', 1, 'Оплата кредитной картой онлайн', 'back', 'mdl'),
('mdlc_cmalse_title', 1, 'Кредитная карта', 'back', 'mdl'),
('shp_edit_method', 1, 'Редактирование способа доставки', 'back', 'ord'),
('shp_add_method', 1, 'Добавить способ доставки', 'back', 'ord'),
('shp_to_list', 1, 'К списку способов доставки', 'back', 'ord'),
('shp_add_shipping_method', 1, 'Добавление способа доставки (шаг %STEP_NUMBER% из 2)', 'back', 'ord'),
('shp_empty_name', 1, 'Введите название способа доставки', 'back', 'ord'),
('shp_method_removed', 1, 'Cпособ доставки удален', 'back', 'ord'),
('mdls_customshipping_description', 1, 'Отключить автоматический расчет стоимости для этого способа доставки заказа', 'back', 'mdl'),
('mdls_customshipping_title', 1, 'Без расчета стоимости доставки', 'back', 'mdl'),
('mdls_manualpayment_description', 1, 'Любой способ оплаты, не связанный ни с каким платежным действием (модулем), выполняемым магазином автоматически. Например, оплата наличными, наложенным платежем, или любой другой способ оплаты.', 'back', 'mdl'),
('mdls_manualpayment_title', 1, 'Произвольный способ оплаты', 'back', 'mdl'),
('imm_permalink', 1, 'Постоянная ссылка', 'back', 'imm'),
('imm_view_image', 1, 'Просмотр', 'back', 'imm'),
('imm_folder_prdpicts', 1, 'Картинки продуктов', 'back', 'imm'),
('imm_folder_images', 1, 'Картинки', 'back', 'imm'),
('shp_module_settings', 1, 'Настройки расчета стоимости доставки - %MODULE_NAME%', 'back', 'ord'),
('pmnt_module_settings', 1, 'Настройки модуля оплаты - %MODULE_NAME%', 'back', 'ord'),
('shp_modules_list_title', 1, 'Выберите способ автоматического расчета стоимости доставки', 'back', 'ord'),
('pmnt_mtdtype_title_manual', 1, 'Добавьте способ оплаты, который вы контролируете вручную', 'back', 'ord'),
('pmnt_mtdtype_title_online', 1, 'Выберите платежную систему', 'back', 'ord'),
('pmnt_mtdtype_title_cc', 1, 'Выберите платежную систему для обработки платежей по кредитным картам', 'back', 'ord'),
('pmnt_modules_types_title', 1, 'Я хочу принимать платежи:', 'back', 'ord'),
('cfg_store_domain_description', 1, 'Введите адрес вашего интернет-магазина в произвольной форме. Этот адрес будет добавлен в подпись в электронных сообщениях, которые отправляются покупателям (например, в уведомления о заказах).', 'back', 'cfg'),
('cfg_store_domain_title', 1, 'Адрес вашего интернет-магазина', 'back', 'cfg'),
('pmnt_page_description', 1, 'Добавьте все возможные способы оплаты заказов в вашем интернет-магазине на этой странице.', 'back', 'ord'),
('shp_page_description', 1, 'Добавьте все возможные способы доставки в вашем интернет-магазине на этой странице.', 'back', 'ord'),
('pgn_checkout_replacement', 1, 'Альтернативы оформлению заказа', 'general', 'gen'),
('btn_disable', 1, 'Выключить', 'general', 'gen'),
('btn_enable', 1, 'Включить', 'general', 'gen'),
('search_results', 1, 'Результаты поиска', 'general', 'gen'),
('no_results', 1, 'Ничего не найдено', 'general', 'gen'),
('pgn_product_widgets', 1, 'Виджеты', 'general', 'gen'),
('pwgt_view_product', 1, 'Просмотр %PRODUCT_NAME% в пользовательской части...', 'back', 'prd'),
('pwgt_view_cart_ttl', 1, 'Виджет "Открыть корзину / Оформить заказ"', 'back', 'prd'),
('pwgt_view_cart_note', 1, 'ВАЖНО: Этот код только лишь отобразит кнопку для открытия страницы корзины, но корзина будет пуста, если покупатель не добавил продукты в нее. Необходимо использовать этот виджет совместно с виджетом "Добавить в корзину".', 'back', 'prd');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('pwgt_view_cart_dscr', 1, 'Этот виджет отображает кнопку "Корзина", по нажатию на которую пользователь сможет посмотреть текущее содержимое корзины, не уходя с вашего веб-сайта или блога, и приступить к оформлению заказа:', 'back', 'prd'),
('pwgt_product_widgets_ttl', 1, 'Виджеты "Информация о продукте" и "Добавить продукт в корзину"', 'back', 'prd'),
('pwgt_product_detailed_info_ttl', 1, 'Информация о продукте', 'back', 'prd'),
('pwgt_product_detailed_info_dscr', 1, 'Этот виджет отобразит краткую информацию об этом продукте вместе с кнопкой "Добавить в корзину".', 'back', 'prd'),
('pwgt_preview', 1, 'Так это будет выглядеть на вашем сайте:', 'back', 'prd'),
('pwgt_find_product', 1, 'Найти продукт', 'back', 'prd'),
('pwgt_edit_product', 1, 'Редактировать %PRODUCT_NAME%...', 'back', 'prd'),
('pwgt_description', 1, 'Здесь вы найдете инструменты, с помощью которых сможете <strong>превратить ваш любой веб-сайт или блог в интернет-магазин</strong> &mdash; будь то веб-сайт со сложной системой управления, веб-сайт на Народ.ру, или же блог ЖЖ, Mail.Ru, Яндекс, Blogger &mdash; это не имеет значения.<br /><br />Виджет (widget) &mdash; это фрагмент HTML-кода, который вы добавляете на страницу вашего веб-сайта, а он реализуют некоторую функцию. Здесь вы можете получить HTML-код виджета, который отобразит информацию о любом продукте вашего интернет-магазина (который вы добавите здесь), или же который дает возможность заказать определенный продукт прямо на вашем веб-сайте или блоге, не покидая его контекст.<br /><br />Для внедрения виджета на ваш веб-сайт просто получите его HTML-код здесь и добавьте на страницу сайта.<br />Все заказы, которые посетители вашего веб-сайта оформят, вы увидите здесь - в администрировании магазина, а также получите уведомления о них по электронной почте.<br /><br />Смотрите наши <a href="http://www.webasyst.ru/support/shop/manual.html#Widgets" target="_blank">примеры использования виджетов</a>.', 'back', 'gen'),
('pwgt_add2cart_ttl', 1, 'Только кнопка "Добавить в корзину"', 'back', 'prd'),
('pwgt_add2cart_dscr', 1, 'Используйте этот виджет, если информация об этом продукте уже опубликована на странице вашего сайта или блога, и вы просто хотите добавить возможность заказать этот продукт. Этот виджет отобразит всего лишь одну кнопку &mdash; "Добавить в корзину". Добавление продукта и его заказ будут происходить так, что пользователь не покинет контекст веб-сайта, куда вы установили виджет.', 'back', 'prd'),
('search_products', 1, 'Поиск товаров', 'front', 'gen'),
('ordr_action_source_admin', 1, 'продавцом', 'general', 'ord'),
('ordr_action_source_customer', 1, 'customer', 'general', 'ord'),
('ordr_action_source_robot', 1, 'robot', 'general', 'ord'),
('ordr_comment_delivered', 1, 'Заказ доставлен', 'general', 'ord'),
('ordr_comment_charge', 1, 'Деньги списаны с кредитной карты клиента', 'general', 'ord'),
('ordr_comment_refund', 1, 'Деньги возвращены клиенту', 'general', 'ord'),
('ordr_comment_restore', 1, 'Заказ восстановлен и принят в обработку', 'general', 'ord'),
('ordr_comment_processing_order', 1, 'Принят в обработку', 'general', 'ord'),
('ordr_comment_canceled_by', 1, 'Отменен', 'general', 'ord'),
('ordr_forbidden_order_action', 1, 'Это действие с заказом запрещено', 'general', 'ord'),
('str_italic', 1, 'Курсив', 'general', 'gen'),
('str_bold', 1, 'Жирный', 'general', 'gen'),
('str_color', 1, 'Цвет', 'general', 'gen'),
('ordsts_custom_title', 1, 'Произвольные статусы заказов', 'back', 'ord'),
('ordsts_custom_description', 1, 'В дополнение к предопределенным статусам вы можете добавить любые произвольные статусы, чтобы более точно отразить процесс обработки заказов в вашем интернет-магазине.', 'back', 'ord'),
('ordsts_predefined_description', 1, 'Следующие статусы заказов вашего интернет-магазина - предопределенные. Вы можете редактировать настройки отображения этих статусов.<br />Статусы "Деньги списаны с карты клиента" и "Деньги возвращены" используются только для заказов, которые оплачиваются кредитными картами.', 'back', 'ord'),
('ordr_confirm_refund', 1, 'Подтвердить возврат денег по этому заказу?', 'general', 'ord'),
('ordr_confirm_cancel', 1, 'Отменить этот заказ?', 'general', 'ord'),
('ordr_orderaction_charge', 1, 'Списать деньги с карты клиента', 'general', 'ord'),
('ordr_orderaction_refund', 1, 'Вернуть деньги', 'general', 'ord'),
('ordr_orderaction_deliver', 1, 'Оплачен и доставлен', 'general', 'ord'),
('ordr_orderaction_restore', 1, 'Восстановить', 'general', 'ord'),
('ordr_orderaction_process', 1, 'В обработку', 'general', 'ord'),
('ordr_orderaction_cancel', 1, 'Отменить заказ', 'general', 'ord'),
('ordr_add_comment', 1, 'Добавить заметку в историю обработки заказа', 'back', 'ord'),
('ordr_order_changed', 1, 'Информация о заказе обновлена', 'back', 'ord'),
('pgn_product_lists', 1, 'Списки', 'general', 'gen'),
('prdlist_lbl_products_in_list', 1, '%PRODUCTS_NUM% продукт(ов)', 'back', 'prd'),
('prdlist_add_list_title', 1, 'Создать новый список продуктов', 'back', 'prd'),
('prdlist_products_in_list', 1, 'Продукты в списке', 'back', 'prd'),
('prdlist_id', 1, 'ID', 'back', 'prd'),
('prdlist_wrong_chars_in_id', 1, 'ID должен содержать только латинские символы (a-z) или цифры', 'back', 'prd'),
('prdlist_list_id_reserved', 1, 'Этот ID уже используется. Измените ID и повторите попытку.', 'back', 'prd'),
('prdlist_products_title', 1, 'Для изменения порядка сортировки продуктов просто перетаскивайте их внутри списка с помощью мышки.', 'back', 'prd'),
('prdlist_add_product', 1, 'Добавить продукт в список', 'back', 'prd'),
('prdlist_find_product', 1, 'Найти продукт', 'back', 'prd'),
('prdlist_product_added', 1, 'Продукт добавлен в список', 'back', 'prd'),
('prdlist_no_products_in_list', 1, 'В списке нет продуктов', 'back', 'prd'),
('str_week_monday', 1, 'Понедельник', 'general', 'gen'),
('str_week_tuesday', 1, 'Вторник', 'general', 'gen'),
('str_week_wednesday', 1, 'Среда', 'general', 'gen'),
('str_week_thursday', 1, 'Четверг', 'general', 'gen'),
('str_week_friday', 1, 'Пятница', 'general', 'gen'),
('str_week_saturday', 1, 'Суббота', 'general', 'gen'),
('str_week_sunday', 1, 'Воскресенье', 'general', 'gen'),
('pgn_login', 1, 'Вход с паролем', 'general', 'gen'),
('pgn_logout', 1, 'Выйти', 'general', 'gen'),
('err_product_not_found', 1, 'Продукт не найден', 'general', 'gen'),
('prdlist_description', 1, 'Здесь вы можете объединять различные продукты вашего магазина в списки. <br />Списки используются для наглядного представления продуктов вашим покупателям.<br /><br />С помощью инструментов редактирования дизайна вы сможете отображать любой из списков продуктов в пользовательской части магазина.<br />Примеры списков: специальные предложения, бестселлеры, новые поступления, продукты со скидкой и т.п.', 'back', 'gen'),
('srep_description', 1, 'Ниже представлены графики, отражающие динамику продаж вашего интернет-магазина.<br />Отчет "Динамика продаж" позволяет сопоставить объем доставленных заказов ко всем совершенным заказам.<br />Отчеты "Сравнение" и "Продажи за весь период" показывают данные только о доставленных заказах.', 'back', 'rep'),
('cpt_lbl_category_tree', 1, 'Дерево категорий', 'general', 'cpt'),
('cpt_lbl_currency_selection', 1, 'Выбор валюты', 'general', 'cpt'),
('cpt_lbl_custom_html', 1, 'Произвольный HTML-код', 'general', 'cpt'),
('cpt_lbl_language_selection', 1, 'Выбор языка', 'general', 'cpt'),
('cpt_lbl_logo', 1, 'Логотип', 'general', 'cpt'),
('cpt_lbl_main_content', 1, 'Главное содержание', 'general', 'cpt'),
('cpt_lbl_news_short_list', 1, 'Блог / Новости', 'general', 'cpt'),
('cpt_lbl_product_lists', 1, 'Список продуктов', 'general', 'cpt'),
('cpt_lbl_product_search', 1, 'Поиск продуктов', 'general', 'cpt'),
('cpt_lbl_root_categories', 1, 'Развернутый список категорий', 'general', 'cpt'),
('cpt_lbl_shopping_cart_info', 1, 'Корзина', 'general', 'cpt'),
('cpt_lbl_survey', 1, 'Голосование', 'general', 'cpt'),
('lsgr_taxes', 1, 'Налоги', 'back', 'gen'),
('cpt_drop_for_delete', 1, 'Переместите компонент сюда для удаления', 'general', 'cpt'),
('lsgr_checkout', 1, 'Оформление заказов', 'back', 'gen'),
('lsgr_customers', 1, 'Покупатели', 'back', 'gen'),
('lsgr_email', 1, 'Email-сообщения', 'back', 'gen'),
('lsgr_feedback', 1, 'Обратная связь', 'back', 'gen'),
('lsgr_shopping_cart', 1, 'Корзина', 'back', 'gen'),
('lsgr_affiliate_program', 1, 'Партнерская программа', 'back', 'gen'),
('lsgr_news', 1, 'Блог / Новости', 'back', 'gen'),
('lsgr_countries_regions', 1, 'Страны и области', 'back', 'gen'),
('lsgr_discounts', 1, 'Скидки', 'back', 'gen'),
('lsgr_errors', 1, 'Сообщения об ошибках', 'back', 'gen'),
('lsgr_info_pages', 1, 'Информационные страницы', 'back', 'gen'),
('lsgr_link_exchange', 1, 'Обмен ссылками', 'back', 'gen'),
('lsgr_orders', 1, 'Заказы', 'back', 'gen'),
('lsgr_sms', 1, 'SMS', 'back', 'gen'),
('lsgr_subscribers', 1, 'Подписчики на новости', 'back', 'gen'),
('lsgr_survey', 1, 'Голосование', 'back', 'gen'),
('lgr_hidden', 1, '(скрытый)', 'back', 'gen'),
('prdset_tab_customparams', 1, 'Доп. характеристики', 'back', 'prd'),
('pgn_googleanalytics', 1, 'Google Analytics', 'general', 'gen'),
('prdcat_add_category', 1, 'Новая категория', 'back', 'prd'),
('prdcat_edit_category', 1, 'Редактирование категории: %CATEGORY_NAME%', 'back', 'prd'),
('prdlist_edit_list_title', 1, 'Редактирование списка продуктов: %LIST_NAME%', 'back', 'prd'),
('survey_page_description', 1, 'Здесь вы можете создать голосование (опрос) для посетителей вашего интернет-магазина и просматривать результаты голосования.', 'back', 'srv'),
('ordr_order_list', 1, 'Список заказов', 'back', 'ord'),
('pgn_user_info', 1, 'Покупатель: %CUSTOMER_NAME%', 'general', 'ord'),
('infpg_editpage', 1, 'Редактирование страницы:', 'back', 'inf'),
('blog_edit_post', 1, 'Редактирование сообщения:', 'back', 'nws'),
('shp_shipping_types', 1, 'Способы доставки', 'back', 'ord'),
('btn_recalculate', 1, 'Пересчитать', 'general', 'gen'),
('cart_checkout_alternative', 1, '&mdash; или используйте &mdash;', 'front', 'crt'),
('prdcat_btn_delete_category', 1, 'Удалить категорию', 'back', 'prd'),
('prdcat_btn_edit_category', 1, 'Редактировать категорию', 'back', 'prd'),
('prdcat_with_selected', 1, 'Выбранные продукты', 'back', 'prd'),
('prdcat_btn_update_prices_sort', 1, 'Сохранить цены и сортировку', 'back', 'prd'),
('catset_empty_name', 1, 'Введите название категории', 'back', 'prd'),
('ordr_comment_orderplaced', 1, 'Заказ оформлен покупателем', 'general', 'ord'),
('le_no_links_selected', 1, 'Не выбрано ни одной ссылки', 'back', 'lke'),
('le_page_description', 1, 'Ссылки, которые вы добавите в этом разделе, будут опубликованы в пользовательской части вашего интернет-магазина в отдельном разделе "Обмен ссылками".<br />С помощью этого инструмента вы можете обмениваться ссылками с вашими партнерами. <a href="http://ru.wikipedia.org/wiki/%D0%9E%D0%B1%D0%BC%D0%B5%D0%BD_%D1%81%D1%81%D1%8B%D0%BB%D0%BA%D0%B0%D0%BC%D0%B8" target="_blank">Что дает обмен ссылками?</a>', 'back', 'lke'),
('imm_folder_prdpicts_dscr', 1, 'Все загружаемые изображения помещаются в папку: <strong>[url]</strong>', 'back', 'imm'),
('imm_folder_images_dscr', 1, 'Все загружаемые изображения помещаются в папку: <strong>[url]</strong>', 'back', 'imm'),
('tax_page_description', 1, 'В этом разделе вы можете настроить систему расчета налогов в вашем интернет-магазине для случая, если налог не включен в стоимость продуктов и должен быть прибавлен к общей стоимости при оформлении заказа.', 'back', 'txs'),
('usr_enter_loginemail', 1, 'Введите логин или адрес', 'front', 'cmr'),
('cpt_lbl_product_params_selectable', 1, 'Дополнительные характеристики продукта (выбираемые)', 'general', 'cpt'),
('cpt_lbl_product_params_fixed', 1, 'Дополнительные характеристики продукта (фиксированные)', 'general', 'cpt'),
('thm_component_dnd_or_dblclick', 1, 'Перетащите или двойной клик', 'general', 'thm'),
('msg_error_wrong_email', 1, 'Введите правильный электронный адрес', 'general', 'gen'),
('str_show_other_languages', 1, 'Показать поля для всех языков', 'back', 'gen'),
('btn_viewcart', 1, 'Корзина', 'general', 'gen'),
('btn_add2cart', 1, 'Добавить в корзину', 'general', 'gen'),
('ordr_added_comment', 1, 'Добавлен комментарий', 'general', 'ord'),
('ordr_set_custom_status_comment', 1, 'Заказ помещен в статус %STATUS_NAME%', 'back', 'ord'),
('smshosted_description', 1, 'Введите номера мобильных телефонов, на которые вы хотите получать SMS-уведомления о всех новых заказах.<br />Обращаем ваше внимание на то, что отправка SMS платная. Стоимость одного сообщения может составлять в зависимости от вашего оператора порядка 5-10 центов. Стоимость каждого отправленного SMS-сообщения будет списана с вашего SMS-баланса.', 'back', 'sms'),
('goto_storefront', 1, '&laquo; перейти к витрине магазина', 'front', 'chk'),
('prdopt_page_description', 1, 'Здесь вы можете создать совершенно произвольные характеристики (параметры), которые подходят продуктам вашего интернет-магазина - от цвета и размера, до мощности двигателя и тарифного плана. После добавления характеристики здесь вы можете заполнить ее значение для каждого вашего продукта.', 'back', 'prd'),
('chckrpl_page_description', 1, 'Здесь вы можете разрешить вашим покупателям оформлять заказы в вашем магазине через <a href="http://checkout.google.com/sell?promo=sewebasyst" target="_blank">Google Checkout</a> и <a href="https://www.paypal.com/us/mrb/pal=XREZHZ8R3F4YY" target="_blank">PayPal Express Checkout</a> (как альтернативу к обычному способу оформлению заказа). Все заказы, оформленные таким способом, сохраняются в базу данных вашего интернет-магазина как и любой другой заказ.<br />К сожалению, в настоящее время платежные системы Google Checkout и PayPal Express Checkout работают только для продавцов, зарегистрированных в США и Великобритании.', 'back', 'gen'),
('err_input_country', 1, 'Пожалуйста, введите страну', 'general', 'gen'),
('err_input_password', 1, 'Пожалуйста, введите пароль', 'general', 'gen'),
('email_shippingisincluded', 1, '(включена в общую стоимость заказа, указанную выше)', 'general', 'eml'),
('ordr_source_widgets', 1, 'Виджеты', 'back', 'ord'),
('ordr_source_storefront', 1, 'Витрина', 'back', 'ord'),
('ordr_source', 1, 'Источник', 'back', 'ord'),
('usr_addresses_num', 1, 'и еще %ADRESSES_NUM% адреса(ов)', 'front', 'cmr'),
('usr_orders_num', 1, 'У вас <a href="%ORDERS_LIST_URL%">%ORDERS_NUM% заказов</a>', 'front', 'cmr'),
('usr_custinfo_other_addresses', 1, 'Остальные адреса', 'general', 'cmr'),
('usr_set_default_address', 1, 'Сделать адресом по умолчанию', 'front', 'cmr'),
('cfg_orderid_prefix_title', 1, 'Префикс номеров заказа', 'back', 'cfg'),
('cfg_orderid_prefix_description', 1, 'Ввведите что-нибудь, чтобы дать номерам заказов понятный вид', 'back', 'cfg'),
('featured_products', 1, 'Специальные предложения', 'front', 'gen'),
('browse_by_category', 1, 'Продукты по категориям', 'front', 'gen'),
('cpt_align_right', 1, 'вправо', 'back', 'cpt'),
('cpt_align_center', 1, 'по центру', 'back', 'cpt'),
('cpt_align_left', 1, 'влево', 'back', 'cpt'),
('cpt_ovst_linkColor', 1, 'Цвет ссылок', 'back', 'cpt'),
('cpt_ovst_textAlign', 1, 'Выравнивание текста', 'back', 'cpt'),
('cpt_ovst_fontColor', 1, 'Цвет текста', 'back', 'cpt'),
('cpt_ovst_borderWidth', 1, 'Ширина рамки (px)', 'back', 'cpt'),
('cpt_ovst_borderColor', 1, 'Цвет рамки', 'back', 'cpt'),
('cpt_ovst_backgroundColor', 1, 'Цвет фона', 'back', 'cpt'),
('cpt_ovst_title', 1, 'Переопределить стили', 'back', 'cpt'),
('cpt_ovst_description', 1, 'Если вы включите эту опцию, то сможете перезаписать правила отображения этого компонента, определенные на вкладке "Стили (CSS)".', 'back', 'cpt'),
('imm_noimages', 1, 'В этой папке нет изображений', 'back', 'imm'),
('err_occupied_email', 1, 'Введенный вами электронный адрес занят. Пожалуйста, введите другой.', 'general', 'gen'),
('prdimport_step', 1, 'Шаг', 'general', 'gen'),
('thm_new_comming_soon', 1, 'Новые варианты дизайна будут представлены скоро', 'general', 'gen'),
('cpt_ovst_padding', 1, 'Отступ (px)', 'general', 'gen'),
('cpt_lbl_tag_cloud', 1, 'Облако тегов', 'hidden', 'cpt'),
('cpt_tgcld_tags_num', 1, 'Максимальное количество тегов в облаке', 'hidden', 'cpt'),
('imm_images_deleted', 1, 'Изображения удалены', 'back', 'imm'),
('imm_delall_confirmation', 1, 'Вы действительно хотите удалить отмеченные изображения?', 'back', 'gen'),
('imm_delete_all', 1, 'Удалить все', 'back', 'imm'),
('thm_open_fullscreen', 1, 'На весь экран', 'back', 'thm'),
('thm_close_fullscreen', 1, 'Закрыть', 'back', 'thm'),
('thm_allow_popups', 1, 'Разрешите popup-окна в настройках браузера и нажмите по кнопке "На весь экран" еще раз.', 'back', 'thm'),
('lbl_product_added', 1, 'Добавлено новых продуктов', 'back', 'gen'),
('lbl_product_modify', 1, 'Обновлено продуктов', 'back', 'gen'),
('lbl_category_added', 1, 'Добавлено категорий', 'back', 'gen'),
('lbl_prdimport_report', 1, 'Отчет об импорте продуктов', 'back', 'gen'),
('msg_coupons_disabled', 1, 'Скидки по купонам отключены. Включите эту возможность', 'back', 'dsc'),
('lbl_discount_settings', 1, 'в настройках скидок', 'back', 'dsc'),
('lbl_loading', 1, 'Загрузка', 'general', 'gen'),
('pgn_order_creater', 1, 'Создать новый заказ', 'back', 'ord'),
('btn_proceed', 1, 'Продолжить', 'general', 'gen'),
('cfg_voiting_for_products_title', 1, 'Покупатели могут оценивать продукты', 'back', 'cfg'),
('cfg_voiting_for_products_descr', 1, 'Если включить, покупатели могут голосовать за продукты оценкой от 1 до 5 звезд. Для каждого продукта будет показан его суммарный рейтинг.', 'back', 'cfg'),
('lbl_no_products_in_order', 1, 'В этом заказе нет ни одного продукта.', 'general', 'ord'),
('lbl_loading_cinfo', 1, 'Загрузка информации о покупателе', 'general', 'ord'),
('lbl_assign_to_existing_customer', 1, 'Оформить заказ на уже зарегистрированного покупателя', 'back', 'ord'),
('ordr_comment_created_by_admin', 1, 'Заказ создан {0}', 'back', 'ord'),
('ordr_comment_admin_modified', 1, 'Заказ изменен {0}', 'back', 'ord'),
('msg_cant_edit_order', 1, 'Заказы в статусе %0% нельзя редактировать', 'back', 'ord'),
('lbl_edit_discount_descr', 1, 'редактировать описание скидки', 'back', 'ord'),
('lbl_creating_order', 1, 'Создание заказа', 'back', 'ord'),
('pgn_order_editor', 1, 'Редактирование заказа', 'back', 'ord'),
('btn_assign_to_customer', 1, 'Передать заказ другому покупателю', 'back', 'ord'),
('btn_find_products', 1, 'Найти продукты', 'back', 'ord'),
('err_cant_delete_last_product', 1, 'Нельзя удалить все продукты из заказа.', 'back', 'ord'),
('lbl_add_products_to_order', 1, 'Добавить продукты в заказ', 'back', 'ord'),
('hdr_price_for_item', 1, 'Цена за штуку', 'back', 'ord'),
('lbl_edit_cust_info', 1, 'редактировать данные %0%', 'back', 'ord'),
('btn_change_addr', 1, 'Изменить адрес', 'general', 'gen'),
('btn_make_route', 1, 'Проложить маршрут', 'general', 'gen'),
('btn_make_route_short', 1, 'Проложить', 'general', 'gen'),
('btn_print', 1, 'Печать', 'general', 'gen'),
('btn_search_again', 1, 'Повторить поиск', 'general', 'gen'),
('cfg_warehouse_address_descr', 1, 'Рекомендуется, если вы предоставляете курьерскую доставку. Эта функция дает быструю возможность построить маршрут от вашего офиса (склада) до клиента. Работает на основе Google Maps. Пример ввода: Москва, Ленинский проспект, 37', 'general', 'gen'),
('cfg_warehouse_address_name', 1, 'Адрес вашего офиса или склада', 'general', 'gen'),
('gerr_geo_bad_key', 1, 'Ключ Google Maps API введен неверно или не соответствует доменному имени, для которого был создан.', 'general', 'gen'),
('gerr_geo_bad_request', 1, 'Ошибка обработки запроса с данными маршрута.', 'general', 'gen'),
('gerr_geo_missing_query', 1, 'Не задан адрес для поиска.', 'general', 'gen'),
('gerr_geo_server_error', 1, 'Произошла неопознанная ошибка обработки запроса на стороне Google Maps.', 'general', 'gen'),
('gerr_geo_unknown_address', 1, 'Указанный адрес не найден на картах Google. Адрес задан неверно или не зарегистрирован в базе данных Google Maps.', 'general', 'gen'),
('gerr_unknown', 1, 'Произошла неопознанная ошибка.', 'general', 'gen'),
('lbl_address_lookup', 1, 'Найти адрес на карте', 'general', 'gen'),
('lbl_edit_details', 1, 'Редактировать заказ', 'back', 'ord'),
('lbl_error', 1, 'Ошибка', 'general', 'gen'),
('lbl_edit_order', 1, 'Редактирование заказа', 'back', 'ord'),
('lbl_lookup', 1, 'Показать на карте', 'general', 'gen'),
('lbl_not_found', 1, 'Не найдено', 'general', 'gen'),
('lbl_route_from', 1, 'Откуда', 'general', 'gen'),
('lbl_route_to', 1, 'Куда', 'general', 'gen'),
('msg_input_addr_from', 1, 'Введите адрес, откуда вы доставляете заказ', 'general', 'gen'),
('lbl_order_dsc_by_amount', 1, 'По сумме заказа', 'general', 'dsc'),
('lbl_order_dsc_by_coupon', 1, 'По купону', 'general', 'dsc'),
('lbl_order_dsc_by_orders', 1, 'Накопительная', 'general', 'dsc'),
('lbl_order_dsc_by_usergroup', 1, 'По группе', 'general', 'dsc'),
('lbl_frnt_discount_coupon', 1, 'Купон на скидку (если есть)', 'front', 'dsc'),
('lbl_processing_coupon', 1, 'Проверка', 'front', 'dsc'),
('lbl_wrong_coupon', 1, 'Купон не найден', 'front', 'dsc'),
('cfg_calc_dsc_max', 1, 'Максимальная из скидок по группе пользователя, накопительной и по сумме заказа плюс скидка по купону (скидка по купону всегда прибавляется)', 'back', 'dsc'),
('cfg_calc_dsc_summ', 1, 'Как сумму скидок по всем правилам', 'back', 'dsc'),
('discount_coupons', 1, 'Купоны на скидку', 'back', 'dsc'),
('err_dc_invalid_code', 1, 'Недопустимый код купона', 'back', 'dsc'),
('err_dc_invalid_date', 1, 'Недопустимая дата', 'back', 'dsc'),
('err_dc_invalid_discount_percent', 1, 'Недопустимое значение скидки в процентах', 'back', 'dsc'),
('err_dc_sql_fail', 1, 'Ошибка выполнения SQL-запроса', 'back', 'dsc'),
('lbl_btn_create_coupon', 1, 'Создать', 'back', 'dsc'),
('lbl_by', 1, 'По', 'back', 'dsc'),
('lbl_coupon_code', 1, 'Код купона', 'back', 'dsc'),
('lbl_coupon_comment', 1, 'Описание купона', 'back', 'dsc'),
('lbl_coupon_discount', 1, 'Скидка', 'back', 'dsc'),
('lbl_coupon_is_active', 1, 'Действующий', 'back', 'dsc'),
('lbl_coupon_not_used', 1, 'не использовался', 'back', 'dsc'),
('lbl_coupon_type', 1, 'Тип', 'back', 'dsc'),
('lbl_coupon_type_multi_use', 1, 'Многоразовый', 'back', 'dsc'),
('lbl_coupon_type_multi_use_expire', 1, 'Многоразовый, истекает', 'back', 'dsc'),
('lbl_coupon_type_multi_use_no_expire', 1, 'Многоразовый, не истекает', 'back', 'dsc'),
('lbl_coupon_type_single_use', 1, 'Одноразовый', 'back', 'dsc'),
('lbl_register_new_customer', 1, 'Зарегистрировать нового покупателя', 'back', 'ord'),
('lbl_create_discount_coupon', 1, 'Создать купон', 'back', 'dsc'),
('lbl_dsc_by_amount', 1, 'По сумме текущего заказа', 'back', 'dsc'),
('lbl_dsc_by_coupons', 1, 'купонам на скидку', 'back', 'dsc'),
('lbl_dsc_by_orders', 1, 'Накопительные скидки', 'back', 'dsc'),
('lbl_dsc_by_usergroup', 1, 'группе пользователя', 'back', 'dsc'),
('lbl_dsc_order_percent', 1, 'Скидка, %', 'back', 'dsc'),
('lbl_dsc_order_sum', 1, 'Сумма всех заказов (в основной валюте)', 'back', 'dsc'),
('lbl_enable_discounts', 1, 'Включить скидки в магазине', 'back', 'dsc'),
('lbl_expired', 1, 'Истек', 'back', 'dsc'),
('lbl_tune_discounts', 1, 'Настроить скидки', 'back', 'dsc'),
('lbl_used_times', 1, 'раз(а)', 'back', 'dsc'),
('lbl_valid_to', 1, 'Действует до', 'back', 'dsc'),
('msg_dsc_by_amount', 1, 'Поощрите покупателей делать большие заказы &mdash; предложите скидки, если сумма заказа превышает установленную.', 'back', 'dsc'),
('msg_dsc_by_coupons', 1, 'Покупатель получит скидку, если введёт код купона на скидку при оформлении заказа.', 'back', 'dsc'),
('msg_dsc_by_orders', 1, 'Скидки для зарегистрированных покупателей, уже оформлявших заказы в вашем интернет-магазине. Скидка рассчитывается исходя из общей суммы всех уже доставленных этому покупателю заказов.', 'back', 'dsc'),
('msg_dsc_by_usergroup', 1, 'Скидки для покупателей вашего интернет-магазина, прошедших регистрацию. Скидка рассчитывается по группе, к которой вы причислите покупателя.', 'back', 'dsc'),
('msg_no_coupons_defined', 1, 'Нет ни одного купона на скидку.', 'back', 'dsc'),
('pgn_discount_coupons', 1, 'Купоны на скидку', 'back', 'dsc'),
('qst_del_coupons', 1, 'Удалить выбранные купоны?', 'back', 'dsc'),
('qst_how_calc_discount', 1, 'Как считать общую скидку, если одновременно действуют несколько правил, определенных выше?', 'back', 'dsc'),
('lbl_search_customer_simple', 1, 'Поиск покупателя по email, логину, фамилии и имени.', 'back', 'ord'),
('cpt_lbl_category_col_count', 1, 'Количество столбцов при отображении категорий', 'general', 'thm'),
('wrn_too_short_string', 1, 'Слишком короткая строка поиска', 'general', 'gen'),
('msg_no_products_found', 1, 'Не найдено ни одного продукта', 'general', 'gen'),
('lbl_please_wait', 1, 'Пожалуйста, подождите', 'general', 'gen'),
('lbl_or', 1, 'или', 'general', 'gen'),
('lbl_n_a', 1, 'нет', 'general', 'gen'),
('lbl_coupon_used', 1, 'Использовался', 'back', 'dsc'),
('lbl_new_address', 1, 'Новый адрес', 'general', 'cmr'),
('msg_no_customer_login', 1, 'Этот пользователь не ввел логин и пароль во время оформления заказа.', 'general', 'cmr'),
('qst_delete_address', 1, 'Удалить адрес?', 'general', 'cmr'),
('lbl_checking_api_key', 1, 'Проверка ключа Google Maps API', 'back', 'gen'),
('lbl_admin_login', 1, 'Вход для администратора', 'front', 'gen'),
('cfg_google_maps_api_key_name', 1, 'Ключ Google Maps API', 'back', 'gen'),
('lbl_enter_gmapi_key', 1, 'Введите ключ Google Maps API для доменного имени, на котором работает магазин', 'back', 'gen'),
('lbl_redirecting_to_pp', 1, 'Переадресация на сервер PayPal...', 'front', 'gen'),
('lbl_redirecting_to_rupay', 1, 'Переадресация на сервер Rupay...', 'front', 'gen'),
('wrn_invalid_google_maps_api_key', 1, 'Неверный ключ Google Maps API.', 'back', 'gen'),
('wrn_no_google_maps_api_key', 1, 'Введите ключ Google Maps API для доменного имени, на котором установлен ваш магазин, чтобы включить возможность просмотра адресов на карте. Вы можете <a href="http://code.google.com/apis/maps/signup.html" target="_blank">зарегистрировать ключ Google Maps API</a> бесплатно на сайте Google.', 'back', 'gen'),
('cfg_google_maps_api_key_descr', 1, 'Введите ключ Google Maps API, если вы хотите включить возможность просмотра адреса покупателя на карте со странице с информацией о заказе. Вы можете бесплатно <a href="http://code.google.com/apis/maps/signup.html" target="_blank">зарегистрировать ключ Google Maps API</a> на сайте Google.', 'back', 'gen'),
('language', 1, 'Язык', 'general', 'gen'),
('catalog', 1, 'Каталог', 'general', 'gen'),
('cataloge', 1, 'Каталог', 'general', 'gen'),
('special_offers', 1, 'Специальные предложения', 'general', 'gen'),
('poll', 1, 'Голосование', 'general', 'gen'),
('currency', 1, 'Валюта', 'general', 'gen'),
('search', 1, 'Поиск', 'general', 'gen'),
('ordr_add_comment_to_message', 1, 'Добавить комментарий в сообщение', 'back', 'gen'),
('btn_export', 1, 'Экспортировать', 'general', 'gen'),
('export_orderlist_to_csv', 1, 'Экспортировать эти заказы в CSV-файл (MS Excel, OpenOffice)', 'general', 'gen'),
('lbl_order_status_history_url', 1, 'Вы можете <a href="{URL}">посмотреть статус вашего заказа</a> и историю его обработки онлайн.', 'general', 'gen'),
('msg_n_customers_found', 1, 'Найдено покупателей: {N}', 'back', 'gen'),
('msg_n_orders_found', 1, 'Найдено заказов: {N}', 'back', 'gen'),
('msg_orders_exported_to_file', 1, 'Список заказов экспортирован в CSV-файл.', 'general', 'gen'),
('pgn_order_status', 1, 'Статус заказа', 'general', 'gen'),
('srep_alltime_info', 1, 'Всего {N} отгруженых заказов на сумму {M}', 'back', 'rep'),
('rep_add2cart_count', 1, 'Добавлен в корзину', 'back', 'rep'),
('prdset_meta_title', 1, 'Заголовок страницы', 'back', 'gen'),
('prdset_move_selected_to', 1, 'Переместить выбранные продукты в', 'back', 'gen'),
('aux_page_slug', 1, 'ID страницы (часть URL; используется в ссылках на эту страницу)', 'back', 'gen'),
('email_add_order_note_subject', 1, 'Информация по вашему заказу (#{ORDERID})', 'general', 'gen'),
('email_add_order_note_text', 1, 'Информация по вашему заказу #{ORDERID}', 'general', 'gen'),
('ordr_source_backend', 1, 'Администрирование', 'back', 'ord'),
('prdopt_manage_product_options', 1, 'Добавить/удалить доп. характеристики', 'back', 'gen'),
('str_drag_and_drop_to_change_order', 1, 'Перетаскивайте мышью для изменения порядка.', 'general', 'gen'),
('str_first_image_is_main', 1, 'Первое изображение в списке — основное.', 'general', 'gen'),
('subcategories_delimiter', 1, 'Разделитель в списке подкатегорий', 'general', 'gen'),
('subcategories_numberlimit', 1, 'Ограничить количество выводимых подкатегорий (укажите до скольки подкатегорий показывать; 0 — неограничено)', 'general', 'gen'),
('ordr_full_info_description', 1, '<p>Чтобы посмотреть более подробную информацию о заказе, <strong>введите вашу фамилию</strong> (требуется для идентификации): </p>', 'general', 'gen'),
('ordr_check_status', 1, 'Проверить статус', 'general', 'gen'),
('ordr_show_details', 1, 'Показать информацию о заказе', 'general', 'gen'),
('btn_add_note', 1, 'Добавить комментарий...', 'general', 'gen'),
('str_order_not_found', 1, 'Заказ не найден', 'general', 'gen'),
('err_wrong_last_name', 1, 'Неверная фамилия', 'general', 'gen'),
('str_move_to', 1, 'Переместить в', 'general', 'gen'),
('cfg__frontend_time_zone_descr', 1, 'Укажите часовой пояс, согласно которому будет отображаться время в пользовательской части интернет-магазина. Пересчет будет производится относительно часового пояса сервера, который указывается в настройках WebAsyst Installer.<br />Настройка влияет только на пользовательскую часть. В режиме администрирования время отображается согласно часовому поясу, установленному в личных настройках пользователя (администратора).', 'back', 'cfg'),
('cfg__frontend_time_zone_dst_descr', 1, '&nbsp;', 'back', 'cfg'),
('cfg_enable_product_sku_description', 1, 'Артикул, если он введен в свойствах продукта, используется для более удобного поиска и управления продуктами в администрировании. Если вы включите эту опцию, артикул будет также отображаться в пользовательской части вашего интернет-магазина.', 'back', 'cfg'),
('cfg_enable_product_sku_title', 1, 'Показывать артикул продукта в пользовательской части', 'back', 'cfg'),
('cfg_frontend_time_zone', 1, 'Часовой пояс интернет-магазина', 'back', 'cfg'),
('cfg_frontend_time_zone_dst', 1, 'Переход на летнее время', 'back', 'cfg'),
('cfg_ga_js_custom_se', 1, 'Дополнить код Google Analytics', 'back', 'cfg'),
('cfg_ga_js_custom_se_description', 1, 'Здесь вы можете указать произвольный код JavaScript, который будет добавлен в основной код Google Analytics (например, код, <a href="http://www.google.com/support/analytics/bin/answer.py?hl=ru&answer=57046" target="_blank">описывающий дополнительные поисковые системы</a> в отчетах о переходах).', 'back', 'cfg'),
('cfg_picture_resize_quality_description', 1, 'При загрузке изображений продуктов автоматически (с помощью библиотеки GD) создаются их уменьшенные копии и сохраняются в виде JPEG-файлов. Укажите качество изображений: 0 — меньше качество, меньше размер файла; 100 — выше качество, больше размер файла. Рекомендуемое значение — 80.', 'back', 'cfg'),
('cfg_picture_resize_quality_title', 1, 'Качество изображений продуктов после уменьшения размера (0 — хуже, 100 — лучше)', 'back', 'cfg'),
('cpt_lbl_request_product_count', 1, 'Запрашивать количество продуктов для добавления в корзину', 'back', 'cpt'),
('goto_shopping', 1, '&laquo; вернуться к покупкам', 'general', 'gen'),
('lbl_follow_link', 1, 'Перейдите по ссылке:', 'general', 'gen'),
('loc_change_default_description', 1, '<strong><span style="color: red;">ВАЖНО:</span> Убедитесь, что вы перевели все данные на новый основной язык!</strong> Если перевод на новый язык, который вы выберите основным, не полный, то как в администрировании, так и в пользовательской части непереведенная информация (интерфейс, информация о продуктах и т.д.) будет показана некорректно (будут показаны либо пустые поля, либо ID строк).', 'back', 'loc'),
('loc_lang_direction', 1, 'Направление текста', 'back', 'loc'),
('loc_lang_ltr_descr', 1, 'Направление текста: LTR (слева направо) или RTL (справа налево).', 'back', 'gen'),
('loc_lang_ltr_disabled', 1, 'RTL', 'back', 'loc'),
('loc_lang_ltr_enabled', 1, 'LTR', 'back', 'loc'),
('prdimport_csv_use_structure', 1, 'Поиск соответствий продуктов в файле и базе данных осуществлять с учетом категорий (поиск только внутри категории)', 'back', 'imm'),
('prdimport_source_column', 1, 'Колонки в CSV-файле', 'back', 'imm'),
('prdimport_target_column', 1, 'Поля в базе данных', 'back', 'imm'),
('prdimport_found_n_columns', 1, 'В CSV-файле найдено %d колонок', 'back', 'imm'),
('imm_upload_link', 1, 'Загрузить по одному', 'back', 'imm'),
('imm_upload_swf_link', 1, 'Загрузить много изображений', 'back', 'imm'),
('imm_images_count_info', 1, 'Изображения: %d &mdash; %d из %d', 'back', 'imm'),
('imm_view_mode', 1, 'Вид', 'back', 'imm'),
('imm_view_mode_list', 1, 'списком', 'back', 'imm'),
('imm_view_mode_thumbnails', 1, 'эскизами', 'back', 'imm'),
('prdcat_product_n_duplicated', 1, 'Создано %d продуктов-дубликатов', 'back', 'prd'),
('prdcart_products_duplicate_selected', 1, 'Создать дубликаты', 'back', 'prd'),
('cpt_lbl_block_height', 1, 'Высота элемента li, в котором отображается продукт, в пикселях (оставьте пустым для автоматического расчета) ', 'general', 'cfg'),
('welcome_to_storefront', 1, 'Интернет-магазин ', 'general', 'gen'),
('powered_by', 1, 'Работает на основе <a href="http://www.shop-script.ru/" style="font-weight: normal">скрипта интернет-магазина</a> <em>WebAsyst Shop-Script</em>', 'hidden', 'gen'),
('powered_by_text', 1, 'Работает на основе <em>WebAsyst Shop-Script</em>', 'hidden', 'gen'),
('imm_del_confirmation', 1, 'Вы уверены?', 'general', 'gen'),
('lbl_redirecting_to_idealbasic', 1, 'Сейчас Вы будете перенаправлены на сайт IdealBasic...', 'front', 'gen'),
('lsgr_printforms', 1, 'Печатные формы', 'general', 'gen'),
('printforms_full_description', 1, 'Настройка сопроводительных документов к заказам (счета, квитанции и т.п.).', 'general', 'gen'),
('printforms_setup', 1, 'Настройки', 'general', 'gen'),
('printforms_preview', 1, 'Образец', 'general', 'gen'),
('pgn_printforms', 1, 'Печатные формы', 'general', 'gen'),
('print_form', 1, 'Печатная форма', 'general', 'gen'),
('print_forms', 1, 'Печатные формы', 'general', 'gen'),
('print_form_not_found', 1, 'Печатная форма не установлена', 'general', 'gen'),
('btn_open_invoice', 1, 'Версия для печати', 'general', 'gen'),
('prdcat_products_duplicate_selected', 1, 'Создать дубликат(ы)', 'general', 'gen'),
('imm_modify_time', 1, 'Изменен', 'general', 'gen'),
('demoprd_name', 1, 'Демо-продукт', 'general', 'gen'),
('cpt_lbl_authorization', 1, 'Авторизация', 'general', 'gen'),
('cpt_lbl_category_info', 1, 'Информация о категории', 'general', 'gen'),
('ord_bill_to', 1, 'Плательщик', 'general', 'gen'),
('ord_date_paid', 1, 'Оплачено', 'general', 'gen'),
('pmnt_empty_name', 1, 'Введите название способа оплаты', 'back', 'ord'),
('prd_multiply_label', 1, 'Умножить все цены на', 'back', 'prd'),
('prd_price_multiply', 1, 'Умножить', 'back', 'prd'),
('pgn_google_sitemap', 1, 'Sitemaps', 'general', 'gen'),
('sitemap_full_description', 1, '<strong>Sitemaps</strong> — это XML-файл с информацией для поисковых систем (таких как Google, Yahoo, Ask.com, MSN, Яндекс) о страницах веб-сайта, которые подлежат индексации. Sitemaps может помочь поисковикам определить местонахождение страниц сайта, время их последнего обновления, частоту обновления и важность относительно других страниц сайта для того, чтобы поисковая машина смогла более разумно индексировать сайт. Подробнее о Sitemaps — в <a href="http://ru.wikipedia.org/wiki/Sitemaps" target="_blank">статье на Википедии</a> (в статье можно найти информацию о том, как добавить файл Sitemaps в различные поисковые системы).', 'general', 'gen'),
('sitemap_url', 1, 'Адрес основного файла Sitemaps', 'general', 'gen'),
('sitemap_update_title', 1, 'Обновить Sitemaps XML-файл', 'general', 'gen'),
('sitemap_name', 1, 'Основные разделы файла Sitemaps', 'general', 'gen'),
('sitemap_base_url', 1, 'Адрес главной страницы интернет-магазина', 'general', 'gen'),
('sitemap_index_description', 1, 'Основная структура интернет-магазина', 'general', 'gen'),
('sitemap_pagename', 1, 'Информационные страницы', 'general', 'gen'),
('btn_create', 1, 'Создать', 'general', 'gen'),
('sitemap_update_date', 1, 'Обновлен', 'general', 'gen'),
('print_form_edit_title', 1, 'Двойной клик для редактирования', 'general', 'gen'),
('ordsts_predefined_title', 1, 'Предустановленные статусы заказов', 'back', 'ord'),
('ordsts_predefined_description_1', 1, 'Отмененные заказы', 'back', 'ord'),
('ordsts_predefined_description_2', 1, 'Новые заказы', 'back', 'ord'),
('ordsts_predefined_description_3', 1, 'Заказы, принятые в обработку', 'back', 'ord'),
('ordsts_predefined_description_5', 1, 'Успешно выполненные заказы', 'back', 'ord'),
('ordsts_predefined_description_14', 1, 'Заказы, оплата по которым успешно авторизована<br />(только для заказов по кредитным картам)', 'back', 'ord');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('ordsts_predefined_description_15', 1, 'Заказы, по которым произведен возврат денег', 'back', 'ord'),
('ord_ship_to', 1, 'Получатель', 'general', 'gen'),
('str_logo', 1, 'Адрес (URL) файла логотипа (не обязательно)', 'general', 'gen'),
('cfg_prdpict_enlarged_size_title', 1, 'Уменьшать оригинальное (самое большое) загружаемое изображение продукта', 'back', 'cfg'),
('cfg_prdpict_enlarged_size_description', 1, 'Введите размер в пикселях, к которому будут приведены оригиналы загружаемых изображений (рекомендуемое значение: 600) или оставьте поле пустым, чтобы не изменять оригиналы.', 'back', 'cfg'),
('sr_please_contact_seller', 1, 'Точная стоимость доставки не расчитана', 'general', 'gen'),
('print_form_address_not_found', 1, 'Адрес не найден на карте. Уточните адрес и повторите поиск.', 'general', 'gen'),
('print_form_edit_before_print', 1, 'Корректировка перед печатью', 'general', 'gen'),
('pgn_social_networks', 1, 'Соцсети', 'back', 'gen'),
('social_networks_page_description', 1, 'Shop-Script интегрирован с социальными сетями «Вконтакте» и «Фейсбук». Интеграция заключается в возможности разместить ваш интернет-магазин (продукты) внутри социальной сети и принимать заказы непосредственно из сети сразу в ваш магазин.', 'back', 'gen'),
('social_networks_hint_title', 1, 'Дополнительно', 'back', 'gen'),
('social_networks_hint', 1, 'Предложенные выше методы позволяют интегрировать магазин с соцсетями в направлении «соцсеть &rarr; магазин». В дополнение к такой интеграции рекомендуем «включить» интеграцию в обратном направлении «магазин → соцсеть», разместив в на страницах основной витрины магазина: 1) ссылки на страницы (группы) вашего магазина в соцсетях, 2) кнопки Like, «Мне нравится» и подобные на страницах продуктов. Это можно сделать с помощью редактора дизайна (см. ссылки на инструкции по интеграции с соцсетями выше).', 'back', 'gen'),
('powered_by_external', 1, 'Работает на основе <a href="http://www.shop-script.ru/" style="font-weight: normal" target="_blank">скрипта интернет-магазина</a> <em>WebAsyst Shop-Script</em>', 'hidden', 'gen'),
('prdset_vkontakte_update_date', 1, 'Последний экспорт во «Вконтакт»', 'back', 'prd'),
('prdcat_vkontakte_change', 1, 'Экспорт во «Вконтакт»', 'back', 'prd'),
('prdcat_vkontakte_remove', 1, 'Удалить из каталога «Вконтакта»', 'back', 'prd'),
('prdcat_social_networks_export', 1, 'Вконтакте', 'back', 'prd'),
('prdcat_vkontakte_category_type', 1, 'Раздел каталога продуктов «Вконтакта», в который экспортировать продукты этой категории', 'back', 'prd'),
('str_printforms_logo', 1, 'Логотип для печатных форм', 'back', 'gen'),
('prdset_1c_sync', 1, 'CommerceML-идентификатор', 'back', 'gen'),
('str_no_result', 1, 'Отсутствует', 'back', 'gen'),
('pgn_1c', 1, '1C', 'back', 'gen'),
('pmnt_more_modules_available', 1, '<strong>ЕЩЕ МОДУЛИ</strong>: На сайте Shop-Script доступны для загрузки <a href="http://www.shop-script.ru/features/integrations.html">дополнительные модули</a> приема платежей по банковским картам.', 'back', 'gen'),
('access_code', 1, 'Одноразовый пароль', 'general', 'gen'),
('cfg_strict_access_auth', 1, 'Запретить доступ к странице заказа для незарегистрированных покупателей (доступ есть только у покупателей с постоянным аккаунтом в вашем интернет-магазине)', 'back', 'cfg'),
('cfg_strict_access_code', 1, 'Требовать ввести одноразовый пароль, который дополнительно отправляется покупателю по электронной почте', 'back', 'cfg'),
('cfg_strict_access_description', 1, 'Позволяет установить дополнительные меры идентификации для незарегистрированных покупателей при попытке доступа к информации о заказе и его статусе.', 'back', 'cfg'),
('cfg_strict_access_lastname', 1, 'Требовать ввести фамилию', 'back', 'cfg'),
('cfg_strict_access_title', 1, 'Доступ к странице заказа для незарегистрированных покупателей', 'back', 'cfg'),
('err_wrong_mcode', 1, 'Одноразовый пароль введен неверно!', 'front', 'ord'),
('mcode_sended', 1, 'Одноразовый пароль отправлен вам по адресу электронной почты, указанному в заказе.', 'front', 'ord'),
('ordr_full_info_code_description', 1, 'Чтобы посмотреть подробную информацию о заказе, необходимо ввести одноразовый пароль (щелкните по кнопке «Получить одноразовый пароль» — пароль будет отправлен вам по электронной почте):', 'front', 'ord'),
('ordr_mcode_body', 1, 'Вы запросили одноразовый пароль для просмотра информации о вашем заказе %ORDER_ID%.', 'front', 'ord'),
('ordr_mcode_comment', 1, 'Пароль %MCODE% будет действителен в течение %TIME% минут.', 'front', 'ord'),
('ordr_status_access_code', 1, 'Одноразовый пароль', 'front', 'ord'),
('ord_status_use_myaccount', 1, 'Для просмотра статуса заказа используйте личный кабинет.', 'front', 'ord'),
('send_mcode', 1, 'Получить одноразовый пароль', 'front', 'ord'),
('mcode_resend', 1, 'Не получили пароль?', 'front', 'ord'),
('auxp_lbl_enabled', 2, 'Visible in storefront', 'back', 'gen'),
('auxp_lbl_priority', 2, 'Priority', 'back', 'gen'),
('btn_add', 2, 'Add', 'general', 'gen'),
('btn_apply', 2, 'Apply', 'general', 'gen'),
('btn_cancel', 2, 'Cancel', 'general', 'gen'),
('btn_close', 2, 'Close', 'general', 'gen'),
('btn_collapse', 2, 'Collapse', 'back', 'gen'),
('btn_delete', 2, 'Delete', 'general', 'gen'),
('btn_down', 2, 'Down', 'back', 'gen'),
('btn_edit', 2, 'Edit', 'general', 'gen'),
('btn_expand', 2, 'Expand', 'back', 'gen'),
('btn_goto_division', 2, 'Go to division', 'back', 'dvn'),
('btn_hide_tags', 2, 'Hide tags', 'back', 'gen'),
('btn_login', 2, 'Login', 'general', 'gen'),
('btn_ok', 2, 'OK', 'general', 'gen'),
('btn_save', 2, 'Save', 'general', 'gen'),
('btn_show_tags', 2, 'Show tags', 'back', 'gen'),
('btn_sort_asc', 2, 'Sort by ascending', 'back', 'gen'),
('btn_sort_desc', 2, 'Sort by descending', 'back', 'gen'),
('btn_up', 2, 'Up', 'back', 'gen'),
('btn_upload', 2, 'Upload', 'general', 'gen'),
('cfg_allow_comparison_in_simple_search_description', 2, 'Enable this option if you would like to allow comparison of products listed in simple search results. Take into account, that search results can potentially include products from various categories, and if you sell products of different nature in your store which should not be compared (e.g. computers, books and apparel), we recommend disabling this option.', 'back', 'cfg'),
('cfg_allow_comparison_in_simple_search_title', 2, 'Allow comparison of products listed in simple search results', 'back', 'cfg'),
('cfg_allow_ordering_description', 2, 'Disable this option if you would like to completely disable checkout and shopping cart facilities.', 'back', 'cfg'),
('cfg_allow_ordering_title', 2, 'Enable shopping cart & ordering feature', 'back', 'cfg'),
('cfg_catpict_size_description', 2, 'We automatically resize category thumbnail images during upload so it better fits your layout. You can change default category thumbnail size in pixels.', 'back', 'cfg'),
('cfg_catpict_size_title', 2, 'Category thumbnail default size', 'back', 'cfg'),
('cfg_check_stock_description', 2, 'If disabled, product stock information will not be taken into account at all (e.g. will not be updated and verified when customer places an order).', 'back', 'cfg'),
('cfg_check_stock_title', 2, 'Stock level control', 'back', 'cfg'),
('cfg_columns_per_page_description', 2, 'when showing product list within category or search results', 'back', 'cfg'),
('cfg_columns_per_page_title', 2, 'Number of columns in the products presentation grid (storefront)', 'back', 'cfg'),
('cfg_completed_order_status_description', 2, 'All orders in this status will be assumed as completed', 'back', 'cfg'),
('cfg_completed_order_status_title', 2, 'Status of the completed order', 'back', 'cfg'),
('cfg_confirmation_code_description', 2, 'Prompt users to input a random number shown on an image when they post data using forms in your online store (feedback, signup, checkout). We highly recommend to turn on this feature to protect your online store from 3rd party scripts which can attempt to send data (spam) via your online store.', 'back', 'cfg'),
('cfg_confirmation_code_title', 2, 'Protection from 3rd party scripts (captcha)', 'back', 'cfg'),
('cfg_country_description', 2, 'Required for realtime shipping quotes with UPS, DHL, FedEx and other providers', 'back', 'cfg'),
('cfg_country_title', 2, 'Your store location - country', 'back', 'cfg'),
('cfg_cpt_news_number_description', 2, '_', 'back', 'cfg'),
('cfg_cpt_news_number_title', 2, 'Maximum number of news posts represented on the shopping cart frontend', 'back', 'cfg'),
('cfg_customer_actiovation_description', 2, 'If enabled, every new customer is emailed a randomly generated Activation Key, which is required for account activation. We do not recommend enabling this option because it makes the process of working with your store complex for your customers.', 'back', 'cfg'),
('cfg_customer_actiovation_title', 2, 'Require email verification using Activation Key', 'back', 'cfg'),
('cfg_date_format_description', 2, 'This is how dates will be shown in your online store.', 'back', 'cfg'),
('cfg_date_format_title', 2, 'Date format', 'back', 'cfg'),
('cfg_default_currency_description', 2, 'Select your target market country. The country you select will be selected in signup and checkout forms be default.', 'back', 'cfg'),
('cfg_default_currency_title', 2, 'Customer signup/checkout form - default country', 'back', 'cfg'),
('cfg_default_customer_group_description', 2, 'Every new registered customer is automatically assigned selected group.', 'back', 'cfg'),
('cfg_default_customer_group_title', 2, 'Default customer group', 'back', 'cfg'),
('cfg_default_tax_class_description', 2, 'Every new product is automatically assigned selected tax class.', 'back', 'cfg'),
('cfg_default_tax_class_title', 2, 'Default tax class', 'back', 'cfg'),
('cfg_default_title_description', 2, 'Enter default text that appears in title or your storefront pages', 'back', 'cfg'),
('cfg_default_title_title', 2, 'Storefront pages default title', 'back', 'cfg'),
('cfg_exact_product_balance_description', 2, 'If enabled, customers will see exact number of items that you have in stock, e.g. In stock: 34. If disabled, customers will only see whether product is in stock or not, e.g. In stock: yes', 'back', 'cfg'),
('cfg_exact_product_balance_title', 2, 'Show customers exact product stock information', 'back', 'cfg'),
('cfg_first_weekday_description', 2, 'Select the first day of the week - whether Sunday or Monday.', 'back', 'cfg'),
('cfg_first_weekday_title', 2, 'First weekday', 'back', 'cfg'),
('cfg_force_smarty_description', 2, 'Highly recommended to be enabled when you redesign your store (when you modify template files); and to be disabled when your store goes live (disabling this option will increase your store performance).', 'back', 'cfg'),
('cfg_force_smarty_title', 2, 'Force Smarty templates recompillation', 'back', 'cfg'),
('cfg_fully_expand_categories_in_admin_description', 2, 'Recommended to be turned off if number of categories in your store is greater than 100. This will increase performance when editing products and categories', 'back', 'cfg'),
('cfg_fully_expand_categories_in_admin_title', 2, 'Completely expand categories list in products and categories editing windows (in administrative mode)', 'back', 'cfg'),
('cfg_ga_account_number_description', 2, 'Enter your Google Analytics <strong>profile number</strong>, e.g. 123456-1 or UA-123456-1', 'back', 'cfg'),
('cfg_ga_account_number_title', 2, 'Account number', 'back', 'cfg'),
('cfg_ga_enable_description', 2, '&nbsp;', 'back', 'cfg'),
('cfg_ga_enable_title', 2, 'Enable integration with Google Analytics', 'back', 'cfg'),
('cfg_ga_usd_description', 2, 'Information about orders in your store that is transferred to Google Analytics server is denominated in USD. Specify currency type in your shopping cart which acts as USD (order amount will be converted according to USD exchange rate; if not specified exchange rate will be assumed as 1)', 'back', 'cfg'),
('cfg_ga_usd_title', 2, 'USD currency type', 'back', 'cfg'),
('cfg_general_email_description', 2, 'This email address will be used as feedback email in communications with your customers. Feedback emails will be sent to this address, and also it will be used as From and Reply-to address in all email messages sent to your customers.', 'back', 'cfg'),
('cfg_general_email_title', 2, 'General email address of your store', 'back', 'cfg'),
('cfg_grp_cart_ordering', 2, 'Cart & Checkout', 'back', 'cfg'),
('cfg_grp_catalog', 2, 'Products', 'back', 'cfg'),
('cfg_grp_customers', 2, 'Customers', 'back', 'cfg'),
('cfg_grp_general', 2, 'General', 'back', 'cfg'),
('cfg_homepage_metadescription_description', 2, 'Please input META Description which will be published in your shopping cart frontend homepage', 'back', 'cfg'),
('cfg_homepage_metadescription_title', 2, 'Homepage META Description', 'back', 'cfg'),
('cfg_homepage_metakeywords_description', 2, 'Please input META Keywords which will be published in your shopping cart frontend homepage', 'back', 'cfg'),
('cfg_homepage_metakeywords_title', 2, 'Homepage META Keywords', 'back', 'cfg'),
('cfg_how_toshow_shoppingcart_description', 2, 'The way your visitors see shopping cart page when they add products to cart, and how checkout is performed. We recommend using the first option because it was designed to focus customer''s attention on checkout process only.', 'back', 'cfg'),
('cfg_how_toshow_shoppingcart_title', 2, 'How to show shopping cart & checkout', 'back', 'cfg'),
('cfg_min_order_amount_description', 2, 'Please input positive value or zero. If customer''s order amount will be less than specified value, customer will not be allowed to place this order.<br>Input 0 to disable minimal amount limit', 'back', 'cfg'),
('cfg_min_order_amount_title', 2, 'Minimal order amount (in default currency)', 'back', 'cfg'),
('cfg_new_order_status_description', 2, 'All new orders will be automatically assigned this status', 'back', 'cfg'),
('cfg_new_order_status_title', 2, 'Status of the new order', 'back', 'cfg'),
('cfg_orders_email_description', 2, 'We will send new order email notifications to this email address.', 'back', 'cfg'),
('cfg_orders_email_title', 2, 'Email address for order notifications', 'back', 'cfg'),
('cfg_prdpict_standard_size_description', 2, 'We automatically resize product images during upload so it better fits your layout. You can change default image size in pixels (this image is shown on product detailed information page).', 'back', 'cfg'),
('cfg_prdpict_standard_size_title', 2, 'Product picture default size', 'back', 'cfg'),
('cfg_prdpict_thumbnail_size_description', 2, 'We automatically resize product images during upload so it better fits your layout. You can change default product thumbnail size in pixels.', 'back', 'cfg'),
('pgn_category_search', 2, 'Category search results', 'general', 'gen'),
('cfg_prdpict_thumbnail_size_title', 2, 'Product thumbnails default size', 'back', 'cfg'),
('cfg_products_per_page_description', 2, 'Max number of products presented on a single page in search results or category product list', 'back', 'cfg'),
('cfg_products_per_page_title', 2, 'Number of products per page (storefront)', 'back', 'cfg'),
('cfg_product_sort_description', 2, 'If disabled, product list will be sorted according to "sort order" value; if enabled, customers will be able to select how to sort product list: by name, by price, by customer rating.', 'back', 'cfg'),
('cfg_product_sort_title', 2, 'Allow customers to select products sorting criteria', 'back', 'cfg'),
('cfg_quick_checkout_description', 2, 'Disable if you want that only registered customers with issued login and password to be able to place orders', 'back', 'cfg'),
('cfg_quick_checkout_title', 2, 'Allow checkout without registration', 'back', 'cfg'),
('cfg_request_billing_address_description', 2, 'Shipping address is always requested from customer during checkout. Enable this option if you would like to request billing address as well.', 'back', 'cfg'),
('cfg_request_billing_address_title', 2, 'Request billing address', 'back', 'cfg'),
('cfg_secure_checkout_description', 2, 'If your store main address is on webasyst.net domain (e.g. yourcompany.webasyst.net) we suggest enabling this feature, because we already have a valid SSL-certificate installed for this domain name. If main address is your custom domain name (e.g. www.yourcompany.com), then for this feature to work you have to have valid SSL-certificate installed for this domain name. Contact your domain name registrar regarding this issue.', 'back', 'cfg'),
('cfg_secure_checkout_title', 2, 'Checkout is performed in SSL secure mode', 'back', 'cfg'),
('cfg_shipping_tax_description', 2, 'Choose "Not defined" if shipping is not taxable, otherwise select tax class applicable for shipping cost.', 'back', 'cfg'),
('cfg_shipping_tax_title', 2, 'Calculate tax on shipping (select tax class)', 'back', 'cfg'),
('cfg_store_name_description', 2, 'The name you input here will be submitted to email notifications sent to customers', 'back', 'cfg'),
('cfg_store_name_title', 2, 'Store name', 'back', 'cfg'),
('cfg_store_url_description', 2, 'Specify a complete URL of your online store; including http://, excluding index.php and adding / in the end, e.g. http://www.myshop.com/shop/<br><b><font color=red>In case URL is specified incorrectly your store may work incorrectly', 'back', 'cfg'),
('cfg_store_url_title', 2, 'Complete URL of your store', 'back', 'cfg'),
('cfg_update_gcv_description', 2, 'Recommended to be turned off if number of products in your store is greater than 10000', 'back', 'cfg'),
('cfg_update_gcv_title', 2, 'Automatic update of products count value for categories', 'back', 'cfg'),
('cfg_weight_unit_description', 2, 'Please choose weight unit in which you specify products weight values in your store', 'back', 'cfg'),
('cfg_weight_unit_title', 2, 'Weight unit', 'back', 'cfg'),
('cfg_region_description', 2, 'Required for realtime shipping quotes with UPS, DHL, FedEx and other providers', 'back', 'cfg'),
('cfg_region_title', 2, 'Your store location - state', 'back', 'cfg'),
('checkout_already_have_account', 2, 'Already have account in %SHOPNAME%?', 'front', 'gen'),
('checkout_as_newcustomer', 2, 'Checkout as a new customer', 'general', 'gen'),
('checkout_email_exists', 2, 'Customer with email <strong>[email]</strong> already registered', 'front', 'gen'),
('checkout_next_step', 2, 'Continue', 'front', 'gen'),
('checkout_permanent_registering', 2, 'I would like to register permanent account in %SHOPNAME% so I will not have to re-enter info during future purchases', 'front', 'gen'),
('checkout_yourinfo_header', 2, 'Your info', 'front', 'gen'),
('cpts_nosettings', 2, 'Component has no settings', 'back', 'thm'),
('cpts_settings_updated', 2, 'Component settings have been updated.<br /><br />Changes will take into effect ONLY after you save the whole template and then refresh storefront page in your browser.', 'back', 'thm'),
('cpt_bin', 2, 'Recycle Bin', 'general', 'cpt'),
('cpt_lbl_auxpages_navigation', 2, 'Info pages', 'general', 'cpt'),
('cpt_lbl_divisions_navigation', 2, 'Main navigation', 'general', 'cpt'),
('cpt_lbl_horizontal', 2, 'Horizontal', 'general', 'cpt'),
('cpt_lbl_product_add2cart_button', 2, '"Add to cart" button', 'general', 'cpt'),
('cpt_lbl_product_description', 2, 'Description', 'general', 'cpt'),
('cpt_lbl_product_details_request', 2, 'Request details form', 'general', 'cpt'),
('cpt_lbl_product_discuss_link', 2, 'Reviews', 'general', 'cpt'),
('cpt_lbl_product_images', 2, 'Product images', 'general', 'cpt'),
('cpt_lbl_product_name', 2, 'Product name', 'general', 'cpt'),
('cpt_lbl_product_price', 2, 'Price', 'general', 'cpt'),
('cpt_lbl_product_rate_form', 2, 'User rating', 'general', 'cpt'),
('cpt_lbl_product_related_products', 2, 'Related products', 'general', 'cpt'),
('cpt_lbl_selectauxpages', 2, 'Select info pages', 'general', 'cpt'),
('cpt_lbl_selectaux_type_all', 2, 'All pages', 'general', 'cpt'),
('cpt_lbl_selectaux_type_selected', 2, 'Select pages', 'general', 'cpt'),
('cpt_lbl_selectdivisions', 2, 'Select pages', 'general', 'cpt'),
('cpt_lbl_vertical', 2, 'Vertical', 'general', 'cpt'),
('cpt_lbl_view', 2, 'Select view', 'general', 'cpt'),
('curr_add_currency', 2, 'Add currency', 'back', 'cur'),
('curr_change_default_currency', 2, 'change', 'back', 'cur'),
('curr_change_default_curr_important', 2, 'IMPORTANT: If you change default currency, all product prices in your store will be recalculated to the new currency.', 'back', 'cur'),
('curr_curr_output_example', 2, 'Output example', 'back', 'cur'),
('curr_dec_placed', 2, 'Decimal places', 'back', 'cur'),
('curr_dec_symbol', 2, 'Decimal symbol', 'back', 'cur'),
('curr_default_currency', 2, 'Your default currency', 'back', 'cur'),
('curr_enter_positive_rate', 2, 'Enter a positive value', 'back', 'cur'),
('curr_exchange_rate', 2, 'Ex. rate', 'back', 'cur'),
('curr_nothing', 2, 'nothing', 'back', 'cur'),
('curr_other_currencies', 2, 'Other currency types', 'back', 'cur'),
('curr_output_format', 2, 'Output format<br /><font style="font-size: 80%;">(use "{value}" to show the price itself (no commas);<br />Examples: "US ${value}", "&amp;pound;{value}", "{value} EUR")</font>', 'back', 'cur'),
('curr_return_to_currencies', 2, 'Return to currencies screen', 'back', 'cur'),
('curr_select_new_default_currency', 2, 'Select new default currency', 'back', 'cur'),
('curr_space', 2, 'space', 'back', 'cur'),
('curr_thousands_delimiter', 2, 'Thousands delimiter', 'back', 'cur'),
('deinstall', 2, 'Uninstall', 'general', 'gen'),
('disable', 2, 'Disable', 'general', 'gen'),
('disabled_short', 2, 'Disabled', 'general', 'gen'),
('div_connected_interfaces', 2, 'Connected interfaces', 'back', 'dvn'),
('div_cross_key', 2, 'Cross division key', 'back', 'dvn'),
('div_enable_fld', 2, 'Enabled', 'back', 'dvn'),
('div_etxrafld_name', 2, 'Name', 'back', 'dvn'),
('div_extrafld_key', 2, 'Key', 'back', 'dvn'),
('div_extra_field', 2, 'Extra field', 'back', 'dvn'),
('div_id_fld', 2, 'ID', 'back', 'dvn'),
('div_key_fld', 2, 'Key', 'back', 'dvn'),
('div_name_fld', 2, 'Name', 'back', 'dvn'),
('div_pid_fld', 2, 'Parent division ID', 'back', 'dvn'),
('div_priority_fld', 2, 'Priority', 'back', 'dvn'),
('div_template_fld', 2, 'Template', 'back', 'dvn'),
('div_ukey_fld', 2, 'Unique key', 'back', 'dvn'),
('enable', 2, 'Enable', 'general', 'gen'),
('enabled_short', 2, 'Visible', 'general', 'gen'),
('forbidden_page', 2, 'Forbidden page', 'general', 'gen'),
('imm_description', 2, 'Image Uploader allows you to upload image files for your storefront.<br />\r\nOnly following image types are allowed: GIF, JPG, BMP, PNG.', 'back', 'imm'),
('tax_page_description', 2, 'Configure sales taxes calculation for your storefront.<br />Do it if taxes are not included in your product and service prices and should be added to order total during checkout.', 'back', 'txs'),
('imm_image_deleted', 2, 'Image has been deleted', 'back', 'imm'),
('imm_image_uploaded', 2, 'Image has been uploaded', 'back', 'imm'),
('imm_img_delete_confirmation', 2, 'Permanently delete this image?', 'back', 'imm'),
('imm_notimage', 2, 'Only images are allowed for upload: GIF, JPG, BMP, PNG', 'back', 'imm'),
('int_heritable', 2, 'Heritable', 'back', 'dvn'),
('int_priority', 2, 'Priority', 'back', 'dvn'),
('lang_english', 2, 'English', 'back', 'gen'),
('lang_russian', 2, 'Russian', 'back', 'gen'),
('lgr_back', 2, 'Backend', 'back', 'gen'),
('lgr_front', 2, 'Frontend', 'back', 'gen'),
('lgr_general', 2, 'General', 'back', 'gen'),
('link_exchange', 2, 'Link exchange', 'front', 'gen'),
('loc_add_local', 2, 'Add new string', 'back', 'loc'),
('loc_btn_addlang', 2, 'Add language', 'back', 'loc'),
('loc_btn_changedeflang', 2, 'Change default language', 'back', 'loc'),
('loc_couldnt_delete_deflang', 2, 'Default language can not be deleted', 'back', 'loc'),
('loc_current_default_language', 2, 'Current default language', 'back', 'loc'),
('loc_default_lang', 2, 'default', 'back', 'loc'),
('loc_del_confirmation', 2, 'Are you sure you want to delete this?', 'back', 'loc'),
('loc_edit_locals', 2, 'Edit translations', 'back', 'loc'),
('loc_empty_loc_defvalue', 2, 'Enter string values for default language', 'back', 'loc'),
('loc_empty_loc_id', 2, 'Enter localization string ID', 'back', 'loc'),
('loc_error_file_upload', 2, 'Error uploading file', 'back', 'loc'),
('loc_find', 2, 'Find', 'back', 'loc'),
('loc_flag', 2, 'Flag', 'back', 'loc'),
('loc_highlight', 2, 'Highlight', 'back', 'loc'),
('loc_highlight_nottranslated', 2, 'Highlight not translated strings', 'back', 'loc'),
('loc_iso2_reserved', 2, 'This language ISO2 code is already in use. Change ISO2 code and try again.', 'back', 'loc'),
('loc_langdel_confirmation', 2, 'Permanently delete this language? Operation is irreversible.', 'back', 'loc'),
('loc_langicon_upload', 2, 'Upload', 'back', 'loc'),
('loc_langiso2_descr', 2, '2 chars', 'back', 'loc'),
('loc_langorder_saved', 2, 'Sorting order has been saved', 'back', 'loc'),
('loc_language', 2, 'Language', 'back', 'loc'),
('loc_languages', 2, 'Language list', 'back', 'loc'),
('loc_languages_added', 2, 'Language has been added.', 'back', 'loc'),
('loc_lang_delete', 2, 'Delete', 'back', 'loc'),
('loc_lang_enable', 2, 'Customers can switch to this language in storefront', 'back', 'loc'),
('loc_lang_enabled', 2, 'Available in storefront', 'back', 'loc'),
('loc_lang_icon', 2, 'Language flag icon (<a href="http://www.famfamfam.com/lab/icons/flags/" target="_blank">download nice flag icons</a>)', 'back', 'loc'),
('loc_lang_id', 2, 'ID', 'back', 'loc'),
('loc_lang_iso2', 2, 'Language ISO2 code', 'back', 'loc'),
('loc_lang_name', 2, 'Language name', 'back', 'loc'),
('loc_local_defvalue', 2, 'Default', 'back', 'loc'),
('loc_local_id', 2, 'ID', 'back', 'loc'),
('loc_local_subgroup', 2, 'Group', 'back', 'loc'),
('loc_local_value', 2, 'Translation', 'back', 'loc'),
('loc_local_was_deleted', 2, 'String has been deleted', 'back', 'loc'),
('loc_msg_lang_removed', 2, 'Language has been deleted', 'back', 'loc'),
('loc_new_default_language', 2, 'New', 'back', 'loc'),
('loc_notsupported_filetype', 2, 'Not supported file type.', 'back', 'loc'),
('loc_nottranslated', 2, 'Not translated', 'back', 'loc'),
('loc_no_searchresults', 2, 'No matches found', 'back', 'loc'),
('loc_q_remove_lang', 2, 'Delete', 'back', 'loc'),
('loc_q_remove_local', 2, 'Remove localization string', 'back', 'loc'),
('loc_required_fields', 2, '* Required fields', 'back', 'loc'),
('loc_reserved_loc_id', 2, 'String with provided ID already exists. Change string ID and try again.', 'back', 'loc'),
('loc_return_to_localslist', 2, 'Return to editing localization strings', 'back', 'loc'),
('loc_search_results', 2, 'Search results', 'back', 'loc'),
('loc_settings', 2, 'Settings', 'back', 'loc'),
('loc_show_empty_translations', 2, 'Show other languages', 'back', 'loc'),
('lsgr_components', 2, 'Components', 'back', 'gen'),
('lsgr_configuration', 2, 'Configuration', 'back', 'gen'),
('lsgr_currencies', 2, 'Currencies', 'back', 'gen'),
('lsgr_division', 2, 'Division', 'back', 'gen'),
('lsgr_general', 2, 'General', 'back', 'gen'),
('lsgr_immanager', 2, 'Image Uploader', 'back', 'gen'),
('lsgr_localization', 2, 'Localization', 'back', 'gen'),
('lsgr_modules', 2, 'Modules', 'back', 'gen'),
('lsgr_other', 2, 'Other', 'back', 'gen'),
('lsgr_products', 2, 'Products', 'back', 'gen'),
('lsgr_reports', 2, 'Reports', 'back', 'gen'),
('lsgr_themes', 2, 'Themes', 'back', 'gen'),
('mdl_enabled', 2, 'Visible', 'back', 'mdl'),
('mdl_install', 2, 'Install module', 'back', 'mdl'),
('mdl_selected_configs', 2, 'Selected configs', 'back', 'mdl'),
('msg_dragable', 2, 'Drag for sorting', 'back', 'gen'),
('msg_error_diskusage', 2, 'Not enough disk space. You can increase availalbe disk storage in WebAsyst account Control Panel (if you don''t have access to Control Panel, contact account administrator).', 'general', 'gen'),
('msg_error_filecopy', 2, 'Could not copy file', 'general', 'gen'),
('msg_error_filemoveupload', 2, 'Could not move uploaded file', 'general', 'gen'),
('msg_error_fileremove', 2, 'Could not remove file', 'general', 'gen'),
('msg_field_required', 2, 'Field `%s` is required', 'general', 'gen'),
('msg_fill_required_fields', 2, 'Fill required fields.', 'back', 'gen'),
('msg_information_save', 2, 'Information was successfully saved!', 'back', 'gen'),
('msg_no_data', 2, 'No data', 'general', 'gen'),
('msg_unsaved_changes', 2, 'The changes you made will be lost if you navigate away from this page.', 'hidden', 'gen'),
('news', 2, 'Blog / News', 'general', 'gen'),
('order_saved', 2, 'Sorting order has been saved', 'back', 'gen'),
('payment', 2, 'Payment', 'general', 'gen'),
('pgn_ap_1', 2, 'About your shopping cart', 'general', 'gen'),
('pgn_addlanguage', 2, 'Add language', 'back', 'gen'),
('pgn_addmod_language', 2, 'Language settings', 'back', 'gen'),
('pgn_addmod_product', 2, 'Edit product', 'back', 'gen'),
('pgn_address_book', 2, 'Address book', 'general', 'cmr'),
('pgn_add_address', 2, 'Add address', 'general', 'cmr'),
('pgn_add_language', 2, 'Add language', 'back', 'gen'),
('pgn_add_news', 2, 'Write a post', 'back', 'gen'),
('pgn_affiliate_balance', 2, 'Balance', 'general', 'gen'),
('pgn_affiliate_program', 2, 'Affiliate program', 'general', 'gen'),
('pgn_affiliate_settings', 2, 'Settings', 'general', 'gen'),
('pgn_affilite_program', 2, 'Affiliate program', 'back', 'gen'),
('pgn_affpr_earn_money', 2, 'How to earn money', 'general', 'gen'),
('pgn_affpr_payments_history', 2, 'Payments history', 'general', 'gen'),
('pgn_authorization', 2, 'Authorization', 'general', 'gen'),
('pgn_auxpages', 2, 'Info pages', 'general', 'gen'),
('pgn_auxpages_admin', 2, 'Info pages administration', 'general', 'gen'),
('pgn_aux_pages', 2, 'Info Pages', 'back', 'gen'),
('pgn_cart', 2, 'Shopping cart', 'general', 'gen'),
('pgn_catalog', 2, 'Products', 'back', 'gen'),
('pgn_categories_reports', 2, 'Category reports', 'back', 'gen'),
('pgn_category_tree', 2, 'Categories', 'general', 'gen'),
('pgn_change_address', 2, 'Change address', 'general', 'gen'),
('pgn_change_default_currency', 2, 'Change default currency', 'general', 'gen'),
('pgn_change_deflang', 2, 'Change default language', 'back', 'gen'),
('pgn_contact_info', 2, 'Contact information', 'general', 'gen'),
('pgn_countries', 2, 'Countries', 'back', 'gen'),
('pgn_cpt_constructor', 2, 'Components constructor', 'general', 'gen'),
('pgn_cpt_settings', 2, 'Component settings', 'back', 'gen'),
('pgn_currency_types', 2, 'Currencies', 'back', 'gen'),
('pgn_custgroups', 2, 'Customer group list', 'back', 'gen'),
('pgn_customers', 2, 'Customers', 'back', 'gen'),
('pgn_customer_activation', 2, 'Customer activation', 'general', 'gen'),
('pgn_customer_fields', 2, 'Checkout & Signup forms', 'back', 'gen'),
('pgn_delivery', 2, 'Delivery', 'general', 'gen'),
('pgn_discounts', 2, 'Discounts', 'back', 'gen'),
('pgn_discuss_product', 2, 'Discuss product', 'general', 'gen'),
('pgn_divisions', 2, 'Divisions', 'back', 'gen'),
('pgn_divsettings', 2, 'Division settings', 'back', 'gen'),
('pgn_edit_address', 2, 'Edit address', 'general', 'gen'),
('pgn_edit_locals', 2, 'Edit localizations', 'back', 'gen'),
('pgn_export2googlebase', 2, 'Google Base', 'back', 'gen'),
('pgn_export_products', 2, 'Export', 'back', 'gen'),
('pgn_feedback', 2, 'Feedback', 'general', 'gen'),
('pgn_find_local', 2, 'Find localization', 'back', 'gen'),
('pgn_general_settings', 2, 'Settings', 'back', 'gen'),
('pgn_home', 2, 'Home', 'general', 'gen'),
('pgn_images_manager', 2, 'Image Uploader', 'back', 'gen'),
('pgn_import_products', 2, 'Import', 'back', 'gen'),
('pgn_invoice', 2, 'Invoice', 'general', 'gen'),
('pgn_languages', 2, 'Languages & Translation', 'back', 'gen'),
('pgn_linkexchange', 2, 'Link exchange', 'general', 'gen'),
('pgn_link_exchange_admin', 2, 'Link exchange', 'back', 'gen'),
('pgn_login_log', 2, 'Login log', 'back', 'gen'),
('pgn_mainpage', 2, 'Home', 'general', 'gen'),
('pgn_modules', 2, 'Tools', 'back', 'gen'),
('pgn_my_account', 2, 'My account', 'general', 'gen'),
('pgn_news', 2, 'Blog / News', 'general', 'gen'),
('pgn_newsletter_subscribers', 2, 'Newsletter subscribers', 'back', 'gen'),
('pgn_news_administration', 2, 'Blog / News', 'back', 'gen'),
('pgn_orders', 2, 'Orders', 'back', 'gen'),
('pgn_order_confirmation', 2, 'Confirmation', 'general', 'gen'),
('pgn_order_detailed', 2, 'Order detailed information', 'general', 'gen'),
('pgn_order_history', 2, 'Order history', 'general', 'cmr'),
('pgn_order_processing', 2, 'Order processing', 'general', 'gen'),
('pgn_order_statuses', 2, 'Order statuses', 'back', 'gen'),
('pgn_payment', 2, 'Payment method', 'general', 'gen'),
('pgn_payment_methods', 2, 'Payment', 'back', 'gen'),
('pgn_payment_modules', 2, 'Payment modules', 'back', 'gen'),
('pgn_presentation', 2, 'Design', 'back', 'gen'),
('pgn_pricelist', 2, 'Price list', 'general', 'gen'),
('pgn_print_version', 2, 'Print version', 'general', 'gen'),
('pgn_product', 2, 'Product', 'general', 'gen'),
('pgn_products_categories', 2, 'Products & Categories', 'back', 'gen'),
('pgn_products_reports', 2, 'Product reports', 'back', 'gen'),
('pgn_product_customparams', 2, 'Product parameters', 'back', 'gen'),
('pgn_product_reviews', 2, 'Reviews', 'general', 'gen'),
('pgn_register', 2, 'Create account', 'general', 'gen'),
('pgn_registration', 2, 'Register', 'general', 'gen'),
('pgn_remind_password', 2, 'Remind password', 'general', 'gen'),
('pgn_reports', 2, 'Reports', 'back', 'gen'),
('pgn_sales_report', 2, 'Sales reports', 'general', 'gen'),
('pgn_settings', 2, 'Settings', 'back', 'gen'),
('pgn_shipping_methods', 2, 'Shipping', 'back', 'gen'),
('pgn_shipping_modules', 2, 'Shipping modules', 'back', 'gen'),
('pgn_sms_notifications', 2, 'SMS', 'back', 'gen'),
('pgn_special_offers', 2, 'Special offers are shown at the frontend homepage.<br>', 'back', 'gen'),
('pgn_successful_registration', 2, 'Successful registration', 'general', 'gen'),
('pgn_survey_administration', 2, 'Survey', 'back', 'gen'),
('pgn_taxes', 2, 'Taxes', 'back', 'gen'),
('pgn_themes_list', 2, 'Design editor', 'general', 'gen'),
('pgn_theme_edit', 2, 'Edit theme', 'general', 'gen'),
('pgn_transaction_result', 2, 'Transaction result', 'general', 'gen'),
('pgn_user_activation', 2, 'User activation', 'general', 'gen'),
('pgn_visits_log', 2, 'Log', 'general', 'gen'),
('pgn_yandex_market', 2, 'Yandex.Market', 'back', 'gen'),
('pgn_regions', 2, 'States', 'back', 'gen'),
('prdset_btn_delete_pict', 2, 'Delete', 'back', 'prd'),
('prdset_btn_hide_products', 2, 'Hide products', 'back', 'prd'),
('prdset_btn_next_products', 2, 'Next', 'back', 'prd'),
('prdset_btn_prev_products', 2, 'Previous', 'back', 'prd'),
('prdset_btn_setdefault_pict', 2, 'Set as default', 'back', 'prd'),
('prdset_freeshipping_description', 2, 'not applied to shipping freight', 'back', 'prd'),
('prdset_lnk_choose_parentcategory', 2, 'Select', 'back', 'prd'),
('prdset_lnk_to_product_list', 2, 'To products list', 'back', 'prd'),
('prdset_lnk_upload', 2, 'Upload', 'back', 'prd'),
('prdset_msg_choosen_relatedproduct', 2, 'Add %s', 'back', 'prd'),
('prdset_msg_confirm_pict_delete', 2, 'Permanently delete this product image?', 'back', 'prd'),
('prdset_msg_fill_productname', 2, 'Please fill product name', 'back', 'prd'),
('prdset_msg_loading_products', 2, 'Loading products...', 'back', 'prd'),
('prdset_msg_onlyimages', 2, 'You could upload only images', 'back', 'prd'),
('prdset_str_category', 2, 'Category', 'back', 'prd'),
('prdset_str_extraoptions', 2, 'Options', 'back', 'prd'),
('prdset_str_images', 2, 'Images', 'back', 'prd'),
('prdset_str_invisible', 2, 'Invisible', 'back', 'prd'),
('prdset_str_meta', 2, 'Meta', 'back', 'prd'),
('prdset_str_metadescription', 2, 'Description', 'back', 'prd'),
('prdset_str_metakeywords', 2, 'Keywords', 'back', 'prd'),
('prdset_str_noappendcategories', 2, 'No additional categories', 'back', 'prd'),
('prdset_str_ordering_available', 2, 'Available for ordering', 'back', 'prd'),
('prdset_str_tags', 2, 'Tags (use commas to separate)', 'back', 'prd'),
('prdset_tab_advanced', 2, 'Other details', 'back', 'prd'),
('prdset_tab_simple', 2, 'Basic details', 'back', 'prd'),
('prep_invisible_in_storefront', 2, '(invisible in storefront)', 'back', 'rep'),
('prep_invisible_products', 2, '[products] products are invisible in storefront.', 'back', 'rep'),
('prep_notinstock_products', 2, '[products] products are out of stock!', 'back', 'rep'),
('prep_total_products', 2, 'You have [products] products in [categories] categories.', 'back', 'rep'),
('shipping', 2, 'Shipping', 'general', 'gen'),
('srep_allorders', 2, 'All orders', 'back', 'rep'),
('srep_compare', 2, 'Compare', 'back', 'rep'),
('srep_data_range', 2, 'Data', 'back', 'rep'),
('srep_delivered_orders', 2, 'Delivered orders', 'back', 'rep'),
('srep_last_month', 2, 'Last month', 'back', 'rep'),
('srep_last_week', 2, 'Last week', 'back', 'rep'),
('srep_last_year', 2, 'Last year', 'back', 'rep'),
('srep_noorders', 2, 'No orders', 'back', 'rep'),
('srep_outofstock', 2, 'Out of stock', 'back', 'rep'),
('srep_sreport_alltime', 2, 'Sales all time', 'back', 'rep'),
('srep_sreport_thismonth', 2, 'Sales dynamics', 'back', 'rep'),
('srep_this_month', 2, 'This month', 'back', 'rep'),
('srep_this_p_month', 2, 'This & Previous months', 'back', 'rep'),
('srep_this_p_week', 2, 'This & Previous weeks', 'back', 'rep'),
('srep_this_p_year', 2, 'This & Previous years', 'back', 'rep'),
('srep_this_week', 2, 'This week', 'back', 'rep'),
('srep_this_year', 2, 'This year', 'back', 'rep'),
('stg_fade_layout', 2, 'Fade main storefront layout and show shopping cart in the middle; Perform checkout in full screen mode (recommended)', 'back', 'cfg'),
('stg_new_page_cart', 2, 'Directly in storefront layout', 'back', 'cfg'),
('str_all', 2, 'all', 'general', 'gen'),
('str_show_rows', 2, 'Show rows', 'general', 'gen'),
('survey', 2, 'Survey', 'front', 'gen'),
('thm_advanced_tab', 2, 'Advanced mode (HTML)', 'back', 'thm'),
('thm_btn_embed', 2, 'Embed in template', 'hidden', 'thm'),
('thm_btn_save_tpl', 2, 'Save template', 'general', 'thm'),
('thm_cpt_embed_btn', 2, 'Embed', 'back', 'thm'),
('thm_css_link', 2, 'CSS', 'back', 'thm'),
('thm_designeditor_descr_advanced', 2, 'Edit HTML code of what you see in simple editor mode.<br />Use right sidebar to embed more components to your storefront.<br />Containers are defined using this code fragments: &lt;!-- cpt_container_start --&gt; ... &lt;!-- cpt_container_end --&gt; (containers are areas that allows you to arrange store components using drag&drop in simple editor mode).<br />See our <a href="http://www.webasyst.net/support/shop/manual.html#Design-editor" target="_blank">design editor guidelines</a> and <a href="http://www.shop-script.com/demo/design-editor-tutorial.html" target="_blank">design editor tutorial</a>.', 'back', 'thm'),
('thm_designeditor_descr_css', 2, 'Edit Cascade Style Sheets (CSS) of this storefront theme. You can change font family, font size, colors and many other look&feel elements here. See our <a href="http://www.webasyst.net/shop/design-editor-guidelines.html" target="_blank">design editor guidelines</a>.', 'back', 'thm'),
('thm_designeditor_descr_head', 2, 'Edit HTML code that is placed between &lt;head&gt; ... &lt;/head&gt; tags of all storefront pages.', 'back', 'thm'),
('thm_designeditor_descr_simple', 2, '<b>Drag & drop store components</b> (red dotted lined areas) to arrange your store layout. You can place components only within <b>containers</b> (areas marked with gray dotted lines).<br /><b>Double-click any component</b> to edit its settings.<br />Use right sidebar to embed more components to your storefront.<br />See our <a href="http://www.shop-script.com/demo/design-editor-tutorial.html" target="_blank">design editor tutorial</a>.', 'back', 'thm'),
('thm_exit', 2, 'To themes list', 'back', 'thm'),
('thm_fill_all_fields', 2, 'Please fill all fields', 'back', 'thm'),
('thm_generallayout_link', 2, 'General layout', 'back', 'thm'),
('thm_head_link', 2, 'Head', 'back', 'thm'),
('thm_homepage_link', 2, 'Home page', 'back', 'thm'),
('thm_htmlcode_key_exists', 2, 'Please choose another code key', 'back', 'thm'),
('thm_lnk_setforstorefront', 2, 'Set for storefront', 'back', 'thm'),
('thm_msg_confirm_reset', 2, 'Are you sure you want to reset this theme? This will discard all changes that you made with this theme. Operation is irreversible.', 'back', 'thm'),
('thm_msg_cpt_settings_saved', 2, 'Settings have been saved', 'back', 'thm'),
('thm_msg_error_upload', 2, 'Error file uploading', 'general', 'gen'),
('thm_msg_logo_exists', 2, 'File with this name already exists. Please upload another file.', 'general', 'gen'),
('thm_msg_logo_only_imgs', 2, 'You could upload only image', 'general', 'gen'),
('thm_msg_successful_reset', 2, 'Theme has been successfully reset', 'back', 'thm'),
('thm_msg_theme_applied', 2, 'Theme successfully set for your storefront', 'back', 'thm'),
('thm_notheme_msg', 2, 'Wrong theme', 'back', 'thm'),
('thm_preview_link', 2, 'Theme preview', 'back', 'thm'),
('thm_productinfo_link', 2, 'Product info', 'back', 'thm'),
('thm_reset_link', 2, 'Reset theme (discard all changes)', 'back', 'thm'),
('thm_simple_tab', 2, 'Simple mode (WYSIWYG)', 'back', 'thm'),
('thm_str_author', 2, 'by', 'back', 'thm'),
('thm_str_current_theme', 2, 'My current theme', 'back', 'thm'),
('thm_str_last_customized', 2, 'last customized', 'back', 'thm'),
('thm_str_other_themes', 2, 'Other available themes', 'back', 'thm'),
('thm_template_saved_msg', 2, 'Template has been saved', 'hidden', 'thm'),
('affp_amount_percent', 2, 'User''s reward/commission is calculated as a percent of his/her referrals'' orders amount.<br>Please indicate percent value:', 'back', 'aff'),
('affp_commissions_calculate', 2, 'Comissions settings', 'back', 'aff'),
('affp_edit_commission', 2, 'Edit commission details', 'back', 'aff'),
('affp_edit_payment', 2, 'Edit payment details', 'back', 'aff'),
('affp_enable_program', 2, 'Enable affiliate program', 'back', 'aff'),
('affp_msg_error_date_format', 2, 'Wrong date format', 'back', 'aff'),
('affp_new_commission', 2, 'New commission', 'back', 'aff'),
('affp_new_payment', 2, 'New payment', 'back', 'aff'),
('affp_submit_new_commission', 2, 'Submit new commission', 'back', 'aff'),
('affp_submit_new_payment', 2, 'Submit new payment', 'back', 'aff'),
('affp_user_settings_control', 2, 'Email notification settings', 'back', 'aff'),
('affr_email_new_commission_ctrl', 2, 'Send email notification to user when new commission is credited to his account', 'back', 'aff'),
('affr_email_new_payment_ctrl', 2, 'Send email notification to user when new payment is submitted', 'back', 'aff'),
('blog_emailposttosubscribers', 2, 'Email this post to newsletter subscribers', 'back', 'nws'),
('blog_err_empty_texttoemail', 2, 'Please enter newsletter text', 'back', 'nws'),
('blog_err_empty_titletext', 2, 'Please enter whether Title or Text for publication', 'back', 'nws'),
('blog_msg_picture_deleted', 2, 'Post picture has been deleted', 'back', 'nws'),
('blog_msg_post_added', 2, 'Post has been published', 'back', 'nws'),
('blog_msg_post_deleted', 2, 'Post has been deleted', 'back', 'nws'),
('blog_msg_post_emailed_to_subscribers', 2, 'This post has been emailed to subscribers', 'back', 'nws'),
('blog_post_body', 2, 'Post', 'back', 'nws'),
('blog_post_list', 2, 'Blog / News', 'back', 'nws'),
('blog_post_newsletter_body', 2, 'Newsletter text (emailed to customers)', 'back', 'nws'),
('blog_post_title', 2, 'Title', 'back', 'nws'),
('blog_postdate', 2, 'Date', 'back', 'nws'),
('blog_str_html', 2, 'HTML', 'back', 'nws'),
('blog_str_not_html', 2, 'not HTML', 'back', 'nws'),
('blog_writepost', 2, 'Write a post', 'back', 'nws'),
('cntr_all_countries', 2, 'All countries', 'back', 'cnr'),
('cntr_all_other_countries', 2, 'All other countries', 'back', 'cnr'),
('cntr_countries', 2, 'Countries', 'back', 'cnr'),
('cntr_country_iso2', 2, 'Country ISO2', 'back', 'cnr'),
('cntr_country_iso3', 2, 'Country ISO3', 'back', 'cnr'),
('rgn_all_other_regions', 2, 'All other states', 'back', 'cnr'),
('rgn_all_regions', 2, 'All states', 'back', 'cnr'),
('rgn_region_code', 2, 'State code', 'back', 'cnr'),
('rgn_region_name', 2, 'State name', 'back', 'cnr'),
('rgn_regions', 2, 'States', 'back', 'cnr'),
('curr_currency_exchangerate', 2, 'Exchange rate1', 'back', 'cur'),
('curr_currency_id', 2, 'Currency ID1', 'back', 'cur'),
('curr_currency_name', 2, 'Currency name', 'back', 'cur'),
('curr_currency_types', 2, 'Currencies1', 'back', 'cur'),
('curr_iso3', 2, 'Currency ISO 3', 'back', 'cur'),
('msg_customers_exported_to_file', 2, 'Customers list has been successfully exported to a file', 'back', 'cmr'),
('regform_address_configurator', 2, 'Address forms configuration', 'back', 'cmr'),
('regform_address_configurator_country_hint', 2, 'If countries list is not empty in store settings (Configuration -> Countries) then "Country" is the mandatory field in the address form.<br>In case countries list is empty, customer will not be prompted to select country.', 'back', 'cmr'),
('regform_customfields_configurator', 2, 'Custom signup for fields', 'back', 'cmr'),
('regform_not_requested', 2, 'Not requested', 'back', 'cmr'),
('regform_optional_field', 2, 'Optional', 'back', 'cmr'),
('usr_account_confirm_activate', 2, 'Activate account for [email]?', 'back', 'cmr'),
('usr_custinfo_custom_field_name', 2, 'Field name', 'back', 'cmr'),
('usr_custinfo_custom_field_required', 2, 'Required', 'back', 'cmr'),
('usr_custinfo_fields_descr', 2, 'In this section you can configure customer registration form: define custom fields in the form (e.g. phone/fax number, SSN, birthday) and set which fields are mandatory and which are not.', 'back', 'cmr'),
('usr_custinfo_group_discount', 2, 'Discount', 'general', 'cmr'),
('btn_recalculate', 2, 'Recalculate', 'general', 'gen'),
('usr_custinfo_regtime', 2, 'Register time', 'back', 'cmr'),
('usr_customer_search_back_to_form', 2, 'back to customer search form', 'back', 'cmr'),
('usr_customer_search_descr', 2, 'Please input customer search criteria.<br>Leave all fields blank to view all customers records (empty fields are ignored).', 'back', 'cmr'),
('usr_export_userlist_to_csv', 2, 'Export these users to a CSV file (MS Excel, OpenOffice)', 'back', 'cmr'),
('dscnt_disabled', 2, 'Discounts are disabled', 'back', 'dsc'),
('dscnt_method_cust_group', 2, 'Discount rate = customer group discount rate', 'back', 'dsc'),
('dscnt_method_cust_group_plus_order_amount', 2, 'Discount rate is calculated as customer group discount rate plus rate based on order amount', 'back', 'dsc'),
('dscnt_method_max_of_cust_group_and_order_amount', 2, 'Discount rate is calculated as maximum from customer group discount rate and rate based on order amount', 'back', 'dsc'),
('dscnt_method_order_amount', 2, 'Discount rate is calculated based on order amount (criteria are defined below)', 'back', 'dsc'),
('dscnt_method_order_amount_criteria', 2, 'Discount rate calculation is based on order amount (criteria):', 'back', 'dsc'),
('dscnt_method_order_amount_criteria_descr', 2, 'In the following table you may set discount rates for different order amounts.<br>Enter <i>discount rates (in percent)</i> in the right column applicable if customer order total amount exceeds <i>order_amount</i> you enter in the left column.', 'back', 'dsc'),
('dscnt_order_amount', 2, 'Order amount (in default store currency)', 'back', 'dsc'),
('dscnt_order_amount_percent_value', 2, 'Discount rate (%) applicable if order total exceeds value entered in the left column', 'back', 'dsc'),
('dscnt_select_calculation_method', 2, 'Select method for calculating discount rates during checkout:', 'back', 'dsc'),
('err_couldnt_delete_order_status', 2, 'Could not delete order status, because there are active orders in this status', 'back', 'err'),
('err_new_and_complete_statuses_match', 2, 'Status of the new order must not match status of the completed order', 'back', 'err'),
('err_percent_is_out_of_0_100', 2, 'Percent value should be a number from 0 to 100', 'back', 'err'),
('err_should_have_atleast_2statuses', 2, 'Please specify at least two order statuses which will represent new (pending) and complete orders', 'back', 'err'),
('btn_addcategory', 2, 'Add new category', 'back', 'gen'),
('btn_addproduct', 2, 'Add new product', 'back', 'gen'),
('cfg_config_no_options', 2, 'No configuration options', 'back', 'gen'),
('cfg_config_option', 2, 'Configuration option', 'back', 'gen'),
('cfg_country_undefined', 2, 'Undefined country', 'back', 'gen'),
('cfg_ordr_status_undefined', 2, 'Undefined status', 'back', 'gen'),
('msg_days', 2, 'day(s)', 'general', 'gen'),
('msg_safemode_info_blocked', 2, 'Blocked in safe mode', 'back', 'gen');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('msg_safemode_warning', 2, 'Can not perform action. Safe mode is set to ON.', 'back', 'gen'),
('msg_select_country_to_see_regions', 2, 'Add at least one country before adding a state', 'back', 'gen'),
('msg_update_successful', 2, 'Update processed successfully', 'back', 'gen'),
('pgn_categories_products', 2, 'Categories and products', 'back', 'gen'),
('pgn_customer_groups', 2, 'Customer groups', 'back', 'gen'),
('pgn_customer_groups_descr', 2, 'In this section you can define customer groups and discounts applied to each group.<br>Note that discounts will be calculated only if you configure such option in the "Discounts" screen.', 'back', 'gen'),
('pgn_customer_search', 2, 'Customer search', 'back', 'gen'),
('pgn_customers_and_orders', 2, 'Customers and orders', 'back', 'gen'),
('pgn_email_subscribers', 2, 'Newsletter subscribers', 'back', 'gen'),
('pgn_export_to_google_base', 2, 'Google Base', 'back', 'gen'),
('pgn_infopages', 2, 'Information pages', 'back', 'gen'),
('pgn_link_exchange', 2, 'Link exchange', 'back', 'gen'),
('pgn_new_orders', 2, 'Orders', 'back', 'gen'),
('pgn_prdexport_csv', 2, 'Export products to CSV', 'back', 'gen'),
('pgn_prdimport_csv', 2, 'Import products from CSV', 'back', 'gen'),
('pgn_product_options', 2, 'Product custom options', 'back', 'gen'),
('pgn_product_reports', 2, 'Product reports', 'back', 'gen'),
('survey_page_description', 2, 'Here you can create a survey (poll) to collect information from your online store visitors and see results of the survey.', 'back', 'srv'),
('pgn_sms', 2, 'SMS notifications', 'back', 'gen'),
('pgn_synchronize_tools', 2, 'Synchronization tools', 'back', 'gen'),
('pgn_taxes_define_rates', 2, 'Define tax rates', 'back', 'gen'),
('pgn_voting', 2, 'Poll', 'back', 'gen'),
('prdspecial_add_special_offer', 2, 'Add to special offers list', 'back', 'prd'),
('str_addition', 2, 'ADDITION?', 'back', 'gen'),
('str_admin_gotofrontend', 2, 'View storefront', 'back', 'gen'),
('str_admin_title', 2, 'Administrative tools', 'back', 'gen'),
('str_admin_welcome', 2, '<p><font class=big>Welcome to administrator mode (backend)!</font><p>Please use navigation menu to access administrative departments.', 'back', 'gen'),
('str_file_is_not_uploaded', 2, 'File is not uploaded', 'back', 'gen'),
('str_file_is_uploaded', 2, 'File is uploaded', 'back', 'gen'),
('str_group', 2, 'Group name', 'back', 'gen'),
('str_image_not_uploaded', 2, 'No image uploaded', 'back', 'gen'),
('str_regions_notdefined', 2, 'No states are defined for the selected country', 'back', 'gen'),
('str_return_to_messages', 2, 'back to discussions list', 'back', 'gen'),
('str_sort_order', 2, 'Sort order', 'back', 'gen'),
('dbsync_sync_desc', 2, 'This department allows you to extensively manage products and categories in your store.<br>\r\nIn this section you can:\r\n<ol>\r\n<li>Make a backup of products and categories (export database into a SQL file).</li>\r\n<li>Import products and categories from SQL file, which had been exported from Shop-Script PREMIUM.</li>\r\n</ol>\r\nThis gives you the ability to synchronize products and categories catalog between different Shop-Script PREMIUM based stores.', 'back', 'ine'),
('dbsync_sync_header', 2, 'Import database from a SQL file\r\n<P>\r\n1. Please make sure to import data from the file exported from <B>Shop-Script PREMIUM of the same version</B> you are currently running.<br>\r\n2. IMPORTANT: Existing store catalog content (products and categories) will be erased!</b>', 'back', 'ine'),
('gglbase_btn_create_feed', 2, 'Create a feed file for Google Base', 'back', 'ine'),
('gglbase_description_hint1', 2, 'Please specify which product description should be exported to Google Base:', 'back', 'ine'),
('gglbase_description_hint2', 2, 'NOTE: product descriptions exported to Google Base must not contain HTML tags (descriptions containing HTML data are not accepted by Google Base)', 'back', 'ine'),
('gglbase_err_cant_create_file', 2, 'Can not create a feed file for Google Base (temp/froogle.txt)', 'back', 'ine'),
('gglbase_err_select_currency', 2, 'Please select a currency type', 'back', 'ine'),
('gglbase_msg_exported_products', 2, 'Google Base feed file successfully created', 'back', 'ine'),
('gglbase_pricing_description', 2, 'Product prices exported to Google Base should be denominated in US dollars (USD).<br>Please indicate a US dollars currency type in your shopping cart. This is required for correct export of products prices.', 'back', 'ine'),
('gglbase_usd_currency_type', 2, 'USD currency type', 'back', 'ine'),
('prdexport_btn_export_db_to_sql_file', 2, 'Export database to a SQL file', 'back', 'ine'),
('prdexport_csv_btn_export', 2, 'Export catalog', 'back', 'ine'),
('prdexport_csv_descr', 2, 'In this section you can <strong>export your products catalog to a CSV file</strong> (Comma Separated Values file).<br />\r\nExported CSV file is a text file which can be viewed and edited in Microsoft Excel or OpenOffice, and then imported back to your online store in the "Import" section.<br />\r\nPlease specify CSV file delimiter, select categories you wish to export and click "Export catalog" button.<br />\r\nProduct import and export tools are useful for making a backup of all your product files, and for bulk product management using some spreadsheet application like Microsoft Excel.', 'back', 'ine'),
('prdexport_csv_msg_successful', 2, 'Categories and products have been successfully exported to a CSV file:', 'back', 'ine'),
('prdexport_msg_db_exported_to', 2, 'Database content (products and categories) has been successfully exported to a SQL file', 'back', 'ine'),
('prdimport_csv_add_column_as_new_option', 2, ' - add this as a custom product option -', 'back', 'ine'),
('prdimport_csv_browse_for_file', 2, 'Specify your CSV file', 'back', 'ine'),
('prdimport_csv_clear_db', 2, 'Delete all products, all categories and all product settings', 'back', 'ine'),
('prdimport_csv_clear_db_desc', 2, 'Completely clear database (CSV file selection is not required).', 'back', 'ine'),
('prdimport_csv_delimeter_semicolon', 2, 'Semicolon', 'back', 'ine'),
('prdimport_csv_desc1', 2, 'This section allows you to <strong>import products from a CSV file</strong> (Comma Separated Values file) to your online storefront.<br /> Prepare your products catalog file in Microsoft Excel, save it as a CSV file and upload it using the following form.<br />Please note that <strong>you can only import data from CSV files of a certain columns/rows structure</strong> (you can not import data from any file with custom (ununified) structure).<br />Please refer to our <a href="http://www.webasyst.net/support/shop/manual.html#Bulk-import-export-operations" target="_blank">description of supported CSV file structure (organization)</a> before importing data to your online store.', 'back', 'ine'),
('prdimport_csv_desc2', 2, 'Your file contains following columns (see below).<br>Please associate each column with a database field.', 'back', 'ine'),
('prdimport_csv_desc3', 2, '---', 'back', 'ine'),
('cpt_lbl_product_params_selectable', 2, 'Custom parameters (selectable)', 'general', 'cpt'),
('prdimport_csv_ignorecolumn', 2, ' - ignore this column -', 'back', 'ine'),
('prdimport_csv_update_db', 2, 'Update (add new products and update existing products details)', 'back', 'ine'),
('prdimport_csvl_delimeter', 2, 'Delimiter in this CSV file', 'back', 'ine'),
('prdimport_csvl_delimeter_comma', 2, 'Comma', 'back', 'ine'),
('prdimport_csvl_delimeter_tab', 2, 'Tab', 'back', 'ine'),
('prdimport_primary_column', 2, 'Primary column', 'back', 'ine'),
('prdimport_primary_column_desc', 2, '(please select a column that uniquely indicates a product)<br><b>Please, be careful when selecting this column. Wrong choice may cause unexpected results!</b>', 'back', 'ine'),
('prdimport_update_gc_value_button', 2, 'Update products count value for categories', 'back', 'ine'),
('infpg_addnewpage', 2, 'Add new page', 'back', 'inf'),
('infpg_page_ref', 2, 'A link to paste into template file', 'back', 'inf'),
('infpg_page_text', 2, 'Page text', 'back', 'inf'),
('infpg_page_text_type', 2, 'Page body type', 'back', 'inf'),
('infpg_pagename', 2, 'Page title', 'back', 'inf'),
('infpg_pages_description', 2, 'Following table represents a list of custom information pages in your online store (pages with static content), e.g. "About us", "Terms of Service", "Shipping".<br />\r\nIf you add a new page, it will automatically appear in your storefront (please note that this is only valid if you did not delete a component that shows a list of all info pages on your storefront layout).<br />\r\nTo sort pages drag them within the list below.', 'back', 'inf'),
('le_all_categories', 2, 'All categories', 'general', 'lke'),
('le_btn_add_new_category', 2, 'Add new links category', 'back', 'lke'),
('le_btn_approve', 2, 'Mark as &quot;Approved&quot;', 'back', 'lke'),
('le_btn_decline', 2, 'Mark as &quot;Declined&quot;', 'back', 'lke'),
('le_err_link_category_exists', 2, 'Category with such name already exists', 'back', 'lke'),
('le_link_not_verified', 2, 'Not yet verified', 'back', 'lke'),
('le_link_text', 2, 'Link text', 'general', 'lke'),
('le_link_url', 2, 'URL', 'general', 'lke'),
('le_link_verified', 2, 'Verified', 'back', 'lke'),
('le_with_selected', 2, 'With selected:', 'back', 'lke'),
('mdl_actions', 2, 'Actions', 'back', 'mdl'),
('mdl_configure', 2, 'Configure module', 'back', 'mdl'),
('mdl_installed', 2, 'Installed', 'back', 'mdl'),
('mdl_name', 2, 'Module', 'back', 'mdl'),
('mdl_not_installed', 2, 'Not installed', 'back', 'mdl'),
('mdl_payment_module_setup', 2, 'Set up payment module', 'back', 'mdl'),
('mdl_payment_modules_description', 2, 'If you would like to enable real-time shipping rates calculation with a certain shipping company (e.g. UPS, USPS) you will need to have an account with this shipping company.<br>Please go to this company''s website to get information on how to establish an account with them.<br>After account is established simply install this shipping module (below) and input your account details in module settings.<br>Then go to "Configuration" -> "Shipping" screen of administrative mode and assign installed module to a certain shipping method.', 'back', 'mdl'),
('mdl_payment_types_using_this_module', 2, 'payment types<br>associated with this module', 'back', 'mdl'),
('mdl_shipping_methods_are_allowed', 2, 'Payment type is available for the following shipping types (please select)', 'back', 'mdl'),
('mdl_shipping_module_setup', 2, 'Set up shipping module', 'back', 'mdl'),
('mdl_shipping_types_using_this_module', 2, 'shipping types<br>associated with this module', 'back', 'mdl'),
('msg_installed_modules', 2, 'Installed modules', 'back', 'mdl'),
('msg_no_installed_modules', 2, 'No installed modules', 'back', 'mdl'),
('ordr_ccinfo_shown_only_in_https', 2, 'This information is available in secure SSL (HTTPS) connection only. To access this information, relogin to your account in SSL mode (check corresponding SSL checkbox when you login).', 'back', 'ord'),
('ordr_change_status', 2, 'Change status to custom...', 'back', 'ord'),
('ordr_custinfo', 2, 'Customer info', 'back', 'ord'),
('ordr_msg_about_prices', 2, 'Prices reflect actual value at the time order was placed.', 'back', 'ord'),
('ordr_order_statuses', 2, 'Order statuses', 'back', 'ord'),
('ordr_send_buyer_message', 2, 'Notify customer about this change by email', 'back', 'ord'),
('pmnt_calctax_for_this_payment_type', 2, 'Calculate tax for this payment type', 'back', 'ord'),
('pmnt_email_comments_text', 2, 'Payment instructions (sent to customer with the order notification email)', 'back', 'ord'),
('shp_email_comments_text', 2, 'Shipping info (sent to customer with the order notification email)', 'back', 'ord'),
('prd_msg_could_not_delete', 2, 'Could not delete this product', 'back', 'prd'),
('prd_msg_could_not_delete_these_products', 2, 'Could not delete these products', 'back', 'prd'),
('prd_msg_root_warning', 2, '<font color=red>All products in the root directory are not shown to users!</font>', 'back', 'prd'),
('prd_product_visible_in_storefront', 2, 'Visible in storefront', 'back', 'prd'),
('prd_productlist', 2, 'Products', 'back', 'prd'),
('prdcat_advsearch_customoption_availablevalues', 2, 'Available values', 'back', 'prd'),
('prdcat_advsearch_in_this_category_allow', 2, 'Allow advanced product selection within this category', 'back', 'prd'),
('prdcat_advsearch_in_this_category_allow_descr', 2, 'please enable this option if you would like to allow customer to perform advanced search within this category during catalog browsing', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_input', 2, 'Defined by user', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_select_descr', 2, 'Please select parameters available ', 'back', 'prd'),
('prdcat_advsearch_prdcustopt_selectable', 2, 'Selectable', 'back', 'prd'),
('prdcat_allow_products_comparison', 2, 'Allow customer to compare products within this category', 'back', 'prd'),
('prdcat_category_descr', 2, 'Category description', 'back', 'prd'),
('prdcat_category_logo', 2, 'Category logo', 'back', 'prd'),
('prdcat_category_move_to', 2, 'Move to...', 'back', 'prd'),
('prdcat_category_name', 2, 'Category name', 'back', 'prd'),
('prdcat_category_new', 2, 'Create new category', 'back', 'prd'),
('prdcat_category_parent', 2, 'Parent category', 'back', 'prd'),
('prdcat_category_root', 2, 'Root', 'back', 'prd'),
('prdcat_category_title', 2, 'Categories', 'back', 'prd'),
('prdcat_show_products_from_subcategories', 2, 'Always show subcategory products among current category products', 'back', 'prd'),
('prdcustopt_availablevalues', 2, 'Available values for custom parameter "%OPTION_NAME%"', 'back', 'prd'),
('prdcustopt_option_has_no_values', 2, 'This parameter has no predefined values', 'back', 'prd'),
('prdcustopt_optionname', 2, 'Parameter', 'back', 'prd'),
('prdcustopt_value', 2, 'Value', 'back', 'prd'),
('prdcustopt_value_add', 2, 'Add value variant for this parameter', 'back', 'prd'),
('prdcustopt_value_variants', 2, 'Parameter available values', 'back', 'prd'),
('prdopt_add_new_option', 2, 'Add new product parameter', 'back', 'prd'),
('prdopt_custom_option_title', 2, 'Parameter name', 'back', 'prd'),
('prdopt_no_product_options', 2, 'You have no custom product parameters', 'back', 'prd'),
('prdreview_postaddtime', 2, 'Post time', 'back', 'prd'),
('prdreview_reply', 2, 'Reply', 'back', 'prd'),
('prdset_addproduct', 2, 'Create new product', 'back', 'prd'),
('prdset_choose_selectable_option_values', 2, 'Select available choices', 'back', 'prd'),
('prdset_configurator_title', 2, 'Available choices for ', 'back', 'prd'),
('prdset_custom_value', 2, 'Custom value (text)', 'back', 'prd'),
('prdset_customoption_configurator', 2, 'Configure custom options', 'back', 'prd'),
('prdset_date_added', 2, 'Date added', 'back', 'prd'),
('prdset_date_modified', 2, 'Date modified', 'back', 'prd'),
('prdset_download_is_available_for', 2, 'The file is available for download for ', 'general', 'prd'),
('prdset_download_is_available_for_2', 2, 'Download is available for (days)', 'back', 'prd'),
('prdset_download_max_number_allowed', 2, 'Maximum number of downloads (leave blank if unlimited)', 'back', 'prd'),
('prdset_eproduct_filename', 2, 'Product file', 'back', 'prd'),
('prdset_free_shipping', 2, 'Free shipping', 'back', 'prd'),
('mdl_edit_module', 2, 'Edit module', 'back', 'mdl'),
('prdset_free_shipping_2', 2, 'Free shipping', 'back', 'prd'),
('prdset_image_preview', 2, 'Preview', 'back', 'prd'),
('prdset_meta_description', 2, 'META description', 'back', 'prd'),
('prdset_meta_keywords', 2, 'META keywords', 'back', 'prd'),
('prdset_min_qunatity_to_order', 2, 'Minimum order quantity', 'back', 'prd'),
('prdset_option_value_variants', 2, 'choices available', 'back', 'prd'),
('prdset_optvalue_price_surplus', 2, 'Price surcharge if this value is selected', 'back', 'prd'),
('prdset_product_bigpicture', 2, 'Enlarged picture', 'back', 'prd'),
('prdset_product_code', 2, 'Product code (SKU)', 'general', 'gen'),
('prdset_product_extra_categories', 2, 'Product extra categories', 'back', 'prd'),
('prdset_product_filename', 2, 'Filename', 'back', 'prd'),
('prdset_product_is_downloadable', 2, 'This product is downloadable', 'back', 'prd'),
('prdset_product_listprice', 2, 'Regular price', 'back', 'prd'),
('prdset_product_picture', 2, 'Picture', 'back', 'prd'),
('prdset_product_pictures', 2, 'Product images', 'back', 'prd'),
('prdset_product_rating', 2, 'Rating', 'back', 'prd'),
('prdset_product_sold', 2, 'Sold', 'back', 'prd'),
('prdset_product_thumbnail', 2, 'Thumbnail', 'back', 'prd'),
('prdset_product_votes', 2, 'Votes', 'back', 'prd'),
('prdset_productpicture_default', 2, 'Default picture', 'back', 'prd'),
('prdset_prompt_option_value_str', 2, 'Prompt customer to select this option value', 'back', 'prd'),
('prdset_prompt_option_value_times', 2, 'time(s) for this product', 'back', 'prd'),
('prdset_related_products_select', 2, 'Please select a product', 'back', 'prd'),
('prdset_save_photos', 2, 'Save pictures', 'back', 'prd'),
('prdset_selectable_from_values', 2, 'Selectable from predefined values', 'back', 'prd'),
('prdset_selected_products', 2, 'Selected products', 'back', 'prd'),
('prdspecial_no_special_offers', 2, 'No special offers selected', 'back', 'prd'),
('prdspecial_special_offers_desc', 2, 'Special offers are shown at the frontend homepage.<br>\r\nYou may select special offers in the "Categories and products" screen,<br>\r\nby clicking <img src="images/admin_special_offer.gif" border=0> in the products table.<br>\r\nYou can only select products with at least one picture (image) uploaded.', 'back', 'prd'),
('rep_best_viewed_categories', 2, 'Best viewed categories?', 'back', ''),
('rep_views_count', 2, 'Number of views', 'back', ''),
('sms_current_time', 2, '(now &mdash; %s)', 'back', 'sms'),
('sms_disable_module', 2, 'Disable SMS notifications', 'back', 'sms'),
('sms_enable_notifications', 2, 'Enable SMS notifications', 'back', 'sms'),
('sms_gateway_module_config', 2, 'SMS module configuration', 'back', 'sms'),
('sms_gateway_modules', 2, 'SMS modules', 'back', 'sms'),
('sms_mail_choose_sms_sending_module', 2, '<b>Please select SMS module for sending SMS notifications on new orders</b>', 'back', 'sms'),
('sms_message_new_order', 2, 'New order!', 'general', 'sms'),
('sms_modules_description', 2, 'If you would like to enable SMS notifications you will need to have an account with a certain SMS gateway (SMS gateway is a company which provide SMS sending/delivery and other SMS services).<br>Please go to this gateway''s website to get information on how to establish an account with them.<br>After account is established simply install this SMS module (below) and input your account details in module settings.<br>Then click "Enable SMS notifications" checkbox, select a gateway which you would like to use and provide phone numbers where to send SMS notifications on new orders.', 'back', 'sms'),
('sms_new_phone_number', 2, 'New phone number', 'back', 'sms'),
('sms_notify_error_period', 2, 'Wrong period format!', 'back', 'sms'),
('sms_phone_list_descr', 2, '<b>Phone numbers list for sending notifications</b>\r\n	<div class="small">Use international phone number format, e.g. 12223333333: <table border="1">\r\n	<tr>\r\n		<td>1</td>\r\n		<td>222</td>\r\n		<td>3333333</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Country code</td>\r\n		<td>Operator code</td>\r\n		<td>Phone number</td>\r\n	</tr>\r\n	</table>\r\n	To <b>add</b> a phone number enter it in the "new number" field and click "Save".<br />To <b>delete</b> a phone number leave its field blank and click "Save".</div>', 'back', 'sms'),
('sms_sending_allowed_timeframe', 2, '<b>SMS notifications allowed time period (server time)</b><div class="small">Please enter a time period in which you wish to receive SMS notifications on new orders. Not within the allowed interval no SMS notifications will be sent</div>', 'back', 'sms'),
('sbscrbrs_description', 2, 'Here you can view the list of newletter subscribers in your online store, import/export email subscribers'' addresses to/from a file (a simple text file; every email address is on a separate line).', 'back', 'sbr'),
('sbscrbrs_err_creating_file', 2, 'Can not export subscribers list to a file. Error creating output file.', 'back', 'sbr'),
('sbscrbrs_err_empty_file', 2, 'No records were found in the file you are uploading', 'back', 'sbr'),
('sbscrbrs_err_uploading_file', 2, 'Error uploading file to server', 'back', 'sbr'),
('sbscrbrs_export_to_file', 2, 'Export subscribers to a text file', 'back', 'sbr'),
('sbscrbrs_import_from_file', 2, 'Import subscribers from file', 'back', 'sbr'),
('sbscrbrs_msg_deleted_all_records', 2, '{*EMAILS_NUMBER*} record(s) successfully deleted', 'back', 'sbr'),
('sbscrbrs_msg_email_deleted', 2, 'Email {*EMAIL*} has been removed from the list', 'back', 'sbr'),
('sbscrbrs_msg_export_successful', 2, 'Subscribers list has been successfully exported to a file<br /><a href="{*URL*}">Download</a>', 'back', 'sbr'),
('sbscrbrs_msg_import_successful', 2, 'Subscribers list successfully imported. {*EMAILS_NUMBER*} new record(s) added.', 'back', 'sbr'),
('survey_answeroptions', 2, 'Answer options (enter each option on a separate line):', 'back', 'srv'),
('prdset_tab_customparams', 2, 'Custom parameters', 'back', 'prd'),
('survey_btn_new_survey', 2, 'Start new survey', 'back', 'srv'),
('survey_new_survey_warning', 2, '<strong>NOTE:</strong> All results of a previous survey will be erased.', 'back', 'srv'),
('survey_question', 2, 'Question', 'back', 'srv'),
('tax_back_to_country_list', 2, 'back to tax rates by countries definition', 'back', 'txs'),
('tax_back_to_tax_types', 2, 'back to tax classes list', 'back', 'txs'),
('tax_name', 2, 'Tax type name', 'back', 'txs'),
('tax_rate', 2, 'Tax rate', 'back', 'txs'),
('tax_rate_depends_on_region', 2, 'Tax rate depends on state (rates are defined for {N} states from {M})', 'back', 'txs'),
('tax_sales_tax_is_based_on_address', 2, 'Tax rate calculation is based on address type:', 'back', 'txs'),
('tax_set_rates_for_countries', 2, 'Please set tax rate for countries from the list', 'back', 'txs'),
('tax_set_rates_for_regions', 2, 'Please set tax rate for states from the list', 'back', 'txs'),
('tax_set_rates_for_zip', 2, 'Define tax rates by zip codes', 'back', 'txs'),
('tax_set_rates_for_zip_descr', 2, 'If you would like to define tax rates by counties, please use following zip codes taxing system.<br>In the following form input zip code masks - numbers/letters and asteryxes (*). Asteryx is assumed as any symbol. For example, mask 12*** is applicable for zip codes of 5 symbol length and \\''12\\'' as first two symbols - e.g. 12365, 12963, 12AB7 (you may use both letters and numbers).<br><br>Among all masks applicable for a particular zip code, the "closest" one will be used. For example if you have two masks defined: 92*** and 923**, and customer inputs zip code 92301 - in this case mask 923** will be used for tax rate calculation, and 92*** record will be ignored.', 'back', 'txs'),
('tax_set_rates_for_zip_descr2', 2, 'Zip code tax rates are higher priority than state codes. Tax rate defined by state will be used only if there is no applicable mask for zip code provided by a customer.', 'back', 'txs'),
('tax_single_overall_rate', 2, 'Overall rate', 'back', 'txs'),
('tax_type', 2, 'Tax type', 'back', 'txs'),
('tax_types', 2, 'Tax types', 'back', 'txs'),
('checkout_another_address', 2, 'Another address', 'front', 'chk'),
('checkout_comment', 2, 'Your comments (optional)', 'front', 'chk'),
('checkout_continue_tip', 2, 'To proceed with the order you should be a registered customer.<br>\r\n	If you already have an account, please use the form to the right; otherwise fill in the registration form.', 'front', 'chk'),
('checkout_enter_address', 2, 'Enter your address to proceed with checkout', 'front', 'chk'),
('checkout_i_am_new_customer', 2, 'I am a new customer', 'front', 'chk'),
('checkout_msg_thank_you_for_ordering', 2, 'We will contact you as soon as possible.', 'front', 'chk'),
('checkout_no_address_specified', 2, '< address is not specified >', 'front', 'chk'),
('checkout_no_payment_methods', 2, 'No payment types available', 'front', 'chk'),
('checkout_no_shipping_methods', 2, 'No shipping types available', 'front', 'chk'),
('checkout_order_ship_to', 2, 'Order will be shipped to', 'front', 'chk'),
('checkout_place_order', 2, 'Place order!', 'front', 'chk'),
('checkout_select_payment_type', 2, 'Select preferable payment type', 'front', 'chk'),
('checkout_select_shipping_type', 2, 'Select preferable shipping type', 'front', 'chk'),
('checkout_shipping', 2, 'Shipping', 'front', 'chk'),
('checkout_transaction_result_failure', 2, 'Error occured while processing your transaction.<p>Please try again later or contact us to resolve this case. Please include order ID in your message.', 'front', 'chk'),
('checkout_transaction_result_success', 2, 'Thank you! Your payment has been accepted.<p>We will contact you for the payment verification and order shipping as soon as possible.', 'front', 'chk'),
('checkout_with_no_registration', 2, 'Checkout without registration', 'front', 'chk'),
('str_checkout', 2, 'Checkout', 'front', 'chk'),
('affp_attract_guide', 2, '<p><B>Making money with us is very easy!</B><br>You receive commissions for every order placed by customers whom you refer to our store - {aff_percent}% of each order amount.<p>Referring users to our store can be performed in two ways:<ol><li>Simply tell your referrals to mention your login {login} when registering in our store or placing an order.<br><br></li><li>Add following link to your website:<br><br><B>{URL}</B><br><br>All visitors of your website who click this link will be redirected to our store and in case this he/she makes an order, you will automatically receive your reward!<br>User will not be asked to input your login in this case.</li></ol>', 'front', 'cmr'),
('usr_account_input_activation_key', 2, 'Please input your account Activation Key which has just been sent to you by email. This is required to verify your email address', 'front', 'cmr'),
('usr_account_update_successful', 2, 'Your information has been updated.<br />Thank you.', 'front', 'cmr'),
('usr_addresses_added', 2, 'The following addresses have been successfully added to your address book', 'front', 'cmr'),
('usr_cant_find_user_in_db', 2, 'We can not find users with provided information', 'front', 'cmr'),
('usr_custinfo_referrer', 2, 'Referrer user name (login)<br />(leave blank if not applicable)', 'front', 'cmr'),
('usr_forgot_password_descr', 2, 'Enter your <strong>login</strong> or <strong>email address</strong>:', 'front', 'cmr'),
('usr_msg_registration_successful', 2, 'Registration successful.<br />Thank you!', 'front', 'cmr'),
('usr_password_sent', 2, 'We have just emailed you your password', 'front', 'cmr'),
('usr_successful_account_termination', 2, 'Your account has been successfully terminated.', 'front', 'cmr'),
('usr_thank_you_for_subscription', 2, 'Thank you for subscription!', 'front', 'cmr'),
('usrreg_authorization_fields', 2, 'LOGIN INFORMATION', 'front', 'cmr'),
('usrreg_confirm_acc_activation', 2, 'Account activation', 'front', 'cmr'),
('usrreg_confirm_err_wrong_actcode', 2, 'Invalid Activation Key', 'front', 'cmr'),
('usrreg_confirm_notactivated', 2, 'Please active your account by inputting Activiation Key which has been emailed to you:<br>', 'front', 'cmr'),
('usrreg_confirm_subject', 2, 'Account information', 'front', 'cmr'),
('usrreg_confirm_success', 2, '<p>Your account has been successfully activated. Thank you!</p><p><a href="%ACCOUNT_URL%">Manage my account</a></p>', 'front', 'cmr'),
('usrreg_confirm_type_code', 2, 'Input Activation Key (emailed to you):', 'front', 'cmr'),
('usrreg_confirmation_code', 2, 'Confirmation code', 'front', 'cmr'),
('usrreg_contact_information', 2, 'CONTACT INFORMATION', 'front', 'cmr'),
('usrreg_customer_confirm_password', 2, 'Confirm password', 'front', 'cmr'),
('usrreg_required_regform_fields_descr', 2, '<font color=red>*</font> required', 'front', 'cmr'),
('usrreg_subscribe_for_blognews', 2, 'Subscribe for email newsletter (blog)', 'general', 'cmr'),
('err_access_to_product_downloadable_file_denied', 2, 'Access to file denied (order is not paid)', 'front', 'err'),
('err_input_all_required_fields', 2, 'Please fill in all required fields', 'front', 'err'),
('err_invalid_symbols_in_login_or_password', 2, 'Symbols '', \\, ", <, > are not allowed in login and password fields', 'front', 'err'),
('err_region_does_not_belong_to_country', 2, 'Select state from the drop down menu', 'general', 'err'),
('err_wrong_ccode', 2, 'Numbers shown on the image were entered incorrectly', 'front', 'err'),
('err_wrong_referrer', 2, 'Wrong referrer user name (login). Please verify your input or leave the field blank.', 'front', 'err'),
('feedback_description_general', 2, 'Using this form you can send us a message.', 'front', 'fdk'),
('feedback_description_general_2', 2, 'Please use the following form to request information.', 'front', 'fdk'),
('feedback_description_productpage', 2, 'Please specify your question about ', 'front', 'fdk'),
('feedback_message_text', 2, 'Text', 'front', 'fdk'),
('feedback_msg_sent_successfully', 2, '<B>You message has been successfully sent.</B><br>We will respond to you as soon as possible. Thank you!', 'front', 'fdk'),
('feedback_title_productpage', 2, 'Any questions?', 'front', 'fdk'),
('blog_view_all_posts', 2, 'See all posts', 'front', 'gen'),
('btn_back_to_shopping', 2, 'Back to shopping', 'front', 'gen'),
('btn_compare_products', 2, 'Compare selected products', 'front', 'gen'),
('btn_post_message', 2, 'Post message', 'front', 'gen'),
('btn_vote', 2, 'Rate it', 'front', 'gen'),
('lnk_administrativemode', 2, '>> ADMINISTRATE <<', 'front', 'gen'),
('lnk_change_currency', 2, 'Currency:', 'front', 'gen'),
('pgn_product_lists', 2, 'Lists', 'general', 'gen'),
('lnk_forgot_password', 2, 'Forgot password?', 'front', 'gen'),
('lnk_logout', 2, 'Logout', 'front', 'gen'),
('lnk_my_account', 2, 'My account', 'front', 'gen'),
('lnk_myaccount', 2, 'My account', 'front', 'gen'),
('lnk_reviewproduct', 2, 'See all reviews (%REVIEWS_NUM%) or write your own review', 'front', 'gen'),
('lnk_terminate_account', 2, 'Suppress this account', 'front', 'gen'),
('msg_n_matches_found', 2, '{N} match(es) found', 'general', 'gen'),
('msg_price_isnot_set', 2, 'Price is not set', 'front', 'gen'),
('pgn_advanced_search', 2, 'Advanced search', 'general', 'prd'),
('str_add_to_cart_string', 2, 'add to cart', 'front', 'gen'),
('str_authorization', 2, 'Sign in', 'front', 'gen'),
('str_category', 2, 'Category', 'front', 'gen'),
('str_choose_products', 2, 'Choose categories and products', 'general', 'gen'),
('str_delivery_address', 2, 'Delivery address', 'front', 'gen'),
('str_discount_is_not_less_than', 2, 'discount is not less than', 'front', 'gen'),
('str_enter_ccode', 2, 'Type the numbers you see in the picture below', 'front', 'gen'),
('str_general_information', 2, 'General information', 'front', 'gen'),
('str_greetings', 2, '<h1>Thank you for choosing Shop-Script PREMIUM!</h1>', 'front', 'gen'),
('str_i_am_registered_customer', 2, 'I am a returning customer', 'front', 'gen'),
('str_please_select', 2, 'Please select', 'general', 'gen'),
('str_posts_for_item_string', 2, 'post(s)', 'front', 'gen'),
('str_register', 2, 'Register', 'front', 'gen'),
('str_same_as_shipping_address', 2, 'Same as shipping address', 'front', 'gen'),
('str_search_in_subcategories', 2, 'perform search in subcategories', 'front', 'gen'),
('str_search_products_in_this_category', 2, 'Find products in this category', 'general', 'gen'),
('str_show_all_product_in_this_category', 2, 'show all products from this category', 'front', 'gen'),
('str_subject', 2, 'Subject', 'general', 'gen'),
('str_your_name', 2, 'Your name', 'general', 'gen'),
('warning_delete_install_php', 2, '<b>install.php</b> exists in the root folder. Please delete this file.', 'front', 'gen'),
('warning_magic_quotes_gpc', 2, '<b>magic_quotes_gpc</b> is set to <b>Off</b> on your PHP settings. You should turn <b>magic_quotes_gpc = On</b> (default) for proper storefront work.', 'front', 'gen'),
('warning_wrong_chmod', 2, 'Insufficient access permissions (chmod) for folders: products_files, products_pictures, temp, templates_c (or at least one of these folders does not exist).<br>Please enable write permissions for these folders (set chmod 775).', 'front', 'gen'),
('prd_download_downloads_left', 2, 'Downloads left:', 'front', 'prd'),
('prd_download_number_of_downloads_exceeded', 2, 'Maximum number of downloads exceeded', 'front', 'prd'),
('prd_download_period_expired', 2, 'Download link is expired', 'front', 'prd'),
('prd_download_str_downloads', 2, 'downloads', 'front', 'prd'),
('prd_final_price', 2, 'Your price', 'front', 'prd'),
('prd_product_comparison', 2, 'Products comparison', 'front', 'prd'),
('prd_select_to_comparison', 2, 'Compare', 'front', 'prd'),
('prd_sort_main_control_string', 2, 'Sort by: name ({ASC_NAME} | {DESC_NAME}), price ({ASC_PRICE} | {DESC_PRICE}), customer rating ({ASC_RATING} | {DESC_RATING})', 'front', 'prd'),
('prd_sort_pricelist_control_string', 2, 'Sort by: product title ({ASC_NAME} | {DESC_NAME}), price ({ASC_PRICE} | {DESC_PRICE})', 'front', 'prd'),
('prd_str_productpictures', 2, 'All pictures', 'front', 'prd'),
('prddiscussion_add_message', 2, 'Write a review', 'front', 'prd'),
('prddiscussion_body', 2, 'Your review', 'general', 'prd'),
('prddiscussion_delete_post_link', 2, 'delete this review', 'front', 'prd'),
('prddiscussion_no_posts_on_item_string', 2, 'We do not have user reviews on this product', 'front', 'prd'),
('prddiscussion_title', 2, '<a href="%PRODUCT_URL%">%PRODUCT_NAME%</a> user reviews', 'general', 'prd'),
('prdset_product_is_downloadable_msg_2customer', 2, '<p><strong>This product is downloadable.</strong> You will be able to download it right after you place the order and submit payment', 'front', 'prd'),
('prdset_value_is_undefined', 2, '[ undefined ]', 'front', 'prd'),
('srch_products_within_category', 2, 'Search products within this category', 'front', 'prd'),
('str_enlarge_picture', 2, 'enlarge...', 'front', 'prd'),
('str_more_info_on_product', 2, 'more info...', 'front', 'prd'),
('str_related_items', 2, 'See also', 'general', 'prd'),
('str_you_save', 2, 'You save', 'front', 'prd'),
('vote_average', 2, 'Average', 'front', 'prd'),
('vote_excellent', 2, 'Excellent', 'front', 'prd'),
('vote_for_item_title', 2, 'Rate this item', 'front', 'prd'),
('vote_good', 2, 'Good', 'front', 'prd'),
('vote_numerofvotes', 2, 'Vote(s)', 'general', 'prd'),
('vote_poor', 2, 'Poor', 'front', 'prd'),
('vote_puny', 2, 'Puny', 'front', 'prd'),
('cart_cart_is_empty', 2, 'Shopping cart is empty', 'front', 'crt'),
('cart_clear_cart', 2, 'Clear my cart', 'front', 'crt'),
('cart_content_empty', 2, '(empty)', 'front', 'crt'),
('cart_content_not_empty', 2, 'item(s): ', 'front', 'crt'),
('cart_items_left_from_prev_session', 2, 'There are products in your shopping cart left from your last visit. Please verify you order content.', 'front', 'crt'),
('cart_min_order_amount_not_reached', 2, 'Order amount should be at least ', 'front', 'crt'),
('cart_product_quantity', 2, 'Qty', 'general', 'crt'),
('cart_products_total', 2, 'Cost', 'front', 'crt'),
('cart_reg_customers_apply_for_discounts', 2, 'Registered customers receive discounts. Please contact our sales managers to obtain more information about discount system', 'front', 'crt'),
('cart_reg_customers_apply_for_discounts_extra', 2, 'Сustomers with permanent accounts may receive extra discounts. Please contact us for more details.', 'front', 'crt'),
('cart_title', 2, 'My shopping cart', 'front', 'crt'),
('affp_commission_description', 2, 'Commission for Order #{ORDERID} by user {USERLOGIN}', 'general', 'aff'),
('affp_commission_payments', 2, 'Commissions & Payments', 'general', 'aff'),
('affp_customer_commissions', 2, 'Commissions', 'general', 'aff'),
('affp_emailorders', 2, 'I want to receive email notifications when I receive new commissions', 'general', 'aff'),
('affp_emailpayments', 2, 'Receive email notifications when new payments are submitted to your account', 'general', 'aff'),
('affp_mail_new_commission', 2, 'New commission of {MONEY} has been credited to your account', 'general', 'aff'),
('affp_mail_new_payment', 2, 'You have been issued a new payment of {MONEY}', 'general', 'aff'),
('affp_msg_commission_deleted', 2, 'Commission has been deleted', 'general', 'aff'),
('affp_msg_new_commission_ok', 2, 'New commission has been successfully submitted', 'general', 'aff'),
('affp_msg_new_pay_ok', 2, 'New payment has been successfully submitted', 'general', 'aff'),
('affp_msg_no_balance', 2, 'No rewards have been credit to your account yet.', 'general', 'aff'),
('affp_msg_no_payments', 2, 'No payments have been submitted to you yet.', 'general', 'aff'),
('affp_msg_nocommisisons_found', 2, 'No commissions were found for the specified period', 'general', 'aff'),
('affp_msg_nopayments_found', 2, 'No payments were found for the specified period', 'general', 'aff'),
('affp_msg_payment_deleted', 2, 'Payment has been deleted', 'general', 'aff'),
('affp_msg_program_disabled', 2, 'Affiliate program is disabled', 'general', 'aff'),
('affp_no_customers_referred', 2, 'You do not have any referred customers', 'general', 'aff'),
('affp_payment_number', 2, 'Payment ID', 'general', 'aff'),
('affp_payments_history', 2, 'Payment history', 'general', 'aff'),
('affp_payments_to_customers', 2, 'Payments', 'general', 'aff'),
('affp_referred_customers', 2, 'Referred customers', 'general', 'aff'),
('affp_remove_user', 2, 'Remove this user from referrals list?', 'general', 'aff'),
('affp_title', 2, 'Affiliate program', 'general', 'aff'),
('affp_total_earnings', 2, 'Total earnings', 'general', 'aff'),
('affp_total_payments', 2, 'Total payments', 'general', 'aff'),
('affp_user_balance', 2, 'Balance', 'general', 'aff'),
('msg_timeframe_isnot_specified', 2, 'Time frame is not set', 'general', 'aff'),
('lnk_auth_history', 2, 'View log', 'general', 'cmr'),
('lnk_manage_address_book', 2, 'View/Edit address book', 'general', 'cmr'),
('lnk_update_contact_info', 2, 'View/Edit contact information', 'general', 'cmr'),
('lnk_view_order_history', 2, 'View order history', 'general', 'cmr'),
('pgn_contact_information', 2, 'Contact information', 'general', 'cmr'),
('pgn_customer_auth_log', 2, 'Customer login log', 'general', 'cmr'),
('pgn_visit_history', 2, 'View log', 'general', 'cmr'),
('str_address', 2, 'Address', 'general', 'gen'),
('usr_account_activated', 2, 'Activated', 'general', 'cmr'),
('usr_account_activation_key', 2, 'Activation Key', 'general', 'cmr'),
('usr_account_notactivated', 2, 'Not activated', 'general', 'cmr'),
('usr_account_state', 2, 'Account state', 'general', 'cmr'),
('usr_custinfo_city', 2, 'City', 'general', 'cmr'),
('usr_custinfo_country', 2, 'Country', 'general', 'cmr'),
('usr_custinfo_default_address', 2, 'Default address', 'general', 'cmr'),
('usr_custinfo_email', 2, 'Email', 'general', 'cmr'),
('usr_custinfo_first_name', 2, 'First name', 'general', 'cmr'),
('usr_custinfo_last_name', 2, 'Last name', 'general', 'cmr'),
('usr_custinfo_login', 2, 'Login', 'general', 'cmr'),
('usr_custinfo_logintime', 2, 'Login time', 'general', 'cmr'),
('usr_custinfo_password', 2, 'Password', 'general', 'cmr'),
('usr_custinfo_state', 2, 'State/Province', 'general', 'cmr'),
('usr_custinfo_zip', 2, 'Zip code', 'general', 'cmr'),
('usr_shopping_history', 2, 'Shopping history', 'general', 'cmr'),
('usrreg_registration_form', 2, 'Create account', 'general', 'cmr'),
('email_bestregards', 2, 'Best regards', 'general', 'eml'),
('email_change_order_status_subject', 2, 'Order status change', 'general', 'eml'),
('email_change_order_status_text', 2, 'Your order #{ORDERID} status changed to <strong>{STATUS}</strong>', 'general', 'eml'),
('email_hello', 2, 'Hello', 'general', 'eml'),
('email_message_parameters', 2, 'Content-Type: text/plain; charset="utf-8"', 'general', 'eml'),
('email_news_of', 2, 'Latest news from', 'general', 'eml'),
('email_ordr_ordered_products', 2, 'Order content', 'general', 'eml'),
('email_ordr_payment', 2, 'Payment information', 'general', 'eml'),
('email_ordr_payment_comments', 2, 'Payment information', 'general', 'eml'),
('email_ordr_shipping', 2, 'Shipping', 'general', 'eml'),
('email_ordr_shipping_comments', 2, 'Shipping information', 'general', 'eml'),
('email_ordr_total_tax', 2, 'Order total tax', 'general', 'eml'),
('email_regconfirmation', 2, 'To activate your account please input following Activation Key when logging into your account: [code] <br />Or click this link to automatically activate your acount:<br /><a href="[codeurl]">[codeurl]</a>', 'general', 'eml'),
('email_subject_forgot_password', 2, 'Your password', 'general', 'eml'),
('email_subject_registration', 2, 'Registration', 'general', 'eml'),
('email_thank_you_for_shopping_at', 2, 'Thank you for shopping at', 'general', 'eml'),
('email_we_contact_you_asap', 2, 'We will contact you as soon as possible.', 'general', 'eml'),
('email_your_registration_info', 2, 'Your registration information:', 'general', 'eml'),
('email_youve_registered_at', 2, 'You have successfully registered at', 'general', 'eml'),
('err_cant_find_required_page', 2, 'Requested page was not found', 'general', 'err'),
('err_cant_read_file', 2, 'Could not read file', 'general', 'err'),
('err_csvimport_update_column_is_not_set', 2, 'Primary column is not defined. Update failed.', 'general', 'err'),
('err_curlexec', 2, '1001', 'general', 'err'),
('err_curlinit', 2, '1000', 'general', 'err'),
('err_failed_to_upload_file', 2, '<b><font color=red>Failed to upload file to the server. Make sure your server allows you to upload files (file_uploads is On, and file access permissions [chmod] are set properly)</font></b>', 'general', 'err'),
('err_forbidden', 2, 'Access denied. You do not have permissions to access this file', 'general', 'err'),
('err_input_address', 2, 'Please enter your street address', 'general', 'err'),
('err_input_city', 2, 'Please enter city', 'general', 'err'),
('err_input_email', 2, 'Enter valid email address', 'general', 'err'),
('err_input_login', 2, 'Please enter login (username)', 'general', 'err'),
('err_input_message_subject', 2, 'Please enter message subject', 'general', 'err'),
('err_input_name', 2, 'Please enter your names', 'general', 'err'),
('err_input_nickname', 2, 'Please enter your nickname', 'general', 'err'),
('err_input_price', 2, 'Price should be a positive number', 'general', 'err'),
('err_input_state', 2, 'Please specify state', 'general', 'err'),
('err_input_zip', 2, 'Please enter zip code', 'general', 'err'),
('err_login_should_start_with_latin_symbol', 2, 'Login (username) should start with an English letter', 'general', 'err'),
('err_password_confirm_failed', 2, 'Invalid password confirmation', 'general', 'err'),
('err_payment_processing', 2, 'Payment processing error', 'general', 'err'),
('err_user_already_exists', 2, 'User with this login (username) is already registered', 'general', 'err'),
('err_wrong_password', 2, 'Invalid username and/or password', 'general', 'err'),
('btn_activate', 2, 'Activate', 'general', 'gen'),
('btn_change', 2, 'Change', 'general', 'gen'),
('btn_change_address', 2, 'Change address', 'general', 'gen'),
('btn_clear', 2, 'Clear', 'general', 'gen'),
('btn_continue', 2, 'Continue', 'general', 'gen'),
('btn_delete_all', 2, 'Delete all', 'general', 'gen'),
('btn_download', 2, 'Download', 'general', 'gen'),
('btn_find', 2, 'Find', 'general', 'gen'),
('btn_printable_version', 2, 'Printer friendly version', 'general', 'gen'),
('btn_reset', 2, 'Reset', 'general', 'gen'),
('btn_select', 2, 'Select', 'general', 'gen'),
('btn_show', 2, 'Show', 'general', 'gen'),
('btn_update', 2, 'Update', 'general', 'gen'),
('btn_view', 2, 'View', 'general', 'gen'),
('cnfrm_areyousure', 2, 'Are you sure?', 'general', 'gen'),
('cnfrm_delete', 2, 'Delete?', 'general', 'gen'),
('cnfrm_delete_picture', 2, 'Delete picture?', 'general', 'gen'),
('cnfrm_unsubscribe', 2, 'Are you sure you want to delete your account?', 'general', 'gen'),
('infpg_goback_to_aux_pages', 2, '<< back to list', 'general', 'gen'),
('lnk_homepage', 2, 'Home', 'general', 'gen'),
('msg_information_saved', 2, 'Information has been saved', 'general', 'gen'),
('msg_saved_changes', 2, 'Saved changes', 'general', 'gen'),
('prdcustopt_goback_to_option_list', 2, '<< back to list', 'general', 'gen'),
('srch_no_matches_found', 2, 'No matches found', 'general', 'gen'),
('str_addresses', 2, 'Addresses', 'general', 'gen'),
('str_after', 2, 'after', 'general', 'gen'),
('str_all_products', 2, 'All products', 'general', 'gen'),
('str_answer_no', 2, 'no', 'general', 'gen'),
('str_answer_yes', 2, 'yes', 'general', 'gen'),
('str_any', 2, 'Any', 'general', 'gen'),
('str_any_country', 2, 'Any country', 'general', 'gen'),
('str_any_region', 2, 'Any state', 'general', 'gen'),
('str_anyvalue', 2, 'does not matter', 'general', 'gen'),
('str_ascending', 2, 'ascending', 'general', 'gen'),
('str_before', 2, 'before', 'general', 'gen'),
('str_default', 2, 'Default', 'general', 'gen'),
('str_default_charset', 2, 'utf-8', 'general', 'gen'),
('str_descending', 2, 'descending', 'general', 'gen'),
('str_description', 2, 'Description', 'general', 'gen'),
('str_discount', 2, 'discount', 'general', 'gen'),
('str_empty_category', 2, 'No products', 'general', 'gen'),
('str_empty_list', 2, 'empty list', 'general', 'gen'),
('str_from', 2, 'from', 'general', 'gen'),
('str_gram', 2, 'Gram', 'general', 'gen'),
('str_in_stock', 2, 'In stock', 'general', 'gen'),
('str_indicate_period', 2, 'Please indicate period:', 'general', 'gen'),
('str_invoice_title', 2, 'INVOICE', 'general', 'gen'),
('str_items', 2, 'item(s)', 'general', 'gen'),
('str_kg', 2, 'Kilogram', 'general', 'gen'),
('str_language', 2, 'Language', 'general', 'gen'),
('str_lbs', 2, 'Lbs (pounds)', 'general', 'gen'),
('str_list_price', 2, 'Regular price', 'general', 'gen'),
('str_month_april', 2, 'April', 'general', 'gen'),
('str_month_august', 2, 'August', 'general', 'gen'),
('str_month_december', 2, 'December', 'general', 'gen'),
('str_month_february', 2, 'February', 'general', 'gen'),
('str_month_january', 2, 'January', 'general', 'gen'),
('str_month_july', 2, 'July', 'general', 'gen'),
('str_month_june', 2, 'June', 'general', 'gen'),
('str_month_march', 2, 'March', 'general', 'gen'),
('str_month_may', 2, 'May', 'general', 'gen'),
('str_month_november', 2, 'November', 'general', 'gen'),
('str_month_october', 2, 'October', 'general', 'gen'),
('str_month_september', 2, 'September', 'general', 'gen'),
('str_name', 2, 'Name', 'general', 'gen'),
('str_next', 2, 'next', 'general', 'gen'),
('str_no_orders', 2, 'no orders', 'general', 'gen'),
('str_not_defined', 2, 'Not defined', 'general', 'gen'),
('str_number', 2, 'number', 'general', 'gen'),
('str_number_of_orders_in_status', 2, 'order(s) in status', 'general', 'gen'),
('str_number_only', 2, 'number only', 'general', 'gen'),
('str_previous', 2, 'prev', 'general', 'gen'),
('str_price', 2, 'Price', 'general', 'gen'),
('str_priority', 2, 'Sort priority', 'general', 'gen'),
('str_records', 2, 'record(s)', 'general', 'gen'),
('str_search', 2, 'Search', 'general', 'gen'),
('str_search_in_results', 2, 'search in results', 'general', 'gen'),
('str_show', 2, 'show', 'general', 'gen'),
('str_showall', 2, 'show all', 'general', 'gen'),
('str_status', 2, 'Status', 'general', 'gen'),
('str_time', 2, 'Time', 'general', 'gen'),
('str_to', 2, 'To', 'general', 'gen'),
('str_total', 2, 'Total', 'general', 'gen'),
('str_universal_currency', 2, 'in your default currency', 'general', 'gen'),
('str_view', 2, 'view', 'general', 'gen'),
('usr_custinfo_address_list_link', 2, '<< back to list', 'general', 'gen'),
('le_add_link', 2, 'Add new link', 'general', 'lke'),
('le_categories', 2, 'Link categories', 'general', 'lke'),
('le_category', 2, 'Link category', 'general', 'lke'),
('le_err_choose_category', 2, 'Select a category', 'general', 'lke'),
('le_err_enter_link', 2, 'Please enter URL', 'general', 'lke'),
('le_err_enter_text', 2, 'Please enter link text', 'general', 'lke'),
('le_err_link_exists', 2, 'This URL has been already submitted.', 'general', 'lke'),
('le_links', 2, 'Links', 'general', 'lke'),
('le_msg_link_added', 2, 'Thank you! Your link has been successfully submitted and will be published after manual verification.', 'general', 'lke'),
('ordr_back_to_order_list', 2, 'back to the orders list', 'general', 'ord'),
('ordr_billing_address', 2, 'Billing address', 'general', 'ord'),
('ordr_billing_first_name', 2, 'Billing first name', 'general', 'ord'),
('ordr_billing_last_name', 2, 'Billing last name', 'general', 'ord'),
('ordr_cccvv', 2, 'CVV', 'general', 'ord'),
('ordr_ccexpires', 2, 'CC expires', 'general', 'ord'),
('ordr_ccholdername', 2, 'CC holder', 'general', 'ord'),
('ordr_ccinfo', 2, 'Credit card information', 'general', 'ord'),
('ordr_ccnumber', 2, 'CC number', 'general', 'ord'),
('ordr_comment', 2, 'Comment', 'general', 'ord'),
('ordr_customer', 2, 'Customer', 'general', 'ord'),
('ordr_customer_comments', 2, 'Optional comments or suggestions', 'general', 'ord'),
('ordr_customer_ip', 2, 'Customer IP', 'general', 'ord'),
('ordr_filter_by_status', 2, 'Show by status', 'general', 'ord'),
('prdcat_with_selected', 2, 'With selected', 'back', 'prd'),
('ordr_id', 2, 'Order ID', 'general', 'ord'),
('ordr_itemprice_excluding_tax', 2, 'Price (excl. tax)', 'general', 'ord'),
('ordr_order', 2, 'Order', 'general', 'ord'),
('ordr_order_confirmation', 2, 'Confirmation', 'general', 'ord'),
('ordr_order_processing_history', 2, 'Order processing history', 'general', 'ord'),
('ordr_order_time', 2, 'Order time', 'general', 'ord'),
('ordr_order_total', 2, 'Order total', 'general', 'ord'),
('ordr_ordered_products', 2, 'Products ordered', 'general', 'ord'),
('ordr_payee', 2, 'Payee', 'general', 'ord'),
('ordr_payment_type', 2, 'Payment', 'general', 'ord'),
('ordr_recipient', 2, 'Recipient', 'general', 'ord'),
('ordr_search_by_id', 2, 'Search order by ID', 'general', 'ord'),
('ordr_shipping_address', 2, 'Shipping address', 'general', 'ord'),
('ordr_shipping_first_name', 2, 'Recipient first name', 'general', 'ord'),
('ordr_shipping_handling_cost', 2, 'Total shipping & handling cost', 'general', 'ord'),
('ordr_shipping_last_name', 2, 'Recipient last name', 'general', 'ord'),
('ordr_shipping_type', 2, 'Shipping', 'general', 'ord'),
('ordr_status', 2, 'Order status', 'general', 'ord'),
('ordr_status_cancelled', 2, 'Cancelled', 'general', 'ord'),
('ordr_subtotal', 2, 'Subtotal', 'general', 'ord'),
('ordr_tax', 2, 'Tax', 'general', 'ord'),
('prd_out_of_stock', 2, 'Out of stock', 'general', 'prd'),
('prdset_description_brief', 2, 'Brief description', 'general', 'prd'),
('prdset_handling_charge', 2, 'Handling charge', 'general', 'prd'),
('prdset_minimal_order_quantity', 2, 'Minimal order amount', 'general', 'prd');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('prdset_product_name', 2, 'Product name', 'general', 'prd'),
('prdset_weight', 2, 'Weight', 'general', 'prd'),
('srch_found', 2, 'Found ', 'general', 'prd'),
('srch_price_to', 2, 'to', 'general', 'prd'),
('srch_products_plural', 2, 'item(s)', 'general', 'prd'),
('catset_slug', 2, 'Page ID (part of page URL; utilized in links to category page)', 'back', 'prd'),
('prdset_slug', 2, 'Page ID (part of page URL; utilized in links to product page)', 'back', 'prd'),
('loc_find_string', 2, 'Find a string', 'back', 'loc'),
('loc_iso2_should_be', 2, 'Language code must contain 2 latin letters (a-z)', 'back', 'loc'),
('lsgr_import_export', 2, 'Import /Export', 'back', 'gen'),
('prdine_default_charset', 2, 'iso-8859-1', 'back', 'ine'),
('prdimport_file_charset', 2, 'File encoding', 'back', 'ine'),
('prdcat_erase_confirmation', 2, 'Are you sure you wish to completely delete all products and categories from your store? Operation is irreversible.', 'back', 'prd'),
('prdcat_erase', 2, 'Erase', 'back', 'prd'),
('prdcat_erase_products_description', 2, 'Here you can delete all products, product categories and custom options at once (the operation is not recoverable).<br />Orders, customers, information pages, blog and store settings will not be affected by this operation.', 'back', 'prd'),
('prdcat_products_erased', 2, 'Products have been erased', 'back', 'prd'),
('pgn_erase_products', 2, 'Erase products', 'general', 'prd'),
('str_autodetect', 2, 'Autodetect', 'general', 'gen'),
('msg_occupied_slug', 2, 'This page ID is already in use. Change page ID and try again.', 'back', 'gen'),
('prd_ordering_not_available', 2, 'currently not available for ordering', 'back', 'prd'),
('pmnt_add_method', 2, 'Add payment type', 'back', 'ord'),
('pmnt_method_removed', 2, 'Payment type has been removed', 'back', 'ord'),
('pmnt_to_list', 2, 'Payment types', 'back', 'ord'),
('pmnt_edit_method', 2, 'Edit payment type', 'back', 'ord'),
('pmnt_add_payment_method', 2, 'Add payment type (step %STEP_NUMBER% of 3)', 'back', 'ord'),
('btn_next', 2, 'Next >>', 'general', 'gen'),
('pmnt_paymtd_manual_description', 2, '<strong>Manual payment type</strong><br /> Any payment type which you manage manually (e.g. bank transfers and money orders) or any custom payment type (e.g cash on delivery).', 'back', 'ord'),
('pmnt_paymtd_online_description', 2, '<strong>Online payment service</strong><br /> Accept payments through online payment processors like PayPal.', 'back', 'ord'),
('pmnt_paymtd_cc_description', 2, '<strong>Accept credit cards</strong><br /> Process credit cards online through any of supported payment gateways, or collect credit card information and process manually in your payment gateway account.', 'back', 'ord'),
('btn_back', 2, '<< Back', 'general', 'gen'),
('enabled', 2, 'Enabled', 'general', 'gen'),
('mdlc_russianpost_title', 2, 'Russian Post', 'back', 'mdl'),
('mdlc_upsshippingmodule_title', 2, 'UPS', 'back', 'mdl'),
('mdlc_uspsshippingmodule_title', 2, 'USPS', 'back', 'mdl'),
('mdlc_intershippermodule_title', 2, 'Carrier', 'back', 'mdl'),
('mdlc_couriershippingmodule_title', 2, 'Ground shipping', 'back', 'mdl'),
('mdlc_fedexshippingmodule_title', 2, 'FedEx', 'back', 'mdl'),
('mdlc_dhlshippingmodule_title', 2, 'DHL', 'back', 'mdl'),
('mdlc_couriershippingmodule2_title', 2, 'Ground shipping', 'back', 'mdl'),
('mdlc_clinkpoint_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_clinkpoint_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_linkpointapicc_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_linkpointapicc_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_jccredirectlink_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_jccredirectlink_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_innovativegateway_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_innovativegateway_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_ideal_basic_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_ideal_basic_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_hsbc_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_hsbc_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_gspay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_gspay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_eselectplus_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_eselectplus_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_ceprocessingnetwork_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_ceprocessingnetwork_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_epdq_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_epdq_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cegold_description', 2, 'Pay secure via <a href="http://www.e-gold.com">E-Gold</a> online payment service. You need to have E-Gold account to make a payment.', 'back', 'mdl'),
('mdlc_cegold_title', 2, 'E-Gold', 'back', 'mdl'),
('mdlc_cyberplat_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cyberplat_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_chronopay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_chronopay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_chronopaydirect_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_chronopaydirect_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_paymentech_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_paymentech_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_ccavenue_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_ccavenue_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cauthorizenetsim_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cauthorizenetsim_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cauthorizenetaim_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cauthorizenetaim_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cassist_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_c2checkout_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cassist_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_c2checkout_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cyandexmoney_description', 2, '-', 'back', 'mdl'),
('mdlc_cyandexmoney_title', 2, '-', 'back', 'mdl'),
('mdlc_cinvoicephys_description', 2, '-', 'back', 'mdl'),
('mdlc_cinvoicephys_title', 2, '-', 'back', 'mdl'),
('mdlc_cinvoicejur_description', 2, '-', 'back', 'mdl'),
('mdlc_cinvoicejur_title', 2, '-', 'back', 'mdl'),
('mdlc_yandexcpp_description', 2, '-', 'back', 'mdl'),
('mdlc_yandexcpp_title', 2, '-', 'back', 'mdl'),
('mdlc_cworldpay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cworldpay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cwebmoney_description', 2, '-', 'back', 'mdl'),
('mdlc_cwebmoney_title', 2, '-', 'back', 'mdl'),
('mdlc_usaepay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_usaepay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_tclink_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_tclink_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_streamlinedo_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_streamlinedo_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_skipjackdc_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_skipjackdc_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_setcomcheckoutbtn_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_setcomcheckoutbtn_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_csecurepay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_csecurepay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_secpay_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_secpay_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_crupaypaymentrequest_description', 2, '-', 'back', 'mdl'),
('mdlc_crupaypaymentrequest_title', 2, '-', 'back', 'mdl'),
('mdlc_crupay_description', 2, '-', 'back', 'mdl'),
('mdlc_crupay_title', 2, '-', 'back', 'mdl'),
('mdlc_roboxchange_description', 2, '<a href="http://www.roboxchange.ru">ROBOXchange</a> online payment service (WebMoney, Yandex.Money, MoneyMail and other payment gateways).', 'back', 'mdl'),
('mdlc_roboxchange_title', 2, 'ROBOXchange', 'back', 'mdl'),
('mdlc_cpsigatehtml_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cpsigatehtml_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cprotx_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cprotx_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cpaypal_description', 2, 'Pay secure via <a href="http://www.paypal.com">PayPal</a>. You need to have PayPal account to make a payment.', 'back', 'mdl'),
('mdlc_cpaypal_title', 2, 'PayPal', 'back', 'mdl'),
('mdlc_cpaypaldirect_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cpaypaldirect_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_payflowpro_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_payflowpro_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cverisignlink_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cverisignlink_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cnochex_description', 2, 'Pay secure via <a href="http://www.nochex.com">NOCHEX</a> online payment service. You need to have NOCHEX account to make a payment.', 'back', 'mdl'),
('mdlc_cnochex_title', 2, 'NOCHEX', 'back', 'mdl'),
('mdlc_cnetregistry_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cnetregistry_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_nab_nsips_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_nab_nsips_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cmoneybookers_description', 2, 'Pay secure via <a href="http://www.moneybookers.com">Moneybookers</a> online payment service. You need to have Moneybookers account to make a payment.', 'back', 'mdl'),
('mdlc_cmoneybookers_title', 2, 'Moneybookers', 'back', 'mdl'),
('mdlc_cmanualccprocessing_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cmanualccprocessing_title', 2, 'Credit card', 'back', 'mdl'),
('mdlc_cmalse_description', 2, 'Secure online credit card payment', 'back', 'mdl'),
('mdlc_cmalse_title', 2, 'Credit card', 'back', 'mdl'),
('shp_edit_method', 2, 'Edit shipping method', 'back', 'ord'),
('shp_add_method', 2, 'Add shipping method', 'back', 'ord'),
('shp_to_list', 2, 'To methods', 'back', 'ord'),
('shp_add_shipping_method', 2, 'Add shipping method (step %STEP_NUMBER% of 2)', 'back', 'ord'),
('shp_empty_name', 2, 'Enter method name', 'back', 'ord'),
('shp_method_removed', 2, 'Shipping method removed', 'back', 'ord'),
('mdls_customshipping_description', 2, 'Disable automatic calculation of shipping rates for this shipping type', 'back', 'mdl'),
('mdls_customshipping_title', 2, 'No shipping rate calculation', 'back', 'mdl'),
('mdls_manualpayment_description', 2, 'Add a payment type that does not perform any actions automatically such as integrating with payment systems or gateways. Examples: COD, bank deposits, check payments, or any other payment option that you offer to your clients.', 'back', 'mdl'),
('mdls_manualpayment_title', 2, 'Custom payment type (e.g. COD, bank deposit, check or any other)', 'back', 'mdl'),
('imm_permalink', 2, 'Permalink', 'back', 'imm'),
('imm_view_image', 2, 'View', 'back', 'imm'),
('imm_folder_prdpicts', 2, 'Product pictures', 'back', 'imm'),
('imm_folder_images', 2, 'Misc Images', 'back', 'imm'),
('shp_module_settings', 2, 'Shipping rate calculation settings - %MODULE_NAME%', 'back', 'ord'),
('pmnt_module_settings', 2, 'Payment module settings - %MODULE_NAME%', 'back', 'ord'),
('shp_modules_list_title', 2, 'Select method for automatic shipping rate calculation', 'back', 'ord'),
('pmnt_mtdtype_title_manual', 2, 'Add a payment type with custom name and description', 'back', 'ord'),
('pmnt_mtdtype_title_online', 2, 'Select your online payment system', 'back', 'ord'),
('pmnt_mtdtype_title_cc', 2, 'Select your payment gateway for credit card processing', 'back', 'ord'),
('pmnt_modules_types_title', 2, 'I want to accept payments:', 'back', 'ord'),
('cfg_store_domain_description', 2, 'Enter your store (or website) domain name. It will be included in the footer of email messages sent to your customers.', 'back', 'cfg'),
('cfg_store_domain_title', 2, 'Store domain name (address)', 'back', 'cfg'),
('shp_page_description', 2, 'Add all available shipping options of your online store on this page.', 'back', 'ord'),
('pmnt_page_description', 2, 'Add all available payment options of your online store here.', 'back', 'ord'),
('pgn_checkout_replacement', 2, 'Checkout Replacement', 'general', 'gen'),
('btn_disable', 2, 'Disable', 'general', 'gen'),
('btn_enable', 2, 'Enable', 'general', 'gen'),
('search_results', 2, 'Search results', 'general', 'gen'),
('no_results', 2, 'No results', 'general', 'gen'),
('pgn_product_widgets', 2, 'Widgets', 'general', 'gen'),
('pwgt_view_product', 2, 'View %PRODUCT_NAME% in storefront...', 'back', 'prd'),
('pwgt_view_cart_ttl', 2, '"View cart / Checkout" widget', 'back', 'prd'),
('pwgt_view_cart_note', 2, 'NOTE: This widget only shows a button that opens shopping cart page and allows to checkout, but it is useless if you don''t have "Add to cart" or "Product info" widgets which allow adding products to cart. So, use all these widgets together.', 'back', 'prd'),
('pwgt_view_cart_dscr', 2, 'This HTML-code generates a button that will allow your customers to see shopping cart content and place orders directly from your website or blog:', 'back', 'prd'),
('pwgt_product_widgets_ttl', 2, '"Add to cart" & "Product info" widgets', 'back', 'prd'),
('pwgt_product_detailed_info_ttl', 2, 'Product info', 'back', 'prd'),
('pwgt_product_detailed_info_dscr', 2, 'This widget represents this product information &mdash; image, price, brief description and "Add to cart" button.', 'back', 'prd'),
('pwgt_preview', 2, 'Preview:', 'back', 'prd'),
('pwgt_find_product', 2, 'Find a product', 'back', 'prd'),
('pwgt_edit_product', 2, 'Edit %PRODUCT_NAME% details...', 'back', 'prd'),
('pwgt_description', 2, 'Widgets is a tool that allows you to <strong>turn any simple website or blog to online store</strong> &mdash; it could be your custom website with complex CMS, your MySpace page, Facebook, LiveJournal, Blogger, Yahoo! or any other page &mdash; this doesn''t really matter.<br /><br /> Widget is a HTML-code which you embed on your web page, and it implements some functionality. Here you can get widgets for representing whether information about products you add here or "Add to cart" buttons that can be used for any abstract product or service that is already described on your website. Your website visitors will be able to buy directly on your website without loosing its context.<br /><br /> All you need to do is get widget code here and then embed it to your website or blog.<br />All orders that you get using widgets are saved here, and you can always access and manage them in "Orders" section.<br /><br /> See our <a href="http://www.webasyst.net/support/shop/manual.html#Widgets" target="_blank">examples of using widgets for selling online on any website</a>.', 'back', 'prd'),
('pwgt_add2cart_ttl', 2, 'Add to cart button only', 'back', 'prd'),
('pwgt_add2cart_dscr', 2, 'Use it if your already have information about this product published on your website or blog, and if you only want to add "Add to cart" button for this product. This will allow your visitors to buy directly on your website without loosing its context.', 'back', 'prd'),
('search_products', 2, 'Search products', 'front', 'gen'),
('prdopt_page_description', 2, 'Here you can create custom parameters that apply for your product. For example, color, dimensions, calling plan, storage space, engine torque or anything else that fit your products. After you add an option here, you will be able to edit it for each product of your online store.', 'back', 'prd'),
('ordr_action_source_admin', 2, 'merchant', 'general', 'ord'),
('ordr_action_source_customer', 2, 'customer', 'general', 'ord'),
('ordr_action_source_robot', 2, 'robot', 'general', 'ord'),
('ordr_comment_delivered', 2, 'Order delivered', 'general', 'ord'),
('ordr_comment_charge', 2, 'Charged', 'general', 'ord'),
('ordr_comment_refund', 2, 'Refunded', 'general', 'ord'),
('ordr_comment_restore', 2, 'Order is restored and being processed', 'general', 'ord'),
('ordr_comment_processing_order', 2, 'Processing order', 'general', 'ord'),
('ordr_comment_canceled_by', 2, 'Cancelled by', 'general', 'ord'),
('ordr_forbidden_order_action', 2, 'Forbidden order action', 'general', 'ord'),
('str_italic', 2, 'Italic', 'general', 'gen'),
('str_bold', 2, 'Bold', 'general', 'gen'),
('str_color', 2, 'Color', 'general', 'gen'),
('ordsts_custom_title', 2, 'Custom order states', 'back', 'ord'),
('ordsts_custom_description', 2, 'In addition to these order states you can add custom states to reflect your custom order workflow.', 'back', 'ord'),
('ordsts_predefined_description', 2, 'Following order states are predefined in your store.<br />You can change highlighting of each order status on your liking.', 'back', 'ord'),
('ordr_confirm_refund', 2, 'Do you confirm refund for this order?', 'general', 'ord'),
('ordr_confirm_cancel', 2, 'Do you confirm cancellation of this order?', 'general', 'ord'),
('ordr_orderaction_charge', 2, 'Charge', 'general', 'ord'),
('ordr_orderaction_refund', 2, 'Refund', 'general', 'ord'),
('ordr_orderaction_deliver', 2, 'Paid & Delivered', 'general', 'ord'),
('ordr_orderaction_restore', 2, 'Restore', 'general', 'ord'),
('ordr_orderaction_process', 2, 'Process', 'general', 'ord'),
('ordr_orderaction_cancel', 2, 'Cancel order', 'general', 'ord'),
('ordr_add_comment', 2, 'Add a note to order history', 'back', 'ord'),
('ordr_order_changed', 2, 'Order has been updated', 'back', 'ord'),
('prdlist_lbl_products_in_list', 2, '%PRODUCTS_NUM% products', 'back', 'prd'),
('prdlist_add_list_title', 2, 'Create new product list', 'back', 'prd'),
('prdlist_products_in_list', 2, 'Products in this list', 'back', 'prd'),
('prdlist_id', 2, 'ID', 'back', 'prd'),
('prdlist_wrong_chars_in_id', 2, 'Product list ID must contain latin letters (a-z) or', 'back', 'prd'),
('prdlist_list_id_reserved', 2, 'This ID is already in use. Change ID and try again.', 'back', 'prd'),
('prdlist_products_title', 2, 'To sort products drag them within the list below.', 'back', 'prd'),
('prdlist_add_product', 2, 'Add products to the list', 'back', 'prd'),
('prdlist_find_product', 2, 'Find a product', 'back', 'prd'),
('prdlist_product_added', 2, 'Product has been added to the list', 'back', 'prd'),
('prdlist_no_products_in_list', 2, 'No products in this list', 'back', 'prd'),
('str_week_monday', 2, 'Monday', 'general', 'gen'),
('str_week_tuesday', 2, 'Tuesday', 'general', 'gen'),
('str_week_wednesday', 2, 'Wednesday', 'general', 'gen'),
('str_week_thursday', 2, 'Thursday', 'general', 'gen'),
('str_week_friday', 2, 'Friday', 'general', 'gen'),
('str_week_saturday', 2, 'Saturday', 'general', 'gen'),
('str_week_sunday', 2, 'Sunday', 'general', 'gen'),
('pgn_login', 2, 'Login', 'general', 'gen'),
('pgn_logout', 2, 'Logout', 'general', 'gen'),
('err_product_not_found', 2, 'Product not found', 'general', 'gen'),
('prdlist_description', 2, 'Here you can unite various products of your online store into lists.<br />\r\nProduct lists are used for vivid demonstration of products in storefront.<br /><br />\r\nAny of the lists you create can be presented in your storefront using Design editor tools ("Presentation" screen).<br />Examples of product lists are best sellers, special offers, new products, discounted products, etc.', 'back', 'prd'),
('srep_description', 2, 'Charts below represent sales dynamics of your online store.<br />"Sales dynamics" report represents volume of delivered orders compared to all placed orders.<br />"Comparison" and "Sales all time" reports show volume of delivered orders only.', 'back', 'rep'),
('cpt_lbl_root_categories', 2, 'Unfolded category list', 'general', 'cpt'),
('cpt_lbl_survey', 2, 'Survey', 'general', 'cpt'),
('cpt_lbl_logo', 2, 'Logo', 'general', 'cpt'),
('cpt_lbl_product_search', 2, 'Product search', 'general', 'cpt'),
('cpt_lbl_currency_selection', 2, 'Currency toggle', 'general', 'cpt'),
('cpt_lbl_language_selection', 2, 'Language toggle', 'general', 'cpt'),
('cpt_lbl_product_lists', 2, 'Product list', 'general', 'cpt'),
('cpt_lbl_custom_html', 2, 'Custom HTML code', 'general', 'cpt'),
('cpt_lbl_category_tree', 2, 'Category tree', 'general', 'cpt'),
('cpt_lbl_main_content', 2, 'Main content', 'general', 'cpt'),
('cpt_lbl_shopping_cart_info', 2, 'Shopping cart summary', 'general', 'cpt'),
('cpt_lbl_news_short_list', 2, 'Blog / News', 'general', 'cpt'),
('lsgr_checkout', 2, 'Checkout', 'back', 'gen'),
('lsgr_taxes', 2, 'Taxes', 'back', 'gen'),
('cpt_drop_for_delete', 2, 'Drag components here to delete', 'general', 'cpt'),
('lsgr_customers', 2, 'Customers', 'back', 'gen'),
('lsgr_email', 2, 'Email messages', 'back', 'gen'),
('lsgr_feedback', 2, 'Feedback', 'back', 'gen'),
('lsgr_shopping_cart', 2, 'Shopping Cart', 'back', 'gen'),
('lsgr_affiliate_program', 2, 'Affiliate program', 'back', 'gen'),
('lsgr_news', 2, 'Blog / News', 'back', 'gen'),
('lsgr_countries_regions', 2, 'Countries & Regions', 'back', 'gen'),
('lsgr_discounts', 2, 'Discounts', 'back', 'gen'),
('lsgr_errors', 2, 'Error messages', 'back', 'gen'),
('lsgr_info_pages', 2, 'Info pages', 'back', 'gen'),
('lsgr_link_exchange', 2, 'Link exchange', 'back', 'gen'),
('lsgr_orders', 2, 'Orders', 'back', 'gen'),
('lsgr_sms', 2, 'SMS', 'back', 'gen'),
('lsgr_subscribers', 2, 'Newsletter subscribers', 'back', 'gen'),
('lsgr_survey', 2, 'Survey', 'back', 'gen'),
('lgr_hidden', 2, '(hidden)', 'back', 'gen'),
('pgn_googleanalytics', 2, 'Google Analytics', 'general', 'gen'),
('prdcat_add_category', 2, 'Create new category', 'back', 'prd'),
('prdcat_edit_category', 2, 'Edit category: %CATEGORY_NAME%', 'back', 'prd'),
('prdlist_edit_list_title', 2, 'Edit list: %LIST_NAME%', 'back', 'prd'),
('ordr_order_list', 2, 'Order List', 'back', 'ord'),
('pgn_user_info', 2, 'Customer: %CUSTOMER_NAME%', 'general', 'ord'),
('infpg_editpage', 2, 'Edit page', 'back', 'inf'),
('blog_edit_post', 2, 'Edit post', 'back', 'nws'),
('shp_shipping_types', 2, 'Shipping types', 'back', 'ord'),
('cart_checkout_alternative', 2, '&mdash; or use &mdash;', 'front', 'crt'),
('prdcat_btn_delete_category', 2, 'Delete category', 'back', 'prd'),
('prdcat_btn_edit_category', 2, 'Edit category', 'back', 'prd'),
('prdcat_btn_update_prices_sort', 2, 'Update prices & sort order', 'back', 'prd'),
('catset_empty_name', 2, 'Empty category name', 'back', 'prd'),
('ordr_comment_orderplaced', 2, 'Customer placed this order', 'general', 'ord'),
('le_no_links_selected', 2, 'No links selected', 'back', 'lke'),
('le_page_description', 2, 'Links you add here are published in a separate department of your online storefront called "Link exchange".<br /> Using this tool you can exchange links with your partners websites. <a href="http://en.wikipedia.org/wiki/Link_exchange" target="_blank">What is link exchange used for?</a>', 'back', 'lke'),
('imm_folder_prdpicts_dscr', 2, 'Upload is performed to this folder: <strong>[url]</strong>', 'back', 'imm'),
('imm_folder_images_dscr', 2, 'Upload is performed to this folder: <strong>[url]</strong>', 'back', 'imm'),
('usr_enter_loginemail', 2, 'Enter login or email address', 'front', 'cmr'),
('cpt_lbl_product_params_fixed', 2, 'Custom parameters (fixed)', 'general', 'cpt'),
('thm_component_dnd_or_dblclick', 2, 'Drag&drop or double-click me', 'general', 'thm'),
('msg_error_wrong_email', 2, 'Enter valid email address', 'general', 'gen'),
('str_show_other_languages', 2, 'Show other languages', 'back', 'gen'),
('btn_viewcart', 2, 'View cart', 'general', 'gen'),
('btn_add2cart', 2, 'Add to cart', 'general', 'gen'),
('ordr_added_comment', 2, 'Comment', 'general', 'ord'),
('ordr_set_custom_status_comment', 2, 'Order set to custom status: %STATUS_NAME%', 'back', 'ord'),
('smshosted_description', 2, 'Enter your mobile numbers below if you wish to receive SMS notifications on new orders.<br />Please note that sending SMS is not free. Price for sending one SMS message varies from 5 to 10 cents in average depending on your mobile provider. Your SMS balance will be credited for each sent SMS notification.', 'back', 'sms'),
('checkout_success_title', 2, 'Thank you for your order!', 'front', 'chk'),
('goto_storefront', 2, '&laquo; go to storefront', 'front', 'chk'),
('chckrpl_page_description', 2, 'Here you can allow customers to place orders in your store through <a href="http://checkout.google.com/sell?promo=sewebasyst" target="_blank">Google Checkout</a> and <a href="https://www.paypal.com/us/mrb/pal=XREZHZ8R3F4YY" target="_blank">PayPal Express Checkout</a>. These are just alternatives to default checkout process in your storefront. All orders placed through Google Checkout or PayPal Express Checkout are saved to your online store database as regular orders.', 'back', 'gen'),
('err_input_country', 2, 'Please specify country', 'general', 'gen'),
('err_input_password', 2, 'Please enter password', 'general', 'gen'),
('email_shippingisincluded', 2, '(included in order total above)', 'general', 'eml'),
('ordr_source_widgets', 2, 'Widgets', 'back', 'ord'),
('ordr_source_storefront', 2, 'Store front', 'back', 'ord'),
('ordr_source', 2, 'Source', 'back', 'ord'),
('usr_addresses_num', 2, 'and %ADRESSES_NUM% more address(es)', 'front', 'cmr'),
('usr_orders_num', 2, 'You have <a href="%ORDERS_LIST_URL%">%ORDERS_NUM% order(s)</a>', 'front', 'cmr'),
('usr_custinfo_other_addresses', 2, 'Other addresses', 'general', 'cmr'),
('usr_set_default_address', 2, 'Set as default', 'front', 'cmr'),
('cfg_orderid_prefix_title', 2, 'Order ID perfix', 'back', 'cfg'),
('cfg_orderid_prefix_description', 2, 'Input something to give your order IDs friendly presentation', 'back', 'cfg'),
('featured_products', 2, 'Featured products', 'front', 'gen'),
('browse_by_category', 2, 'Browse by category', 'front', 'gen'),
('cpt_align_right', 2, 'right', 'back', 'cpt'),
('cpt_align_center', 2, 'center', 'back', 'cpt'),
('cpt_align_left', 2, 'left', 'back', 'cpt'),
('cpt_ovst_linkColor', 2, 'Links color', 'back', 'cpt'),
('cpt_ovst_textAlign', 2, 'Text align', 'back', 'cpt'),
('cpt_ovst_fontColor', 2, 'Font color', 'back', 'cpt'),
('cpt_ovst_borderWidth', 2, 'Border width (px)', 'back', 'cpt'),
('cpt_ovst_borderColor', 2, 'Border color', 'back', 'cpt'),
('cpt_ovst_backgroundColor', 2, 'Background color', 'back', 'cpt'),
('cpt_ovst_title', 2, 'Override default CSS styles', 'back', 'cpt'),
('cpt_ovst_description', 2, 'Click this box to overwrite styles set in "CSS" tab.', 'back', 'cpt'),
('imm_noimages', 2, 'There are no images in this folder', 'back', 'imm'),
('err_occupied_email', 2, 'Email already in use. Please choose another email.', 'general', 'gen'),
('prdimport_step', 2, 'Step', 'general', 'gen'),
('thm_new_comming_soon', 2, 'More themes coming soon', 'general', 'gen'),
('cpt_ovst_padding', 2, 'Padding (px)', 'general', 'gen'),
('cpt_lbl_tag_cloud', 2, 'Tag cloud', 'hidden', 'cpt'),
('cpt_tgcld_tags_num', 2, 'Maximum tags quantity in the cloud', 'hidden', 'cpt'),
('imm_images_deleted', 2, 'Images have been deleted', 'back', 'imm'),
('imm_delall_confirmation', 2, 'Are you sure', 'back', 'imm'),
('imm_delete_all', 2, 'Delete all', 'back', 'imm'),
('thm_open_fullscreen', 2, 'Full screen', 'back', 'thm'),
('thm_close_fullscreen', 2, 'Close', 'back', 'thm'),
('thm_allow_popups', 2, 'Allow popups in your browser settings and click Full Screen button again.', 'back', 'thm'),
('lbl_product_added', 2, 'Products added', 'back', 'gen'),
('lbl_product_modify', 2, 'Products updated', 'back', 'gen'),
('lbl_category_added', 2, 'Categories added', 'back', 'gen'),
('lbl_prdimport_report', 2, 'Product import report', 'back', 'gen'),
('discount_coupons', 2, 'Discount coupons', 'back', 'dsc'),
('pgn_discount_coupons', 2, 'Discount Coupons', 'back', 'dsc'),
('lbl_create_discount_coupon', 2, 'Create new coupon', 'back', 'dsc'),
('lbl_coupon_code', 2, 'Coupon code', 'back', 'dsc'),
('lbl_coupon_is_active', 2, 'Active', 'back', 'dsc'),
('lbl_coupon_type', 2, 'Type', 'back', 'dsc'),
('lbl_coupon_type_single_use', 2, 'One-time usage', 'back', 'dsc'),
('lbl_coupon_type_multi_use', 2, 'Reusable', 'back', 'dsc'),
('lbl_coupon_type_multi_use_expire', 2, 'Reusable, expires', 'back', 'dsc'),
('lbl_coupon_type_multi_use_no_expire', 2, 'Reusable, does not expire', 'back', 'dsc'),
('lbl_coupon_discount', 2, 'Discount', 'back', 'dsc'),
('lbl_btn_create_coupon', 2, 'Create', 'back', 'dsc'),
('lbl_valid_to', 2, 'Valid through', 'back', 'dsc'),
('lbl_expired', 2, 'Expired', 'back', 'dsc'),
('qst_del_coupons', 2, 'Delete selected coupons?', 'back', 'dsc'),
('msg_no_coupons_defined', 2, 'You do not have discount coupons.', 'back', 'dsc'),
('err_dc_invalid_code', 2, 'Invalid coupon code', 'back', 'dsc'),
('err_dc_code_exists', 2, 'Coupon with this code already exists', 'back', 'dsc'),
('err_dc_invalid_date', 2, 'Invalid date', 'back', 'dsc'),
('err_dc_invalid_discount_percent', 2, 'Invalid percent value (should be a positive value from 0 to 100)', 'back', 'dsc'),
('err_dc_sql_fail', 2, 'Error executing SQL-query', 'back', 'dsc'),
('lbl_coupon_comment', 2, 'Coupon description', 'back', 'dsc'),
('lbl_loading', 2, 'Loading', 'general', 'gen'),
('lbl_coupon_not_used', 2, 'not yet used', 'back', 'dsc'),
('lbl_used_times', 2, 'time(s)', 'back', 'dsc'),
('msg_coupons_disabled', 2, 'Discount coupons feature is currently disabled. Enable it in your', 'back', 'dsc'),
('lbl_discount_settings', 2, 'discount settings', 'back', 'dsc'),
('lbl_tune_discounts', 2, 'Setup discounts', 'back', 'dsc'),
('lbl_enable_discounts', 2, 'Enable discounts', 'back', 'dsc'),
('lbl_by', 2, 'By', 'back', 'dsc'),
('lbl_dsc_by_coupons', 2, 'discount coupons', 'back', 'dsc'),
('lbl_dsc_by_usergroup', 2, 'customer group', 'back', 'dsc'),
('lbl_dsc_by_amount', 2, 'By actual order amount', 'back', 'dsc'),
('lbl_dsc_by_orders', 2, 'By total value of all orders customer ever made', 'back', 'dsc'),
('msg_dsc_by_coupons', 2, 'Discounts are offered if customer inputs a valid discount coupon code.', 'back', 'dsc'),
('msg_dsc_by_usergroup', 2, 'Discounts for registered customers (with login and password). Discount value is based on the group this customer belongs to.', 'back', 'dsc'),
('msg_dsc_by_amount', 2, 'Encourage your customers to make bigger purchases &mdash; offer discounts based on actual order value.', 'back', 'dsc'),
('wrn_too_short_string', 2, 'Too short search string', 'general', 'gen'),
('msg_dsc_by_orders', 2, 'Accumulative discounts for returning customers with permanent accounts. Discount value is calculated based on the total value of all processed orders this customer ever made.', 'back', 'dsc'),
('pgn_order_creater', 2, 'Create new order', 'back', 'ord'),
('qst_how_calc_discount', 2, 'How should we calculate total discount if several discount methods are applicable at one time (e.g. customer can get a discount based on actual order value, and enter discount coupon as well)?', 'back', 'dsc'),
('cfg_calc_dsc_summ', 2, 'Sum of all applicable discounts', 'back', 'dsc'),
('cfg_calc_dsc_max', 2, 'Maximum of discounts by customer group, order amount, all orders amount, plus discount by coupon (coupon discount is always added)', 'back', 'dsc'),
('lbl_dsc_order_sum', 2, 'All orders total value (default store currency)', 'back', 'dsc'),
('lbl_dsc_order_percent', 2, 'Discount in percent', 'back', 'dsc'),
('lbl_frnt_discount_coupon', 2, 'Discount coupon (optional)', 'front', 'dsc'),
('lbl_wrong_coupon', 2, 'Coupon not found', 'front', 'dsc'),
('lbl_order_dsc_by_coupon', 2, 'By coupon', 'general', 'dsc'),
('lbl_order_dsc_by_amount', 2, 'By order amount', 'general', 'dsc'),
('lbl_order_dsc_by_usergroup', 2, 'By customer group', 'general', 'dsc'),
('lbl_order_dsc_by_orders', 2, 'By all orders total', 'general', 'dsc'),
('lbl_processing_coupon', 2, 'Calculating', 'front', 'dsc'),
('lbl_new_address', 2, 'New address', 'general', 'cmr'),
('msg_no_customer_login', 2, 'This user did not enter login and password during checkout.', 'general', 'cmr'),
('qst_delete_address', 2, 'Delete address?', 'general', 'cmr'),
('lbl_redirecting_to_pp', 2, 'You are now being redirected to PayPal website...', 'front', 'gen'),
('cfg_voiting_for_products_title', 2, 'Customers can rate products', 'back', 'cfg'),
('cfg_voiting_for_products_descr', 2, 'If enabled, customers will be able to rate each product in your storefront by giving it from 1 to 5 stars. Total rating is displayed for each product', 'back', 'cfg'),
('lbl_admin_login', 2, 'Administrator login', 'front', 'gen'),
('lbl_redirecting_to_rupay', 2, 'You are now being redirected to RuPay website...', 'front', 'gen'),
('btn_proceed', 2, 'Proceed', 'general', 'gen'),
('lbl_no_products_in_order', 2, 'There are no products in this order.', 'general', 'ord'),
('lbl_loading_cinfo', 2, 'Loading customer information', 'general', 'ord'),
('lbl_assign_to_existing_customer', 2, 'Assign order to existing customer', 'back', 'ord'),
('ordr_comment_created_by_admin', 2, 'Order created by {0}', 'back', 'ord'),
('ordr_comment_admin_modified', 2, 'Order modified by {0}', 'back', 'ord'),
('msg_cant_edit_order', 2, 'Order info can not be modified while order is in %0% status', 'back', 'ord'),
('lbl_lookup', 2, 'Show on map', 'general', 'gen'),
('lbl_address_lookup', 2, 'Address Lookup', 'general', 'gen'),
('lbl_not_found', 2, 'Not found', 'general', 'gen'),
('cfg_google_maps_api_key_name', 2, 'Google Maps API key', 'back', 'gen'),
('cfg_google_maps_api_key_descr', 2, 'Input your Google Maps API key if you would like a feature that allows viewing customer address on map directly from order info page. <a href="http://code.google.com/apis/maps/signup.html" target="_blank">Register new API key</a> if you don''t have one.', 'back', 'gen'),
('wrn_no_google_maps_api_key', 2, 'You need to enter Google Maps API key for your domain name to view this address on a map. You can <a href="http://code.google.com/apis/maps/signup.html" target="_blank">register Google Maps API key</a> on Google website for free.', 'back', 'gen'),
('btn_search_again', 2, 'Search Again', 'general', 'gen'),
('wrn_invalid_google_maps_api_key', 2, 'Invalid Google Maps API Key!', 'back', 'gen'),
('cfg_warehouse_address_name', 2, 'Your warehouse or office address', 'general', 'gen'),
('cfg_warehouse_address_descr', 2, 'Recommended if you do courier shipping. This feature allows you to quickly view and print directions on how to get from your location (the address you enter here) to your customer. Powered by Google Maps. Example address: Wilmington, DE 19899', 'general', 'gen'),
('btn_change_addr', 2, 'Change address', 'general', 'gen'),
('btn_make_route', 2, 'Get directions', 'general', 'gen'),
('btn_print', 2, 'Print', 'general', 'gen'),
('btn_make_route_short', 2, 'Get route', 'general', 'gen'),
('lbl_route_from', 2, 'Ship from', 'general', 'gen'),
('lbl_route_to', 2, 'Deliver to', 'general', 'gen'),
('msg_input_addr_from', 2, 'Enter valid ship from address', 'general', 'gen'),
('lbl_error', 2, 'Error', 'general', 'gen'),
('gerr_geo_unknown_address', 2, 'No corresponding geographic location could be found for one of the specified addresses. This may be due to the fact that the address is relatively new, or it may be incorrect.', 'general', 'gen'),
('gerr_geo_server_error', 2, 'A geocoding or directions request could not be successfully processed, yet the exact reason for the failure is not known.', 'general', 'gen'),
('gerr_geo_missing_query', 2, 'The HTTP q parameter was either missing or had no value. For geocoder requests, this means that an empty address was specified as input. For directions requests, this means that no query was specified in the input.', 'general', 'gen'),
('gerr_geo_bad_key', 2, 'The given key is either invalid or does not match the domain for which it was given.', 'general', 'gen'),
('gerr_geo_bad_request', 2, 'A directions request could not be successfully parsed.', 'general', 'gen'),
('gerr_unknown', 2, 'An unknown error occurred.', 'general', 'gen'),
('lbl_enter_gmapi_key', 2, 'Enter your Google Maps API key', 'back', 'gen'),
('lbl_checking_api_key', 2, 'Checking API Key', 'back', 'gen'),
('lbl_edit_discount_descr', 2, 'edit discount description', 'back', 'ord'),
('lbl_creating_order', 2, 'Creating order', 'back', 'ord'),
('pgn_order_editor', 2, 'Edit Order', 'back', 'ord'),
('btn_assign_to_customer', 2, 'Assign this order to another customer', 'back', 'ord'),
('btn_find_products', 2, 'Find products', 'back', 'ord'),
('err_cant_delete_last_product', 2, 'Can not delete last product in the order.', 'back', 'ord'),
('lbl_add_products_to_order', 2, 'Add products to order', 'back', 'ord'),
('hdr_price_for_item', 2, 'Price for one item', 'back', 'ord'),
('lbl_edit_cust_info', 2, 'edit %0% info', 'back', 'ord'),
('lbl_edit_details', 2, 'Edit order details', 'back', 'ord'),
('lbl_edit_order', 2, 'Edit order', 'back', 'ord'),
('lbl_register_new_customer', 2, 'Register new customer', 'back', 'ord'),
('lbl_search_customer_simple', 2, 'Search customer by email, login or first and last names.', 'back', 'ord'),
('cpt_lbl_category_col_count', 2, 'Number of columns in category list', 'general', 'thm'),
('msg_no_products_found', 2, 'No products found', 'general', 'gen'),
('lbl_please_wait', 2, 'Please wait', 'general', 'gen'),
('lbl_or', 2, 'or', 'general', 'gen'),
('lbl_n_a', 2, 'n/a', 'general', 'gen'),
('lbl_coupon_used', 2, 'Used', 'back', 'dsc'),
('language', 2, 'Language', 'general', 'gen'),
('poll', 2, 'Survey', 'general', 'gen'),
('currency', 2, 'Currency', 'general', 'gen'),
('search', 2, 'Search', 'general', 'gen'),
('catalog', 2, 'Catalog', 'general', 'gen'),
('cataloge', 2, 'Catalog', 'general', 'gen'),
('special_offers', 2, 'Special offers', 'general', 'gen'),
('demoprd_description', 2, 'Product description', 'general', 'prd'),
('demoprd', 2, 'Demo product', 'general', 'prd'),
('pgn_user_contactinfo', 2, 'Contact info', 'general', 'gen'),
('pgn_user_addressbook', 2, 'Address book', 'general', 'gen'),
('pgn_user_orders', 2, 'Order history', 'general', 'gen'),
('pgn_user_affiliate', 2, 'Affiliate program', 'general', 'gen'),
('cpt_lbl_show_sub_category', 2, 'Show sub categories', 'general', 'thm'),
('demoprd_description', 1, 'Описание продукта будет здесь', 'general', 'prd'),
('demoprd', 1, 'Демо-продукт', 'general', 'prd'),
('pgn_user_contactinfo', 1, 'Контактная информация', 'general', 'gen'),
('pgn_user_addressbook', 1, 'Адресная книга', 'general', 'gen'),
('pgn_user_orders', 1, 'История заказов', 'general', 'gen'),
('pgn_user_affiliate', 1, 'Партнерская программа', 'general', 'gen'),
('cpt_lbl_show_sub_category', 1, 'Показывать подкатегории', 'general', 'thm'),
('ordr_add_comment_to_message', 2, 'Add comment to the message', 'back', 'gen'),
('btn_export', 2, 'Export', 'general', 'gen'),
('export_orderlist_to_csv', 2, 'Export these orders to a CSV file (MS Excel, OpenOffice)', 'general', 'gen'),
('lbl_order_status_history_url', 2, 'You can <a href="{URL}">view your order status and history</a> online.', 'general', 'gen'),
('msg_n_customers_found', 2, 'Customers found: {N}', 'back', 'gen'),
('msg_n_orders_found', 2, 'Orders found: {N}', 'back', 'gen'),
('msg_orders_exported_to_file', 2, 'Orders exported to a CSV file.', 'general', 'gen'),
('pgn_order_status', 2, 'Order status', 'general', 'gen'),
('srep_alltime_info', 2, 'You have {N} paid and delivered orders for the total amount {M}', 'back', 'rep'),
('rep_add2cart_count', 2, 'Added to cart', 'back', 'rep'),
('prdset_meta_title', 2, 'Page title', 'back', 'gen'),
('aux_page_slug', 2, 'Page ID (part of page URL; utilized in links to info page)', 'back', 'gen'),
('email_add_order_note_subject', 2, 'Note to your order (#{ORDERID})', 'general', 'gen'),
('email_add_order_note_text', 2, 'Note to your order #{ORDERID}', 'general', 'gen'),
('prdopt_manage_product_options', 2, 'Manage custom options', 'back', 'gen'),
('prdset_move_selected_to', 2, 'Move selected products to', 'back', 'gen'),
('str_drag_and_drop_to_change_order', 2, 'Drag and drop to change sort order.', 'general', 'gen'),
('str_first_image_is_main', 2, 'First image in the list is default product image.', 'general', 'gen'),
('subcategories_delimiter', 2, 'Subcategory list delimiter', 'general', 'gen'),
('subcategories_numberlimit', 2, 'Limit number of subcategories shown for a certain category (maximum number of subcategories to show; 0 for unlimited)', 'general', 'gen'),
('ordr_full_info_description', 2, '<p>To view detailed order information <strong>enter your last name</strong> (required for identity verification):</p>\r\n', 'general', 'gen'),
('ordr_check_status', 2, 'Check status', 'general', 'gen'),
('ordr_source_backend', 2, 'Backend', 'back', 'ord'),
('ordr_show_details', 2, 'Show order details', 'general', 'gen'),
('btn_add_note', 2, 'Add note...', 'general', 'gen'),
('str_order_not_found', 2, 'Order not found', 'general', 'gen'),
('err_wrong_last_name', 2, 'Wrong last name', 'general', 'gen'),
('str_move_to', 2, 'Move to', 'general', 'gen'),
('cfg__frontend_time_zone_descr', 2, 'Select default time zone for displaying time in your public storefront according to your server time zone specified in WebAsyst Installer.<br />Time zone you select here is only for storefront. In backend time is displayed according to your user preferences (My settings screen).', 'back', 'cfg'),
('cfg__frontend_time_zone_dst_descr', 2, '&nbsp;', 'back', 'cfg'),
('cfg_enable_product_sku_description', 2, 'Product code (SKU) is an optional product parameter, which can be useful for navigating and managing products in backend. If you enable this option, product code values will be displayed in your public storefront as well.', 'back', 'cfg'),
('cfg_enable_product_sku_title', 2, 'Show product codes (SKU) in storefront', 'back', 'cfg'),
('cfg_frontend_time_zone', 2, 'Default storefront time zone', 'back', 'cfg'),
('cfg_frontend_time_zone_dst', 2, 'Daylight saving time', 'back', 'cfg'),
('cfg_ga_js_custom_se', 2, 'Add custom JavaScript code to the Google Analytics tracking code', 'back', 'cfg'),
('cfg_ga_js_custom_se_description', 2, 'JavaScript code that you enter here will be added into Googe Analytics tracking code (e.g. you may add a code <a href="http://www.google.com/support/googleanalytics/bin/answer.py?answer=57046" target="_blank">identifying additional search engines</a> in the Referral reports).', 'back', 'cfg'),
('cfg_picture_resize_quality_description', 2, 'When uploading product images, thumbnails are created automatically (using GD extension). Enter thumbnails JPEG quality: 0 — worst quality, smaller file; 100 — best quality, biggest file. Recommended value — 80.', 'back', 'cfg'),
('cfg_picture_resize_quality_title', 2, 'Product thumbnails quality (0 — worst, 100 — best)', 'back', 'cfg'),
('cpt_lbl_request_product_count', 2, 'Request product quantity to be added to the shopping cart', 'back', 'cpt'),
('goto_shopping', 2, '&laquo; back to shopping', 'general', 'gen'),
('lbl_follow_link', 2, 'Follow this link:', 'general', 'gen'),
('loc_change_default_description', 2, '<strong><span style="color: red;">IMPORTANT:</span> Make sure you have full translation of all data to the new default language!</strong> If you did not translate all info to the new default language (including product information and interface strings), then after you toggle default language, not translated data will be shown incorrectly.', 'back', 'loc'),
('loc_lang_direction', 2, 'Text direction', 'back', 'loc'),
('loc_lang_ltr_descr', 2, 'Choose between Left-to-right (LTR) and right-to-left (RTL) text direction.', 'back', 'loc'),
('loc_lang_ltr_disabled', 2, 'RTL', 'back', 'loc'),
('loc_lang_ltr_enabled', 2, 'LTR', 'back', 'loc'),
('prdimport_csv_use_structure', 2, 'When searching for products in the database by primary column, search only within current product category', 'back', 'imm'),
('prdimport_source_column', 2, 'Columns in your CSV files', 'back', 'imm'),
('prdimport_target_column', 2, 'Target fields in the database', 'back', 'imm'),
('prdimport_found_n_columns', 2, 'Found %d columns in your CSV file', 'back', 'imm'),
('imm_upload_link', 2, 'One-by-one upload', 'back', 'imm'),
('imm_upload_swf_link', 2, 'Bulk upload', 'back', 'imm'),
('imm_images_count_info', 2, 'Images: %d &mdash; %d of %d', 'back', 'imm'),
('imm_view_mode', 2, 'View mode', 'back', 'imm'),
('imm_view_mode_list', 2, 'list', 'back', 'imm'),
('imm_view_mode_thumbnails', 2, 'thumbnails', 'back', 'imm'),
('prdcat_product_n_duplicated', 2, '%d duplicates successfully created', 'back', 'prd'),
('prdcart_products_duplicate_selected', 2, 'Duplicate', 'back', 'prd'),
('cpt_lbl_block_height', 2, 'Height of the product block element (li) in pixels (leave empty for auto value)', 'general', 'cfg'),
('welcome_to_storefront', 2, 'Welcome to online storefront ', 'general', 'gen'),
('powered_by', 2, 'Powered by WebAsyst Shop-Script <a href="http://www.shop-script.com/" style="font-weight: normal">shopping cart software</a>', 'hidden', 'gen'),
('powered_by_text', 2, 'Powered by <em>WebAsyst Shop-Script</em>', 'hidden', 'gen'),
('imm_del_confirmation', 2, 'Are you sure?', 'general', 'gen'),
('lbl_redirecting_to_idealbasic', 2, 'You are now being redirected to IdealBasic website...', 'front', 'gen'),
('lsgr_printforms', 2, 'Order forms', 'general', 'gen'),
('printforms_full_description', 2, 'Order forms are static order accompanying forms that are available for viewing and printing directly from order information page.', 'general', 'gen'),
('printforms_setup', 2, 'Settings', 'general', 'gen'),
('printforms_preview', 2, 'Preview', 'general', 'gen'),
('pgn_printforms', 2, 'Print forms', 'general', 'gen'),
('print_form', 2, 'Order form', 'general', 'gen'),
('print_forms', 2, 'Order forms', 'general', 'gen'),
('print_form_not_found', 2, 'Order form is not installed', 'general', 'gen'),
('btn_open_invoice', 2, 'Print version', 'general', 'gen'),
('prdcat_products_duplicate_selected', 2, 'Duplicate', 'general', 'gen'),
('imm_modify_time', 2, 'Modified', 'general', 'gen'),
('demoprd_name', 2, 'Demo product', 'general', 'gen'),
('cpt_lbl_authorization', 2, 'Authorization', 'general', 'gen'),
('cpt_lbl_category_info', 2, 'Category info', 'general', 'gen'),
('ord_bill_to', 2, 'Bill to', 'general', 'gen'),
('ord_date_paid', 2, 'Date Paid', 'general', 'gen'),
('pmnt_empty_name', 2, 'Enter payment type name', 'back', 'ord'),
('prd_multiply_label', 2, 'Multiply all prices by', 'back', 'prd'),
('prd_price_multiply', 2, 'Multiply', 'back', 'prd'),
('pgn_google_sitemap', 2, 'Sitemaps', 'general', 'gen'),
('sitemap_full_description', 2, '<strong>Sitemaps</strong> file is an XML file that lists the URLs of your website. This allows search engines to crawl the site more intelligently. Learn more in the <a href="http://en.wikipedia.org/wiki/Sitemaps" target="_blank">Sitemaps article</a> at Wikipedia (this article also describes how to submit your Sitemaps file to various search engines).', 'general', 'gen'),
('sitemap_url', 2, 'Your storefront main Sitemaps file URL', 'general', 'gen'),
('sitemap_update_title', 2, 'Update Sitemaps XML file', 'general', 'gen'),
('sitemap_name', 2, 'Sections of your Sitemaps files', 'general', 'gen'),
('sitemap_base_url', 2, 'Storefront homepage URL', 'general', 'gen'),
('sitemap_index_description', 2, 'Core storefont structure', 'general', 'gen'),
('sitemap_pagename', 2, 'Info pages', 'general', 'gen'),
('btn_create', 2, 'Create', 'general', 'gen'),
('sitemap_update_date', 2, 'Updated', 'general', 'gen'),
('print_form_edit_title', 2, 'Double-click to modify', 'general', 'gen'),
('ordsts_predefined_title', 2, 'Predefined order statuses', 'back', 'ord'),
('ordsts_predefined_description_1', 2, 'Cancelled orders', 'back', 'ord'),
('ordsts_predefined_description_2', 2, 'New orders', 'back', 'ord'),
('ordsts_predefined_description_3', 2, 'Approved orders', 'back', 'ord'),
('ordsts_predefined_description_5', 2, 'Successfully completed orders', 'back', 'ord'),
('ordsts_predefined_description_14', 2, 'Successfully charged orders<br />(only for credit card orders)', 'back', 'ord'),
('ordsts_predefined_description_15', 2, 'Refunded orders', 'back', 'ord'),
('ord_ship_to', 2, 'Ship to', 'general', 'gen'),
('str_logo', 2, 'Logo file URL (optional)', 'general', 'gen'),
('cfg_prdpict_enlarged_size_title', 2, 'Resize product source (largest) image', 'back', 'cfg'),
('cfg_prdpict_enlarged_size_description', 2, 'Enter desired image size (in pixels) for source product image that you upload (recommended value: 600), or leave this field empty so source images will not be resized.', 'back', 'cfg'),
('sr_please_contact_seller', 2, 'Call for exact quote', 'general', 'gen'),
('print_form_address_not_found', 2, 'Address was not found on a map. Validate address and click "Search again".', 'general', 'gen'),
('print_form_edit_before_print', 2, 'Edit before printing', 'general', 'gen'),
('pgn_social_networks', 2, 'Social', 'back', 'gen'),
('social_networks_page_description', 2, 'Shop-Script + Facebook integration is in the ability to embed your online storefront into Facebook as a native application, and accept orders directly from Facebook.', 'back', 'gen'),
('social_networks_hint_title', 2, 'Like buttons', 'back', 'gen'),
('social_networks_hint', 2, 'In addition to embedding your storefront into Facebook it is a good idea to 1) make a link to your Facebook page from your online storefront, 2) embed Facebook "Like" buttons into storefront product pages (copy-and-paste Like button code into your product using Shop-Script''s design editor).', 'back', 'gen'),
('powered_by_external', 2, 'Powered by WebAsyst Shop-Script <a href="http://www.shop-script.com/" style="font-weight: normal" target="_blank">shopping cart software</a>', 'hidden', 'gen'),
('prdset_vkontakte_update_date', 2, 'Last export to VK catalog', 'back', 'prd'),
('prdcat_vkontakte_change', 2, 'Export to VK', 'back', 'prd'),
('prdcat_vkontakte_remove', 2, 'Remove from VK', 'back', 'prd'),
('prdcat_social_networks_export', 2, 'VK', 'back', 'prd'),
('prdcat_vkontakte_category_type', 2, 'VK products catalog department for this category', 'back', 'prd'),
('str_printforms_logo', 2, 'Print forms logo', 'back', 'gen');
INSERT INTO `SC_local` (`id`, `lang_id`, `value`, `group`, `subgroup`) VALUES
('prdset_1c_sync', 2, 'CommerceML ID', 'back', 'gen'),
('str_no_result', 2, 'n/a', 'back', 'gen'),
('pgn_1c', 2, '1C', 'back', 'gen'),
('pmnt_more_modules_available', 2, '<strong>MORE MODULES</strong>: Additional credit card processing modules are <a href="http://www.shop-script.com/features/integrations.html">available for download</a> on Shop-Script website.', 'back', 'gen'),
('cfg_strict_access_title', 2, 'Access to order information viewing pages for non-registered customers', 'back', 'cfg'),
('cfg_strict_access_description', 2, 'Allows setting extra authentication options for non-registered customers to access order information and order status viewing pages.', 'back', 'cfg'),
('cfg_strict_access_lastname', 2, 'Require input of customer''s last name', 'back', 'cfg'),
('cfg_strict_access_code', 2, 'Require input of a one-time password additionally sent to customer''s email address.', 'back', 'cfg'),
('cfg_strict_access_auth', 2, 'Deny access for non-registered customers to order information viewing pages (access is allowed only for registered customers)', 'back', 'cfg'),
('ordr_full_info_code_description', 2, 'To view detailed order information, enter your one-time password (click on "Get one-time password" button to have it sent to your email address):', 'front', 'ord'),
('ordr_status_access_code', 2, 'One-time password', 'front', 'ord'),
('err_wrong_mcode', 2, 'Incorrect one-time password entered!', 'front', 'ord'),
('mcode_sended', 2, 'A one-time password has been sent to the email address specified in your order information.', 'front', 'ord'),
('send_mcode', 2, 'Get one-time password', 'front', 'ord'),
('mcode_resend', 2, '(Did not receive one-time password?)', 'front', 'ord'),
('ordr_mcode_body', 2, 'You have requested a one-time password to view detailed information about your order %ORDER_ID%.', 'front', 'ord'),
('ordr_mcode_comment', 2, 'Password %MCODE% will remain valid during %TIME% minutes.', 'front', 'ord'),
('ord_status_use_myaccount', 2, 'Please log in to view your order status.', 'front', 'ord'),
('access_code', 2, 'One-time password', 'general', 'gen');

-- --------------------------------------------------------

--
-- Table structure for table `SC_localgroup`
--

DROP TABLE IF EXISTS `SC_localgroup`;
CREATE TABLE IF NOT EXISTS `SC_localgroup` (
  `key` varchar(3) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `hidden` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`key`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_localgroup`
--

INSERT INTO `SC_localgroup` (`key`, `name`, `hidden`) VALUES
('hid', 'hidden', 1),
('fro', 'frontend', 0),
('gen', 'general', 0),
('bac', 'backend', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_modules`
--

DROP TABLE IF EXISTS `SC_modules`;
CREATE TABLE IF NOT EXISTS `SC_modules` (
  `ModuleID` int(10) unsigned NOT NULL auto_increment,
  `ModuleVersion` float NOT NULL default '0',
  `ModuleClassName` varchar(30) NOT NULL default '',
  `ModuleClassFile` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`ModuleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `SC_modules`
--

INSERT INTO `SC_modules` (`ModuleID`, `ModuleVersion`, `ModuleClassName`, `ModuleClassFile`) VALUES
(1, 1, 'test', '/test/class.test.php'),
(2, 1, 'products', '/products/class.products.php'),
(3, 1, 'news', '/news/class.newsmodule.php'),
(4, 1, 'poll', '/poll/class.poll.php'),
(5, 1, 'cart', '/cart/class.cart.php'),
(6, 1, 'affiliateprogram', '/affiliate_program/class.affiliate_program.php'),
(7, 1, 'ordering', '/ordering/class.ordering.php'),
(8, 1, 'pricelist', '/products/pricelist/class.pricelist.php'),
(9, 1, 'feedback', '/feedback/class.feedback.php'),
(10, 1, 'linkexchange', '/linkexchange/class.linkexchange.php'),
(11, 1, 'export2froogle', '/products/export2froogle/class.export2froogle.php'),
(12, 1, 'yandexmarket', '/products/yandex.market/class.yandexmarket.php'),
(13, 1, 'auxpages', '/auxpages/class.auxpages.php'),
(24, 1, 'smsordernotify', '/ordering/smsmail/class.smsordernotify.php'),
(15, 1, 'users', '/users/class.users.php'),
(16, 1, 'divisionsadministration', '/divisions/administration/class.divisionsadministration.php'),
(17, 1, 'sc_abstract', '/abstract/class.abstract.php'),
(18, 1, 'moduleadmin', '/modules/module_admin/class.moduleadmin.php'),
(25, 1, 'localizationadmin', '/localization/class.localizationadmin.php'),
(26, 1, 'localization', '/localization/class.localization.php'),
(27, 1, 'adminscreens', '/adminscreens/class.adminscreens.php'),
(28, 1, 'wgtmanager', '/wgtmanager/class.wgtmanager.php'),
(29, 1, 'cptmanager', '/cptmanager/class.cptmanager.php'),
(30, 0.1, 'discount_coupons', '/discount_coupons/class.discount_coupons.php'),
(31, 0.1, 'order_editor', '/order_editor/class.order_editor.php'),
(32, 0.1, 'Configuration', '/configuration/class.configuration.php'),
(33, 0.1, 'order_creater', '/order_editor/class.order_creater.php'),
(34, 1, 'ExportTo1c', '/products/exportto1c/class.exportto1c.php');

-- --------------------------------------------------------

--
-- Table structure for table `SC_module_configs`
--

DROP TABLE IF EXISTS `SC_module_configs`;
CREATE TABLE IF NOT EXISTS `SC_module_configs` (
  `ModuleConfigID` int(10) unsigned NOT NULL auto_increment,
  `ModuleID` int(10) unsigned NOT NULL default '0',
  `ConfigKey` varchar(30) NOT NULL default '',
  `ConfigTitle` varchar(50) NOT NULL default '',
  `ConfigDescr` varchar(100) NOT NULL default '',
  `ConfigInit` smallint(5) unsigned NOT NULL default '0',
  `ConfigEnabled` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ModuleConfigID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `ConfigKey` (`ConfigKey`),
  KEY `ConfigEnabled` (`ConfigEnabled`),
  KEY `ConfigInit` (`ConfigInit`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `SC_module_configs`
--

INSERT INTO `SC_module_configs` (`ModuleConfigID`, `ModuleID`, `ConfigKey`, `ConfigTitle`, `ConfigDescr`, `ConfigInit`, `ConfigEnabled`) VALUES
(1, 1, 'wrapper', '', 'Работа со старыми модулями', 1002, 1),
(2, 2, 'Products', '', 'работа с продуктами', 1002, 1),
(3, 3, 'news', '', '', 1002, 1),
(4, 4, 'poll', '', 'Poll', 1002, 1),
(5, 5, 'Корзина', '', '', 1002, 1),
(6, 6, 'affiliate_program', '', 'Партнерская программа', 1002, 1),
(7, 7, 'Ordering', '', 'Оформление заказа', 1002, 1),
(24, 8, 'Pricelist', '', '', 1002, 1),
(12, 9, 'feedback', '', 'Обратная связь', 1002, 1),
(13, 10, 'linkexchange', '', 'Обмен ссылками', 1002, 1),
(14, 11, 'export2froogle', '', 'Эксопорт списка товаров во Froogle(www.froogle.com)', 1002, 1),
(15, 12, 'yandex_market', '', '', 1002, 1),
(16, 13, 'aux_pages', '', '', 1002, 1),
(22, 16, 'DivisionsAdministration', '', '', 1002, 1),
(21, 15, 'Users', '', '', 1002, 1),
(41, 25, 'localizationadmin', 'Управление локализациями', '', 1002, 1),
(25, 17, 'Abstract', '', '', 1002, 1),
(27, 18, 'ModuleAdmin', '', '', 1002, 1),
(40, 24, 'smsordernotify', 'Информирование о новых зак', '', 1002, 1),
(42, 26, 'localization', 'Локализация', '', 1001, 1),
(48, 27, 'adminscreens', 'Admin screens', '', 1002, 1),
(51, 29, 'cptmanager', 'Component manager', '', 1002, 1),
(52, 30, 'discount_coupons', '', 'Coupons', 1002, 1),
(53, 31, 'order_editor', '', 'Editor', 1002, 1),
(54, 32, 'configuration', '', 'Config', 1002, 1),
(55, 33, 'order_creater', '', 'Creater', 1002, 1),
(56, 34, 'exportto1c', '', '', 1002, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SC_news_table`
--

DROP TABLE IF EXISTS `SC_news_table`;
CREATE TABLE IF NOT EXISTS `SC_news_table` (
  `NID` int(11) NOT NULL auto_increment,
  `add_date` varchar(30) default NULL,
  `title_en` text,
  `title_ru` text,
  `picture` varchar(30) default NULL,
  `textToPublication_en` text,
  `textToPublication_ru` text,
  `textToMail` text,
  `add_stamp` int(11) default NULL,
  `priority` int(10) unsigned NOT NULL default '0',
  `emailed` tinyint(1) default NULL,
  PRIMARY KEY  (`NID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SC_news_table`
--

INSERT INTO `SC_news_table` (`NID`, `add_date`, `title_en`, `title_ru`, `picture`, `textToPublication_en`, `textToPublication_ru`, `textToMail`, `add_stamp`, `priority`, `emailed`) VALUES
(1, '1 12 2010', 'We are open!', 'Мы открылись!', NULL, 'Write information about your online store here.', 'Здесь вы можете написать информацию о вашем новом интернет-магазине, а также отправить эту новость вашим клиентам по электронной почте.', '', 1208514048, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SC_ordered_carts`
--

DROP TABLE IF EXISTS `SC_ordered_carts`;
CREATE TABLE IF NOT EXISTS `SC_ordered_carts` (
  `itemID` int(11) NOT NULL default '0',
  `orderID` int(11) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `Price` float default NULL,
  `Quantity` int(11) default NULL,
  `tax` float default NULL,
  `load_counter` int(11) default '0',
  PRIMARY KEY  (`itemID`,`orderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_ordered_carts`
--

INSERT INTO `SC_ordered_carts` (`itemID`, `orderID`, `name`, `Price`, `Quantity`, `tax`, `load_counter`) VALUES
(1, 1, '[14353001 1460] Doctor Martines Mono Black', 2000, 1, 0, 0),
(2, 2, '[14353001 1460] Doctor Martines Mono Black', 2000, 1, 0, 0),
(4, 3, '[14353001 1460] Doctor Martines Mono Black', 2000, 1, 0, 0),
(6, 4, 'Mono', 2000, 1, 0, 0),
(8, 5, 'Mono', 2000, 1, 0, 0),
(10, 6, 'Платок', 50, 1, 0, 0),
(12, 7, 'Платок (40)', 50, 1, 0, 0),
(14, 8, 'Mono (37, белый)', 2000, 1, 0, 0),
(16, 9, 'Mono (40, белый)', 2000, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_orders`
--

DROP TABLE IF EXISTS `SC_orders`;
CREATE TABLE IF NOT EXISTS `SC_orders` (
  `orderID` int(11) NOT NULL auto_increment,
  `customerID` int(11) default NULL,
  `order_time` datetime default NULL,
  `customer_ip` varchar(15) default NULL,
  `shipping_type` varchar(30) default NULL,
  `shipping_module_id` int(10) unsigned NOT NULL default '0',
  `payment_type` varchar(30) default NULL,
  `payment_module_id` int(10) unsigned NOT NULL default '0',
  `customers_comment` text,
  `statusID` int(11) default NULL,
  `shipping_cost` double default NULL,
  `order_discount` double default NULL,
  `discount_description` varchar(255) NOT NULL,
  `order_amount` decimal(12,2) NOT NULL default '0.00',
  `currency_code` varchar(7) default NULL,
  `currency_value` double default NULL,
  `customer_firstname` varchar(64) default NULL,
  `customer_lastname` varchar(64) default NULL,
  `customer_email` varchar(50) default NULL,
  `shipping_firstname` varchar(64) default NULL,
  `shipping_lastname` varchar(64) default NULL,
  `shipping_country` varchar(64) default NULL,
  `shipping_state` varchar(64) default NULL,
  `shipping_zip` varchar(64) default NULL,
  `shipping_city` varchar(64) default NULL,
  `shipping_address` text,
  `billing_firstname` varchar(64) default NULL,
  `billing_lastname` varchar(64) default NULL,
  `billing_country` varchar(64) default NULL,
  `billing_state` varchar(64) default NULL,
  `billing_zip` varchar(64) default NULL,
  `billing_city` varchar(64) default NULL,
  `billing_address` text,
  `cc_number` varchar(255) default NULL,
  `cc_holdername` varchar(255) default NULL,
  `cc_expires` varchar(255) default NULL,
  `cc_cvv` varchar(255) default NULL,
  `affiliateID` int(11) default NULL,
  `shippingServiceInfo` varchar(255) default NULL,
  `google_order_number` varchar(50) NOT NULL default '',
  `source` enum('storefront','widgets','backend') NOT NULL default 'storefront',
  PRIMARY KEY  (`orderID`),
  KEY `google_order_number` (`google_order_number`),
  KEY `customerID` (`customerID`),
  KEY `statusID` (`statusID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `SC_orders`
--

INSERT INTO `SC_orders` (`orderID`, `customerID`, `order_time`, `customer_ip`, `shipping_type`, `shipping_module_id`, `payment_type`, `payment_module_id`, `customers_comment`, `statusID`, `shipping_cost`, `order_discount`, `discount_description`, `order_amount`, `currency_code`, `currency_value`, `customer_firstname`, `customer_lastname`, `customer_email`, `shipping_firstname`, `shipping_lastname`, `shipping_country`, `shipping_state`, `shipping_zip`, `shipping_city`, `shipping_address`, `billing_firstname`, `billing_lastname`, `billing_country`, `billing_state`, `billing_zip`, `billing_city`, `billing_address`, `cc_number`, `cc_holdername`, `cc_expires`, `cc_cvv`, `affiliateID`, `shippingServiceInfo`, `google_order_number`, `source`) VALUES
(1, 2, '2012-06-25 14:46:51', '109.167.200.251', 'Самовывоз', 9, 'Наличные', 12, 'Беру!', 1, 0, 0, '', 2000.00, 'RUR', 1, 'Роман', 'Седых', 'rsedykh@whitescape.com', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', '', '', '', '', 0, '', '', 'storefront'),
(2, 3, '2012-06-26 16:33:10', '37.1.45.50', 'Самовывоз', 9, 'Наличные', 12, '', 1, 0, 0, '', 2000.00, 'RUR', 1, 'Имя', 'Фамилия', 'rp@whitescape.com', 'Имя', 'Фамилия', 'Россия', ' Московская область', '123456', 'Город', 'Адрес', 'Имя', 'Фамилия', 'Россия', ' Московская область', '123456', 'Город', 'Адрес', '', '', '', '', 0, '', '', 'storefront'),
(3, 1, '2012-06-26 17:35:19', '37.1.45.50', 'Курьер', 11, 'Наличные', 12, '', 1, 0, 0, '', 2000.00, 'RUR', 1, 'rp', 'rp', 'rp+candies@whitescape.com', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', '', '', '', '', 0, '', '', 'storefront'),
(4, 2, '2012-06-27 02:36:26', '109.167.200.251', 'Самовывоз', 9, 'Наличные', 12, '', 3, 0, 0, '', 2000.00, 'RUR', 1, 'Роман', 'Седых', 'rsedykh@whitescape.com', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', '', '', '', '', 0, '', '', 'storefront'),
(5, 2, '2012-06-27 02:47:19', '109.167.200.251', 'Курьер', 11, 'Наличные', 12, '', 3, 0, 0, '', 2000.00, 'RUR', 1, 'Роман', 'Седых', 'rsedykh@whitescape.com', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', '', '', '', '', 0, '', '', 'storefront'),
(6, 1, '2012-06-28 15:37:56', '37.1.21.171', 'Курьер', 11, 'Наличные', 12, '', 2, 0, 0, '', 50.00, 'RUR', 1, 'rp', 'rp', 'rp+candies@whitescape.com', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', '', '', '', '', 0, '', '', 'storefront'),
(7, 1, '2012-06-28 16:03:51', '37.1.21.171', 'Курьер', 11, 'Наличные', 12, '', 2, 0, 0, '', 50.00, 'RUR', 1, 'rp', 'rp', 'rp+candies@whitescape.com', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', '', '', '', '', 0, '', '', 'storefront'),
(8, 2, '2012-06-28 18:20:42', '87.248.244.210', 'Самовывоз', 9, 'Наличные', 12, '', 2, 0, 0, '', 2000.00, 'RUR', 1, 'Роман', 'Седых', 'rsedykh@whitescape.com', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', 'Роман', 'Седых', 'Россия', 'Ленинградская область', '190000', 'Санкт-Петербург', 'Дворцовая наб. 20', '', '', '', '', 0, '', '', 'storefront'),
(9, 1, '2012-06-29 19:43:04', '37.1.4.146', 'Курьер', 11, 'Наличные', 12, '', 2, 0, 0, '', 2000.00, 'RUR', 1, 'rp', 'rp', 'rp+candies@whitescape.com', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', 'rp', 'rp', 'Россия', ' Московская область', '123456789', '123456789', '123456789', '', '', '', '', 0, '', '', 'storefront');

-- --------------------------------------------------------

--
-- Table structure for table `SC_orders_discount_coupons`
--

DROP TABLE IF EXISTS `SC_orders_discount_coupons`;
CREATE TABLE IF NOT EXISTS `SC_orders_discount_coupons` (
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_id`),
  KEY `coupon_id` (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_orders_discount_coupons`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_order_price_discount`
--

DROP TABLE IF EXISTS `SC_order_price_discount`;
CREATE TABLE IF NOT EXISTS `SC_order_price_discount` (
  `discount_id` int(11) NOT NULL auto_increment,
  `discount_type` enum('A','O') NOT NULL,
  `price_range` float default NULL,
  `percent_discount` float default NULL,
  PRIMARY KEY  (`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_order_price_discount`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_order_status`
--

DROP TABLE IF EXISTS `SC_order_status`;
CREATE TABLE IF NOT EXISTS `SC_order_status` (
  `statusID` int(11) NOT NULL auto_increment,
  `predefined` smallint(1) unsigned NOT NULL default '0',
  `color` varchar(6) NOT NULL default '',
  `bold` smallint(1) unsigned NOT NULL default '0',
  `italic` smallint(1) unsigned NOT NULL default '0',
  `sort_order` int(11) default NULL,
  `status_name_en` varchar(30) default NULL,
  `status_name_ru` varchar(30) default NULL,
  PRIMARY KEY  (`statusID`),
  KEY `predefined` (`predefined`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `SC_order_status`
--

INSERT INTO `SC_order_status` (`statusID`, `predefined`, `color`, `bold`, `italic`, `sort_order`, `status_name_en`, `status_name_ru`) VALUES
(1, 1, '888888', 0, 0, 100, 'Cancelled', 'Отменен'),
(2, 1, '2B931C', 1, 0, 110, 'Pending', 'Новый'),
(3, 1, '0B630F', 0, 0, 120, 'Processing', 'В обработке'),
(5, 1, 'E68B2C', 0, 0, 140, 'Paid & Delivered', 'Доставлен и оплачен'),
(15, 1, '800000', 0, 0, 150, 'Refunded', 'Деньги возвращены'),
(14, 1, '0B630F', 1, 1, 130, 'Charged', 'Деньги списаны с карты клиента'),
(21, 0, '6600FF', 0, 1, 1, 'Sent', 'Отправлен'),
(22, 0, '330066', 0, 0, 2, 'Deferred', 'Отложен');

-- --------------------------------------------------------

--
-- Table structure for table `SC_order_status_changelog`
--

DROP TABLE IF EXISTS `SC_order_status_changelog`;
CREATE TABLE IF NOT EXISTS `SC_order_status_changelog` (
  `orderID` int(11) default NULL,
  `status_name` varchar(255) default NULL,
  `status_change_time` datetime default NULL,
  `status_comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_order_status_changelog`
--

INSERT INTO `SC_order_status_changelog` (`orderID`, `status_name`, `status_change_time`, `status_comment`) VALUES
(1, 'Новый', '2012-06-25 14:46:51', 'Заказ оформлен покупателем'),
(2, 'Новый', '2012-06-26 16:33:10', 'Заказ оформлен покупателем'),
(3, 'Новый', '2012-06-26 17:35:19', 'Заказ оформлен покупателем'),
(3, 'В обработке', '2012-06-26 17:36:11', 'Принят в обработку'),
(1, 'Отменен', '2012-06-27 02:26:25', 'Отменен продавцом'),
(2, 'Отменен', '2012-06-27 02:26:34', 'Отменен продавцом'),
(3, 'Отменен', '2012-06-27 02:26:42', 'Отменен продавцом'),
(4, 'Новый', '2012-06-27 02:36:26', 'Заказ оформлен покупателем'),
(4, 'В обработке', '2012-06-27 02:39:54', 'Принят в обработку'),
(5, 'Новый', '2012-06-27 02:47:19', 'Заказ оформлен покупателем'),
(5, 'В обработке', '2012-06-28 13:59:28', 'Принят в обработку \nДобавлен комментарий: Мы приняли ваш заказ в обработку.'),
(6, 'Новый', '2012-06-28 15:37:56', 'Заказ оформлен покупателем'),
(7, 'Новый', '2012-06-28 16:03:51', 'Заказ оформлен покупателем'),
(8, 'Новый', '2012-06-28 18:20:42', 'Заказ оформлен покупателем'),
(9, 'Новый', '2012-06-29 19:43:04', 'Заказ оформлен покупателем');

-- --------------------------------------------------------

--
-- Table structure for table `SC_payment_types`
--

DROP TABLE IF EXISTS `SC_payment_types`;
CREATE TABLE IF NOT EXISTS `SC_payment_types` (
  `PID` int(11) NOT NULL auto_increment,
  `Enabled` int(11) default NULL,
  `calculate_tax` int(11) default NULL,
  `sort_order` int(11) default '0',
  `module_id` int(11) default NULL,
  `Name_en` varchar(30) default NULL,
  `description_en` varchar(255) default NULL,
  `email_comments_text_en` text,
  `Name_ru` varchar(30) default NULL,
  `description_ru` varchar(255) default NULL,
  `email_comments_text_ru` text,
  `logo` text,
  PRIMARY KEY  (`PID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `SC_payment_types`
--

INSERT INTO `SC_payment_types` (`PID`, `Enabled`, `calculate_tax`, `sort_order`, `module_id`, `Name_en`, `description_en`, `email_comments_text_en`, `Name_ru`, `description_ru`, `email_comments_text_ru`, `logo`) VALUES
(7, 1, 1, 1, 12, 'Cash', 'Sample payment type. Add your own payment types here.', 'Pay cash on delivery.', 'Наличные', 'Пример способа оплаты. Добавьте ваши способы оплаты сюда.', 'Оплата наличными при получении.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SC_payment_types__shipping_methods`
--

DROP TABLE IF EXISTS `SC_payment_types__shipping_methods`;
CREATE TABLE IF NOT EXISTS `SC_payment_types__shipping_methods` (
  `SID` int(11) NOT NULL default '0',
  `PID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`SID`,`PID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_payment_types__shipping_methods`
--

INSERT INTO `SC_payment_types__shipping_methods` (`SID`, `PID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 7),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `SC_products`
--

DROP TABLE IF EXISTS `SC_products`;
CREATE TABLE IF NOT EXISTS `SC_products` (
  `productID` int(11) NOT NULL auto_increment,
  `categoryID` int(11) default NULL,
  `customers_rating` float default '0',
  `Price` float default NULL,
  `in_stock` int(11) default NULL,
  `customer_votes` int(11) default '0',
  `items_sold` int(11) NOT NULL default '0',
  `enabled` int(11) default NULL,
  `list_price` float default NULL,
  `product_code` varchar(25) default NULL,
  `sort_order` int(11) default '0',
  `default_picture` int(11) default NULL,
  `date_added` datetime default NULL,
  `date_modified` datetime default NULL,
  `viewed_times` int(11) default '0',
  `add2cart_counter` int(10) unsigned default '0',
  `eproduct_filename` varchar(255) default NULL,
  `eproduct_available_days` int(11) default '5',
  `eproduct_download_times` int(11) default '5',
  `weight` float default '0',
  `free_shipping` int(11) default '0',
  `min_order_amount` int(11) default '1',
  `shipping_freight` float default '0',
  `classID` int(11) default NULL,
  `name_en` varchar(255) default NULL,
  `brief_description_en` text NOT NULL,
  `description_en` text NOT NULL,
  `meta_title_en` varchar(255) default NULL,
  `meta_description_en` varchar(255) default NULL,
  `meta_keywords_en` varchar(255) default NULL,
  `ordering_available` int(11) NOT NULL default '0',
  `slug` varchar(255) NOT NULL default '',
  `name_ru` varchar(255) default NULL,
  `brief_description_ru` text,
  `description_ru` text,
  `meta_title_ru` varchar(255) default NULL,
  `meta_description_ru` varchar(255) default NULL,
  `meta_keywords_ru` varchar(255) default NULL,
  `vkontakte_update_timestamp` int(11) default NULL,
  `id_1c` varchar(74) default NULL,
  PRIMARY KEY  (`productID`),
  KEY `categoryID` (`categoryID`),
  KEY `enabled` (`enabled`),
  KEY `name_en` (`name_en`),
  KEY `Price` (`Price`),
  KEY `customers_rating` (`customers_rating`),
  KEY `slug` (`slug`),
  KEY `sort_order` (`sort_order`),
  KEY `viewed_times` (`viewed_times`),
  KEY `product_code` (`product_code`),
  KEY `customer_votes` (`customer_votes`),
  KEY `items_sold` (`items_sold`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=678 ;

--
-- Dumping data for table `SC_products`
--

INSERT INTO `SC_products` (`productID`, `categoryID`, `customers_rating`, `Price`, `in_stock`, `customer_votes`, `items_sold`, `enabled`, `list_price`, `product_code`, `sort_order`, `default_picture`, `date_added`, `date_modified`, `viewed_times`, `add2cart_counter`, `eproduct_filename`, `eproduct_available_days`, `eproduct_download_times`, `weight`, `free_shipping`, `min_order_amount`, `shipping_freight`, `classID`, `name_en`, `brief_description_en`, `description_en`, `meta_title_en`, `meta_description_en`, `meta_keywords_en`, `ordering_available`, `slug`, `name_ru`, `brief_description_ru`, `description_ru`, `meta_title_ru`, `meta_description_ru`, `meta_keywords_ru`, `vkontakte_update_timestamp`, `id_1c`) VALUES
(667, 559, 0, 1000, 0, 0, 0, 1, 0, '', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 0, 0, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Шортики-спортики', '', '', '', '', '', 0, 'EASRqp_KiXaDyY7r5zLMZ3'),
(668, 561, 0, 500, 0, 0, 0, 1, 0, '', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 0, 0, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Сумка-пумка', '', '', '', '', '', 0, 'mHh8TaJ5jnit5_4027Avt1'),
(669, 560, 0, 2000, 0, 0, 0, 1, 0, '', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 0, 0, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Грибок для рывок', '', '', '', '', '', 0, 'YbDSRmhfg3KB7zRGxCP7i0'),
(670, 563, 0, 200, 0, 0, 0, 1, 0, 'артикул1', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 2, 0, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Калебас', 'описание1', '', '', '', '', 0, 'LUNo82EyhEKxUdUz6Vlhn1'),
(671, 565, 0, 10000, 0, 0, 0, 1, 0, '', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 3, 0, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Спайк', '', '', '', '', '', 0, 'FGSYthPXgi2QthbCa8Tui1'),
(672, 564, 0, 50, 0, 0, 0, 1, 0, '', 0, 0, '2012-06-21 04:27:32', '2012-07-02 13:17:17', 3, 2, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Платок', '', '', '', '', '', 0, '3XyUQ2OQjaizMYzcJO_Wc2'),
(674, 566, 0, 2000, 15, 0, 0, 1, 0, '', 0, 0, '2012-06-27 02:27:12', '2012-07-02 13:17:17', 1, 4, '', 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', 1, '', 'Mono', '', '', '', '', '', 0, 'HW93b4RohBuGphLG8sAoT2');

-- --------------------------------------------------------

--
-- Table structure for table `SC_products_opt_val_variants`
--

DROP TABLE IF EXISTS `SC_products_opt_val_variants`;
CREATE TABLE IF NOT EXISTS `SC_products_opt_val_variants` (
  `variantID` int(11) NOT NULL auto_increment,
  `optionID` int(11) NOT NULL default '0',
  `sort_order` int(11) default '0',
  `option_value_en` varchar(255) default NULL,
  `option_value_ru` varchar(255) default NULL,
  PRIMARY KEY  (`variantID`),
  KEY `optionID` (`optionID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `SC_products_opt_val_variants`
--

INSERT INTO `SC_products_opt_val_variants` (`variantID`, `optionID`, `sort_order`, `option_value_en`, `option_value_ru`) VALUES
(2, 15, 0, 'red', 'красный'),
(3, 15, 0, 'black', 'черный'),
(4, 15, 1, 'blue', 'синий'),
(5, 15, 0, 'white', 'белый'),
(6, 14, 0, '', '49'),
(7, 14, 0, '', '37'),
(8, 14, 0, '', '38'),
(9, 14, 0, '', '40');

-- --------------------------------------------------------

--
-- Table structure for table `SC_product_list`
--

DROP TABLE IF EXISTS `SC_product_list`;
CREATE TABLE IF NOT EXISTS `SC_product_list` (
  `id` varchar(20) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_product_list`
--

INSERT INTO `SC_product_list` (`id`, `name`) VALUES
('specialoffers', 'Специальные предложения'),
('featuredfemale', 'Фичеред женские'),
('featuredmale', 'Фичеред мужские');

-- --------------------------------------------------------

--
-- Table structure for table `SC_product_list_item`
--

DROP TABLE IF EXISTS `SC_product_list_item`;
CREATE TABLE IF NOT EXISTS `SC_product_list_item` (
  `list_id` varchar(20) NOT NULL default '',
  `productID` int(10) unsigned NOT NULL default '0',
  `priority` int(10) unsigned NOT NULL default '0',
  KEY `list_id` (`list_id`,`productID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_product_list_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_product_options`
--

DROP TABLE IF EXISTS `SC_product_options`;
CREATE TABLE IF NOT EXISTS `SC_product_options` (
  `optionID` int(11) NOT NULL auto_increment,
  `sort_order` int(11) default '0',
  `name_en` varchar(50) default NULL,
  `name_ru` varchar(50) default NULL,
  PRIMARY KEY  (`optionID`),
  KEY `sort_order` (`sort_order`),
  KEY `name_en` (`name_en`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `SC_product_options`
--

INSERT INTO `SC_product_options` (`optionID`, `sort_order`, `name_en`, `name_ru`) VALUES
(14, 0, 'Size', 'Размер'),
(15, 0, 'Color', 'Цвет');

-- --------------------------------------------------------

--
-- Table structure for table `SC_product_options_set`
--

DROP TABLE IF EXISTS `SC_product_options_set`;
CREATE TABLE IF NOT EXISTS `SC_product_options_set` (
  `productID` int(11) NOT NULL default '0',
  `optionID` int(11) NOT NULL default '0',
  `variantID` int(11) NOT NULL default '0',
  `price_surplus` float default '0',
  PRIMARY KEY  (`productID`,`optionID`,`variantID`),
  KEY `productID` (`productID`),
  KEY `optionID` (`optionID`),
  KEY `variantID` (`variantID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_product_options_set`
--

INSERT INTO `SC_product_options_set` (`productID`, `optionID`, `variantID`, `price_surplus`) VALUES
(674, 15, 5, 0),
(674, 14, 9, 0),
(674, 15, 2, 0),
(674, 14, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SC_product_options_values`
--

DROP TABLE IF EXISTS `SC_product_options_values`;
CREATE TABLE IF NOT EXISTS `SC_product_options_values` (
  `optionID` int(11) NOT NULL default '0',
  `productID` int(11) NOT NULL default '0',
  `option_type` tinyint(1) default '0',
  `option_show_times` int(11) default '1',
  `variantID` int(11) default NULL,
  `option_value_en` varchar(255) default NULL,
  `option_value_ru` varchar(255) default NULL,
  PRIMARY KEY  (`optionID`,`productID`),
  KEY `productID` (`productID`),
  KEY `optionID` (`optionID`),
  KEY `variantID` (`variantID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_product_options_values`
--

INSERT INTO `SC_product_options_values` (`optionID`, `productID`, `option_type`, `option_show_times`, `variantID`, `option_value_en`, `option_value_ru`) VALUES
(15, 672, 1, 1, 5, '', ''),
(14, 672, 1, 1, 7, '', ''),
(14, 674, 1, 1, 6, '', ''),
(15, 674, 1, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `SC_product_pictures`
--

DROP TABLE IF EXISTS `SC_product_pictures`;
CREATE TABLE IF NOT EXISTS `SC_product_pictures` (
  `photoID` int(11) NOT NULL auto_increment,
  `productID` int(11) NOT NULL default '0',
  `filename` varchar(255) default NULL,
  `thumbnail` varchar(255) default NULL,
  `enlarged` varchar(255) default NULL,
  `priority` int(10) unsigned default '0',
  PRIMARY KEY  (`photoID`),
  KEY `productID` (`productID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6047 ;

--
-- Dumping data for table `SC_product_pictures`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_related_items`
--

DROP TABLE IF EXISTS `SC_related_items`;
CREATE TABLE IF NOT EXISTS `SC_related_items` (
  `productID` int(11) NOT NULL default '0',
  `Owner` int(11) NOT NULL default '0',
  PRIMARY KEY  (`productID`,`Owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_related_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_rpost_zones`
--

DROP TABLE IF EXISTS `SC_rpost_zones`;
CREATE TABLE IF NOT EXISTS `SC_rpost_zones` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `countryID` int(11) default NULL,
  `zoneID` int(11) default NULL,
  `zoneNumber` int(11) default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_rpost_zones`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_settings`
--

DROP TABLE IF EXISTS `SC_settings`;
CREATE TABLE IF NOT EXISTS `SC_settings` (
  `settingsID` int(11) NOT NULL auto_increment,
  `settings_groupID` int(11) default NULL,
  `settings_constant_name` varchar(64) default NULL,
  `settings_value` text,
  `settings_title` varchar(128) default NULL,
  `settings_description` varchar(255) default NULL,
  `settings_html_function` varchar(255) default NULL,
  `sort_order` int(11) default '0',
  PRIMARY KEY  (`settingsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=492 ;

--
-- Dumping data for table `SC_settings`
--

INSERT INTO `SC_settings` (`settingsID`, `settings_groupID`, `settings_constant_name`, `settings_value`, `settings_title`, `settings_description`, `settings_html_function`, `sort_order`) VALUES
(1, NULL, 'CONF_DSC_COUPONS_ENABLED', 'Y', NULL, NULL, NULL, 0),
(2, NULL, 'CONF_DSC_USERGROUP_ENABLED', 'N', NULL, NULL, NULL, 0),
(3, NULL, 'CONF_DSC_AMOUNT_ENABLED', 'N', NULL, NULL, NULL, 0),
(4, NULL, 'CONF_DSC_ORDERS_ENABLED', 'N', NULL, NULL, NULL, 0),
(5, NULL, 'CONF_DSC_CALC', 'as_sum', NULL, NULL, NULL, 0),
(6, 2, 'CONF_GOOGLE_MAPS_API_KEY', '', 'cfg_google_maps_api_key_name', 'cfg_google_maps_api_key_descr', 'setting_TEXT_BOX(0,', 110),
(7, 2, 'CONF_WAREHOUSE_ADDRESS', '', 'cfg_warehouse_address_name', 'cfg_warehouse_address_descr', 'setting_TEXT_BOX(0,', 110),
(8, 4, 'CONF_VOTING_FOR_PRODUCTS', 'False', 'cfg_voiting_for_products_title', 'cfg_voiting_for_products_descr', 'setting_SELECT_BOX(array(array("title"=>"yes", "value"=>"True"), array("title"=>"no", "value"=>"False")),', 0),
(9, NULL, 'CONF_DEFAULT_LANG', '1', NULL, NULL, NULL, 0),
(10, NULL, 'CONF_AUXPAGES_NAVIGATION', '1', NULL, NULL, NULL, 0),
(11, NULL, 'CONF_DIVISIONS_NAVIGATION', '29:54:107:32', NULL, NULL, NULL, 0),
(12, NULL, 'CONF_CURRENT_THEME', 'lucid', NULL, NULL, NULL, 0),
(13, 0, 'CONF_UPDATE_GCV', '1', 'cfg_update_gcv_title', 'cfg_update_gcv_description', 'setting_CHECK_BOX(', 6),
(14, 0, 'CONF_DEFAULT_CURRENCY', '3', 'cfg_default_currency_title', '', 'settingCONF_DEFAULT_CURRENCY()', 7),
(15, 0, 'CONF_BACKEND_SAFEMODE', '0', 'Безопасный режим', 'Если данная опция включена, возможности администрирования магазина будут ограничены', '', 0),
(16, 2, 'CONF_DATE_FORMAT', 'DD.MM.YYYY', 'cfg_date_format_title', 'cfg_date_format_description', 'setting_DATEFORMAT(', 60),
(17, 2, 'CONF_HOMEPAGE_META_KEYWORDS', 'a:2:{s:2:"en";s:32:"online store,gift,purchase,order";s:2:"ru";s:75:"интернет-магазин, подарок, купить, онлайн";}', 'cfg_homepage_metakeywords_title', 'cfg_homepage_metakeywords_description', 'setting_TEXT_BOX_ML(0,', 90),
(18, 2, 'CONF_HOMEPAGE_META_DESCRIPTION', 'a:2:{s:2:"en";s:44:"We have many great presents to order online!";s:2:"ru";s:113:"У нас вы найдете самые удивительные и необыкновенные подарки.";}', 'cfg_homepage_metadescription_title', 'cfg_homepage_metadescription_description', 'setting_TEXT_BOX_ML(0,', 100),
(19, 2, 'CONF_SHOP_NAME', 'a:2:{s:2:"en";s:15:"My Online Store";s:2:"ru";s:21:"Мой магазин";}', 'cfg_store_name_title', 'cfg_store_name_description', 'setting_TEXT_BOX_ML(0,', 10),
(20, 2, 'CONF_DEFAULT_TITLE', 'a:2:{s:2:"en";s:16:"Great gift store";s:2:"ru";s:74:"Интернет-магазин незабываемых подарков.";}', 'cfg_default_title_title', 'cfg_default_title_description', 'setting_TEXT_BOX_ML(0,', 80),
(21, 2, 'CONF_SHOP_URL', 'www.my-online-store.ru', 'cfg_store_domain_title', 'cfg_store_domain_description', 'setting_TEXT_BOX(0,', 20),
(22, 2, 'CONF_GENERAL_EMAIL', 'your@email.here', 'cfg_general_email_title', 'cfg_general_email_description', 'setting_TEXT_BOX(0,', 30),
(23, 2, 'CONF_ENABLE_CONFIRMATION_CODE', '1', 'cfg_confirmation_code_title', 'cfg_confirmation_code_description', 'setting_CHECK_BOX(', 50),
(24, 2, 'CONF_FIRST_WEEKDAY', '0', 'cfg_first_weekday_title', 'cfg_first_weekday_description', 'setting_SELECT_BOX(getWeekdayName(0).":0,".getWeekdayName(6).":6",', 70),
(25, 2, 'CONF_ORDERS_EMAIL', 'your@email.here', 'cfg_orders_email_title', 'cfg_orders_email_description', 'setting_TEXT_BOX(0,', 40),
(26, 4, 'CONF_CHECKSTOCK', '1', 'cfg_check_stock_title', 'cfg_check_stock_description', 'setting_CHECK_BOX(', 4),
(27, 4, 'CONF_PRODUCTS_PER_PAGE', '10', 'cfg_products_per_page_title', 'cfg_products_per_page_description', 'setting_TEXT_BOX(2,', 1),
(28, 4, 'CONF_COLUMNS_PER_PAGE', '1', 'cfg_columns_per_page_title', 'cfg_columns_per_page_description', 'setting_TEXT_BOX(2,', 2),
(29, 4, 'CONF_PRODUCT_SORT', '1', 'cfg_product_sort_title', 'cfg_product_sort_description', 'setting_CHECK_BOX(', 8),
(30, 4, 'CONF_DEFAULT_TAX_CLASS', '0', 'cfg_default_tax_class_title', 'cfg_default_tax_class_description', 'settingCONF_DEFAULT_TAX_CLASS()', 0),
(31, 4, 'CONF_PRDPICT_STANDARD_SIZE', '300', 'cfg_prdpict_standard_size_title', 'cfg_prdpict_standard_size_description', 'setting_TEXT_BOX(2,', 110),
(32, 4, 'CONF_PRDPICT_THUMBNAIL_SIZE', '150', 'cfg_prdpict_thumbnail_size_title', 'cfg_prdpict_thumbnail_size_description', 'setting_TEXT_BOX(2,', 100),
(33, 4, 'CONF_CATPICT_SIZE', '100', 'cfg_catpict_size_title', 'cfg_catpict_size_description', 'setting_TEXT_BOX(2,', 120),
(34, 4, 'CONF_WEIGHT_UNIT', 'g', 'cfg_weight_unit_title', 'cfg_weight_unit_description', 'setting_WEIGHT_UNIT(', 0),
(35, 4, 'CONF_ALLOW_COMPARISON_FOR_SIMPLE_SEARCH', '1', 'cfg_allow_comparison_in_simple_search_title', 'cfg_allow_comparison_in_simple_search_description', 'setting_CHECK_BOX(', 9),
(36, 4, 'CONF_EXACT_PRODUCT_BALANCE', '0', 'cfg_exact_product_balance_title', 'cfg_exact_product_balance_description', 'setting_CHECK_BOX(', 7),
(37, 5, 'CONF_DEFAULT_COUNTRY', '176', 'cfg_default_currency_title', 'cfg_default_currency_description', 'settingCONF_DEFAULT_COUNTRY()', 0),
(38, 5, 'CONF_DEFAULT_CUSTOMER_GROUP', '3', 'cfg_default_customer_group_title', 'cfg_default_customer_group_description', 'settingCONF_DEFAULT_CUSTOMER_GROUP()', 0),
(39, 5, 'CONF_ENABLE_REGCONFIRMATION', '0', 'cfg_customer_actiovation_title', 'cfg_customer_actiovation_description', 'setting_CHECK_BOX(', 1),
(40, 6, 'CONF_SHOW_ADD2CART', '1', 'cfg_allow_ordering_title', 'cfg_allow_ordering_description', 'setting_CHECK_BOX(', 0),
(41, 6, 'CONF_COUNTRY', '176', 'cfg_country_title', 'cfg_country_description', 'settingCONF_COUNTRY()', 9),
(42, 6, 'CONF_ZONE', '234', 'cfg_region_title', 'cfg_region_description', 'settingCONF_ZONE()', 10),
(43, 6, 'CONF_ORDERID_PREFIX', '1000', 'cfg_orderid_prefix_title', 'cfg_orderid_prefix_description', 'setting_TEXT_BOX(0,', 0),
(44, 6, 'CONF_ORDERING_REQUEST_BILLING_ADDRESS', '0', 'cfg_request_billing_address_title', 'cfg_request_billing_address_description', 'setting_CHECK_BOX(', 0),
(45, 6, 'CONF_CALCULATE_TAX_ON_SHIPPING', '0', 'cfg_shipping_tax_title', 'cfg_shipping_tax_description', 'settingCONF_CALCULATE_TAX_ON_SHIPPING()', 0),
(46, 6, 'CONF_PROTECTED_CONNECTION', '0', 'cfg_secure_checkout_title', 'cfg_secure_checkout_description', 'setting_CHECK_BOX(', 0),
(47, 6, 'CONF_MINIMAL_ORDER_AMOUNT', '0', 'cfg_min_order_amount_title', 'cfg_min_order_amount_description', 'setting_TEXT_BOX(2,', 0),
(48, 6, 'CONF_SHOPPING_CART_VIEW', '1', 'cfg_how_toshow_shoppingcart_title', 'cfg_how_toshow_shoppingcart_description', 'setting_RADIOGROUP(translate(''stg_fade_layout'').'':''.SHCART_VIEW_FADE.'',''.translate(''stg_new_page_cart'').'':''.SHCART_VIEW_PAGE,', 0),
(49, 7, 'GOOGLE_ANALYTICS_ENABLE', '0', 'cfg_ga_enable_title', 'cfg_ga_enable_description', 'setting_CHECK_BOX(', 1),
(50, 7, 'GOOGLE_ANALYTICS_ACCOUNT', '', 'cfg_ga_account_number_title', 'cfg_ga_account_number_description', 'setting_TEXT_BOX(0,', 2),
(51, 7, 'GOOGLE_ANALYTICS_USD_CURRENCY', '', 'cfg_ga_usd_title', 'cfg_ga_usd_description', 'setting_CURRENCY_SELECT(', 3),
(52, 1, 'CONF_AFFILIATE_EMAIL_NEW_PAYMENT', '0', 'Email customers when new payment is submitted', '', 'setting_CHECK_BOX(', 0),
(53, 1, 'CONF_AFFILIATE_PROGRAM_ENABLED', '0', 'Affiliate program', 'Is enabled or not', 'setting_CHECK_BOX(', 0),
(54, 1, 'CONF_AFFILIATE_AMOUNT_PERCENT', '10', 'Affiliate comission percent', '', 'setting_TEXT_BOX(0,', 0),
(55, 1, 'CONF_AFFILIATE_EMAIL_NEW_COMMISSION', '0', 'Email customers when new commission is submitted', '', 'setting_CHECK_BOX(', 0),
(56, 4, 'CONF_ENABLE_PRODUCT_SKU', '0', 'cfg_enable_product_sku_title', 'cfg_enable_product_sku_description', 'setting_CHECK_BOX(', 5),
(57, 4, 'CONF_PICTRESIZE_QUALITY', '80', 'cfg_picture_resize_quality_title', 'cfg_picture_resize_quality_description', 'setting_TEXT_BOX(2,', 130),
(58, 2, 'CONF_STOREFRONT_TIME_ZONE', '51', 'cfg_frontend_time_zone', 'cfg__frontend_time_zone_descr', 'Time::setting_SELECT_TIME_ZONE(', 61),
(59, 2, 'CONF_STOREFRONT_TIME_ZONE_DST', '0', 'cfg_frontend_time_zone_dst', 'cfg__frontend_time_zone_dst_descr', 'setting_CHECK_BOX(', 62),
(60, 7, 'GOOGLE_ANALYTICS_CUSTOM_SE', '// Google EMEA Image domains\r\npageTracker._addOrganic("images.google.co.uk","q");\r\npageTracker._addOrganic("images.google.es","q");\r\npageTracker._addOrganic("images.google.pt","q");\r\npageTracker._addOrganic("images.google.it","q");\r\npageTracker._addOrganic("images.google.fr","q");\r\npageTracker._addOrganic("images.google.nl","q");\r\npageTracker._addOrganic("images.google.be","q");\r\npageTracker._addOrganic("images.google.de","q");\r\npageTracker._addOrganic("images.google.no","q");\r\npageTracker._addOrganic("images.google.se","q");\r\npageTracker._addOrganic("images.google.dk","q");\r\npageTracker._addOrganic("images.google.fi","q");\r\npageTracker._addOrganic("images.google.ch","q");\r\npageTracker._addOrganic("images.google.at","q");\r\npageTracker._addOrganic("images.google.ie","q");\r\npageTracker._addOrganic("images.google.ru","q");\r\npageTracker._addOrganic("images.google.pl","q");\r\n\r\n// Other Google Image search\r\npageTracker._addOrganic("images.google.com","q");\r\npageTracker._addOrganic("images.google.ca","q");\r\npageTracker._addOrganic("images.google.com.au","q");\r\npageTracker._addOrganic("images.google","q");\r\n\r\n// Blogsearch\r\npageTracker._addOrganic("blogsearch.google","q");\r\n\r\n// Google EMEA Domains\r\npageTracker._addOrganic("google.co.uk","q");\r\npageTracker._addOrganic("google.es","q");\r\npageTracker._addOrganic("google.pt","q");\r\npageTracker._addOrganic("google.it","q");\r\npageTracker._addOrganic("google.fr","q");\r\npageTracker._addOrganic("google.nl","q");\r\npageTracker._addOrganic("google.be","q");\r\npageTracker._addOrganic("google.de","q");\r\npageTracker._addOrganic("google.no","q");\r\npageTracker._addOrganic("google.se","q");\r\npageTracker._addOrganic("google.dk","q");\r\npageTracker._addOrganic("google.fi","q");\r\npageTracker._addOrganic("google.ch","q");\r\npageTracker._addOrganic("google.at","q");\r\npageTracker._addOrganic("google.ie","q");\r\npageTracker._addOrganic("google.ru","q");\r\npageTracker._addOrganic("google.pl","q");\r\n\r\n// Yahoo EMEA Domains\r\npageTracker._addOrganic("uk.yahoo.com","p");\r\npageTracker._addOrganic("es.yahoo.com","p");\r\npageTracker._addOrganic("pt.yahoo.com","p");\r\npageTracker._addOrganic("it.yahoo.com","p");\r\npageTracker._addOrganic("fr.yahoo.com","p");\r\npageTracker._addOrganic("nl.yahoo.com","p");\r\npageTracker._addOrganic("be.yahoo.com","p");\r\npageTracker._addOrganic("de.yahoo.com","p");\r\npageTracker._addOrganic("no.yahoo.com","p");\r\npageTracker._addOrganic("se.yahoo.com","p");\r\npageTracker._addOrganic("dk.yahoo.com","p");\r\npageTracker._addOrganic("fi.yahoo.com","p");\r\npageTracker._addOrganic("ch.yahoo.com","p");\r\npageTracker._addOrganic("at.yahoo.com","p");\r\npageTracker._addOrganic("ie.yahoo.com","p");\r\npageTracker._addOrganic("ru.yahoo.com","p");\r\npageTracker._addOrganic("pl.yahoo.com","p");\r\n\r\n// UK specific\r\npageTracker._addOrganic("hotbot.co.uk","query");\r\npageTracker._addOrganic("excite.co.uk","q");\r\npageTracker._addOrganic("bbc","q");\r\npageTracker._addOrganic("tiscali","query");\r\npageTracker._addOrganic("uk.ask.com","q");\r\npageTracker._addOrganic("blueyonder","q");\r\npageTracker._addOrganic("search.aol.co.uk","query");\r\npageTracker._addOrganic("ntlworld","q");\r\npageTracker._addOrganic("tesco.net","q");\r\npageTracker._addOrganic("orange.co.uk","q");\r\npageTracker._addOrganic("mywebsearch.com","searchfor");\r\npageTracker._addOrganic("uk.myway.com","searchfor");\r\npageTracker._addOrganic("searchy.co.uk","search_term");\r\npageTracker._addOrganic("msn.co.uk","q");\r\npageTracker._addOrganic("uk.altavista.com","q");\r\npageTracker._addOrganic("lycos.co.uk","query");\r\n\r\n// NL specific\r\npageTracker._addOrganic("chello.nl","q1");\r\npageTracker._addOrganic("home.nl","q");\r\npageTracker._addOrganic("planet.nl","googleq=q");\r\npageTracker._addOrganic("search.ilse.nl","search_for");\r\npageTracker._addOrganic("search-dyn.tiscali.nl","key");\r\npageTracker._addOrganic("startgoogle.startpagina.nl","q");\r\npageTracker._addOrganic("vinden.nl","q");\r\npageTracker._addOrganic("vindex.nl","search_for");\r\npageTracker._addOrganic("zoeken.nl","query");\r\npageTracker._addOrganic("zoeken.track.nl","qr");\r\npageTracker._addOrganic("zoeknu.nl","Keywords");\r\n\r\n// Extras\r\npageTracker._addOrganic("alltheweb","q");\r\npageTracker._addOrganic("ananzi","qt");\r\npageTracker._addOrganic("anzwers","search");\r\npageTracker._addOrganic("araby.com","q");\r\npageTracker._addOrganic("dogpile","q");\r\npageTracker._addOrganic("elmundo.es","q");\r\npageTracker._addOrganic("ezilon.com","q");\r\npageTracker._addOrganic("hotbot","query");\r\npageTracker._addOrganic("indiatimes.com","query");\r\npageTracker._addOrganic("iafrica.funnel.co.za","q");\r\npageTracker._addOrganic("mywebsearch.com","searchfor");\r\npageTracker._addOrganic("search.aol.com","encquery");\r\npageTracker._addOrganic("search.indiatimes.com","query");\r\npageTracker._addOrganic("searcheurope.com","query");\r\npageTracker._addOrganic("suche.web.de","su");\r\npageTracker._addOrganic("terra.es","query");\r\npageTracker._addOrganic("voila.fr","kw");\r\n\r\n// Extras RU\r\npageTracker._addOrganic("mail.ru", "q");\r\npageTracker._addOrganic("rambler.ru", "words");\r\npageTracker._addOrganic("nigma.ru", "s");\r\npageTracker._addOrganic("blogs.yandex.ru", "text");\r\npageTracker._addOrganic("yandex.ru", "text");\r\npageTracker._addOrganic("webalta.ru", "q");\r\npageTracker._addOrganic("aport.ru", "r");\r\npageTracker._addOrganic("poisk.ru", "text");\r\npageTracker._addOrganic("km.ru", "sq");\r\npageTracker._addOrganic("liveinternet.ru", "ask");\r\npageTracker._addOrganic("gogo.ru", "q");\r\npageTracker._addOrganic("gde.ru", "keywords");\r\npageTracker._addOrganic("quintura.ru", "request");\r\npageTracker._addOrganic("price.ru", "pnam");\r\npageTracker._addOrganic("torg.mail.ru", "q");\r\n\r\n\r\n// Extras BY\r\npageTracker._addOrganic("akavita.by", "z");\r\npageTracker._addOrganic("tut.by", "query");\r\npageTracker._addOrganic("all.by", "query");\r\n\r\n\r\n// Extras UA\r\npageTracker._addOrganic("meta.ua", "q");\r\npageTracker._addOrganic("bigmir.net", "q");\r\npageTracker._addOrganic("i.ua", "q");\r\npageTracker._addOrganic("online.ua", "q");\r\npageTracker._addOrganic("a.ua", "s");\r\npageTracker._addOrganic("ukr.net", "search_query");\r\npageTracker._addOrganic("search.com.ua", "q");\r\npageTracker._addOrganic("search.ua", "query");', 'cfg_ga_js_custom_se', 'cfg_ga_js_custom_se_description', 'setting_TEXT_AREA(', 4),
(61, 4, 'CONF_PRDPICT_ENLARGED_SIZE', '0', 'cfg_prdpict_enlarged_size_title', 'cfg_prdpict_enlarged_size_description', 'setting_TEXT_BOX(2,', 115),
(62, 2, 'CONF_PRINTFORM_COMPANY_LOGO', '', 'str_printforms_logo', '', 'setting_SINGLE_FILE(DIR_IMG,', 120),
(63, 6, 'CONF_STRICT_ACCESS', 'lastname', 'cfg_strict_access_title', 'cfg_strict_access_description', 'setting_RADIOGROUP(Customer::confOrderStatusAccess(),', 118),
(64, 1, 'CONF_SMSNOTIFY_ENABLED', '1', '', '', '', 1),
(65, 1, 'CONF_SMSNOTIFY_SMSSENDER_CONFIG_ID', '0', '', '', 'setting_SELECT_BOX(SMSNotify_getSMSSenderConfigIDOptions(),', 1),
(66, 1, 'CONF_SMSNOTIFY_SEND_PERIOD', '00:00-23:59', '', '', 'SMSNotify_setting_PERIOD(', 1),
(67, 1, 'CONF_SMSNOTIFY_PHONES', '0', '', '', 'SMSNotify_setting_Phones(', 1),
(68, 1, 'CONF_SMSMAIL_MODULE_CLICKATELL_API_ID_2', '', 'API_ID', 'API_ID Вы можете узнать в Вашей учетной записи на Clickatell', 'setting_TEXT_BOX(0,', 1),
(69, 1, 'CONF_SMSMAIL_MODULE_CLICKATELL_USER_2', '', 'Clickatell логин', 'Логин от Вашей учетной записи Clickatell', 'setting_TEXT_BOX(0,', 1),
(70, 1, 'CONF_SMSMAIL_MODULE_CLICKATELL_PASSWORD_2', '', 'Clickatell пароль', 'Пароль к Вашей учетной записи Clickatell', 'setting_TEXT_BOX(0,', 1),
(71, 1, 'CONF_SMSMAIL_MODULE_CLICKATELL_ORIGINATOR_2', '', 'Отправитель сообщения, как он будет выглядеть на телефоне получателя', 'Отправитель может состоять из цифр - в этом случае его длина ограничена 15-ю символами, или буквенно-цифровым (например, название вашей компании) - в этом случае длина ограничена 11-ю символами. Русские буквы в имени отправителя не разрешены.', 'setting_TEXT_BOX(0,', 1),
(72, 1, 'CONF_SMSDRIVERCOM_LOGIN_3', '', 'Логин', 'Логин от Вашей учетной записи SMSDriver', 'setting_TEXT_BOX(0,', 1),
(73, 1, 'CONF_SMSDRIVERCOM_PASSWORD_3', '', 'Пароль', 'Пароль к Вашей учетной записи SMSDriver', 'setting_TEXT_BOX(0,', 1),
(74, 1, 'CONF_SMSDRIVERCOM_UNICODE_3', '0', 'Конвертировать сообщение в юникод', 'Если опция включена, максимальная длина сообщения - 70 символов', 'setting_CHECK_BOX(', 1),
(75, 1, 'CONF_SMSDRIVERCOM_ORIGINATOR_3', '', 'Отправитель сообщения, как он будет выглядеть на телефоне получателя', 'Отправитель может состоять из цифр - в этом случае его длина ограничена 15-ю символами, или буквенно-цифровым (например, название вашей компании) - в этом случае длина ограничена 11-ю символами. Русские буквы в имени отправителя не разрешены.', 'setting_TEXT_BOX(0,', 1),
(76, 1, 'CONF_SMSTRAFFICRU_LOGIN_4', '', 'Логин', '', 'setting_TEXT_BOX(0,', 1),
(77, 1, 'CONF_SMSTRAFFICRU_PASSWORD_4', '', 'Пароль', '', 'setting_TEXT_BOX(0,', 1),
(78, 1, 'CONF_SMSTRAFFICRU_RUS_4', '0', 'Передавать ли сообщение по русски(максимальная длина 70 символов)', 'Если нет сообщение будет транслитерировано.', 'setting_CHECK_BOX(', 1),
(79, 1, 'CONF_SMSTRAFFICRU_ORIGINATOR_4', '', 'Отправитель сообщения, как он будет выглядеть на телефоне получателя', 'Отправитель может быть цифровым, в этом случае его длина ограничена 15-ю символами, или буквенно-цифровым (например, название вашей компании), в этом случае длина ограничена 11-ю символами. Русские буквы в имени отправителя не разрешены. По умолчанию став', 'setting_TEXT_BOX(0,', 1),
(80, NULL, 'CONF_1C_PASSWORD', '23aa0bd56bc61e6fd2c244be16123f53', NULL, NULL, NULL, 0),
(81, NULL, 'CONF_1C_ON', '1', NULL, NULL, NULL, 0),
(82, 1, 'CONF_GOOGLECHECKOUT2_ENABLED', '0', 'Включить модуль', '', 'setting_CHECK_BOX(', 0),
(83, 1, 'CONF_GOOGLECHECKOUT2_SANDBOX', '', 'Режим Sandbox', '', 'setting_CHECK_BOX(', 0),
(84, 1, 'CONF_GOOGLECHECKOUT2_CALCULATESHIPTAX', '1', 'Включить расчет стоимости доставки и налога', 'Гугл отправляет запрос на расчет стоимости в ваш интернет-магазин, и в течение 3 секунд этот запрос должен быть обработан. Если в вашем магазине используется модули доставки, которые требует более 3-х секунд на расчет стоимости, не включайте эту опцию.', 'setting_CHECK_BOX(', 0),
(85, 1, 'CONF_GOOGLECHECKOUT2_SENDORDERNOTIFYCATION', '0', 'Отправлять уведомление о заказе', 'Гугл отправляет покупателю уведомление о заказе. Включите эту опцию, что уведомление также отправлялось и из вашего интернет-магазина (таким образом покупатель получит два уведомления).', 'setting_CHECK_BOX(', 0),
(86, 1, 'CONF_GOOGLECHECKOUT2_MERCHANTID', '', 'Merchant ID', 'Вы можете получить эту информацию в вашем аккаунте Гугл в разделе "Settings" -> "Integration"', 'setting_TEXT_BOX(0,', 0),
(87, 1, 'CONF_GOOGLECHECKOUT2_MERCHANTKEY', '', 'Merchant key', 'Вы можете получить эту информацию в вашем аккаунте Гугл в разделе "Settings" -> "Integration"', 'setting_TEXT_BOX(0,', 0),
(88, 1, 'CONF_GOOGLECHECKOUT2_TRANSCURR', '', 'Валюта транзакций', 'Стоимость заказа будет переконвертирована в указанную валюту, и данные будут отправлены в Гугл. Сейчас поддерживается только валюта USD.', 'setting_CURRENCY_SELECT(', 0),
(89, 1, 'CONF_GOOGLECHECKOUT2_CHARGEORDER', '', 'Автоматически изменять статус оплаченных заказов', 'Когда вы выполняете действия с заказов в вашем аккаунте в Гугл, статус заказа в вашем интернет-магазине также будет изменяться.', 'setting_CHECK_BOX(', 0),
(90, 1, 'CONF_GOOGLECHECKOUT2_CHARGEDORDERSTATUS', '-1', 'Статус заказа после оплаты', '', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 0),
(91, 1, 'CONF_GOOGLECHECKOUT2_SHIPPEDORDERSTATUS', '-1', 'Статус доставленных заказов', '', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 0),
(92, 1, 'CONF_PPEXPRESSCHECKOUT_ENABLED', '0', 'Включить модуль', 'Если настройка выключена, покупателю не будет предложено оплатить заказ через PayPal на странице корзины покупок', 'setting_CHECK_BOX(', 1),
(93, 1, 'CONF_PPEXPRESSCHECKOUT_USERNAME', '', 'API Username', 'Введите API Username, которое было сгенерировано для Вас при подписке на PayPal Payments Pro', 'setting_TEXT_BOX(0,', 1),
(94, 1, 'CONF_PPEXPRESSCHECKOUT_PASSWORD', '', 'Пароль', 'Введите пароль, который Вы указывали при подписке на PayPal Payments Pro', 'setting_TEXT_BOX(0,', 1),
(95, 1, 'CONF_PPEXPRESSCHECKOUT_CERTPATH', '', 'Сертификат PayPal', 'В аккаунте на PayPal скачайте файл-сертификат (API certificate) и выберите этот файл в этой форме', 'setting_SINGLE_FILE(DIR_TEMP,', 1),
(96, 1, 'CONF_PPEXPRESSCHECKOUT_MODE', 'Sandbox', 'Режим работы', '', 'setting_RADIOGROUP(PPEXPRESSCHECKOUT_TXT_TEST.":Sandbox,".PPEXPRESSCHECKOUT_TXT_LIVE.":Live",', 1),
(97, 1, 'CONF_PPEXPRESSCHECKOUT_PAYMENTACTION', 'Sale', 'Способ авторизации платежа', 'Sale для автоматического списания полной суммы заказа со счета клиента; Authorization и Order - только авторизация карты, уточнение суммы к списанию и само списание производятся вручную в Вашем аккаунте на PayPal', 'setting_RADIOGROUP("Sale:Sale,Order:Order,Authorization:Authorization",', 1),
(98, 1, 'CONF_PPEXPRESSCHECKOUT_TRANSCURRENCY', '', 'Валюта транзакций', 'Вы можете выбрать валюту, в которой будет пересчитываться сумма заказа до отправки данных на сервер PayPal.', 'PPExpressCheckout::_settingCurrencySelect(', 1),
(99, 1, 'CONF_PPEXPRESSCHECKOUT_ORDERSTATUS', '-1', 'Статус заказа после удачного оформления', 'Вы можете выбрать статус заказа, который будет присваиваться всем заказам, оплата по которым была успешно авторизована. Выберите "по умолчанию", если Вы хотите, чтобы заказы приобретали статус новых заказов, который Вы можете настроить в разделе администр', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(100, 1, 'CONF_PAYMENTMODULE_VKONTAKTE_HELLO', '', 'Описание', 'Опциональный HTML-код, которой будет выводиться на витрине (главной странице) магазина как приложения для соцсети', 'setting_TEXT_AREA(', 1),
(101, NULL, 'CONF_VKONTAKTE_ENABLED', '0', NULL, NULL, NULL, 0),
(102, 1, 'CONF_FACEBOOK_ENABLED', '0', '', '', '', 0),
(103, 1, 'CONF_FACEBOOK_LIKE_URL', '', 'FACEBOOK_CFG_LIKE_URL_TTL', 'FACEBOOK_CFG_LIKE_URL_DSCR', 'setting_TEXT_BOX(0,', 1),
(104, 1, 'CONF_FACEBOOK_HELLO', '', 'FACEBOOK_CFG_HELLO_TTL', 'FACEBOOK_CFG_HELLO_DSCR', 'setting_TEXT_AREA(', 2),
(105, NULL, 'CONF_1C_TIME_LASTEXPORT', '2012-07-02 13:34:22', NULL, NULL, NULL, 0),
(106, 1, 'CONF_PAYMENTMODULE_2CHECKOUT_ID_12', '', 'Ваш ID', 'Введите свой идентификатор в системе 2checkout', 'setting_TEXT_BOX(0,', 1),
(107, 1, 'CONF_PAYMENTMODULE_2CHECKOUT_SECRET_12', '', 'Secret word', 'Используется для шифрования данных, передаваемых из интернет-магазина в платежную систему', 'setting_TEXT_BOX(0,', 1),
(108, 1, 'CONF_PAYMENTMODULE_2CO_USD_CURRENCY_12', '0', 'Доллары США', 'Сумма заказа передается в 2checkout в долларах США. Выберите из списка валюту вашего интернет-магазина, которая соответствует долларам США — это необходимо для правильного пересчета стоимости заказа. Если валюта не выбрана, пересчет выполняться не будет.', 'setting_CURRENCY_SELECT(', 1),
(109, 1, 'CONF_PAYMENTMODULE_2CO_DEMO_12', '', 'Демо-режим', '', 'setting_CHECK_BOX(', 1),
(110, 1, 'CONF_PAYMENTMODULE_ASSIST_MERCHANT_ID_12', '', 'Merchant_ID', 'Ваш ID в системе Assist', 'setting_TEXT_BOX(0,', 1),
(111, 1, 'CONF_PAYMENTMODULE_ASSIST_AUTHORIZATION_MODE_12', '0', 'Режим предварительной авторизации', 'Включите эту настройку, если Вы хотите, чтобы Ваш оплата по картам производилась в режиме предварительной авторизации; чтобы работать в нормальном режиме, выключите настройку', 'setting_CHECK_BOX(', 2),
(112, 1, 'CONF_PAYMENTMODULE_ASSIST_LANG_12', 'RU', 'Язык выдачи результатов', 'Выберите язык интерфейса на сервере Assist, который увидит покупатель при оплате', 'setting_SELECT_BOX(CAssist::_getLanguages(),', 3),
(113, 1, 'CONF_PAYMENTMODULE_ASSIST_TEST_MODE_12', '0', 'Использовать тестовый режим', 'Включите эту настройку, если Вы хотите, чтобы оплата проводилась в тестовом режиме', 'setting_CHECK_BOX(', 3),
(114, 1, 'CONF_PAYMENTMODULE_ASSIST_VERSION_12', 'old', 'Версия подключения к платежной системе', 'Выберите версию подключения', 'setting_SELECT_BOX(CAssist::_getVersions(),', 3),
(115, 1, 'CONF_PAYMENTMODULE_ASSIST_GATE_12', '', 'Домен', 'Введите число из домена подключения (https://payments<u>123</u>.paysecure.ru).<br>Используется в новом протоколе подключения.', 'setting_TEXT_BOX(0,', 1),
(116, 1, 'CONF_PAYMENTMODULE_AUTHNETSIM_LOGIN_12', '', 'Authorize.Net ID', 'Введите ваш идентификатор в системе Authorize.Net', 'setting_TEXT_BOX(0,', 1),
(117, 1, 'CONF_PAYMENTMODULE_AUTHNETSIM_TRAN_KEY_12', '', 'Transaction Key', 'Введите transaction key, который вы можете получить в интерфейсе Authorize.Net', 'setting_TEXT_BOX(0,', 1),
(118, 1, 'CONF_PAYMENTMODULE_AUTHNETSIM_TESTMODE_12', '', 'Тестовый режим', '', 'setting_CHECK_BOX(', 1),
(119, 1, 'CONF_PAYMENTMODULECASH_CURRENCY_12', '', 'Валюта', '', 'setting_CURRENCY_SELECT(', 1),
(120, 1, 'CONF_CCAVENUE_MERCHANT_ID_12', '', 'ID магазина', '', 'setting_TEXT_BOX(0,', 1),
(121, 1, 'CONF_CCAVENUE_WORKING_KEY_12', '', 'Ключ', '', 'setting_TEXT_BOX(0,', 1),
(122, 1, 'CONF_CCAVENUE_INR_CURRENCY_12', '', 'Валюта INR', '', 'setting_CURRENCY_SELECT(', 1),
(123, 1, 'CONF_CHRONOPAY_PRODUCT_ID_12', '', 'Product ID', 'Эта информация может быть получена в Вашем аккаунте Chronopay.', 'setting_TEXT_BOX(0,', 1),
(124, 1, 'CONF_CHRONOPAY_CURCODE_12', '', 'Доллары США', 'Сумма заказа, передаваемая в Chronopay, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет пересчитываться', 'setting_CURRENCY_SELECT(', 1),
(125, 1, 'CONF_CHRONOPAY_LANG_12', 'En', 'Язык интерфейса', 'Выберите язык интерфейса на сервере Chronopay, который увидит покупатель при оплате', 'setting_SELECT_BOX(Chronopay::_getLanguages(),', 1),
(126, 1, 'CONF_CHRONOPAY_SHARED_SECRET_12', '', 'Shared Secret', 'Отправлен по e-mail из ChronoPay', 'setting_TEXT_BOX(0,', 1),
(127, 1, 'CONF_CHRONOPAY_ORDERSTATUS_12', '-1', 'Статус заказа после удачного оформления', 'Вы можете выбрать статус заказа, который будет присваиваться всем заказам, оплата по которым была успешно авторизована. Выберите "по умолчанию", если Вы хотите, чтобы заказы приобретали статус новых заказов, который Вы можете настроить в разделе администр', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(128, 1, 'CONF_EPDQ_HOST_12', 'secure2.mde.epdq.co.uk', 'Хост', 'Введите имя хоста ePDQ, на который мы будем отправлять информацию о заказе (это информацию Вы должны получить от ePDQ).<br />Не вводите префикс https:// и путь к файлу.', 'setting_TEXT_BOX(0,', 0),
(129, 1, 'CONF_EPDQ_CLIENT_ID_12', '', 'Client ID', 'Ваш ePDQ Client ID', 'setting_TEXT_BOX(0,', 0),
(130, 1, 'CONF_EPDQ_PASSPHRASE_12', '', 'Pass-Phrase', 'Pass-Phrase устанавливается в ePDQ Configuration Page  (https://secure2.mde.epdq.co.uk/cgi-bin/CcxBarclaysEpdqAdminTool.e). Обратите внимание, что Pass-Phrase отличается от Вашего пароля ePDQ аккаунта!', 'setting_TEXT_BOX(0,', 0),
(131, 1, 'CONF_EPDQ_CHARGETYPE_12', 'Auth', 'Авторизация оплаты по карте', 'Auth - деньги автоматически зачисляются на Ваш счет. PreAuth - деньги на счете клиента резервируются, после чего Вы вручную можете определить, продолжать списание со счета клиента или нет (например, после проверки платежа).', 'setting_SELECT_BOX(ePDQ::_getChargeTypeOptions(),', 0),
(132, 1, 'CONF_EPDQ_TRANSCURRENCY_12', '', 'Валюта транзакций', 'Укажите валюту, в которую должна переводиться сумма заказа перед отправкой на сервер ePDQ.', 'setting_CURRENCY_SELECT(', 0),
(133, 1, 'CONF_EPDQ_TRANSCURRENCYCODE_12', '826', 'Цифровой ISO-код валюты, выбранной выше', 'Посмотрите полный <a href=http://www.iso.org/iso/en/prods-services/popstds/currencycodeslist.html target=_blank>список ISO-кодов валют</a>. Обратитесь в ePDQ для того, чтобы узнать список поддерживаемых валют.', 'setting_TEXT_BOX(0,', 0),
(134, 1, 'CONF_ESELECTPLUS_TESTMODE_12', '', 'Использовать тестовый режим', '', 'setting_CHECK_BOX(', 0),
(135, 1, 'CONF_ESELECTPLUS_PS_STORE_ID_12', '', 'Hosted Paypage ID', 'Provided by Moneris Solutions – Hosted Paypage Configuration Tool. Identifies the configuration for the Hosted Paypage.', 'setting_TEXT_BOX(0,', 0),
(136, 1, 'CONF_ESELECTPLUS_HPP_KEY_12', '', 'Hosted Paypage Key', 'Provided by Moneris Solutions – Hosted Paypage Configuration Tool. This is a security key that corresponds to the ps_store_id. ', 'setting_TEXT_BOX(0,', 0),
(137, 1, 'CONF_ESELECTPLUS_USD_CURRENCY_12', '', 'выберите USD', 'Order amount transferred to eSelect plus web site is denominated in USD. Specify currency type in your shopping cart which is assumed as USD (order amount will be calculated according to USD exchange rate; if not specified exchange rate will be assumed as', 'setting_CURRENCY_SELECT(', 0),
(138, 1, 'CONF_GSPAY_SITE_ID_12', '', 'Site ID', 'Идентификатор в системе GSPay', 'setting_TEXT_BOX(0,', 0),
(139, 1, 'CONF_GSPAY_TRANS_CURRENCY_12', '', 'Доллары США', 'Сумма заказа, передаваемая на сервер платежной системы, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет', 'setting_CURRENCY_SELECT(', 0),
(140, 1, 'CONF_PMNT_HSBC_MODE_12', 'T', 'Режим работы модуля', '', 'setting_RADIOGROUP(HSBC_TXT_PMODE.":P,".HSBC_TXT_TMODE.":T",', 1),
(141, 1, 'CONF_PMNT_HSBC_STOREFRONTID_12', '', 'Storefront ID of your CPI service (Client Alias)', 'Эту информацию отправляется Вам HSBC по электронной почте. Пример: UK12345678CUR', 'setting_TEXT_BOX(0,', 1),
(142, 1, 'CONF_PMNT_HSBC_USERID_12', '', 'User ID', 'Эту информацию отправляет Вам HSBC по электронной почте', 'setting_TEXT_BOX(0,', 1),
(143, 1, 'CONF_PMNT_HSBC_SHAREDSECRET_12', '', 'Shared Secret', 'Эту информацию отправляет Вам HSBC по электронной почте', 'setting_TEXT_BOX(0,', 1),
(144, 1, 'CONF_PMNT_HSBC_TRANTYPE_12', 'Auth', 'Тип транзакции', 'Auth - сумма резервируется на счете клиента, но не переводится на Ваш счет автоматически; Sale - сумма автоматически переводится на Ваш счет. Для получения более подробной информации обратитесь в Innovative Gateway.', 'setting_RADIOGROUP(HSBC_TXT_TRANTYPE_AUTH.":Auth,".HSBC_TXT_TRANTYPE_CAPTURE.":Capture",', 1),
(145, 1, 'CONF_PMNT_HSBC_TRANSCURR_12', '', 'Валюта транзакций', 'Сумма заказа будет переведена в выбранную валюту по курсу Вашего магазина, после чего данные будут переданы на сервер платежной системы.<br /><b>В настоящее время HSBC принимает только значения в GBP!</b>', 'setting_CURRENCY_SELECT(', 1),
(146, 1, 'CONF_PMNT_HSBC_CURCODE_12', '826', 'Цифровой ISO-код валюты, выбранной выше', 'В настоящее время HSBC принимает только значения в GBP. Введите 826 в этом поле (это ISO-код фунтов стерлинга).', 'setting_TEXT_BOX(0,', 1),
(147, 1, 'CONF_IDEALBASIC_TEST_12', '1', 'Тестовый режим', '', 'setting_CHECK_BOX(', 0),
(148, 1, 'CONF_IDEALBASIC_SECRET_KEY_12', '', 'Секретный ключ', 'Введите секретный ключ как в вашем аккаунте iDEAL. Учтите, что ключи различаются для тестового и рабочего режимов оплаты', 'setting_TEXT_BOX(0,', 0),
(149, 1, 'CONF_IDEALBASIC_MERCHANT_ID_12', '', 'Merchant ID', 'You iDEAL merchant ID', 'setting_TEXT_BOX(0,', 0),
(150, 1, 'CONF_IDEALBASIC_EUR_CURRENCY_12', '', 'Выберите евро', 'Order amount transferred to GSPay is denominated in EUR. Specify currency type in your shopping cart which is assumed as EUR (order amount will be calculated according to EUR exchange rate; if not specified exchange rate will be assumed as 1)', 'setting_CURRENCY_SELECT(', 0),
(151, 1, 'CONF_IDEALBASIC_BANK_12', 'ing', 'Банк', 'Модулем поддерживается интеграция с ING и Rabobank. Выбор банка влияет на URL, на который будут отправлены данные о заказе для совершения платежа.', 'setting_SELECT_BOX(iDEAL_Basic::listBank(),', 0),
(152, 1, 'CONF_INTERKASSA_SHOP_ID_12', '', 'Идентификатор магазина', 'Идентификатор магазина, зарегистрированного в системе «INTERKASSA», на который был совершен платеж\n<p>Пример: <em>64C18529-4B94-0B5D-7405-F2752F2B716C</em></p>', 'setting_TEXT_BOX(0,', 1),
(153, 1, 'CONF_INTERKASSA_SECRET_KEY_12', '', 'Секретный ключ', 'Секретный ключ — это строка символов, добавляемая к реквизитам платежа, которые отправляются продавцу вместе с оповещением о новом платеже.\n<br />Используется для повышения надежности идентификации оповещения и не должна быть известна третьим лицам', 'setting_TEXT_BOX(0,', 1),
(154, 1, 'CONF_INTERKASSA_PAYSYSTEM_ALIAS_12', '', 'Способ оплаты', 'Это поле позволяет заранее определить способ оплаты для покупателя. Для того чтобы покупатель мог сам выбрать способ оплаты, оставьте это поле <strong>пустым</strong>.', 'setting_SELECT_BOX(InterKassa::_getPaysystemAlias(),', 1),
(155, 1, 'CONF_INTERKASSA_SHOPCURRENCY_12', '', 'Валюта', 'Валюта, в которой магазин передает сумму платежа платежному шлюзу «Интеркассы»', 'setting_CURRENCY_SELECT(', 1),
(156, 1, 'CONF_PAYMENTMODULE_JCCRL_URL_12', 'https://test.jccsecure.com/SENTRY/PaymentGateway/Application/RedirectLink.aspx', 'URL отправки транзакции', 'Укажите адрес, по которому будет отправлена информация о заказе в JCC', 'setting_TEXT_BOX(0,', 1),
(157, 1, 'CONF_PAYMENTMODULE_JCCRL_MERID_12', '', 'Merchant ID', '', 'setting_TEXT_BOX(0,', 1),
(158, 1, 'CONF_PAYMENTMODULE_JCCRL_MERPWD_12', '', 'Merchant Checkout Password', 'Ваш пароль', 'setting_TEXT_BOX(0,', 1),
(159, 1, 'CONF_PAYMENTMODULE_JCCRL_ACQID_12', '', 'Acquirer ID', 'Введите значение acquirer ID, предоставленное JCC', 'setting_TEXT_BOX(0,', 1),
(160, 1, 'CONF_PAYMENTMODULE_JCCRL_CAPTURE_12', '', 'Авторизация оплаты по карте', 'Автомат - деньги автоматически зачисляются на Ваш счет. Ручная - деньги на счете клиента резервируются, после чего Вы вручную можете определить, продолжать списание со счета клиента или нет (например, после проверки платежа).', 'setting_RADIOGROUP(JCCRedirectLink::_getCaptureOptions(),', 1),
(161, 1, 'CONF_PAYMENTMODULE_JCCRL_CUR_SHOP_12', '', 'Валюта транзакций', 'Укажите валюту, в которую должна переводиться сумма заказа перед отправкой на сервер JCC. Рекомендуется использовать Кипрские Фунты.', 'setting_CURRENCY_SELECT(', 1),
(162, 1, 'CONF_PAYMENTMODULE_JCCRL_CUR_ISONUM_12', '', 'Цифровой ISO-код валюты, выбранной выше', 'Посмотрите полный <a href=http://www.iso.org/iso/en/prods-services/popstds/currencycodeslist.html target=_blank>список ISO-кодов валют</a>. Введите 196, если Вы используете кипрские фунты. Обратитесь в JCC для того, чтобы узнать список поддерживаемых валю', 'setting_TEXT_BOX(0,', 1),
(163, 1, 'CONF_LIQPAY_MERCHANT_ID_12', '', 'ID продавца', '', 'setting_TEXT_BOX(0,', 1),
(164, 1, 'CONF_LIQPAY_SECRET_KEY_12', '', 'Подпись', 'Используется значение «Подпись для остальных операций»', 'setting_TEXT_BOX(0,', 1),
(165, 1, 'CONF_LIQPAY_TRANSACTION_CURRENCY_12', '', 'Валюта заказа', 'Валюта, в которой будет проводиться транзакция в процессинговом центре.', 'setting_SELECT_BOX(LiqPay::_getTransactionCurrencies(),', 1),
(166, 1, 'CONF_LIQPAY_SHOP_CURRENCY_12', '', 'Валюта интернет-магазина', 'Валюта, соответствующая валюте заказа.', 'setting_CURRENCY_SELECT(', 1),
(167, 1, 'CONF_LIQPAY_GATEWAY_12', '', 'Способ оплаты', '', 'setting_SELECT_BOX(LiqPay::_getTransactionGateway(),', 1),
(168, 1, 'CONF_LIQPAY_ORDERSTATUS_12', '-1', 'Автоматическая смена статуса заказа', 'Все заказы, оплаченные на сайте LiqPay, будут автоматически переведены в выбранный статус (после получения подтверждения от сервера LiqPay).', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(169, 1, 'CONF_LIQPAY_ORDER_PREFIX_12', '', 'Префикс счета', 'Используйте цифры и латинские буквы для ввода префикса номера счета в системе LiqPay', 'setting_TEXT_BOX(0,', 1),
(170, 1, 'CONF_LIQPAY_BUGFIX_12', '', 'Добавлять случайное число к номеру счета', 'Позволяет избежать ошибку нарушения уникальности Order ID платежной системы LiqPay при повторных оплатах счета', 'setting_CHECK_BOX(', 1),
(171, 1, 'CONF_LIQPAY_CUSTOMER_PHONE_12', '', 'Телефон покупателя', 'Выберите поле в вашей форме регистрации, соответствующее телефонному номеру покупателя', 'setting_SELECT_BOX(LiqPay::_getCustomerFields(),', 1),
(172, 1, 'CONF_COURIER_COUNTRY_11', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_COUNTRY_SELECT(true,', 20),
(173, 1, 'CONF_COURIER_ZONE_11', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_ZONE_SELECT(CONF_COURIER_COUNTRY_11,', 30),
(174, 1, 'CONF_COURIER_RATES_11', '', 'Стоимость доставки', 'В форме справа определите пары [сумма_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, сумма которых ниже чем "сумма_заказа". Для заказов, сумма которых выше максимальной указанной, стоимость доставки считается нулевой', 'CourierShippingModule::_settingRates(11,', 40),
(175, 1, 'CONF_COURIER2_COUNTRY_11', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_COUNTRY_SELECT(true,', 20),
(176, 1, 'CONF_COURIER2_ZONE_11', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_ZONE_SELECT(CONF_COURIER2_COUNTRY_11,', 30),
(177, 1, 'CONF_COURIER2_RATES_11', '', 'Стоимость доставки', 'В форме справа определите пары [вес_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, вес которых ниже чем "вес_заказа". Для заказов, вес которых выше максимального указанного, стоимость доставки считается нулевой', 'CourierShippingModule2::_settingRates(11,', 40),
(178, 1, 'CONF_COURIER_COUNTRY_11', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_COUNTRY_SELECT(true,', 20),
(179, 1, 'CONF_COURIER_ZONE_11', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_ZONE_SELECT(CONF_COURIER_COUNTRY_11,', 30),
(180, 1, 'CONF_COURIER_RATES_11', '', 'Стоимость доставки', 'В форме справа определите пары [сумма_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, сумма которых ниже чем "сумма_заказа". Для заказов, сумма которых выше максимальной указанной, стоимость доставки считается нулевой', 'CourierShippingModule::_settingRates(11,', 40),
(181, 1, 'CONF_COURIER2_COUNTRY_11', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_COUNTRY_SELECT(true,', 20),
(182, 1, 'CONF_COURIER2_ZONE_11', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_ZONE_SELECT(CONF_COURIER2_COUNTRY_11,', 30),
(183, 1, 'CONF_COURIER2_RATES_11', '', 'Стоимость доставки', 'В форме справа определите пары [вес_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, вес которых ниже чем "вес_заказа". Для заказов, вес которых выше максимального указанного, стоимость доставки считается нулевой', 'CourierShippingModule2::_settingRates(11,', 40),
(184, 1, 'CONF_COURIER_COUNTRY_9', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_COUNTRY_SELECT(true,', 20);
INSERT INTO `SC_settings` (`settingsID`, `settings_groupID`, `settings_constant_name`, `settings_value`, `settings_title`, `settings_description`, `settings_html_function`, `sort_order`) VALUES
(185, 1, 'CONF_COURIER_ZONE_9', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_ZONE_SELECT(CONF_COURIER_COUNTRY_9,', 30),
(186, 1, 'CONF_COURIER_RATES_9', '', 'Стоимость доставки', 'В форме справа определите пары [сумма_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, сумма которых ниже чем "сумма_заказа". Для заказов, сумма которых выше максимальной указанной, стоимость доставки считается нулевой', 'CourierShippingModule::_settingRates(9,', 40),
(187, 1, 'CONF_COURIER2_COUNTRY_9', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_COUNTRY_SELECT(true,', 20),
(188, 1, 'CONF_COURIER2_ZONE_9', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_ZONE_SELECT(CONF_COURIER2_COUNTRY_9,', 30),
(189, 1, 'CONF_COURIER2_RATES_9', '', 'Стоимость доставки', 'В форме справа определите пары [вес_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, вес которых ниже чем "вес_заказа". Для заказов, вес которых выше максимального указанного, стоимость доставки считается нулевой', 'CourierShippingModule2::_settingRates(9,', 40),
(190, 1, 'CONF_COURIER_COUNTRY_9', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_COUNTRY_SELECT(true,', 20),
(191, 1, 'CONF_COURIER_ZONE_9', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule::setting_ZONE_SELECT(CONF_COURIER_COUNTRY_9,', 30),
(192, 1, 'CONF_COURIER_RATES_9', '', 'Стоимость доставки', 'В форме справа определите пары [сумма_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, сумма которых ниже чем "сумма_заказа". Для заказов, сумма которых выше максимальной указанной, стоимость доставки считается нулевой', 'CourierShippingModule::_settingRates(9,', 40),
(193, 1, 'CONF_COURIER2_COUNTRY_9', '176', 'Страна', 'Выберите страну, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_COUNTRY_SELECT(true,', 20),
(194, 1, 'CONF_COURIER2_ZONE_9', '', 'Область', 'Выберите область, на территории которой возможна доставка курьером и, соответственно, расчет стоимости доставки данным модулем.', 'CourierShippingModule2::setting_ZONE_SELECT(CONF_COURIER2_COUNTRY_9,', 30),
(195, 1, 'CONF_COURIER2_RATES_9', '', 'Стоимость доставки', 'В форме справа определите пары [вес_заказа, стоимость_доставки]. Каждая пара определяет "стоимость_доставки" для заказов, вес которых ниже чем "вес_заказа". Для заказов, вес которых выше максимального указанного, стоимость доставки считается нулевой', 'CourierShippingModule2::_settingRates(9,', 40),
(196, NULL, 'CONF_1C_EXPORT_ORDERS', '1', NULL, NULL, NULL, 0),
(197, NULL, 'CONF_1C_EXPORT_PRODUCTS', '0', NULL, NULL, NULL, 0),
(198, 1, 'CONF_NAB_NSIPS_URL_12', 'http://203.63.249.148/utci_v1.1.5/utci.nsa', 'URL отправки транзакций', 'Укажите адрес, на который будет отправляться информация о заказе покупателя.<br />Данную информацию Вы можете посмотреть в "Welcome Pack"-электронном письме от National Australia Bank', 'setting_TEXT_BOX(0,', 1),
(199, 1, 'CONF_NAB_NSIPS_MERCHID_12', '', 'Merchant ID', 'Уникальный 64-цифровой merchant ID, предоставленный в "Welcome Pack"-письме от National Australia Bank', 'setting_TEXT_BOX(0,', 1),
(200, 1, 'CONF_NAB_NSIPS_CURCODE_12', '', 'Австралийские доллары (AUD)', 'Сумма заказа, передаваемая в NAB, указывается в австралийских долларах (AUD). Выберите валюту из списка, которая представляет собой AUD - это необходимо для корректного пересчета суммы заказа. Если валюта не выбрана, сумма не будет пересчитываться', 'setting_CURRENCY_SELECT(', 1),
(201, 1, 'CONF_POS_MERCHANT_ID_12', '', 'MerchantId', 'Идентификатор, полученный при активации', 'setting_TEXT_BOX(0,', 1),
(202, 1, 'CONF_POS_SECRET_KEY_12', '', 'PrivateSecurityKey', 'Ключ, полученный при активации.', 'setting_TEXT_BOX(0,', 1),
(203, 1, 'CONF_POS_TRANSACTION_CURRENCY_12', '', 'Валюта заказа', 'Валюта, в которой будет проводиться транзакция в процессинговом центре.', 'setting_SELECT_BOX(PayOnlineSystem::_getTransactionCurrencies(),', 1),
(204, 1, 'CONF_POS_SHOP_CURRENCY_12', '', 'Валюта интернет-магазина', 'Валюта, соответствующая валюте заказа.', 'setting_CURRENCY_SELECT(', 1),
(205, 1, 'CONF_POS_GATEWAY_12', '', 'Параметры перехода', 'Переход покупателя с сайта интернет-магазина на платежную страницу PayOnline System может быть выполнен по одному из перечисленных адресов.', 'setting_SELECT_BOX(PayOnlineSystem::_getTransactionGateway(),', 1),
(206, 1, 'CONF_POS_VALID_UNTIL_12', '0', 'Срок «оплатить до»', 'Срок оплаты заказа в часах. Введите <strong>0</strong>, чтобы отменить ограничение.', 'setting_TEXT_BOX(2,', 1),
(207, 1, 'CONF_POS_CUSTOMER_LANG_12', '', 'Язык страницы оплаты', 'Выбор языка платежной страницы', 'setting_SELECT_BOX(PayOnlineSystem::_getLanguages(),', 1),
(208, 1, 'CONF_POS_ORDERSTATUS_12', '-1', 'Автоматическая смена статуса заказа', 'Все заказы, оплаченные на сайте PayOnline System, будут автоматически переведены в выбранный статус (после получения подтверждения от сервера PayOnline System).', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(209, 1, 'CONF_CPAYPALECHECKOUT_USERNAME_12', '', 'API Username', 'Введите API Username, которое было сгенерировано для Вас при подписке на PayPal Payments Pro', 'setting_TEXT_BOX(0,', 1),
(210, 1, 'CONF_CPAYPALECHECKOUT_PASSWORD_12', '', 'Пароль', 'Введите пароль, который Вы указывали при подписке на PayPal Payments Pro', 'setting_TEXT_BOX(0,', 1),
(211, 1, 'CONF_CPAYPALECHECKOUT_CERTPATH_12', '', 'Сертификат PayPal', 'В аккаунте на PayPal скачайте файл-сертификат (API certificate) и выберите этот файл в этой форме', 'setting_SINGLE_FILE(DIR_TEMP,', 1),
(212, 1, 'CONF_CPAYPALECHECKOUT_MODE_12', 'Sandbox', 'Режим работы', '', 'setting_RADIOGROUP(CPAYPALECHECKOUT_TXT_TEST.":Sandbox,".CPAYPALECHECKOUT_TXT_LIVE.":Live",', 1),
(213, 1, 'CONF_CPAYPALECHECKOUT_PAYMENTACTION_12', 'Sale', 'Способ авторизации платежа', 'Sale для автоматического списания полной суммы заказа со счета клиента; Authorization и Order - только авторизация карты, уточнение суммы к списанию и само списание производятся вручную в Вашем аккаунте на PayPal', 'setting_RADIOGROUP("Sale:Sale,Order:Order,Authorization:Authorization",', 1),
(214, 1, 'CONF_CPAYPALECHECKOUT_NOSHIPPING_12', '1', 'Отключить для покупателя возможность выбора адреса доставки на сайте PayPal', '', 'setting_CHECK_BOX(', 1),
(215, 1, 'CONF_CPAYPALECHECKOUT_ORDERSTATUS_12', '-1', 'Статус заказа после удачного оформления', 'Вы можете выбрать статус заказа, который будет присваиваться всем заказам, оплата по которым была успешно авторизована. Выберите "по умолчанию", если Вы хотите, чтобы заказы приобретали статус новых заказов, который Вы можете настроить в разделе администр', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(216, 1, 'CONF_QIWI_LOGIN_12', '', 'Идентификатор (логин)', '', 'setting_TEXT_BOX(0,', 1),
(217, 1, 'CONF_QIWI_PASSWORD_12', '', 'Пароль', '', 'setting_TEXT_BOX(0,', 1),
(218, 1, 'CONF_QIWI_LIFETIME_12', '', 'Время жизни счета', 'Укажите срок оплаты счета в часах', 'setting_TEXT_BOX(2,', 1),
(219, 1, 'CONF_QIWI_CUSTOMER_PHONE_12', '', 'Телефон покупателя', 'Выберите поле вашей формы регистрации, соответствующее телефонному номеру покупателя', 'setting_SELECT_BOX(QiwiSOAP::_getCustomerFields(),', 1),
(220, 1, 'CONF_QIWI_ALARM_12', '', 'Уведомления', 'Параметры отправки уведомлений', 'setting_SELECT_BOX(QiwiSOAP::_getAlarmVariants(),', 1),
(221, 1, 'CONF_QIWI_CURRENCY_12', '3', 'Рубли', 'Выберите соответствующую валюту для правильного пересчета стоимости заказа', 'setting_CURRENCY_SELECT(', 1),
(222, 1, 'CONF_QIWI_SUCCESS_STATUS_12', '', 'Статус оплаченных', 'Выберите статус для успешно оплаченного заказа', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(223, 1, 'CONF_QIWI_CANCEL_STATUS_12', '', 'Статус отмененных', 'Выберите статус для отмененных заказов', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(224, 1, 'CONF_QIWI_TESTMODE_12', '', 'Обрабатывать запросы без пароля', 'Используйте этот режим для обработки запросов, инициированных вручную из личного кабинета QIWI.', 'setting_CHECK_BOX(', 1),
(225, 1, 'CONF_QIWI_PREFIX_12', '', 'Префикс счета', 'Используйте цифры и латинские буквы для ввода префикса номера счета в системе QIWI', 'QiwiSOAP::settings_PREFIX(', 1),
(226, 1, 'CONF_PAYMENT_RBKMONEY_ESHOPID_12', '', 'Номер сайта продавца', 'Номер вашего аккаунта в платежной системе RBK Money, на который будет поступать оплата по заказам.', 'setting_TEXT_BOX(0,', 1),
(227, 1, 'CONF_PAYMENT_RBKMONEY_SECRET_12', '', 'Секретный ключ', 'Ваш секретный ключ в системе RBK Money, известный только вам. Необходим для проверки ответа от платежной системы RUpay.', 'setting_TEXT_BOX(0,', 1),
(228, 1, 'CONF_ROBOXCHANGE_MERCHANTLOGIN_12', '', 'Логин магазина в обменном пункте', 'Информация о вашем аккаунте продавца в платежной системе ROBOXchange', 'setting_TEXT_BOX(0,', 1),
(229, 1, 'CONF_ROBOXCHANGE_MERCHANTPASS1_12', '', 'Пароль №1', 'Вводится в настройках аккаунта на сервере ROBOXchange.', 'setting_TEXT_BOX(0,', 1),
(230, 1, 'CONF_ROBOXCHANGE_MERCHANTPASS2_12', '', 'Пароль №2', 'Вводится в настройках аккаунта на сервере ROBOXchange.', 'setting_TEXT_BOX(0,', 1),
(231, 1, 'CONF_ROBOXCHANGE_TESTMODE_12', '', 'Тестовый режим', '', 'setting_CHECK_BOX(', 1),
(232, 1, 'CONF_ROBOXCHANGE_LANG_12', '', 'Язык интерфейса', 'Выберите язык интерфейса на сервере ROBOXchange, который увидит покупатель при оплате', 'setting_SELECT_BOX(ROBOXchange::_getLanguages(),', 1),
(233, 1, 'CONF_ROBOXCHANGE_ROBOXCURRENCY_12', '', 'Выберите валюту обменного пункта', 'Предлагаемая валюта платежа. Покупатель может изменить ее в процессе оплаты.', 'setting_SELECT_BOX(ROBOXchange::_getRoboxCurrencies(),', 1),
(234, 1, 'CONF_ROBOXCHANGE_SHOPCURRENCY_12', '', 'Выберите валюту магазина', 'Выберите из списка валют вашего интернет-магазина, которой соответствует выбранная вами в настройках аккаунта на сервере ROBOXchange "Валюта Продавца"', 'setting_CURRENCY_SELECT(', 1),
(235, 1, 'CONF_ROBOXCHANGE_ORDERSTATUS_12', '-1', 'Статус заказа после подтверждения оплаты', 'Все оплаченные на сайте ROBOXchange заказы будут автоматически переведены в выбранный статус (по факту получения сообщения от сервера ROBOXchange).', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(236, 1, 'CONF_SECPAY_MERCHANT_12', '', 'Merchant username', 'Имя пользователя в SECPay (обычно это строка из шести букв и двух цифр).<br />Пример: abcdef01', 'setting_TEXT_BOX(0,', 1),
(237, 1, 'CONF_SECPAY_REMOTEPASSWORD_12', '', 'Remote password', 'Пароль SECPay', 'setting_TEXT_BOX(0,', 1),
(238, 1, 'CONF_SECPAY_CURRENCY_12', '', 'Валюта транзакций', 'Сумма заказа будет переведена в выбранную валюту по курсу Вашего магазина, после чего данные будут переданы на сервер платежной системы.', 'setting_CURRENCY_SELECT(', 1),
(239, 1, 'CONF_SETCOMCHECKOUTBTN_MERCHANTID_12', '', 'Merchant Identifier', 'Ваш идентификатор в системе Setcom', 'setting_TEXT_BOX(0,', 0),
(240, 1, 'CONF_SETCOMCHECKOUTBTN_CURRENCY_12', '', 'Валюта транзакции', 'Сумма заказа будет переведена в выбранную валюту по курсу Вашего магазина, после чего данные будут переданы на сервер платежной системы. Допустимые варианты: USD, EUR, GBP, ZAR', 'setting_CURRENCY_SELECT(', 0),
(241, 1, 'CONF_SKIPJACK_URL_12', 'https://developer.skipjackic.com/scripts/evolvcc.dll?Authorize', 'URL', '', 'setting_TEXT_BOX(0,', 1),
(242, 1, 'CONF_SKIPJACK_SERIAL_12', '', 'Serial', '', 'setting_TEXT_BOX(0,', 1),
(243, 1, 'CONF_SKIPJACK_USD_12', '', 'Выберите USD', '', 'setting_CURRENCY_SELECT(', 1),
(244, 1, 'CONF_YANDEXCPP_SHOPID_12', '', 'Shop ID', 'Идентификатор магазина в ЦПП - уникальное значение, присваивается Магазину платежной системой', 'setting_TEXT_BOX(0,', 1),
(245, 1, 'CONF_YANDEXCPP_SCID_12', '', 'scid', 'Номер витрины магазина в ЦПП. Выдается ЦПП.', 'setting_TEXT_BOX(0,', 1),
(246, 1, 'CONF_YANDEXCPP_MODE_12', 'live', 'Режим работы модуля', 'Определяет адрес (URL), куда будут отправлены данные о платеже', 'setting_SELECT_BOX(YandexCPP::_getModes(),', 1),
(247, 1, 'CONF_YANDEXCPP_TRANSCURRENCY_12', '', 'Валюта платежей в Вашем магазине', 'Выберите из списка валют Вашего интернет-магазина валюту, которая соответствует Рублям или Деморублям (валюте системы Яндекс.Деньги). Необходимо для перерасчета стоимости заказа.', 'setting_CURRENCY_SELECT(', 1),
(248, 1, 'CONF_YANDEXCPP_SHOPPASSWORD_12', '', 'Секретный пароль', 'используется при расчете криптографического хэша.', 'setting_TEXT_BOX(0,', 1),
(249, 1, 'CONF_YANDEXCPP_ORDERSTATUS_12', '-1', 'Статус заказа после подтверждения оплаты', 'Все оплаченные на сайте заказы будут автоматически переведены в выбранный статус (по факту получения сообщения от сервера yandexmoney).', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(250, 1, 'CONF_YANDEXCPP_DEV_12', '0', 'Режим отладки', 'Включите этот режим для отладки - все параметры обращения к модулю будут записываться в лог модуля', 'setting_CHECK_BOX(', 2),
(251, 1, 'CONF_PAYMENTMODULE_EGOLD_MERCHANT_ACCOUNT_12', '', 'E-Gold account ID', 'Введите ваш идентификатор в системе E-Gold', 'setting_TEXT_BOX(0,', 1),
(252, 1, 'CONF_PAYMENTMODULE_EGOLD_USD_CURRENCY_12', '0', 'Доллары США', 'Сумма заказа, передаваемая в E-Gold, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет пересчитываться', 'setting_CURRENCY_SELECT(', 1),
(253, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_CURRENCY_12', '0', 'Валюта - рубли', 'Счета на оплату выписываются в рублях. Выберите из списка валют магазина рубль. При формировании счета будет использоваться значение курса рубля. Если валюта не определена, будет использован курс выбранной пользователем валюты', 'setting_CURRENCY_SELECT(', 1),
(254, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_NDS_12', '0', 'Ставка НДС (%)', 'Укажите ставку НДС в процентах. Если Вы работаете по упрощенной системе налогообложения, укажите 0', 'setting_TEXT_BOX(0,', 1),
(255, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_NDS_IS_INCLUDED_IN_PRICE_12', '1', 'НДС уже включен в стоимость товаров', 'Включите эту опцию, если налог уже включен в стоимость товаров в Вашем магазине. Если же НДС не включен в стоимость и должен прибавляться дополнительно, выключите эту опцию', 'setting_CHECK_BOX(', 1),
(256, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_EMAIL_HTML_INVOICE_12', '1', 'Отправлять покупателю HTML-счет', 'Включите эту опцию, если хотите, чтобы покупателю автоматически отправлялся счет в HTML-формате. Если опция выключена, то покупателю будет отправлена ссылка на счет на сайте магазина', 'setting_CHECK_BOX(', 1),
(257, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_COMPANYNAME_12', '', 'Название компании', 'Укажите название организации, от имени которой выписывается счет', 'setting_TEXT_BOX(0,', 1),
(258, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_COMPANYADDRESS_12', '', 'Адрес компании', 'Укажите адрес организации, от имени которой выписывается счет', 'setting_TEXT_BOX(0,', 1),
(259, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_COMPANYPHONE_12', '', 'Телефон компании', 'Укажите телефон организации', 'setting_TEXT_BOX(0,', 1),
(260, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_BANK_ACCOUNT_NUMBER_12', '', 'Расчетный счет', 'Номер расчетного счета организации', 'setting_TEXT_BOX(0,', 1),
(261, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_INN_12', '', 'ИНН', 'ИНН организации', 'setting_TEXT_BOX(0,', 1),
(262, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_KPP_12', '', 'КПП', '', 'setting_TEXT_BOX(0,', 1),
(263, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_BANKNAME_12', '', 'Наименование банка', '', 'setting_TEXT_BOX(0,', 1),
(264, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_BANK_KOR_NUMBER_12', '', 'Корреспондентский счет', '', 'setting_TEXT_BOX(0,', 1),
(265, 1, 'CONF_PAYMENTMODULE_INVOICE_JUR_BIK_12', '', 'БИК', '', 'setting_TEXT_BOX(0,', 1),
(266, 1, 'CONF_PAYMENTMODULE_INVOICE_CUST_COMPANY_12', '', 'Компания покупателя', 'Поле "Компания" в форме регистрации. Если не выбрано, покупатель должен будет ввести название компании на последнем шаге оформления заказа.', 'setting_SELECT_BOX(CInvoiceJur::_getCustomerFields(),', 1),
(267, 1, 'CONF_PAYMENTMODULE_INVOICE_CUST_INN_12', '', 'ИНН покупателя', 'Поле "ИНН" в форме регистрации. Если не выбрано, покупатель должен будет ввести ИНН на последнем шаге оформления заказа.', 'setting_SELECT_BOX(CInvoiceJur::_getCustomerFields(),', 1),
(268, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_CURRENCY_12', '0', 'Валюта квитанции', 'Выберите валюту, в которой будет указываться сумма в квитанции. Если тип вылюты не определен, то квитанция будет выписываться в той валюте, которая выбрана пользователем при оформлении заказа', 'setting_CURRENCY_SELECT(', 1),
(269, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_DESCRIPTION_12', 'Оплата заказа №[orderID]', 'Описание покупки', 'Укажите описание платежей. Вы можете использовать строку <i>[orderID]</i> - она автоматически будет заменена на номер заказа', 'setting_TEXT_BOX(0,', 1),
(270, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_EMAIL_HTML_INVOICE_12', '1', 'Отправлять покупателю HTML-квитанцию', 'Включите эту опцию, если хотите, чтобы покупателю автоматически отправлялась квитанция в HTML-формате. Если опция выключена, то покупателю будет отправлена ссылка на квитанцию на сайте магазина', 'setting_CHECK_BOX(', 1),
(271, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_COMPANYNAME_12', '', 'Название компании', 'Укажите название организации, от имени которой выписывается квитанция', 'setting_TEXT_BOX(0,', 1),
(272, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_BANK_ACCOUNT_NUMBER_12', '', 'Расчетный счет', 'Номер расчетного счета организации', 'setting_TEXT_BOX(0,', 1),
(273, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_INN_12', '', 'ИНН', 'ИНН организации', 'setting_TEXT_BOX(0,', 1),
(274, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_KPP_12', '', 'КПП', '', 'setting_TEXT_BOX(0,', 1),
(275, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_BANKNAME_12', '', 'Наименование банка', '', 'setting_TEXT_BOX(0,', 1),
(276, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_BANK_KOR_NUMBER_12', '', 'Корреспондентский счет', '', 'setting_TEXT_BOX(0,', 1),
(277, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_BIK_12', '', 'БИК', '', 'setting_TEXT_BOX(0,', 1),
(278, 1, 'CONF_PAYMENTMODULE_INVOICE_PHYS_SECOND_NAME_12', '', 'Отчество', 'Выберите из списка поле в форме регистрации отвечающее за отчество покупателя — одно из полей, которое можно добавить в разделе Настройки &raquo; Форма регистрации и оформления заказов', 'setting_SELECT_BOX(CInvoicePhys::_getCustomerFields(),', 1),
(279, 1, 'CONF_PAYMENTMODULE_MALSE_USERID_12', '', 'User ID', 'Введите ваш идентификатор в системе Mals e-commerce', 'setting_TEXT_BOX(0,', 1),
(280, 1, 'CONF_PAYMENTMODULE_MALSE_CURR_TYPE_12', '0', 'Доллары США', 'Сумма заказа, передаваемая в mals-e, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет пересчитываться', 'setting_CURRENCY_SELECT(', 1),
(281, 1, 'CONF_PAYMENTMODULE_MONEYBOOKERS_MERCHANT_EMAIL_12', '', 'Moneybookers email', 'Введите ваш идентификатор (email) в системе Moneybookers', 'setting_TEXT_BOX(0,', 1),
(282, 1, 'CONF_PAYMENTMODULE_NOCHEX_MERCHANT_EMAIL_12', '', 'NOCHEX email', 'Введите ваш идентификатор (email) в NOCHEX', 'setting_TEXT_BOX(0,', 1),
(283, 1, 'CONF_PAYMENTMODULE_NOCHEX_GBP_EXCHANGE_RATE_12', '1', 'Курс фунтов стерлингов по отношению к основной валюте.`', 'Введите сколько фунтов стерлингов составляют 1 единицу основной валюты в вашем магазине (например, введите 2.13, если 2.13 фунта = 1 ед. основной валюты)', 'setting_TEXT_BOX(0,', 1),
(284, 1, 'CONF_PAYMENTMODULE_PAYPAL_MERCHANT_EMAIL_12', '', 'PayPal email', 'Введите ваш email в системе PayPal', 'setting_TEXT_BOX(0,', 1),
(285, 1, 'CONF_PAYMENTMODULE_PAYPAL_CHECKOUT_MODE_12', 'Live', 'Режим работы', '', 'setting_RADIOGROUP(CPAYPAL_TXT_TEST.":Sandbox,".CPAYPAL_TXT_LIVE.":Live",', 1),
(286, 1, 'CONF_PAYMENTMODULE_PAYPAL_TRANSCURR_12', '', 'Доллары США', 'Сумма заказа, передаваемая в PayPal, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет пересчитываться.', 'setting_CURRENCY_SELECT(', 0),
(287, 1, 'CONF_PAYMENTMODULE_PROTX_VENDORNAME_12', '', 'Логин', 'Введите ваш идентификатор в системе Sage Pay', 'setting_TEXT_BOX(0,', 1),
(288, 1, 'CONF_PAYMENTMODULE_PROTX_ENCPASSWORD_12', '', 'Encryption password', 'Введите Sage Pay encryption password', 'setting_TEXT_BOX(0,', 1),
(289, 1, 'CONF_PAYMENTMODULE_PROTX_MODE_12', '1', 'Режим работы', '', 'setting_SELECT_BOX(CProtx::getModeOptions(),', 1),
(290, 1, 'CONF_PAYMENT_RUPAYNEW_ESHOPID_12', '', 'Номер сайта продавца', 'Номер вашего аккаунта в платежной системе RUpay, на который будет поступать оплата по заказам.', 'setting_TEXT_BOX(0,', 1),
(291, 1, 'CONF_PAYMENT_RUPAYNEW_SECRET_12', '', 'Секретный ключ', 'Ваш секретный ключ в системе RUpay, известный только вам. Необходим для проверки ответа от платежной системы RUpay.', 'setting_TEXT_BOX(0,', 1),
(292, 1, 'CONF_PAYMENTMODULE_RUPAY_MERCHANT_EMAIL_12', '', 'Email (идентификатор в системе RUpay)', '', 'setting_TEXT_BOX(0,', 2),
(293, 1, 'CONF_PAYMENTMODULE_RUPAY_PAYMENTS_DESC_12', 'Оплата заказа №[orderID]', 'Назначение платежа', 'Укажите описание платежей. Вы можете использовать строку [orderID] - она автоматически будет заменена на номер заказа', 'setting_TEXT_BOX(0,', 2),
(294, 1, 'CONF_PAYMENTMODULE_RUPAY_USD_CURRENCY_12', '3', 'Валюта \\"Доллары США\\" в Вашем магазине', 'Сумма к оплате, отправляемая на сервер RUpay, указывается в долларах США (USD). Выберите из списка доллары США в Вашем магазине - это необходимо для верного пересчета суммы (по курсу доллара). Если тип вылюты не определен, курс считается равным 1', 'setting_CURRENCY_SELECT(', 3),
(295, 1, 'CONF_CRUPAYPAYMENTREQUEST_PAY_ID_12', '', 'Номер вашего сайта (магазина) в системе RUpay', '', 'setting_TEXT_BOX(0,', 1),
(296, 1, 'CONF_CRUPAYPAYMENTREQUEST_NAME_SERVICE_12', 'Оплата заказа №[orderID]', 'Назначение платежа', 'Укажите описание платежей. Вы можете использовать строку [orderID] - она автоматически будет заменена на номер заказа', 'setting_TEXT_BOX(0,', 1),
(297, 1, 'CONF_CRUPAYPAYMENTREQUEST_USD_CURRENCY_12', '3', 'Валюта "Доллары США" в Вашем магазине', 'Сумма к оплате, отправляемая на сервер RUpay, указывается в долларах США (USD). Выберите из списка доллары США в Вашем магазине - это необходимо для верного пересчета суммы (по курсу доллара). Если тип вылюты не определен, курс считается равным 1', 'setting_CURRENCY_SELECT(', 3),
(298, 1, 'CONF_PAYMENTMODULE_VERISIGNLINK_LOGIN_12', '', 'VeriSign Login', 'Введите ваш идентификатор в системе VeriSign', 'setting_TEXT_BOX(0,', 1),
(299, 1, 'CONF_PAYMENTMODULE_VERISIGNLINK_PARTNER_12', '', 'VeriSign partner', 'Введите идентификатор вашего партнера VeriSign (эта информация предоставляется реселлером VeriSign, через которого вы подключены). Если вы подключлись непосредственно в VeriSign, введите <b>VeriSign</b>', 'setting_TEXT_BOX(0,', 1),
(300, 1, 'CONF_PAYMENTMODULE_VERISIGNLINK_TRANSTYPE_12', 'S', 'Режим работы', '', 'setting_SELECT_BOX(CVeriSignLink::getTranstypeOptions(),', 1),
(301, 1, 'CONF_PAYMENTMODULE_VERISIGNLINK_USD_CURRENCY_12', '0', 'Доллары США', 'Сумма заказа, передаваемая в VeriSign, указывается в долларах США. Выберите валюту из списка, которая представляет собой доллары США - это необходимо для корректного пересчета суммы заказа в доллары. Если валюта не выбрана, сумма не будет пересчитываться', 'setting_CURRENCY_SELECT(', 1),
(302, 1, 'CONF_PAYMENTMODULE_WEBMONEY_MERCHANT_PURSE_12', '', 'Номер кошелька, на который будут приниматься деньги в Вашем магазине', 'Формат - буква и 12 цифр', 'setting_TEXT_BOX(0,', 1),
(303, 1, 'CONF_PAYMENTMODULE_WEBMONEY_MERCHANT_EXCHANGERATE_12', '1', 'Курс у.е. магазина по отношению к валюте Web-Money', '', 'setting_TEXT_BOX(1,', 1),
(304, 1, 'CONF_PAYMENTMODULE_WEBMONEY_TESTMODE_12', '', 'Тестовый режим', 'Используйте тестовый режим для проверки модуля', 'setting_CHECK_BOX(', 1),
(305, 1, 'CONF_PAYMENTMODULE_WEBMONEY_PAYMENTS_DESC_12', 'Оплата заказа #[orderID]', 'Назначение платежей', 'Укажите описание платежей. Вы можете использовать строку [orderID] - она автоматически будет заменена на номер заказа', 'setting_TEXT_BOX(0,', 1),
(306, 1, 'CONF_PAYMENTMODULE_WEBMONEY_SHARED_SECRET_12', '', 'Secret Key', 'Строка символов, добавляемая к реквизитам платежа, высылаемым продавцу вместе с оповещением. Эта строка используется для повышения надежности идентификации высылаемого оповещения. Содержание строки известно только сервису Web Merchant Interface и продавцу', 'setting_TEXT_BOX(0,', 1),
(307, 1, 'CONF_PAYMENTMODULE_WEBMONEY_ORDERSTATUS_12', '-1', 'Статус заказа', 'Статус, который будет автоматически установлен для заказа после успешной оплаты', 'setting_SELECT_BOX(PaymentModule::_getStatuses(),', 1),
(308, 1, 'CONF_PAYMENTMODULE_WORLDPAY_INSTID_12', '', 'WorldPay ID', 'Введите ваш идентификатор в системе WorldPay', 'setting_TEXT_BOX(0,', 1),
(309, 1, 'CONF_PAYMENTMODULE_WORLDPAY_TEST_12', '', 'Тестовый режим', ' ', 'setting_CHECK_BOX(', 2),
(310, 1, 'CONF_PAYMENTMODULE_YANDEXMONEY_MERCHANT_ID_12', '', 'Номер счета в Яндекс.Деньги', 'Указите номер Вашего счета в системе Яндекс.Деньги', 'setting_TEXT_BOX(0,', 1),
(311, 1, 'CONF_PAYMENTMODULE_YANDEXMONEY_MERCHANT_ADDRESS_12', '', 'Адрес продавца / магазина', 'В качестве адреса может быть указан IP, доменный или e-mail адрес (используется для отправки уведомления об оплате)', 'setting_TEXT_BOX(0,', 2),
(312, 1, 'CONF_PAYMENTMODULE_YANDEXMONEY_MERCHANT_EXCHANGERATE_12', '1', 'Курс у.е. магазина по отношению к валюте в системе Яндекс.Деньги', 'Платеж в системе Яндекс.Деньги<br>осуществляется <u>в рублях</u>', 'setting_TEXT_BOX(1,', 3),
(313, 1, 'CONF_PAYMENTMODULE_YANDEXMONEY_PAYMENTS_DESC_12', 'Оплата заказа №[orderID]', 'Назначение платежа', 'Укажите описание платежей. Вы можете использовать строку [orderID] - она автоматически будет заменена на номер заказа', 'setting_TEXT_BOX(0,', 4),
(314, 1, 'CONF_SHIPPING_DHL_TEST_MODE_11', '1', 'Тестовый режим', '', 'setting_CHECK_BOX(', 0),
(315, 1, 'CONF_SHIPPING_DHL_ERROR_LOG_11', '1', 'Включить запись ошибочных ответов сервера DHL', 'В случае ошибки расчета стоимости доставки, сообщение об ошибке записывается в файл temp/dhl_errors.log', 'setting_CHECK_BOX(', 0),
(316, 1, 'CONF_SHIPPING_DHL_LOGIN_ID_11', '', 'API System ID', 'Введите API System ID, предоставленный DHL', 'setting_TEXT_BOX(0,true,', 10),
(317, 1, 'CONF_SHIPPING_DHL_PASSWORD_11', '', 'API Password', 'Введите API Password, предоставленный DHL', 'setting_TEXT_BOX(0,true,', 10),
(318, 1, 'CONF_SHIPPING_DHL_ACCOUNT_NUMBER_11', '', 'Account number', 'Номер учетной записи (аккаунта) в DHL', 'setting_TEXT_BOX(0,true,', 10),
(319, 1, 'CONF_SHIPPING_DHL_SHIPPING_KEY_11', '', 'Domestic Shipping key', 'Введите Shipping Key, предоставленный Вам DHL', 'setting_TEXT_BOX(0,true,', 20),
(320, 1, 'CONF_SHIPPING_DHL_ISHIPPING_KEY_11', '', 'International Shipping key', 'Введите Shipping Key, предоставленный Вам DHL', 'setting_TEXT_BOX(0,true,', 20),
(321, 1, 'CONF_SHIPPING_DHL_DUTIABLE_11', '1', 'Подлежит обложению таможенной пошлиной', 'Только для международной доставки', 'setting_CHECK_BOX(', 0),
(322, 1, 'CONF_SHIPPING_DHL_BILLING_PARTY_11', 'S', 'Плательщик', 'Выбирите кто производит оплату услуг DHL - отправитель (Sender) или получатель (Receiver)', 'setting_SELECT_BOX(DHLShippingModule::_getBillingParties(),', 0),
(323, 1, 'CONF_SHIPPING_DHL_SHIPDATE_11', '', 'Отправление через X дней', 'Введите количество дней, по истечению которых с момента оформления заказа DHL должен забрать посылку', 'setting_TEXT_BOX(0,', 30),
(324, 1, 'CONF_SHIPPING_DHL_SHIPMENT_TYPE_11', 'P', 'Упаковка', 'Выберите способ упавковки посылок', 'setting_SELECT_BOX(DHLShippingModule::_getShipmentType(),', 40),
(325, 1, 'CONF_SHIPPING_DHL_DIMENSIONS_11', '', 'Габариты', 'Если габариты (размер) отправлений в Вашем интернет-магазине фиксированы, введите их значения в дюймах в формате LxWxH, где L, W, H - длина, ширина и высота соответственно.<br>Если размеры не фиксированы, оставьте это поле пустым', 'setting_TEXT_BOX(0,', 50),
(326, 1, 'CONF_SHIPPING_DHL_AP_11', '0', 'Страхование отправления', 'Включите, если Вы хотите, чтобы стоимость доставки расчитывалась с учетом стоимости страховки от ущерба и потери', 'setting_SELECT_BOX(DHLShippingModule::_getAPOptions(),', 0),
(327, 1, 'CONF_SHIPPING_DHL_AP_VALUE_11', '0;0', 'Размер суммы страхования', 'Если Вы выбрали страхование отправления, введите размер суммы страхования', 'DHLShippingModule::_setting_AP_VALUE(11,', 0),
(328, 1, 'CONF_SHIPPING_DHL_COD_11', '-', 'Collect On Delivery', 'Если оплата заказов производится по факту получения (Collect On Delivery - COD), выбирите способ приема оплаты.<br>Если опция COD включена, плательщиком должен быть отправитель.<br>Если Вы используете COD, выбирите n/a.', 'setting_SELECT_BOX(DHLShippingModule::_getCODMethods(),', 0),
(329, 1, 'CONF_SHIPPING_DHL_USD_CURRENCY_11', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая DHL, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 0),
(330, 1, 'CONF_SHIPPING_DHL_SERVICES_11', '', 'Доступные сервисы', 'Выберите сервисы DHL, которые будут предложены покупателю для выбора при оформлении заказа', 'setting_CHECKBOX_LIST(DHLShippingModule::_getServices(),', 6),
(331, 1, 'CONF_SHIPPING_FEDEX_TESTMODE_11', '1', 'Тестовый режим', '', 'setting_CHECK_BOX(', 10),
(332, 1, 'CONF_SHIPPING_FEDEX_ACCOUNT_NUMBER_11', '', 'Account number', 'Номер учетной записи (аккаунта) в FedEx', 'setting_TEXT_BOX(0,true,', 10),
(333, 1, 'CONF_SHIPPING_FEDEX_METER_NUMBER_11', '', 'Meter number', 'Если у Вас нет Meter number, оставьте это поле пустым. Meter number будет сгенерирован автоматически.', 'setting_TEXT_BOX(0,true,', 20),
(334, 1, 'CONF_SHIPPING_FEDEX_PACKAGING_11', '01', 'Упаковка', 'В случае, если Вы используете ''FedEx Ground'' необходимо выбрать ''Your packaging''', 'setting_SELECT_BOX(fedexShippingModule::_getPackagingTypes(),', 40),
(335, 1, 'CONF_SHIPPING_FEDEX_CARRIER_11', 'FDXE', 'Сервис', 'Выберите сервис FedEx', 'setting_SELECT_BOX(array(array("title"=>"All","value"=>"ALL"),array("title"=>"FedEx Express","value"=>"FDXE"), array("title"=>"FedEx Ground", "value"=>"FDXG")),', 50),
(336, 1, 'CONF_SHIPPING_FEDEX_CURRENCY_11', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая FedEx, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 55),
(337, 1, 'CONF_SHIPPING_FEDEX_COUNTRY_CODE_11', '176', 'Страна отправитея', 'Укажите страну отправления заказов.', 'setting_COUNTRY_SELECT(true,', 60),
(338, 1, 'CONF_SHIPPING_FEDEX_POSTAL_CODE_11', '', 'Почтовый код (индекс, ZIP-код) отправителя', 'Обязательное поле, если страна отправления США или Канада<br />\r\n	Укажите почтоый индекс места отправления заказов.', 'setting_TEXT_BOX(0,', 70),
(339, 1, 'CONF_SHIPPING_FEDEX_STATE_OR_PROVINCE_CODE_11', '234', 'Штат/провинция отправителя', 'Обязательное поле, если страна отправления США или Канада<br />\r\n	Введите название штата/провинции, из которой Вы отправляете заказы.', 'setting_ZONE_SELECT(CONF_SHIPPING_FEDEX_COUNTRY_CODE_11,', 80),
(340, 1, 'CONF_SHIPPING_FEDEX_CITY_11', '', 'Город', 'Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 90),
(341, 1, 'CONF_SHIPPING_FEDEX_ADDRESS_11', '', 'Адрес', 'Введите Ваш адрес<br />\r\n	Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 100),
(342, 1, 'CONF_SHIPPING_FEDEX_PHONE_NUMBER_11', '', 'Номер телефона', '111-222-3333<br />\r\n	Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 110),
(343, 1, 'CONF_SHIPPING_FEDEX_NAME_11', '', 'Ваше имя', 'Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 120),
(344, 1, 'CONF_SHIPPING_FEDEX_ENABLE_ERROR_LOG_11', '', 'Включить запись ошибочных ответов сервера FedEx', 'В случае ошибки расчета стоимости доставки, сообщение об ошибке записывается в файл temp/fedex_errors.log', 'setting_CHECK_BOX(', 130),
(345, 1, 'CONF_INTERSHIPPER_USERNAME_11', '', 'Имя пользователя в системе InterShipper', 'Введите информацию о Вашей учетной записи в InterShipper', 'setting_TEXT_BOX(0,true,', 0),
(346, 1, 'CONF_INTERSHIPPER_PASSWORD_11', '', 'Пароль для учетной записи  в системе InterShipper', 'Введите информацию о Вашей учетной записи в InterShipper', 'setting_TEXT_BOX(0,true,', 0),
(347, 1, 'CONF_INTERSHIPPER_CARRIERS_11', '', 'Компании-перевозчики', 'Отметьте галочками те компании, услугами которых Вы пользуетесь. Стоимость доставки будет посылки будет расчитываться через каждую из выбранных компаний.', 'InterShipperModule::settingCarriers(11,', 0),
(348, 1, 'CONF_INTERSHIPPER_CLASSES_11', '', 'Типы доставки', 'Отметьте предлагаемые пользователю типы (классы) доставки', 'setting_CHECKBOX_LIST(InterShipperModule::getClasses4List(),', 0),
(349, 1, 'CONF_INTERSHIPPER_SHIPMETHOD_11', 'DRP', 'Как посылка попадет к доставляющей компании', 'Выберите способ доставки отправлений к компании-перевозчику', 'InterShipperModule::settingShipMethod(', 0),
(350, 1, 'CONF_INTERSHIPPER_SHMOPTION_11', '', 'Дополнительная информация к способу получения посылки компанией доставки', 'Укажите дополнительную информацию в зависимости от выбранного способа доставки отправления перевозчику', 'InterShipperModule::settingSHMOption(CONF_INTERSHIPPER_SHIPMETHOD_11,', 0),
(351, 1, 'CONF_INTERSHIPPER_PACKAGING_11', 'BOX', 'Упаковка', 'Выберите способ упаковки отправлений (посылок)', 'setting_SELECT_BOX(InterShipperModule::getPackaging4Select(),', 0),
(352, 1, 'CONF_INTERSHIPPER_CONTENTS_11', 'OTR', 'Содержимое посылок', 'Охарактеризуйте вид отправляемых товаров', 'setting_SELECT_BOX(InterShipperModule::getContents4Select(),', 0),
(353, 1, 'CONF_INTERSHIPPER_INSURANCE_11', '', 'Страховка посылок', 'Введите процент от стоимости заказа (пример: 10%), точную сумму (пример: 15.96) или оставьте поле пустым, если страховка не нужна', 'InterShipperModule::settingInsurance(', 0),
(354, 1, 'CONF_INTERSHIPPER_USD_11', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая сервером InterShipper, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 0),
(355, 1, 'CONF_INTERSHIPPER_COUNTRY_11', '176', 'Страна отправителя', 'InterShipper расчитывает стоимость доставки только для отправлений с территории США. Выберите США в списке стран', 'setting_COUNTRY_SELECT(true,', 0),
(356, 1, 'CONF_INTERSHIPPER_POSTAL_11', '', 'Почтовый код (индекс, ZIP-код) отправителя', 'Укажите почтовый индекс (zip) места отправления заказов', 'setting_TEXT_BOX(0,', 0);
INSERT INTO `SC_settings` (`settingsID`, `settings_groupID`, `settings_constant_name`, `settings_value`, `settings_title`, `settings_description`, `settings_html_function`, `sort_order`) VALUES
(357, 1, 'CONF_INTERSHIPPER_STATE_11', '', 'Штат/провинция отправителя', 'Укажите штат/провинцию, из которой отправляются заказы', 'setting_ZONE_SELECT(CONF_INTERSHIPPER_COUNTRY_11, array("mode"=>"notdef"),', 0),
(358, 1, 'CONF_INTERSHIPPER_CITY_11', '', 'Город', 'Введите название города, из которого будут производиться отправления', 'setting_TEXT_BOX(0,', 0),
(359, 1, 'CONF_RUSSIANPOST_CURRENCY_11', '', 'Валюта - Рубли', 'Выберите валюту Вашего магазина, которая представляет собой рубли. Это необходимо для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 10),
(360, 1, 'CONF_RUSSIANPOST_COUNTRY_11', '176', 'Страна - Россия', 'Пожалуйста, выбрите страну, в для которой Вы хотите настроить модуль Почты России. Данный модуль будет работать только для выбранной страны.', 'setting_COUNTRY_SELECT(true,', 20),
(361, 1, 'CONF_RUSSIANPOST_ZONES_11', '', 'Распределите области, определенные в Вашем магазине, по тарифным поясам', '', 'RussianPost::settingZones(11, "CONF_RUSSIANPOST_COUNTRY_11")', 30),
(362, 1, 'CONF_RUSSIANPOST_AIR_11', '93.00', 'Надбавка за отправление ''Авиа''', 'Укажите стоимость в рублях', 'setting_TEXT_BOX(0,', 40),
(363, 1, 'CONF_RUSSIANPOST_CAUTION_11', '', 'Все посылки отправляются с отметкой "Осторожно"', '', 'setting_CHECK_BOX(', 50),
(364, 1, 'CONF_RUSSIANPOST_MAX_WEIGHT_11', '20', 'Максимальный вес отправления', 'Укажите вес в килограммах', 'setting_TEXT_BOX(0,', 60),
(365, 1, 'CONF_RUSSIANPOST_DIFFICULT_WEIGHT_11', '10', 'Вес усложненной тарификации', 'Укажите вес усложненной тарификации в килограммах (вес, начиная с которого к стоимости доставки посылки прибавляется 30%)', 'setting_TEXT_BOX(0,', 70),
(366, 1, 'CONF_RUSSIANPOST_COMMISION_11', '3', 'Плата за сумму объявленной ценности посылки', 'В процентах. Например, укажите 3%, если с каждого рубля взимается 3 копейки.', 'setting_TEXT_BOX(0,', 80),
(367, 1, 'CONF_RUSSIANPOST_HALFCOST_1_11', '53.45', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(368, 1, 'CONF_RUSSIANPOST_HALFCOST_2_11', '58.9', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(369, 1, 'CONF_RUSSIANPOST_HALFCOST_3_11', '77.4', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(370, 1, 'CONF_RUSSIANPOST_HALFCOST_4_11', '103.55', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(371, 1, 'CONF_RUSSIANPOST_HALFCOST_5_11', '116.65', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(372, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_1_11', '4.4', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(373, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_2_11', '4.7', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(374, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_3_11', '5.9', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(375, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_4_11', '7.55', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(376, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_5_11', '8.3', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(377, 1, 'CONF_SHIPPING_UPS_ACCESSLICENSENUMBER_11', '', '', '', '', 0),
(378, 1, 'CONF_SHIPPING_UPS_USERID_11', '', '', '', '', 0),
(379, 1, 'CONF_SHIPPING_UPS_PASSWORD_11', '', '', '', '', 0),
(380, 1, 'CONF_SHIPPING_UPS_SHIPPER_COUNTRY_ID_11', '', '', '', '', 0),
(381, 1, 'CONF_SHIPPING_UPS_SHIPPER_CITY_11', '', '', '', '', 0),
(382, 1, 'CONF_SHIPPING_UPS_SHIPPER_POSTALCODE_11', '', '', '', '', 0),
(383, 1, 'CONF_SHIPPING_UPS_PICKUP_TYPE_11', '', '', '', '', 0),
(384, 1, 'CONF_SHIPPING_UPS_CUSTOMER_CLASSIFICATION_11', '', '', '', '', 0),
(385, 1, 'CONF_SHIPPING_UPS_PACKAGE_TYPE_11', '', '', '', '', 0),
(386, 1, 'CONF_SHIPPING_UPS_ENABLE_ERROR_LOG_11', '', '', '', '', 0),
(387, 1, 'CONF_SHIPPING_UPS_USD_CURRENCY_11', '', '', '', '', 0),
(388, 1, 'CONF_SHIPPING_USPS_USERID_11', '', '', '', '', 0),
(389, 1, 'CONF_SHIPPING_USPS_ZIPORIGINATION_11', '', '', '', '', 0),
(390, 1, 'CONF_SHIPPING_USPS_PACKAGESIZE_11', '', '', '', '', 0),
(391, 1, 'CONF_SHIPPING_USPS_MACHINABLE_11', '', '', '', '', 0),
(392, 1, 'CONF_SHIPPING_USPS_DOMESTIC_SERVS_11', '', '', '', '', 0),
(393, 1, 'CONF_SHIPPING_USPS_INTERNATIONAL_SERVS_11', '', '', '', '', 0),
(394, 1, 'CONF_SHIPPING_USPS_ENABLE_ERROR_LOG_11', '', '', '', '', 0),
(395, 1, 'CONF_SHIPPING_USPS_USD_CURRENCY_11', '', '', '', '', 0),
(396, 1, 'CONF_SHIPPING_MODULE_FIXEDRATE_SHIPPINGRATE_11', '', '', '', '', 0),
(397, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEPLUSPERCENT_FIXEDRATE_11', '', '', '', '', 0),
(398, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEPLUSPERCENT_PERCENT_11', '', '', '', '', 0),
(399, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEXORPERCENT_FIXEDRATE_11', '', '', '', '', 0),
(400, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEXORPERCENT_PERCENT_11', '', '', '', '', 0),
(401, 1, 'CONF_SHIPPING_MODULE_BYCOUNTRYBYZONE_IS_INSTALLED_11', '1', 'Настройка стоимости', '', 'settingCONF_BYCOUNTRY_BYZONE_FORM(11)', 1),
(402, 1, 'CONF_SHIPPING_MODULE_BYCOUNTRYBYZONEPERCENT_IS_INSTALLED_11', '1', 'Настройка стоимости доставки', 'Здесь вы можете указать стоимость доставки как % от суммы заказа отдельно для каждой страны и области', 'settingCONF_BYCOUNTRY_BYZONE_PERCENT_FORM(11)', 1),
(403, 1, 'CONF_SHIPPING_DHL_TEST_MODE_9', '1', 'Тестовый режим', '', 'setting_CHECK_BOX(', 0),
(404, 1, 'CONF_SHIPPING_DHL_ERROR_LOG_9', '1', 'Включить запись ошибочных ответов сервера DHL', 'В случае ошибки расчета стоимости доставки, сообщение об ошибке записывается в файл temp/dhl_errors.log', 'setting_CHECK_BOX(', 0),
(405, 1, 'CONF_SHIPPING_DHL_LOGIN_ID_9', '', 'API System ID', 'Введите API System ID, предоставленный DHL', 'setting_TEXT_BOX(0,true,', 10),
(406, 1, 'CONF_SHIPPING_DHL_PASSWORD_9', '', 'API Password', 'Введите API Password, предоставленный DHL', 'setting_TEXT_BOX(0,true,', 10),
(407, 1, 'CONF_SHIPPING_DHL_ACCOUNT_NUMBER_9', '', 'Account number', 'Номер учетной записи (аккаунта) в DHL', 'setting_TEXT_BOX(0,true,', 10),
(408, 1, 'CONF_SHIPPING_DHL_SHIPPING_KEY_9', '', 'Domestic Shipping key', 'Введите Shipping Key, предоставленный Вам DHL', 'setting_TEXT_BOX(0,true,', 20),
(409, 1, 'CONF_SHIPPING_DHL_ISHIPPING_KEY_9', '', 'International Shipping key', 'Введите Shipping Key, предоставленный Вам DHL', 'setting_TEXT_BOX(0,true,', 20),
(410, 1, 'CONF_SHIPPING_DHL_DUTIABLE_9', '1', 'Подлежит обложению таможенной пошлиной', 'Только для международной доставки', 'setting_CHECK_BOX(', 0),
(411, 1, 'CONF_SHIPPING_DHL_BILLING_PARTY_9', 'S', 'Плательщик', 'Выбирите кто производит оплату услуг DHL - отправитель (Sender) или получатель (Receiver)', 'setting_SELECT_BOX(DHLShippingModule::_getBillingParties(),', 0),
(412, 1, 'CONF_SHIPPING_DHL_SHIPDATE_9', '', 'Отправление через X дней', 'Введите количество дней, по истечению которых с момента оформления заказа DHL должен забрать посылку', 'setting_TEXT_BOX(0,', 30),
(413, 1, 'CONF_SHIPPING_DHL_SHIPMENT_TYPE_9', 'P', 'Упаковка', 'Выберите способ упавковки посылок', 'setting_SELECT_BOX(DHLShippingModule::_getShipmentType(),', 40),
(414, 1, 'CONF_SHIPPING_DHL_DIMENSIONS_9', '', 'Габариты', 'Если габариты (размер) отправлений в Вашем интернет-магазине фиксированы, введите их значения в дюймах в формате LxWxH, где L, W, H - длина, ширина и высота соответственно.<br>Если размеры не фиксированы, оставьте это поле пустым', 'setting_TEXT_BOX(0,', 50),
(415, 1, 'CONF_SHIPPING_DHL_AP_9', '0', 'Страхование отправления', 'Включите, если Вы хотите, чтобы стоимость доставки расчитывалась с учетом стоимости страховки от ущерба и потери', 'setting_SELECT_BOX(DHLShippingModule::_getAPOptions(),', 0),
(416, 1, 'CONF_SHIPPING_DHL_AP_VALUE_9', '0;0', 'Размер суммы страхования', 'Если Вы выбрали страхование отправления, введите размер суммы страхования', 'DHLShippingModule::_setting_AP_VALUE(9,', 0),
(417, 1, 'CONF_SHIPPING_DHL_COD_9', '-', 'Collect On Delivery', 'Если оплата заказов производится по факту получения (Collect On Delivery - COD), выбирите способ приема оплаты.<br>Если опция COD включена, плательщиком должен быть отправитель.<br>Если Вы используете COD, выбирите n/a.', 'setting_SELECT_BOX(DHLShippingModule::_getCODMethods(),', 0),
(418, 1, 'CONF_SHIPPING_DHL_USD_CURRENCY_9', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая DHL, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 0),
(419, 1, 'CONF_SHIPPING_DHL_SERVICES_9', '', 'Доступные сервисы', 'Выберите сервисы DHL, которые будут предложены покупателю для выбора при оформлении заказа', 'setting_CHECKBOX_LIST(DHLShippingModule::_getServices(),', 6),
(420, 1, 'CONF_SHIPPING_FEDEX_TESTMODE_9', '1', 'Тестовый режим', '', 'setting_CHECK_BOX(', 10),
(421, 1, 'CONF_SHIPPING_FEDEX_ACCOUNT_NUMBER_9', '', 'Account number', 'Номер учетной записи (аккаунта) в FedEx', 'setting_TEXT_BOX(0,true,', 10),
(422, 1, 'CONF_SHIPPING_FEDEX_METER_NUMBER_9', '', 'Meter number', 'Если у Вас нет Meter number, оставьте это поле пустым. Meter number будет сгенерирован автоматически.', 'setting_TEXT_BOX(0,true,', 20),
(423, 1, 'CONF_SHIPPING_FEDEX_PACKAGING_9', '01', 'Упаковка', 'В случае, если Вы используете ''FedEx Ground'' необходимо выбрать ''Your packaging''', 'setting_SELECT_BOX(fedexShippingModule::_getPackagingTypes(),', 40),
(424, 1, 'CONF_SHIPPING_FEDEX_CARRIER_9', 'FDXE', 'Сервис', 'Выберите сервис FedEx', 'setting_SELECT_BOX(array(array("title"=>"All","value"=>"ALL"),array("title"=>"FedEx Express","value"=>"FDXE"), array("title"=>"FedEx Ground", "value"=>"FDXG")),', 50),
(425, 1, 'CONF_SHIPPING_FEDEX_CURRENCY_9', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая FedEx, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 55),
(426, 1, 'CONF_SHIPPING_FEDEX_COUNTRY_CODE_9', '176', 'Страна отправитея', 'Укажите страну отправления заказов.', 'setting_COUNTRY_SELECT(true,', 60),
(427, 1, 'CONF_SHIPPING_FEDEX_POSTAL_CODE_9', '', 'Почтовый код (индекс, ZIP-код) отправителя', 'Обязательное поле, если страна отправления США или Канада<br />\r\n	Укажите почтоый индекс места отправления заказов.', 'setting_TEXT_BOX(0,', 70),
(428, 1, 'CONF_SHIPPING_FEDEX_STATE_OR_PROVINCE_CODE_9', '234', 'Штат/провинция отправителя', 'Обязательное поле, если страна отправления США или Канада<br />\r\n	Введите название штата/провинции, из которой Вы отправляете заказы.', 'setting_ZONE_SELECT(CONF_SHIPPING_FEDEX_COUNTRY_CODE_9,', 80),
(429, 1, 'CONF_SHIPPING_FEDEX_CITY_9', '', 'Город', 'Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 90),
(430, 1, 'CONF_SHIPPING_FEDEX_ADDRESS_9', '', 'Адрес', 'Введите Ваш адрес<br />\r\n	Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 100),
(431, 1, 'CONF_SHIPPING_FEDEX_PHONE_NUMBER_9', '', 'Номер телефона', '111-222-3333<br />\r\n	Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 110),
(432, 1, 'CONF_SHIPPING_FEDEX_NAME_9', '', 'Ваше имя', 'Информация необходима для формирования Meter number', 'setting_TEXT_BOX(0,', 120),
(433, 1, 'CONF_SHIPPING_FEDEX_ENABLE_ERROR_LOG_9', '', 'Включить запись ошибочных ответов сервера FedEx', 'В случае ошибки расчета стоимости доставки, сообщение об ошибке записывается в файл temp/fedex_errors.log', 'setting_CHECK_BOX(', 130),
(434, 1, 'CONF_INTERSHIPPER_USERNAME_9', '', 'Имя пользователя в системе InterShipper', 'Введите информацию о Вашей учетной записи в InterShipper', 'setting_TEXT_BOX(0,true,', 0),
(435, 1, 'CONF_INTERSHIPPER_PASSWORD_9', '', 'Пароль для учетной записи  в системе InterShipper', 'Введите информацию о Вашей учетной записи в InterShipper', 'setting_TEXT_BOX(0,true,', 0),
(436, 1, 'CONF_INTERSHIPPER_CARRIERS_9', '', 'Компании-перевозчики', 'Отметьте галочками те компании, услугами которых Вы пользуетесь. Стоимость доставки будет посылки будет расчитываться через каждую из выбранных компаний.', 'InterShipperModule::settingCarriers(9,', 0),
(437, 1, 'CONF_INTERSHIPPER_CLASSES_9', '', 'Типы доставки', 'Отметьте предлагаемые пользователю типы (классы) доставки', 'setting_CHECKBOX_LIST(InterShipperModule::getClasses4List(),', 0),
(438, 1, 'CONF_INTERSHIPPER_SHIPMETHOD_9', 'DRP', 'Как посылка попадет к доставляющей компании', 'Выберите способ доставки отправлений к компании-перевозчику', 'InterShipperModule::settingShipMethod(', 0),
(439, 1, 'CONF_INTERSHIPPER_SHMOPTION_9', '', 'Дополнительная информация к способу получения посылки компанией доставки', 'Укажите дополнительную информацию в зависимости от выбранного способа доставки отправления перевозчику', 'InterShipperModule::settingSHMOption(CONF_INTERSHIPPER_SHIPMETHOD_9,', 0),
(440, 1, 'CONF_INTERSHIPPER_PACKAGING_9', 'BOX', 'Упаковка', 'Выберите способ упаковки отправлений (посылок)', 'setting_SELECT_BOX(InterShipperModule::getPackaging4Select(),', 0),
(441, 1, 'CONF_INTERSHIPPER_CONTENTS_9', 'OTR', 'Содержимое посылок', 'Охарактеризуйте вид отправляемых товаров', 'setting_SELECT_BOX(InterShipperModule::getContents4Select(),', 0),
(442, 1, 'CONF_INTERSHIPPER_INSURANCE_9', '', 'Страховка посылок', 'Введите процент от стоимости заказа (пример: 10%), точную сумму (пример: 15.96) или оставьте поле пустым, если страховка не нужна', 'InterShipperModule::settingInsurance(', 0),
(443, 1, 'CONF_INTERSHIPPER_USD_9', '', 'Валюта "Доллары США"', 'Стоимость доставки, расчитываемая сервером InterShipper, указывается в долларах США. Выберите валюту Вашего магазина, которая представляет собой доллары США для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 0),
(444, 1, 'CONF_INTERSHIPPER_COUNTRY_9', '176', 'Страна отправителя', 'InterShipper расчитывает стоимость доставки только для отправлений с территории США. Выберите США в списке стран', 'setting_COUNTRY_SELECT(true,', 0),
(445, 1, 'CONF_INTERSHIPPER_POSTAL_9', '', 'Почтовый код (индекс, ZIP-код) отправителя', 'Укажите почтовый индекс (zip) места отправления заказов', 'setting_TEXT_BOX(0,', 0),
(446, 1, 'CONF_INTERSHIPPER_STATE_9', '', 'Штат/провинция отправителя', 'Укажите штат/провинцию, из которой отправляются заказы', 'setting_ZONE_SELECT(CONF_INTERSHIPPER_COUNTRY_9, array("mode"=>"notdef"),', 0),
(447, 1, 'CONF_INTERSHIPPER_CITY_9', '', 'Город', 'Введите название города, из которого будут производиться отправления', 'setting_TEXT_BOX(0,', 0),
(448, 1, 'CONF_RUSSIANPOST_CURRENCY_9', '', 'Валюта - Рубли', 'Выберите валюту Вашего магазина, которая представляет собой рубли. Это необходимо для корректного пересчета стоимости доставки в другие валюты.', 'setting_CURRENCY_SELECT(', 10),
(449, 1, 'CONF_RUSSIANPOST_COUNTRY_9', '176', 'Страна - Россия', 'Пожалуйста, выбрите страну, в для которой Вы хотите настроить модуль Почты России. Данный модуль будет работать только для выбранной страны.', 'setting_COUNTRY_SELECT(true,', 20),
(450, 1, 'CONF_RUSSIANPOST_ZONES_9', '', 'Распределите области, определенные в Вашем магазине, по тарифным поясам', '', 'RussianPost::settingZones(9, "CONF_RUSSIANPOST_COUNTRY_9")', 30),
(451, 1, 'CONF_RUSSIANPOST_AIR_9', '93.00', 'Надбавка за отправление ''Авиа''', 'Укажите стоимость в рублях', 'setting_TEXT_BOX(0,', 40),
(452, 1, 'CONF_RUSSIANPOST_CAUTION_9', '', 'Все посылки отправляются с отметкой "Осторожно"', '', 'setting_CHECK_BOX(', 50),
(453, 1, 'CONF_RUSSIANPOST_MAX_WEIGHT_9', '20', 'Максимальный вес отправления', 'Укажите вес в килограммах', 'setting_TEXT_BOX(0,', 60),
(454, 1, 'CONF_RUSSIANPOST_DIFFICULT_WEIGHT_9', '10', 'Вес усложненной тарификации', 'Укажите вес усложненной тарификации в килограммах (вес, начиная с которого к стоимости доставки посылки прибавляется 30%)', 'setting_TEXT_BOX(0,', 70),
(455, 1, 'CONF_RUSSIANPOST_COMMISION_9', '3', 'Плата за сумму объявленной ценности посылки', 'В процентах. Например, укажите 3%, если с каждого рубля взимается 3 копейки.', 'setting_TEXT_BOX(0,', 80),
(456, 1, 'CONF_RUSSIANPOST_HALFCOST_1_9', '53.45', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(457, 1, 'CONF_RUSSIANPOST_HALFCOST_2_9', '58.9', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(458, 1, 'CONF_RUSSIANPOST_HALFCOST_3_9', '77.4', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(459, 1, 'CONF_RUSSIANPOST_HALFCOST_4_9', '103.55', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(460, 1, 'CONF_RUSSIANPOST_HALFCOST_5_9', '116.65', 'Стоимость отправки посылки весом до 0.5 килограмм (включительно)', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(0,', 90),
(461, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_1_9', '4.4', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(462, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_2_9', '4.7', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(463, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_3_9', '5.9', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(464, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_4_9', '7.55', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(465, 1, 'CONF_RUSSIANPOST_OVERHALFCOST_5_9', '8.3', 'Стоимость отправки каждых дополнительных 0.5 килограмм', 'Укажите стоимость в рублях', 'RussianPost::settingHalfCosts(1,', 100),
(466, 1, 'CONF_SHIPPING_UPS_ACCESSLICENSENUMBER_9', '', '', '', '', 0),
(467, 1, 'CONF_SHIPPING_UPS_USERID_9', '', '', '', '', 0),
(468, 1, 'CONF_SHIPPING_UPS_PASSWORD_9', '', '', '', '', 0),
(469, 1, 'CONF_SHIPPING_UPS_SHIPPER_COUNTRY_ID_9', '', '', '', '', 0),
(470, 1, 'CONF_SHIPPING_UPS_SHIPPER_CITY_9', '', '', '', '', 0),
(471, 1, 'CONF_SHIPPING_UPS_SHIPPER_POSTALCODE_9', '', '', '', '', 0),
(472, 1, 'CONF_SHIPPING_UPS_PICKUP_TYPE_9', '', '', '', '', 0),
(473, 1, 'CONF_SHIPPING_UPS_CUSTOMER_CLASSIFICATION_9', '', '', '', '', 0),
(474, 1, 'CONF_SHIPPING_UPS_PACKAGE_TYPE_9', '', '', '', '', 0),
(475, 1, 'CONF_SHIPPING_UPS_ENABLE_ERROR_LOG_9', '', '', '', '', 0),
(476, 1, 'CONF_SHIPPING_UPS_USD_CURRENCY_9', '', '', '', '', 0),
(477, 1, 'CONF_SHIPPING_USPS_USERID_9', '', '', '', '', 0),
(478, 1, 'CONF_SHIPPING_USPS_ZIPORIGINATION_9', '', '', '', '', 0),
(479, 1, 'CONF_SHIPPING_USPS_PACKAGESIZE_9', '', '', '', '', 0),
(480, 1, 'CONF_SHIPPING_USPS_MACHINABLE_9', '', '', '', '', 0),
(481, 1, 'CONF_SHIPPING_USPS_DOMESTIC_SERVS_9', '', '', '', '', 0),
(482, 1, 'CONF_SHIPPING_USPS_INTERNATIONAL_SERVS_9', '', '', '', '', 0),
(483, 1, 'CONF_SHIPPING_USPS_ENABLE_ERROR_LOG_9', '', '', '', '', 0),
(484, 1, 'CONF_SHIPPING_USPS_USD_CURRENCY_9', '', '', '', '', 0),
(485, 1, 'CONF_SHIPPING_MODULE_FIXEDRATE_SHIPPINGRATE_9', '', '', '', '', 0),
(486, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEPLUSPERCENT_FIXEDRATE_9', '', '', '', '', 0),
(487, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEPLUSPERCENT_PERCENT_9', '', '', '', '', 0),
(488, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEXORPERCENT_FIXEDRATE_9', '', '', '', '', 0),
(489, 1, 'CONF_SHIPPING_MODULE_FIXEDRATEXORPERCENT_PERCENT_9', '', '', '', '', 0),
(490, 1, 'CONF_SHIPPING_MODULE_BYCOUNTRYBYZONE_IS_INSTALLED_9', '1', 'Настройка стоимости', '', 'settingCONF_BYCOUNTRY_BYZONE_FORM(9)', 1),
(491, 1, 'CONF_SHIPPING_MODULE_BYCOUNTRYBYZONEPERCENT_IS_INSTALLED_9', '1', 'Настройка стоимости доставки', 'Здесь вы можете указать стоимость доставки как % от суммы заказа отдельно для каждой страны и области', 'settingCONF_BYCOUNTRY_BYZONE_PERCENT_FORM(9)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SC_settings_groups`
--

DROP TABLE IF EXISTS `SC_settings_groups`;
CREATE TABLE IF NOT EXISTS `SC_settings_groups` (
  `settings_groupID` int(11) NOT NULL auto_increment,
  `settings_group_name` varchar(64) default NULL,
  `sort_order` int(11) default '0',
  PRIMARY KEY  (`settings_groupID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `SC_settings_groups`
--

INSERT INTO `SC_settings_groups` (`settings_groupID`, `settings_group_name`, `sort_order`) VALUES
(1, 'MODULES', 0),
(2, 'cfg_grp_general', 1),
(4, 'cfg_grp_catalog', 3),
(5, 'cfg_grp_customers', 4),
(6, 'cfg_grp_cart_ordering', 5),
(7, 'Google Analytics', 6);

-- --------------------------------------------------------

--
-- Table structure for table `SC_shipping_methods`
--

DROP TABLE IF EXISTS `SC_shipping_methods`;
CREATE TABLE IF NOT EXISTS `SC_shipping_methods` (
  `SID` int(11) NOT NULL auto_increment,
  `Enabled` int(11) default NULL,
  `module_id` int(11) default NULL,
  `sort_order` int(11) default '0',
  `Name_en` varchar(30) default NULL,
  `description_en` varchar(255) default NULL,
  `email_comments_text_en` text,
  `Name_ru` varchar(30) default NULL,
  `description_ru` varchar(255) default NULL,
  `email_comments_text_ru` text,
  `logo` text,
  PRIMARY KEY  (`SID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `SC_shipping_methods`
--

INSERT INTO `SC_shipping_methods` (`SID`, `Enabled`, `module_id`, `sort_order`, `Name_en`, `description_en`, `email_comments_text_en`, `Name_ru`, `description_ru`, `email_comments_text_ru`, `logo`) VALUES
(6, 1, 9, 1, 'Self-delivery', 'Another shipping method example.', '', 'Самовывоз', 'Еще один пример способа доставки.', '', NULL),
(7, 1, 11, 0, 'Ground', 'Shipping methods that you add in admin mode will be offered during checkout.', '', 'Курьер', 'Вы можете сам добавить любые способы доставки, и они будут предложены во время оформления заказа.', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SC_shopping_carts`
--

DROP TABLE IF EXISTS `SC_shopping_carts`;
CREATE TABLE IF NOT EXISTS `SC_shopping_carts` (
  `customerID` int(11) NOT NULL default '0',
  `itemID` int(11) NOT NULL default '0',
  `Quantity` int(11) default NULL,
  PRIMARY KEY  (`customerID`,`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_shopping_carts`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_shopping_cart_items`
--

DROP TABLE IF EXISTS `SC_shopping_cart_items`;
CREATE TABLE IF NOT EXISTS `SC_shopping_cart_items` (
  `itemID` int(11) NOT NULL auto_increment,
  `productID` int(11) default NULL,
  PRIMARY KEY  (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `SC_shopping_cart_items`
--

INSERT INTO `SC_shopping_cart_items` (`itemID`, `productID`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, 674),
(6, 674),
(7, 674),
(8, 674),
(9, 672),
(10, 672),
(11, 672),
(12, 672),
(13, 674),
(14, 674),
(15, 674),
(16, 674);

-- --------------------------------------------------------

--
-- Table structure for table `SC_shopping_cart_items_content`
--

DROP TABLE IF EXISTS `SC_shopping_cart_items_content`;
CREATE TABLE IF NOT EXISTS `SC_shopping_cart_items_content` (
  `itemID` int(11) NOT NULL default '0',
  `variantID` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_shopping_cart_items_content`
--

INSERT INTO `SC_shopping_cart_items_content` (`itemID`, `variantID`) VALUES
(11, 6),
(12, 6),
(13, 8),
(13, 5),
(14, 8),
(14, 5),
(15, 6),
(15, 5),
(16, 6),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `SC_spmodules`
--

DROP TABLE IF EXISTS `SC_spmodules`;
CREATE TABLE IF NOT EXISTS `SC_spmodules` (
  `module_id` int(11) NOT NULL auto_increment,
  `module_type` int(11) default NULL,
  `module_name` varchar(255) default NULL,
  `ModuleClassName` varchar(255) default NULL,
  PRIMARY KEY  (`module_id`),
  KEY `module_type` (`module_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `SC_spmodules`
--

INSERT INTO `SC_spmodules` (`module_id`, `module_type`, `module_name`, `ModuleClassName`) VALUES
(1, 0, 'SMS-Уведомления', 'SMSNotify'),
(2, 3, 'Clickatell', 'Clickatell'),
(3, 3, 'SMS Driver', 'SMSDriverCom'),
(4, 3, 'SMS traffic', 'SMSTrafficRu'),
(5, 2, 'Google Checkout', 'GoogleCheckout2'),
(6, 2, 'PayPal Website Payments Pro - Express Checkout', 'PPExpressCheckout'),
(7, 2, 'Вконтакте', 'VKontaktePayment'),
(8, 2, 'Фейсбук', 'FacebookPayment');

-- --------------------------------------------------------

--
-- Table structure for table `SC_spmodules_settings`
--

DROP TABLE IF EXISTS `SC_spmodules_settings`;
CREATE TABLE IF NOT EXISTS `SC_spmodules_settings` (
  `module_id` int(11) NOT NULL,
  `field` varchar(255) NOT NULL,
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`module_id`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_spmodules_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_subscribers`
--

DROP TABLE IF EXISTS `SC_subscribers`;
CREATE TABLE IF NOT EXISTS `SC_subscribers` (
  `MID` int(11) NOT NULL auto_increment,
  `Email` varchar(50) default NULL,
  `customerID` int(11) default NULL,
  PRIMARY KEY  (`MID`),
  KEY `customerID` (`customerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `SC_subscribers`
--

INSERT INTO `SC_subscribers` (`MID`, `Email`, `customerID`) VALUES
(1, 'rp+candies@whitescape.com', 1),
(2, 'rp@whitescape.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SC_system`
--

DROP TABLE IF EXISTS `SC_system`;
CREATE TABLE IF NOT EXISTS `SC_system` (
  `varName` varchar(255) default NULL,
  `value` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_system`
--

INSERT INTO `SC_system` (`varName`, `value`) VALUES
('version_number', '2.0'),
('version_name', 'WASC');

-- --------------------------------------------------------

--
-- Table structure for table `SC_tagged_objects`
--

DROP TABLE IF EXISTS `SC_tagged_objects`;
CREATE TABLE IF NOT EXISTS `SC_tagged_objects` (
  `tag_id` int(10) unsigned NOT NULL default '0',
  `object_id` int(10) unsigned NOT NULL default '0',
  `object_type` enum('product') NOT NULL default 'product',
  `language_id` int(11) NOT NULL default '0',
  KEY `tag_id` (`tag_id`),
  KEY `tag_id_2` (`object_id`,`tag_id`),
  KEY `object_type` (`object_type`,`language_id`,`object_id`),
  KEY `language_id` (`language_id`),
  KEY `object_type_2` (`object_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_tagged_objects`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_tags`
--

DROP TABLE IF EXISTS `SC_tags`;
CREATE TABLE IF NOT EXISTS `SC_tags` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `SC_tags`
--

INSERT INTO `SC_tags` (`id`, `name`) VALUES
(3, 'gift'),
(4, 'alarm clock'),
(5, 'подарок'),
(6, 'будильник');

-- --------------------------------------------------------

--
-- Table structure for table `SC_tax_classes`
--

DROP TABLE IF EXISTS `SC_tax_classes`;
CREATE TABLE IF NOT EXISTS `SC_tax_classes` (
  `classID` int(11) NOT NULL auto_increment,
  `name` varchar(64) default NULL,
  `address_type` int(11) default NULL,
  PRIMARY KEY  (`classID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_tax_classes`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_tax_rates`
--

DROP TABLE IF EXISTS `SC_tax_rates`;
CREATE TABLE IF NOT EXISTS `SC_tax_rates` (
  `classID` int(11) NOT NULL default '0',
  `countryID` int(11) NOT NULL default '0',
  `isGrouped` tinyint(1) default NULL,
  `value` float default NULL,
  `isByZone` tinyint(1) default NULL,
  PRIMARY KEY  (`classID`,`countryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_tax_rates`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_tax_rates__zones`
--

DROP TABLE IF EXISTS `SC_tax_rates__zones`;
CREATE TABLE IF NOT EXISTS `SC_tax_rates__zones` (
  `classID` int(11) NOT NULL default '0',
  `zoneID` int(11) NOT NULL default '0',
  `value` float default NULL,
  `isGrouped` tinyint(1) default NULL,
  PRIMARY KEY  (`classID`,`zoneID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC_tax_rates__zones`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_tax_zip`
--

DROP TABLE IF EXISTS `SC_tax_zip`;
CREATE TABLE IF NOT EXISTS `SC_tax_zip` (
  `tax_zipID` int(11) NOT NULL auto_increment,
  `classID` int(11) default NULL,
  `countryID` int(11) default NULL,
  `zip_template` varchar(255) default NULL,
  `value` float default NULL,
  PRIMARY KEY  (`tax_zipID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SC_tax_zip`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC_zones`
--

DROP TABLE IF EXISTS `SC_zones`;
CREATE TABLE IF NOT EXISTS `SC_zones` (
  `zoneID` int(11) NOT NULL auto_increment,
  `zone_code` varchar(64) default NULL,
  `countryID` int(11) default NULL,
  `zone_name_en` varchar(64) default NULL,
  `zone_name_ru` varchar(64) default NULL,
  PRIMARY KEY  (`zoneID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

--
-- Dumping data for table `SC_zones`
--

INSERT INTO `SC_zones` (`zoneID`, `zone_code`, `countryID`, `zone_name_en`, `zone_name_ru`) VALUES
(1, 'AL', 223, 'Alabama', ''),
(2, 'AK', 223, 'Alaska', ''),
(4, 'AZ', 223, 'Arizona', ''),
(5, 'AR', 223, 'Arkansas', ''),
(12, 'CA', 223, 'California', ''),
(13, 'CO', 223, 'Colorado', ''),
(14, 'CT', 223, 'Connecticut', ''),
(15, 'DE', 223, 'Delaware', ''),
(16, 'DC', 223, 'Washington DC', ''),
(18, 'FL', 223, 'Florida', ''),
(19, 'GA', 223, 'Georgia', ''),
(21, 'HI', 223, 'Hawaii', ''),
(22, 'ID', 223, 'Idaho', ''),
(23, 'IL', 223, 'Illinois', ''),
(24, 'IN', 223, 'Indiana', ''),
(25, 'IA', 223, 'Iowa', ''),
(26, 'KS', 223, 'Kansas', ''),
(27, 'KY', 223, 'Kentucky', ''),
(28, 'LA', 223, 'Louisiana', ''),
(29, 'ME', 223, 'Maine', ''),
(186, '50', 176, '', ' Московская область'),
(31, 'MD', 223, 'Maryland', ''),
(32, 'MA', 223, 'Massachusetts', ''),
(33, 'MI', 223, 'Michigan', ''),
(34, 'MN', 223, 'Minnesota', ''),
(35, 'MS', 223, 'Mississippi', ''),
(36, 'MO', 223, 'Missouri', ''),
(37, 'MT', 223, 'Montana', ''),
(38, 'NE', 223, 'Nebraska', ''),
(39, 'NV', 223, 'Nevada', ''),
(40, 'NH', 223, 'New Hampshire', ''),
(41, 'NJ', 223, 'New Jersey', ''),
(42, 'NM', 223, 'New Mexico', ''),
(43, 'NY', 223, 'New York', ''),
(44, 'NC', 223, 'North Carolina', ''),
(45, 'ND', 223, 'North Dakota', ''),
(47, 'OH', 223, 'Ohio', ''),
(48, 'OK', 223, 'Oklahoma', ''),
(49, 'OR', 223, 'Oregon', ''),
(51, 'PA', 223, 'Pennsylvania', ''),
(53, 'RI', 223, 'Rhode Island', ''),
(54, 'SC', 223, 'South Carolina', ''),
(55, 'SD', 223, 'South Dakota', ''),
(56, 'TN', 223, 'Tennessee', ''),
(57, 'TX', 223, 'Texas', ''),
(58, 'UT', 223, 'Utah', ''),
(59, 'VT', 223, 'Vermont', ''),
(61, 'VA', 223, 'Virginia', ''),
(62, 'WA', 223, 'Washington', ''),
(63, 'WV', 223, 'West Virginia', ''),
(64, 'WI', 223, 'Wisconsin', ''),
(65, 'WY', 223, 'Wyoming', ''),
(66, 'AB', 38, 'Alberta', NULL),
(67, 'BC', 38, 'British Columbia', NULL),
(68, 'MB', 38, 'Manitoba', NULL),
(69, 'NF', 38, 'Newfoundland', NULL),
(70, 'NB', 38, 'New Brunswick', NULL),
(71, 'NS', 38, 'Nova Scotia', NULL),
(72, 'NT', 38, 'Northwest Territories', NULL),
(73, 'NU', 38, 'Nunavut', NULL),
(74, 'ON', 38, 'Ontario', NULL),
(75, 'PE', 38, 'Prince Edward Island', NULL),
(76, 'QC', 38, 'Quebec', NULL),
(77, 'SK', 38, 'Saskatchewan', NULL),
(78, 'YT', 38, 'Yukon Territory', NULL),
(79, 'NDS', 81, 'Niedersachsen', NULL),
(80, 'BAW', 81, 'Baden-WСЊrttemberg', NULL),
(81, 'BAY', 81, 'Bayern', NULL),
(82, 'BER', 81, 'Berlin', NULL),
(83, 'BRG', 81, 'Brandenburg', NULL),
(84, 'BRE', 81, 'Bremen', NULL),
(85, 'HAM', 81, 'Hamburg', NULL),
(86, 'HES', 81, 'Hessen', NULL),
(87, 'MEC', 81, 'Mecklenburg-Vorpommern', NULL),
(88, 'NRW', 81, 'Nordrhein-Westfalen', NULL),
(89, 'RHE', 81, 'Rheinland-Pfalz', NULL),
(90, 'SAR', 81, 'Saarland', NULL),
(91, 'SAS', 81, 'Sachsen', NULL),
(92, 'SAC', 81, 'Sachsen-Anhalt', NULL),
(93, 'SCN', 81, 'Schleswig-Holstein', NULL),
(94, 'THE', 81, 'ThСЊringen', NULL),
(95, 'WI', 14, 'Wien', NULL),
(96, 'NO', 14, 'NiederС†sterreich', NULL),
(97, 'OO', 14, 'OberС†sterreich', NULL),
(98, 'SB', 14, 'Salzburg', NULL),
(99, 'KN', 14, 'KРґrnten', NULL),
(100, 'ST', 14, 'Steiermark', NULL),
(101, 'TI', 14, 'Tirol', NULL),
(102, 'BL', 14, 'Burgenland', NULL),
(103, 'VB', 14, 'Voralberg', NULL),
(104, 'AG', 204, 'Aargau', NULL),
(105, 'AI', 204, 'Appenzell Innerrhoden', NULL),
(106, 'AR', 204, 'Appenzell Ausserrhoden', NULL),
(107, 'BE', 204, 'Bern', NULL),
(108, 'BL', 204, 'Basel-Landschaft', NULL),
(109, 'BS', 204, 'Basel-Stadt', NULL),
(110, 'FR', 204, 'Freiburg', NULL),
(111, 'GE', 204, 'Genf', NULL),
(112, 'GL', 204, 'Glarus', NULL),
(113, 'JU', 204, 'GraubСЊnden', NULL),
(114, 'JU', 204, 'Jura', NULL),
(115, 'LU', 204, 'Luzern', NULL),
(116, 'NE', 204, 'Neuenburg', NULL),
(117, 'NW', 204, 'Nidwalden', NULL),
(118, 'OW', 204, 'Obwalden', NULL),
(119, 'SG', 204, 'St. Gallen', NULL),
(120, 'SH', 204, 'Schaffhausen', NULL),
(121, 'SO', 204, 'Solothurn', NULL),
(122, 'SZ', 204, 'Schwyz', NULL),
(123, 'TG', 204, 'Thurgau', NULL),
(124, 'TI', 204, 'Tessin', NULL),
(125, 'UR', 204, 'Uri', NULL),
(126, 'VD', 204, 'Waadt', NULL),
(127, 'VS', 204, 'Wallis', NULL),
(128, 'ZG', 204, 'Zug', NULL),
(129, 'ZH', 204, 'ZСЊrich', NULL),
(130, 'A CoruСЃa', 195, 'A CoruСЃa', NULL),
(131, 'Alava', 195, 'Alava', NULL),
(132, 'Albacete', 195, 'Albacete', NULL),
(133, 'Alicante', 195, 'Alicante', NULL),
(134, 'Almeria', 195, 'Almeria', NULL),
(135, 'Asturias', 195, 'Asturias', NULL),
(136, 'Avila', 195, 'Avila', NULL),
(137, 'Badajoz', 195, 'Badajoz', NULL),
(138, 'Baleares', 195, 'Baleares', NULL),
(139, 'Barcelona', 195, 'Barcelona', NULL),
(140, 'Burgos', 195, 'Burgos', NULL),
(141, 'Caceres', 195, 'Caceres', NULL),
(142, 'Cadiz', 195, 'Cadiz', NULL),
(143, 'Cantabria', 195, 'Cantabria', NULL),
(144, 'Castellon', 195, 'Castellon', NULL),
(145, 'Ceuta', 195, 'Ceuta', NULL),
(146, 'Ciudad Real', 195, 'Ciudad Real', NULL),
(147, 'Cordoba', 195, 'Cordoba', NULL),
(148, 'Cuenca', 195, 'Cuenca', NULL),
(149, 'Girona', 195, 'Girona', NULL),
(150, 'Granada', 195, 'Granada', NULL),
(151, 'Guadalajara', 195, 'Guadalajara', NULL),
(152, 'Guipuzcoa', 195, 'Guipuzcoa', NULL),
(153, 'Huelva', 195, 'Huelva', NULL),
(154, 'Huesca', 195, 'Huesca', NULL),
(155, 'Jaen', 195, 'Jaen', NULL),
(156, 'La Rioja', 195, 'La Rioja', NULL),
(157, 'Las Palmas', 195, 'Las Palmas', NULL),
(158, 'Leon', 195, 'Leon', NULL),
(159, 'Lleida', 195, 'Lleida', NULL),
(160, 'Lugo', 195, 'Lugo', NULL),
(161, 'Madrid', 195, 'Madrid', NULL),
(162, 'Malaga', 195, 'Malaga', NULL),
(163, 'Melilla', 195, 'Melilla', NULL),
(164, 'Murcia', 195, 'Murcia', NULL),
(165, 'Navarra', 195, 'Navarra', NULL),
(166, 'Ourense', 195, 'Ourense', NULL),
(167, 'Palencia', 195, 'Palencia', NULL),
(168, 'Pontevedra', 195, 'Pontevedra', NULL),
(169, 'Salamanca', 195, 'Salamanca', NULL),
(170, 'Santa Cruz de Tenerife', 195, 'Santa Cruz de Tenerife', NULL),
(171, 'Segovia', 195, 'Segovia', NULL),
(172, 'Sevilla', 195, 'Sevilla', NULL),
(173, 'Soria', 195, 'Soria', NULL),
(174, 'Tarragona', 195, 'Tarragona', NULL),
(175, 'Teruel', 195, 'Teruel', NULL),
(176, 'Toledo', 195, 'Toledo', NULL),
(177, 'Valencia', 195, 'Valencia', NULL),
(178, 'Valladolid', 195, 'Valladolid', NULL),
(179, 'Vizcaya', 195, 'Vizcaya', NULL),
(180, 'Zamora', 195, 'Zamora', NULL),
(181, 'Zaragoza', 195, 'Zaragoza', NULL),
(188, '2', 176, '', 'Алтай'),
(187, '1', 176, '', 'Адыгея'),
(189, '3', 176, '', 'Башкортостан'),
(190, '4', 176, '', 'Бурятия'),
(191, '5', 176, '', 'Дагестан'),
(192, '6', 176, '', 'Ингушетия'),
(193, '7', 176, '', 'Кабардино-Балкария'),
(194, '8', 176, '', 'Калмыкия'),
(195, '9', 176, '', 'Карачаево-Черкессия'),
(196, '10', 176, '', 'Карелия'),
(197, '11', 176, '', 'Коми'),
(198, '12', 176, '', 'Марий-Эл'),
(199, '13', 176, '', 'Мордовия'),
(200, '14', 176, '', 'Саха (Якутия)'),
(201, '15', 176, '', 'Северная Осетия'),
(202, '16', 176, '', 'Татарстан'),
(203, '17', 176, '', 'Тыва (Тува)'),
(204, '18', 176, '', 'Удмуртия'),
(205, '19', 176, '', 'Хакасия'),
(206, '20', 176, '', 'Чечня'),
(207, '21', 176, '', 'Чувашия'),
(208, '22', 176, '', 'Алтайский край'),
(209, '41', 176, '', 'Камчатский край'),
(210, '23', 176, '', 'Краснодарский край'),
(211, '24', 176, '', 'Красноярский край'),
(212, '59', 176, '', 'Пермский край'),
(213, '25', 176, '', 'Приморский край'),
(214, '26', 176, '', 'Ставропольский край'),
(215, '27', 176, '', 'Хабаровский край'),
(216, '28', 176, '', 'Амурская область'),
(217, '29', 176, '', 'Архангельская область'),
(218, '30', 176, '', 'Астраханская область'),
(219, '31', 176, '', 'Белгородская область'),
(220, '32', 176, '', 'Брянская область'),
(221, '33', 176, '', 'Владимирская область'),
(222, '34', 176, '', 'Волгоградская область'),
(223, '35', 176, '', 'Вологодская область'),
(224, '36', 176, '', 'Воронежская область'),
(225, '37', 176, '', 'Ивановская область'),
(226, '38', 176, '', 'Иркутская область'),
(227, '39', 176, '', 'Калининградская область'),
(228, '40', 176, '', 'Калужская область'),
(229, '42', 176, '', 'Кемеровская область'),
(230, '43', 176, '', 'Кировская область'),
(231, '44', 176, '', 'Костромская область'),
(232, '45', 176, '', 'Курганская область'),
(233, '46', 176, '', 'Курская область'),
(234, '47', 176, '', 'Ленинградская область'),
(235, '48', 176, '', 'Липецкая область'),
(236, '49', 176, '', 'Магаданская область'),
(237, '51', 176, '', 'Мурманская область'),
(238, '52', 176, '', 'Нижегородская область'),
(239, '53', 176, '', 'Новгородская область'),
(240, '54', 176, '', 'Новосибирская область'),
(241, '55', 176, '', 'Омская область'),
(242, '56', 176, '', 'Оренбургская область'),
(243, '57', 176, '', 'Орловская область'),
(244, '58', 176, '', 'Пензенская область'),
(245, '60', 176, '', 'Псковская область'),
(246, '61', 176, '', 'Ростовская область'),
(247, '62', 176, '', 'Рязанская область'),
(248, '63', 176, '', 'Самарская область'),
(249, '64', 176, '', 'Саратовская область'),
(250, '65', 176, '', 'Сахалинская область'),
(251, '66', 176, '', 'Свердловская область'),
(252, '67', 176, '', 'Смоленская область'),
(253, '68', 176, '', 'Тамбовская область'),
(254, '69', 176, '', 'Тверская область'),
(255, '70', 176, '', 'Томская область'),
(256, '71', 176, '', 'Тульская область'),
(257, '72', 176, '', 'Тюменская область'),
(258, '73', 176, '', 'Ульяновская область'),
(259, '74', 176, '', 'Челябинская область'),
(260, '75', 176, '', 'Читинская область'),
(261, '76', 176, '', 'Ярославская область'),
(262, '80', 176, '', 'Агинский Бурятский АО'),
(263, '83', 176, '', 'Ненецкий АО'),
(264, '85', 176, '', 'Усть-Ордынский Бурятский АО'),
(265, '86', 176, '', 'Ханты-Мансийский АО'),
(266, '87', 176, '', 'Чукотский АО'),
(267, '89', 176, '', 'Ямало-Ненецкий АО'),
(268, '79', 176, '', 'Еврейская АО'),
(269, '', 220, '', 'АР Крым'),
(270, '', 220, '', 'Винницкая область'),
(271, '', 220, '', 'Волынская область'),
(272, '', 220, '', 'Днепропетровская область'),
(273, '', 220, '', 'Донецкая область'),
(274, '', 220, '', 'Житомирская область'),
(275, '', 220, '', 'Закарпатская область'),
(276, '', 220, '', 'Запорожская область'),
(277, '', 220, '', 'Ивано-Франковская область'),
(278, '', 220, '', 'Киевская область'),
(279, '', 220, '', 'Кировоградская область'),
(280, '', 220, '', 'Луганская область'),
(281, '', 220, '', 'Львовская область'),
(282, '', 220, '', 'Николаевская область'),
(283, '', 220, '', 'Одесская область'),
(284, '', 220, '', 'Полтавская область'),
(285, '', 220, '', 'Ровенская область'),
(286, '', 220, '', 'Сумская область'),
(287, '', 220, '', 'Тернопольская область'),
(288, '', 220, '', 'Харьковская область'),
(289, '', 220, '', 'Херсонская область'),
(290, '', 220, '', 'Хмельницкая область'),
(291, '', 220, '', 'Черкасская область'),
(292, '', 220, '', 'Черниговская область'),
(293, '', 220, '', 'Черновицкая область'),
(294, '', 20, '', 'Брестская область'),
(295, '', 20, '', 'Гомельская область'),
(296, '', 20, '', 'Гродненская область'),
(297, '', 20, '', 'Могилёвская область'),
(298, '', 20, '', 'Минская область'),
(299, '', 20, '', 'Витебская область');

-- --------------------------------------------------------

--
-- Table structure for table `SC__courier_rates`
--

DROP TABLE IF EXISTS `SC__courier_rates`;
CREATE TABLE IF NOT EXISTS `SC__courier_rates` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `orderAmount` float default NULL,
  `rate` float default NULL,
  `isPercent` tinyint(1) default NULL,
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__courier_rates`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__courier_rates2`
--

DROP TABLE IF EXISTS `SC__courier_rates2`;
CREATE TABLE IF NOT EXISTS `SC__courier_rates2` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `orderAmount` float default NULL,
  `rate` float default NULL,
  `isPercent` tinyint(1) default NULL,
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__courier_rates2`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__intershipper_carriers`
--

DROP TABLE IF EXISTS `SC__intershipper_carriers`;
CREATE TABLE IF NOT EXISTS `SC__intershipper_carriers` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `carrierID` int(11) default NULL,
  `account` varchar(50) default NULL,
  `invoiced` tinyint(1) default NULL,
  KEY `module_id` (`module_id`,`carrierID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__intershipper_carriers`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__module_payment_invoice_jur`
--

DROP TABLE IF EXISTS `SC__module_payment_invoice_jur`;
CREATE TABLE IF NOT EXISTS `SC__module_payment_invoice_jur` (
  `module_id` int(10) unsigned default NULL,
  `orderID` int(11) default NULL,
  `company_name` varchar(64) default NULL,
  `company_inn` varchar(64) default NULL,
  `nds_included` int(11) default '0',
  `nds_rate` float default '0',
  `RUR_rate` float default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__module_payment_invoice_jur`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__module_payment_invoice_phys`
--

DROP TABLE IF EXISTS `SC__module_payment_invoice_phys`;
CREATE TABLE IF NOT EXISTS `SC__module_payment_invoice_phys` (
  `module_id` int(10) unsigned default NULL,
  `orderID` int(11) default NULL,
  `order_amount_string` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__module_payment_invoice_phys`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__module_shipping_bycountries_byzones_rates`
--

DROP TABLE IF EXISTS `SC__module_shipping_bycountries_byzones_rates`;
CREATE TABLE IF NOT EXISTS `SC__module_shipping_bycountries_byzones_rates` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `countryID` int(11) default NULL,
  `zoneID` int(11) default NULL,
  `shipping_rate` float default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__module_shipping_bycountries_byzones_rates`
--


-- --------------------------------------------------------

--
-- Table structure for table `SC__module_shipping_bycountries_byzones_rates_percent`
--

DROP TABLE IF EXISTS `SC__module_shipping_bycountries_byzones_rates_percent`;
CREATE TABLE IF NOT EXISTS `SC__module_shipping_bycountries_byzones_rates_percent` (
  `module_id` int(10) unsigned NOT NULL default '0',
  `countryID` int(11) default NULL,
  `zoneID` int(11) default NULL,
  `shipping_rate` float default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SC__module_shipping_bycountries_byzones_rates_percent`
--


-- --------------------------------------------------------

--
-- Table structure for table `SMS_BALANCE`
--

DROP TABLE IF EXISTS `SMS_BALANCE`;
CREATE TABLE IF NOT EXISTS `SMS_BALANCE` (
  `SMS_USER_ID` varchar(20) NOT NULL default '',
  `SMS_SENT` int(11) NOT NULL default '0',
  `SMS_BALANCE` decimal(15,2) default NULL,
  PRIMARY KEY  (`SMS_USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SMS_BALANCE`
--

INSERT INTO `SMS_BALANCE` (`SMS_USER_ID`, `SMS_SENT`, `SMS_BALANCE`) VALUES
('$SYSTEM', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SMS_CREDIT_HISTORY`
--

DROP TABLE IF EXISTS `SMS_CREDIT_HISTORY`;
CREATE TABLE IF NOT EXISTS `SMS_CREDIT_HISTORY` (
  `SMSG_ID` int(11) NOT NULL auto_increment,
  `SMSG_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  `SMSG_USER_ID` varchar(20) NOT NULL,
  `SMSG_QTY` decimal(15,2) default NULL,
  `SMSG_QS` char(10) NOT NULL,
  `SMSG_SOURCE` varchar(20) NOT NULL,
  PRIMARY KEY  (`SMSG_ID`),
  KEY `DATE` (`SMSG_DATETIME`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SMS_CREDIT_HISTORY`
--

INSERT INTO `SMS_CREDIT_HISTORY` (`SMSG_ID`, `SMSG_DATETIME`, `SMSG_USER_ID`, `SMSG_QTY`, `SMSG_QS`, `SMSG_SOURCE`) VALUES
(1, '2012-06-05 10:47:48', '$SYSTEM', NULL, 'SET', 'ONCREATE');

-- --------------------------------------------------------

--
-- Table structure for table `SMS_HISTORY`
--

DROP TABLE IF EXISTS `SMS_HISTORY`;
CREATE TABLE IF NOT EXISTS `SMS_HISTORY` (
  `SMSH_ID` int(11) NOT NULL auto_increment,
  `SMSH_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  `SMSH_USER_ID` varchar(20) NOT NULL,
  `SMSH_PHONE` varchar(20) NOT NULL,
  `SMSH_WIDTH` int(11) NOT NULL,
  `SMSH_QTY` int(11) NOT NULL,
  `SMSH_APP` varchar(5) NOT NULL,
  `SMSH_MODULEID` char(30) NOT NULL,
  `SMSH_TEXT` text NOT NULL,
  `SMSH_MSGID` char(50) default NULL,
  `SMSH_CHARGE` decimal(15,2) default NULL,
  `SMSH_CHARGED` tinyint(4) NOT NULL default '0',
  `SMSH_UNLIM` tinyint(4) NOT NULL default '0',
  `SMSH_STATUS` varchar(20) default NULL,
  `SMSH_STATUS_TEXT` varchar(100) default NULL,
  PRIMARY KEY  (`SMSH_ID`),
  KEY `DATETIME` (`SMSH_DATETIME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SMS_HISTORY`
--


-- --------------------------------------------------------

--
-- Table structure for table `UGROUP`
--

DROP TABLE IF EXISTS `UGROUP`;
CREATE TABLE IF NOT EXISTS `UGROUP` (
  `UG_ID` int(11) NOT NULL auto_increment,
  `UG_NAME` varchar(50) default NULL,
  PRIMARY KEY  (`UG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `UGROUP`
--


-- --------------------------------------------------------

--
-- Table structure for table `UGROUP_USER`
--

DROP TABLE IF EXISTS `UGROUP_USER`;
CREATE TABLE IF NOT EXISTS `UGROUP_USER` (
  `UG_ID` int(11) NOT NULL,
  `U_ID` varchar(20) NOT NULL,
  PRIMARY KEY  (`UG_ID`,`U_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UGROUP_USER`
--


-- --------------------------------------------------------

--
-- Table structure for table `UG_ACCESSRIGHTS`
--

DROP TABLE IF EXISTS `UG_ACCESSRIGHTS`;
CREATE TABLE IF NOT EXISTS `UG_ACCESSRIGHTS` (
  `AR_ID` varchar(20) NOT NULL default '',
  `AR_PATH` varchar(255) NOT NULL default '',
  `AR_OBJECT_ID` varchar(50) NOT NULL default '',
  `AR_VALUE` int(11) NOT NULL default '0',
  `AR_AUX` text,
  PRIMARY KEY  (`AR_PATH`,`AR_OBJECT_ID`,`AR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UG_ACCESSRIGHTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `UNSUBSCRIBER`
--

DROP TABLE IF EXISTS `UNSUBSCRIBER`;
CREATE TABLE IF NOT EXISTS `UNSUBSCRIBER` (
  `ENS_EMAIL` varchar(255) NOT NULL,
  `ENS_DATETIME` datetime NOT NULL,
  PRIMARY KEY  (`ENS_EMAIL`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UNSUBSCRIBER`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_DISK_QUOTA`
--

DROP TABLE IF EXISTS `USER_DISK_QUOTA`;
CREATE TABLE IF NOT EXISTS `USER_DISK_QUOTA` (
  `UDQ_USER_ID` varchar(20) NOT NULL,
  `UDQ_APP_ID` char(10) NOT NULL,
  `UDQ_SIZE` int(11) default NULL,
  PRIMARY KEY  (`UDQ_USER_ID`,`UDQ_APP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_DISK_QUOTA`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_SETTINGS`
--

DROP TABLE IF EXISTS `USER_SETTINGS`;
CREATE TABLE IF NOT EXISTS `USER_SETTINGS` (
  `U_ID` varchar(20) NOT NULL,
  `APP_ID` char(2) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY  (`U_ID`,`APP_ID`,`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_SETTINGS`
--

INSERT INTO `USER_SETTINGS` (`U_ID`, `APP_ID`, `NAME`, `VALUE`) VALUES
('ADMIN', '', 'START_PAGE', 'BLANK'),
('ADMIN', '', 'template', 'classic'),
('ADMIN', '', 'language', 'rus'),
('ADMIN', '', 'mailformat', 'html'),
('ADMIN', 'AA', 'LAST_TIME', '1339582256'),
('ADMIN', '', 'LAST_PAGE', 'SC/FM'),
('ADMIN', 'UG', 'LASTPAGE', '0'),
('ADMIN', 'UG', 'LASTGROUP', 'all'),
('ADMIN', 'UG', 'SORTINGgroupsall', 'C_NAME:asc'),
('ADMINISTRATOR', 'AA', 'LAST_TIME', '1339062109'),
('ADMINISTRATOR', '', 'LAST_PAGE', 'UG'),
('ADMINISTRATOR', 'UG', 'LASTPAGE', '0'),
('ADMINISTRATOR', 'UG', 'LASTGROUP', 'all'),
('ADMINISTRATOR', 'UG', 'SORTINGgroupsall', 'C_NAME:asc'),
('ADMIN', '', 'LAST_TIME', '1340984811');

-- --------------------------------------------------------

--
-- Table structure for table `U_ACCESSRIGHTS`
--

DROP TABLE IF EXISTS `U_ACCESSRIGHTS`;
CREATE TABLE IF NOT EXISTS `U_ACCESSRIGHTS` (
  `AR_ID` varchar(20) NOT NULL default '',
  `AR_PATH` varchar(255) NOT NULL default '',
  `AR_OBJECT_ID` varchar(50) NOT NULL default '',
  `AR_VALUE` int(11) NOT NULL default '0',
  `AR_AUX` text,
  PRIMARY KEY  (`AR_PATH`,`AR_OBJECT_ID`,`AR_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `U_ACCESSRIGHTS`
--

INSERT INTO `U_ACCESSRIGHTS` (`AR_ID`, `AR_PATH`, `AR_OBJECT_ID`, `AR_VALUE`, `AR_AUX`) VALUES
('ADMIN', '/ROOT/MW/SCREENS', 'PF', 1, NULL),
('ADMIN', '/ROOT/MW/FUNCTIONS', 'TAB_CONTACT', 1, NULL),
('ADMIN', '/ROOT/MW/FUNCTIONS', 'TAB_USER', 1, NULL),
('ADMIN', '/ROOT/MW/FUNCTIONS', 'TAB_GROUPS', 1, NULL),
('ADMIN', '/ROOT/MW/FUNCTIONS', 'TAB_ACCESS', 1, NULL),
('ADMIN', '/ROOT/MW/FUNCTIONS', 'TAB_QUOTA', 1, NULL),
('ADMIN', '/ROOT/MW/DA', 'DIRECTACCESS', 1, NULL),
('ADMIN', '/ROOT/UG/SCREENS', 'UNG', 1, NULL),
('ADMIN', '/ROOT/AA/SCREENS', 'CP', 1, NULL),
('ADMIN', '/ROOT/SC/SCREENS', 'FM', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__21', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__87', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__189', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__100', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__188', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__22', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__52', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__88', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__99', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__14', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__20', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__15', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__16', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__72', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__73', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__18', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__182', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__175', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__165', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__106', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__104', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__179', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__79', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__206', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__207', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__68', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__69', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__67', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__201', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__186', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__202', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__24', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__74', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__25', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__26', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__75', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__76', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__77', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__43', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__178', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__160', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__149', 1, NULL),
('ADMIN', '/ROOT/SC/FUNCTIONS', 'SC__169', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WBS_USER`
--

DROP TABLE IF EXISTS `WBS_USER`;
CREATE TABLE IF NOT EXISTS `WBS_USER` (
  `U_ID` varchar(20) NOT NULL default '',
  `C_ID` int(11) default NULL,
  `U_PASSWORD` varchar(36) default NULL,
  `U_STATUS` smallint(6) default '0',
  `U_SETTINGS` text,
  `U_SENDMAIL` smallint(2) default '0',
  `U_ACCESSTYPE` char(5) default 'IND',
  PRIMARY KEY  (`U_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WBS_USER`
--

INSERT INTO `WBS_USER` (`U_ID`, `C_ID`, `U_PASSWORD`, `U_STATUS`, `U_SETTINGS`, `U_SENDMAIL`, `U_ACCESSTYPE`) VALUES
('ADMIN', 1, '66c5df6583f8a050675cf0f91310a356', 0, '', 0, 'SUM');

-- --------------------------------------------------------

--
-- Table structure for table `WG_PARAM`
--

DROP TABLE IF EXISTS `WG_PARAM`;
CREATE TABLE IF NOT EXISTS `WG_PARAM` (
  `WG_ID` int(11) NOT NULL default '0',
  `WGP_NAME` varchar(50) NOT NULL default '',
  `WGP_VALUE` text NOT NULL,
  PRIMARY KEY  (`WG_ID`,`WGP_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WG_PARAM`
--


-- --------------------------------------------------------

--
-- Table structure for table `WG_WIDGET`
--

DROP TABLE IF EXISTS `WG_WIDGET`;
CREATE TABLE IF NOT EXISTS `WG_WIDGET` (
  `WG_ID` int(11) NOT NULL auto_increment,
  `WT_ID` varchar(30) NOT NULL default '',
  `WST_ID` varchar(30) NOT NULL default '',
  `WG_FPRINT` varchar(100) NOT NULL default '',
  `WG_DESC` text NOT NULL,
  `WG_USER` varchar(20) NOT NULL default '',
  `WG_LANG` varchar(5) NOT NULL default 'eng',
  `WG_CREATED_FROM` varchar(25) NOT NULL default '',
  `WG_CREATED_BY` varchar(100) NOT NULL default '',
  `WG_CREATED_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  `WG_MODIFIED_BY` varchar(100) NOT NULL default '',
  `WG_MODIFIED_DATETIME` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`WG_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `WG_WIDGET`
--

