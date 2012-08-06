-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: candies
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
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
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'sdv','sdv','sdv',NULL,'sdv',31,'sdv',168,'sdv','2012-07-25 09:17:11','2012-07-25 09:17:12',NULL,NULL,'sdv',1,NULL),(2,'sdv','sdv','sdv','','sdv',31,'sdv',168,'sdv','2012-07-25 15:05:31','2012-07-25 15:05:31',NULL,NULL,NULL,NULL,NULL),(3,'sdv','sdv','sdv','','sdv',31,'sdv',168,'sdv','2012-07-25 15:22:09','2012-07-25 15:22:09',NULL,NULL,NULL,NULL,NULL),(4,'sdv','sdv','sdv','','sdv',31,'sdv',168,'sdv','2012-07-25 15:27:21','2012-07-25 15:27:21',NULL,NULL,NULL,NULL,NULL),(6,'we','wer','wer','wer','wer',11,'wer',168,'123','2012-07-25 16:45:48','2012-07-25 16:45:48',NULL,NULL,NULL,NULL,NULL),(7,'xcvb','xcvb','xcvb','xcvb','xcvb',18,'cxvb',168,'123123','2012-07-25 16:45:48','2012-07-25 16:45:48',NULL,NULL,NULL,1,NULL),(8,'sdf','sdf','sdf','sdf','sdf',2,'sdf',168,'123','2012-07-26 22:23:08','2012-07-26 22:23:08',NULL,NULL,NULL,NULL,NULL),(9,'sdf','sdf','sdf','sdf','sdf',10,'123',168,'123','2012-07-26 22:23:08','2012-07-26 22:23:08',NULL,NULL,NULL,NULL,NULL),(10,'xcv','xcv','xcv',NULL,'xcv',14,'xcv',168,'xcv','2012-07-27 01:00:53','2012-07-27 01:00:53',NULL,NULL,NULL,NULL,NULL),(11,'xcv','xcv','xcv',NULL,'xcv',9,'xcv',168,'xcv','2012-07-27 01:00:53','2012-07-27 01:00:53',NULL,NULL,NULL,NULL,NULL),(12,'fg','sdfg','sdfg',NULL,'sfdg',1,'sdfg',168,'sfg','2012-07-27 01:03:53','2012-07-27 01:03:53',NULL,NULL,NULL,NULL,NULL),(13,'sdfg','sdfg','sdfg',NULL,'sfdg',1,'sdfg',168,'sdfg','2012-07-27 01:03:53','2012-07-27 01:03:53',NULL,NULL,NULL,NULL,NULL),(14,'gdfgb','fgb','fgb',NULL,'fgb',1,'dfgb',168,'dfgb','2012-07-27 01:15:31','2012-07-27 01:15:31',NULL,NULL,NULL,NULL,NULL),(15,'fgb','dfgb','fdgb',NULL,'fgb',1,'dfgb',168,'gb','2012-07-27 01:15:31','2012-07-27 01:15:31',NULL,NULL,NULL,NULL,NULL),(16,'gdfgb','fgb','fgb',NULL,'fgb',1,'dfgb',168,'dfgb','2012-07-27 01:24:47','2012-07-27 01:24:47',NULL,NULL,NULL,NULL,NULL),(17,'fgb','dfgb','fdgb',NULL,'fgb',1,'dfgb',168,'gb','2012-07-27 01:24:47','2012-07-27 01:24:47',NULL,NULL,NULL,NULL,NULL),(18,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:25:48','2012-07-27 09:25:48',NULL,NULL,NULL,NULL,NULL),(19,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:25:48','2012-07-27 09:25:48',NULL,NULL,NULL,NULL,NULL),(20,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:27:16','2012-07-27 09:27:16',NULL,NULL,NULL,NULL,NULL),(21,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:27:16','2012-07-27 09:27:16',NULL,NULL,NULL,NULL,NULL),(22,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:19','2012-07-27 09:28:19',NULL,NULL,NULL,NULL,NULL),(23,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:19','2012-07-27 09:28:19',NULL,NULL,NULL,NULL,NULL),(24,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:31','2012-07-27 09:28:31',NULL,NULL,NULL,NULL,NULL),(25,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:31','2012-07-27 09:28:31',NULL,NULL,NULL,NULL,NULL),(26,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:44','2012-07-27 09:28:44',NULL,NULL,NULL,NULL,NULL),(27,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:28:44','2012-07-27 09:28:44',NULL,NULL,NULL,NULL,NULL),(28,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:29:34','2012-07-27 09:29:34',NULL,NULL,NULL,NULL,NULL),(29,'xcv','xcv','xcv',NULL,'xcv',1,'xcv',168,'xcv','2012-07-27 09:29:34','2012-07-27 09:29:34',NULL,NULL,NULL,NULL,NULL),(30,'v','fb','dfbdf',NULL,'dfbdf',1,'bd',168,'dfb','2012-07-27 09:37:28','2012-07-27 09:37:28',NULL,NULL,NULL,NULL,NULL),(31,'bdfb','dfbdf','dfbdf',NULL,'dbf',1,'bdfb',168,'dfb','2012-07-27 09:37:28','2012-07-27 09:37:28',NULL,NULL,NULL,NULL,NULL),(32,'v','fb','dfbdf',NULL,'dfbdf',1,'bd',168,'dfb','2012-07-27 09:41:07','2012-07-27 09:41:07',NULL,NULL,NULL,NULL,NULL),(33,'bdfb','dfbdf','dfbdf',NULL,'dbf',1,'bdfb',168,'dfb','2012-07-27 09:41:07','2012-07-27 09:41:07',NULL,NULL,NULL,NULL,NULL),(34,'bfgb','fgb','fgb',NULL,'fgb',1,'fgb',168,'fgb','2012-07-27 09:57:52','2012-07-27 09:57:52',NULL,NULL,NULL,NULL,NULL),(35,'dfgb','fgb','fgb',NULL,'dfgb',1,'fgb',168,'fdgb','2012-07-27 09:57:52','2012-07-27 09:57:52',NULL,NULL,NULL,NULL,NULL),(36,'bfgb','fgb','fgb',NULL,'fgb',1,'fgb',168,'fgb','2012-07-27 09:59:56','2012-07-27 09:59:56',NULL,NULL,NULL,NULL,NULL),(37,'dfgb','fgb','fgb',NULL,'dfgb',1,'fgb',168,'fdgb','2012-07-27 09:59:56','2012-07-27 09:59:56',NULL,NULL,NULL,NULL,NULL),(38,'asc','asc','asc',NULL,'asc',1,'asc',168,'asc','2012-07-27 10:54:17','2012-07-27 10:54:17',NULL,NULL,NULL,NULL,NULL),(39,'asc','asc','asc',NULL,'asc',1,'asc',168,'asc','2012-07-27 10:54:17','2012-07-27 10:54:17',NULL,NULL,NULL,NULL,NULL),(40,'fvd','dfv','dfv',NULL,'dfv',1,'dfv',168,'dfv','2012-07-27 10:59:02','2012-07-27 10:59:02',NULL,NULL,NULL,NULL,NULL),(41,'dfv','dfv','dfv',NULL,'dfv',1,'dfv',168,'dfv','2012-07-27 10:59:02','2012-07-27 10:59:02',NULL,NULL,NULL,NULL,NULL),(42,'dfv','dfg','sdfg',NULL,'sdfg',1,'dfg',168,'sdfg','2012-07-27 11:38:06','2012-07-27 11:38:06',NULL,NULL,NULL,NULL,NULL),(43,'sdfg','sdfg','sdfg',NULL,'sfdg',1,'dfg',168,'sfdg','2012-07-27 11:38:06','2012-07-27 11:38:06',NULL,NULL,NULL,NULL,NULL),(44,'bcv','cvb','vbv',NULL,'bcv',1,'bc',168,'cvbc','2012-07-27 11:45:18','2012-07-27 11:45:18',NULL,NULL,NULL,NULL,NULL),(45,'cvb','cvb','cvb',NULL,'cvb',1,'cvb',168,'cvb','2012-07-27 11:45:18','2012-07-27 11:45:18',NULL,NULL,NULL,NULL,NULL),(46,'sdv','sd','sdv',NULL,'sdv',1,'sdv',168,'sdv','2012-07-27 11:53:03','2012-07-27 11:53:03',NULL,NULL,NULL,NULL,NULL),(47,'sdv','sdv','sdv',NULL,'sdv',1,'sdv',168,'sdv','2012-07-27 11:53:03','2012-07-27 11:53:03',NULL,NULL,NULL,NULL,NULL),(48,'sdfg','sdfg','sfdg',NULL,'sfdg',1,'dfsg',168,'sfdg','2012-07-27 12:11:44','2012-07-27 12:11:44',NULL,NULL,NULL,NULL,NULL),(49,'sdfg','sfg','sdfg',NULL,'sfdg',1,'sfg',168,'sfg','2012-07-27 12:11:44','2012-07-27 12:11:44',NULL,NULL,NULL,NULL,NULL),(50,'sdv','sdv','sdv',NULL,'sdv',1,'sdv',168,'sdv','2012-07-27 12:13:24','2012-07-27 12:13:24',NULL,NULL,NULL,NULL,NULL),(51,'sdv','sdv','sdv',NULL,'sdv',1,'dsv',168,'sdv','2012-07-27 12:13:24','2012-07-27 12:13:24',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adjustments`
--

DROP TABLE IF EXISTS `adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adjustments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adjustments`
--

LOCK TABLES `adjustments` WRITE;
/*!40000 ALTER TABLE `adjustments` DISABLE KEYS */;
INSERT INTO `adjustments` VALUES (1,1,15.00,'Доставка','2012-07-25 09:17:37','2012-07-25 09:17:37',1,'Shipment',1,NULL,13537749,'ShippingMethod'),(2,4,15.00,'Доставка','2012-07-25 16:45:59','2012-07-25 16:45:59',2,'Shipment',1,NULL,13537749,'ShippingMethod'),(3,20,15.00,'Доставка','2012-07-27 10:36:37','2012-07-27 10:36:37',3,'Shipment',1,NULL,13537749,'ShippingMethod');
/*!40000 ALTER TABLE `adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,4,'Variant','image/jpeg','7d258718f2eb39bdc3d7af12d4febd11af84db5a_m.jpg',NULL,1,'Image','2012-07-23 12:03:49',478,480,'');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculators`
--

DROP TABLE IF EXISTS `calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) NOT NULL,
  `calculable_type` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=574015645 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculators`
--

LOCK TABLES `calculators` WRITE;
/*!40000 ALTER TABLE `calculators` DISABLE KEYS */;
INSERT INTO `calculators` VALUES (13537749,'Calculator::FlatRate',13537749,'ShippingMethod','2012-07-23 07:07:47','2012-07-23 07:07:47'),(192811543,'Calculator::FlatRate',192811543,'ShippingMethod','2012-07-23 07:07:47','2012-07-23 07:07:47'),(491052212,'Calculator::FlatRate',713097208,'Promotion','2012-07-23 07:07:47','2012-07-23 07:07:47'),(574015644,'Calculator::FlatRate',574015644,'ShippingMethod','2012-07-23 07:07:47','2012-07-23 07:07:47');
/*!40000 ALTER TABLE `calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_configurations_on_name_and_type` (`name`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'Default configuration','2012-07-23 07:07:43','2012-07-23 07:07:43','AppConfiguration'),(2,'Online Support configuration','2012-07-23 07:09:54','2012-07-23 07:09:54','OnlineSupportConfiguration'),(3,'Editor configuration','2012-07-23 10:41:01','2012-07-23 10:41:01','EditorConfiguration'),(4,'Default spree_auth configuration','2012-07-25 09:11:47','2012-07-25 09:11:47','SpreeAuthConfiguration');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AFGHANISTAN','AF','Afghanistan','AFG',4),(2,'ALBANIA','AL','Albania','ALB',8),(3,'ALGERIA','DZ','Algeria','DZA',12),(4,'AMERICAN SAMOA','AS','American Samoa','ASM',16),(5,'ANDORRA','AD','Andorra','AND',20),(6,'ANGOLA','AO','Angola','AGO',24),(7,'ANGUILLA','AI','Anguilla','AIA',660),(8,'ANTIGUA AND BARBUDA','AG','Antigua and Barbuda','ATG',28),(9,'ARGENTINA','AR','Argentina','ARG',32),(10,'ARMENIA','AM','Armenia','ARM',51),(11,'ARUBA','AW','Aruba','ABW',533),(12,'AUSTRALIA','AU','Australia','AUS',36),(13,'AUSTRIA','AT','Austria','AUT',40),(14,'AZERBAIJAN','AZ','Azerbaijan','AZE',31),(15,'BAHAMAS','BS','Bahamas','BHS',44),(16,'BAHRAIN','BH','Bahrain','BHR',48),(17,'BANGLADESH','BD','Bangladesh','BGD',50),(18,'BARBADOS','BB','Barbados','BRB',52),(19,'BELARUS','BY','Belarus','BLR',112),(20,'BELGIUM','BE','Belgium','BEL',56),(21,'BELIZE','BZ','Belize','BLZ',84),(22,'BENIN','BJ','Benin','BEN',204),(23,'BERMUDA','BM','Bermuda','BMU',60),(24,'BHUTAN','BT','Bhutan','BTN',64),(25,'BOLIVIA','BO','Bolivia','BOL',68),(26,'BOSNIA AND HERZEGOVINA','BA','Bosnia and Herzegovina','BIH',70),(27,'BOTSWANA','BW','Botswana','BWA',72),(28,'BRAZIL','BR','Brazil','BRA',76),(29,'BRUNEI DARUSSALAM','BN','Brunei Darussalam','BRN',96),(30,'BULGARIA','BG','Bulgaria','BGR',100),(31,'BURKINA FASO','BF','Burkina Faso','BFA',854),(32,'BURUNDI','BI','Burundi','BDI',108),(33,'CAMBODIA','KH','Cambodia','KHM',116),(34,'CAMEROON','CM','Cameroon','CMR',120),(35,'CANADA','CA','Canada','CAN',124),(36,'CAPE VERDE','CV','Cape Verde','CPV',132),(37,'CAYMAN ISLANDS','KY','Cayman Islands','CYM',136),(38,'CENTRAL AFRICAN REPUBLIC','CF','Central African Republic','CAF',140),(39,'CHAD','TD','Chad','TCD',148),(40,'CHILE','CL','Chile','CHL',152),(41,'CHINA','CN','China','CHN',156),(42,'COLOMBIA','CO','Colombia','COL',170),(43,'COMOROS','KM','Comoros','COM',174),(44,'CONGO','CG','Congo','COG',178),(45,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','Congo, the Democratic Republic of the','COD',180),(46,'COOK ISLANDS','CK','Cook Islands','COK',184),(47,'COSTA RICA','CR','Costa Rica','CRI',188),(48,'COTE D\'IVOIRE','CI','Cote D\'Ivoire','CIV',384),(49,'CROATIA','HR','Croatia','HRV',191),(50,'CUBA','CU','Cuba','CUB',192),(51,'CYPRUS','CY','Cyprus','CYP',196),(52,'CZECH REPUBLIC','CZ','Czech Republic','CZE',203),(53,'DENMARK','DK','Denmark','DNK',208),(54,'DJIBOUTI','DJ','Djibouti','DJI',262),(55,'DOMINICA','DM','Dominica','DMA',212),(56,'DOMINICAN REPUBLIC','DO','Dominican Republic','DOM',214),(57,'ECUADOR','EC','Ecuador','ECU',218),(58,'EGYPT','EG','Egypt','EGY',818),(59,'EL SALVADOR','SV','El Salvador','SLV',222),(60,'EQUATORIAL GUINEA','GQ','Equatorial Guinea','GNQ',226),(61,'ERITREA','ER','Eritrea','ERI',232),(62,'ESTONIA','EE','Estonia','EST',233),(63,'ETHIOPIA','ET','Ethiopia','ETH',231),(64,'FALKLAND ISLANDS (MALVINAS)','FK','Falkland Islands (Malvinas)','FLK',238),(65,'FAROE ISLANDS','FO','Faroe Islands','FRO',234),(66,'FIJI','FJ','Fiji','FJI',242),(67,'FINLAND','FI','Finland','FIN',246),(68,'FRANCE','FR','France','FRA',250),(69,'FRENCH GUIANA','GF','French Guiana','GUF',254),(70,'FRENCH POLYNESIA','PF','French Polynesia','PYF',258),(71,'GABON','GA','Gabon','GAB',266),(72,'GAMBIA','GM','Gambia','GMB',270),(73,'GEORGIA','GE','Georgia','GEO',268),(74,'GERMANY','DE','Germany','DEU',276),(75,'GHANA','GH','Ghana','GHA',288),(76,'GIBRALTAR','GI','Gibraltar','GIB',292),(77,'GREECE','GR','Greece','GRC',300),(78,'GREENLAND','GL','Greenland','GRL',304),(79,'GRENADA','GD','Grenada','GRD',308),(80,'GUADELOUPE','GP','Guadeloupe','GLP',312),(81,'GUAM','GU','Guam','GUM',316),(82,'GUATEMALA','GT','Guatemala','GTM',320),(83,'GUINEA','GN','Guinea','GIN',324),(84,'GUINEA-BISSAU','GW','Guinea-Bissau','GNB',624),(85,'GUYANA','GY','Guyana','GUY',328),(86,'HAITI','HT','Haiti','HTI',332),(87,'HOLY SEE (VATICAN CITY STATE)','VA','Holy See (Vatican City State)','VAT',336),(88,'HONDURAS','HN','Honduras','HND',340),(89,'HONG KONG','HK','Hong Kong','HKG',344),(90,'HUNGARY','HU','Hungary','HUN',348),(91,'ICELAND','IS','Iceland','ISL',352),(92,'INDIA','IN','India','IND',356),(93,'INDONESIA','ID','Indonesia','IDN',360),(94,'IRAN, ISLAMIC REPUBLIC OF','IR','Iran, Islamic Republic of','IRN',364),(95,'IRAQ','IQ','Iraq','IRQ',368),(96,'IRELAND','IE','Ireland','IRL',372),(97,'ISRAEL','IL','Israel','ISR',376),(98,'ITALY','IT','Italy','ITA',380),(99,'JAMAICA','JM','Jamaica','JAM',388),(100,'JAPAN','JP','Japan','JPN',392),(101,'JORDAN','JO','Jordan','JOR',400),(102,'KAZAKHSTAN','KZ','Kazakhstan','KAZ',398),(103,'KENYA','KE','Kenya','KEN',404),(104,'KIRIBATI','KI','Kiribati','KIR',296),(105,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','North Korea','PRK',408),(106,'KOREA, REPUBLIC OF','KR','South Korea','KOR',410),(107,'KUWAIT','KW','Kuwait','KWT',414),(108,'KYRGYZSTAN','KG','Kyrgyzstan','KGZ',417),(109,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','Lao People\'s Democratic Republic','LAO',418),(110,'LATVIA','LV','Latvia','LVA',428),(111,'LEBANON','LB','Lebanon','LBN',422),(112,'LESOTHO','LS','Lesotho','LSO',426),(113,'LIBERIA','LR','Liberia','LBR',430),(114,'LIBYAN ARAB JAMAHIRIYA','LY','Libyan Arab Jamahiriya','LBY',434),(115,'LIECHTENSTEIN','LI','Liechtenstein','LIE',438),(116,'LITHUANIA','LT','Lithuania','LTU',440),(117,'LUXEMBOURG','LU','Luxembourg','LUX',442),(118,'MACAO','MO','Macao','MAC',446),(119,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','MK','Macedonia','MKD',807),(120,'MADAGASCAR','MG','Madagascar','MDG',450),(121,'MALAWI','MW','Malawi','MWI',454),(122,'MALAYSIA','MY','Malaysia','MYS',458),(123,'MALDIVES','MV','Maldives','MDV',462),(124,'MALI','ML','Mali','MLI',466),(125,'MALTA','MT','Malta','MLT',470),(126,'MARSHALL ISLANDS','MH','Marshall Islands','MHL',584),(127,'MARTINIQUE','MQ','Martinique','MTQ',474),(128,'MAURITANIA','MR','Mauritania','MRT',478),(129,'MAURITIUS','MU','Mauritius','MUS',480),(130,'MEXICO','MX','Mexico','MEX',484),(131,'MICRONESIA, FEDERATED STATES OF','FM','Micronesia, Federated States of','FSM',583),(132,'MOLDOVA, REPUBLIC OF','MD','Moldova, Republic of','MDA',498),(133,'MONACO','MC','Monaco','MCO',492),(134,'MONGOLIA','MN','Mongolia','MNG',496),(135,'MONTSERRAT','MS','Montserrat','MSR',500),(136,'MOROCCO','MA','Morocco','MAR',504),(137,'MOZAMBIQUE','MZ','Mozambique','MOZ',508),(138,'MYANMAR','MM','Myanmar','MMR',104),(139,'NAMIBIA','NA','Namibia','NAM',516),(140,'NAURU','NR','Nauru','NRU',520),(141,'NEPAL','NP','Nepal','NPL',524),(142,'NETHERLANDS','NL','Netherlands','NLD',528),(143,'NETHERLANDS ANTILLES','AN','Netherlands Antilles','ANT',530),(144,'NEW CALEDONIA','NC','New Caledonia','NCL',540),(145,'NEW ZEALAND','NZ','New Zealand','NZL',554),(146,'NICARAGUA','NI','Nicaragua','NIC',558),(147,'NIGER','NE','Niger','NER',562),(148,'NIGERIA','NG','Nigeria','NGA',566),(149,'NIUE','NU','Niue','NIU',570),(150,'NORFOLK ISLAND','NF','Norfolk Island','NFK',574),(151,'NORTHERN MARIANA ISLANDS','MP','Northern Mariana Islands','MNP',580),(152,'NORWAY','NO','Norway','NOR',578),(153,'OMAN','OM','Oman','OMN',512),(154,'PAKISTAN','PK','Pakistan','PAK',586),(155,'PALAU','PW','Palau','PLW',585),(156,'PANAMA','PA','Panama','PAN',591),(157,'PAPUA NEW GUINEA','PG','Papua New Guinea','PNG',598),(158,'PARAGUAY','PY','Paraguay','PRY',600),(159,'PERU','PE','Peru','PER',604),(160,'PHILIPPINES','PH','Philippines','PHL',608),(161,'PITCAIRN','PN','Pitcairn','PCN',612),(162,'POLAND','PL','Poland','POL',616),(163,'PORTUGAL','PT','Portugal','PRT',620),(164,'PUERTO RICO','PR','Puerto Rico','PRI',630),(165,'QATAR','QA','Qatar','QAT',634),(166,'REUNION','RE','Reunion','REU',638),(167,'ROMANIA','RO','Romania','ROM',642),(168,'RUSSIAN FEDERATION','RU','Российская Федерация','RUS',643),(169,'RWANDA','RW','Rwanda','RWA',646),(170,'SAINT HELENA','SH','Saint Helena','SHN',654),(171,'SAINT KITTS AND NEVIS','KN','Saint Kitts and Nevis','KNA',659),(172,'SAINT LUCIA','LC','Saint Lucia','LCA',662),(173,'SAINT PIERRE AND MIQUELON','PM','Saint Pierre and Miquelon','SPM',666),(174,'SAINT VINCENT AND THE GRENADINES','VC','Saint Vincent and the Grenadines','VCT',670),(175,'SAMOA','WS','Samoa','WSM',882),(176,'SAN MARINO','SM','San Marino','SMR',674),(177,'SAO TOME AND PRINCIPE','ST','Sao Tome and Principe','STP',678),(178,'SAUDI ARABIA','SA','Saudi Arabia','SAU',682),(179,'SENEGAL','SN','Senegal','SEN',686),(180,'SEYCHELLES','SC','Seychelles','SYC',690),(181,'SIERRA LEONE','SL','Sierra Leone','SLE',694),(182,'SINGAPORE','SG','Singapore','SGP',702),(183,'SLOVAKIA','SK','Slovakia','SVK',703),(184,'SLOVENIA','SI','Slovenia','SVN',705),(185,'SOLOMON ISLANDS','SB','Solomon Islands','SLB',90),(186,'SOMALIA','SO','Somalia','SOM',706),(187,'SOUTH AFRICA','ZA','South Africa','ZAF',710),(188,'SPAIN','ES','Spain','ESP',724),(189,'SRI LANKA','LK','Sri Lanka','LKA',144),(190,'SUDAN','SD','Sudan','SDN',736),(191,'SURINAME','SR','Suriname','SUR',740),(192,'SVALBARD AND JAN MAYEN','SJ','Svalbard and Jan Mayen','SJM',744),(193,'SWAZILAND','SZ','Swaziland','SWZ',748),(194,'SWEDEN','SE','Sweden','SWE',752),(195,'SWITZERLAND','CH','Switzerland','CHE',756),(196,'SYRIAN ARAB REPUBLIC','SY','Syrian Arab Republic','SYR',760),(197,'TAIWAN, PROVINCE OF CHINA','TW','Taiwan','TWN',158),(198,'TAJIKISTAN','TJ','Tajikistan','TJK',762),(199,'TANZANIA, UNITED REPUBLIC OF','TZ','Tanzania, United Republic of','TZA',834),(200,'THAILAND','TH','Thailand','THA',764),(201,'TOGO','TG','Togo','TGO',768),(202,'TOKELAU','TK','Tokelau','TKL',772),(203,'TONGA','TO','Tonga','TON',776),(204,'TRINIDAD AND TOBAGO','TT','Trinidad and Tobago','TTO',780),(205,'TUNISIA','TN','Tunisia','TUN',788),(206,'TURKEY','TR','Turkey','TUR',792),(207,'TURKMENISTAN','TM','Turkmenistan','TKM',795),(208,'TURKS AND CAICOS ISLANDS','TC','Turks and Caicos Islands','TCA',796),(209,'TUVALU','TV','Tuvalu','TUV',798),(210,'UGANDA','UG','Uganda','UGA',800),(211,'UKRAINE','UA','Ukraine','UKR',804),(212,'UNITED ARAB EMIRATES','AE','United Arab Emirates','ARE',784),(213,'UNITED KINGDOM','GB','United Kingdom','GBR',826),(214,'UNITED STATES','US','United States','USA',840),(215,'URUGUAY','UY','Uruguay','URY',858),(216,'UZBEKISTAN','UZ','Uzbekistan','UZB',860),(217,'VANUATU','VU','Vanuatu','VUT',548),(218,'VENEZUELA','VE','Venezuela','VEN',862),(219,'VIET NAM','VN','Viet Nam','VNM',704),(220,'VIRGIN ISLANDS, BRITISH','VG','Virgin Islands, British','VGB',92),(221,'VIRGIN ISLANDS, U.S.','VI','Virgin Islands, U.S.','VIR',850),(222,'WALLIS AND FUTUNA','WF','Wallis and Futuna','WLF',876),(223,'WESTERN SAHARA','EH','Western Sahara','ESH',732),(224,'YEMEN','YE','Yemen','YEM',887),(225,'ZAMBIA','ZM','Zambia','ZMB',894),(226,'ZIMBABWE','ZW','Zimbabwe','ZWE',716);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcards`
--

DROP TABLE IF EXISTS `creditcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcards` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcards`
--

LOCK TABLES `creditcards` WRITE;
/*!40000 ALTER TABLE `creditcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateways` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_units`
--

DROP TABLE IF EXISTS `inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_units` (
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_units`
--

LOCK TABLES `inventory_units` WRITE;
/*!40000 ALTER TABLE `inventory_units` DISABLE KEYS */;
INSERT INTO `inventory_units` VALUES (1,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(2,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(3,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(4,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(5,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(6,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(7,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(8,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(9,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(10,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(11,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(12,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(13,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(14,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(15,1,1,'backordered',0,'2012-07-25 15:27:50','2012-07-25 15:27:50',1,NULL),(16,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(17,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(18,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(19,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(20,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(21,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(22,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(23,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(24,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(25,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(26,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(27,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(28,1,4,'backordered',0,'2012-07-25 16:46:13','2012-07-25 16:46:13',2,NULL),(29,1,20,'backordered',0,'2012-07-27 10:39:16','2012-07-27 10:39:16',3,NULL),(30,1,22,'backordered',0,'2012-07-27 10:59:23','2012-07-27 10:59:23',NULL,NULL),(31,1,23,'backordered',0,'2012-07-27 11:38:21','2012-07-27 11:38:21',NULL,NULL),(32,1,25,'backordered',0,'2012-07-27 11:53:18','2012-07-27 11:53:18',NULL,NULL),(33,1,25,'backordered',0,'2012-07-27 11:53:18','2012-07-27 11:53:18',NULL,NULL),(34,1,25,'backordered',0,'2012-07-27 11:53:18','2012-07-27 11:53:18',NULL,NULL),(35,1,25,'backordered',0,'2012-07-27 11:53:18','2012-07-27 11:53:18',NULL,NULL),(36,1,25,'backordered',0,'2012-07-27 11:53:18','2012-07-27 11:53:18',NULL,NULL),(37,1,28,'backordered',0,'2012-07-27 12:13:40','2012-07-27 12:13:40',NULL,NULL);
/*!40000 ALTER TABLE `inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_items`
--

DROP TABLE IF EXISTS `line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_items` (
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_items`
--

LOCK TABLES `line_items` WRITE;
/*!40000 ALTER TABLE `line_items` DISABLE KEYS */;
INSERT INTO `line_items` VALUES (2,2,1,52,2600.00,'2012-07-24 08:32:53','2012-07-24 16:50:00'),(3,3,1,1,2600.00,'2012-07-24 18:22:20','2012-07-24 21:03:49'),(4,3,2,1,1899.00,'2012-07-24 18:22:38','2012-07-24 20:57:05'),(10,1,1,15,2600.00,'2012-07-25 08:58:33','2012-07-25 09:08:13'),(11,4,1,13,2600.00,'2012-07-25 15:36:59','2012-07-25 15:37:08'),(12,5,1,45,2600.00,'2012-07-25 19:13:55','2012-07-25 19:30:05'),(15,6,1,1,2600.00,'2012-07-26 15:14:49','2012-07-26 15:14:49'),(16,7,1,1,2600.00,'2012-07-26 15:16:00','2012-07-26 15:16:00'),(17,8,1,1,2600.00,'2012-07-26 15:22:00','2012-07-26 15:22:00'),(18,9,1,1,2600.00,'2012-07-26 15:25:50','2012-07-26 15:25:50'),(19,10,1,1,2600.00,'2012-07-26 15:34:08','2012-07-26 15:34:08'),(20,15,1,1,2600.00,'2012-07-26 23:08:05','2012-07-26 23:08:05'),(21,16,1,1,2600.00,'2012-07-27 01:03:22','2012-07-27 01:03:22'),(22,17,1,1,2600.00,'2012-07-27 01:15:05','2012-07-27 01:15:05'),(23,18,1,1,2600.00,'2012-07-27 09:25:08','2012-07-27 09:25:08'),(24,19,1,1,2600.00,'2012-07-27 09:34:30','2012-07-27 09:34:30'),(25,20,1,1,2600.00,'2012-07-27 09:57:07','2012-07-27 09:57:07'),(26,21,1,2,2600.00,'2012-07-27 10:44:14','2012-07-27 10:46:51'),(27,22,1,1,2600.00,'2012-07-27 10:58:36','2012-07-27 10:58:36'),(28,23,1,1,2600.00,'2012-07-27 11:37:37','2012-07-27 11:37:37'),(30,24,1,14,2600.00,'2012-07-27 11:40:20','2012-07-27 11:42:42'),(31,25,1,5,2600.00,'2012-07-27 11:52:33','2012-07-27 11:52:42'),(32,27,1,1,2600.00,'2012-07-27 12:07:59','2012-07-27 12:07:59'),(33,28,1,1,2600.00,'2012-07-27 12:13:01','2012-07-27 12:13:01');
/*!40000 ALTER TABLE `line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_entries`
--

DROP TABLE IF EXISTS `log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `details` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_entries`
--

LOCK TABLES `log_entries` WRITE;
/*!40000 ALTER TABLE `log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_methods`
--

DROP TABLE IF EXISTS `mail_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_methods`
--

LOCK TABLES `mail_methods` WRITE;
/*!40000 ALTER TABLE `mail_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_types`
--

DROP TABLE IF EXISTS `option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_types`
--

LOCK TABLES `option_types` WRITE;
/*!40000 ALTER TABLE `option_types` DISABLE KEYS */;
INSERT INTO `option_types` VALUES (1,'color','цвет','2012-07-23 17:58:50','2012-07-23 18:00:11',0),(2,'size','Размер','2012-07-23 18:24:56','2012-07-23 18:24:56',0);
/*!40000 ALTER TABLE `option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_types_prototypes`
--

DROP TABLE IF EXISTS `option_types_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_types_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_types_prototypes`
--

LOCK TABLES `option_types_prototypes` WRITE;
/*!40000 ALTER TABLE `option_types_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `option_types_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_values`
--

DROP TABLE IF EXISTS `option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_values`
--

LOCK TABLES `option_values` WRITE;
/*!40000 ALTER TABLE `option_values` DISABLE KEYS */;
INSERT INTO `option_values` VALUES (1,1,'red',1,'красный','2012-07-23 18:00:11','2012-07-23 18:00:11'),(2,2,'39',1,'39','2012-07-23 18:26:29','2012-07-23 18:26:59'),(3,2,'40',2,'40','2012-07-23 18:26:29','2012-07-23 18:26:59'),(4,2,'41',2,'41','2012-07-23 18:26:29','2012-07-23 18:26:59'),(5,1,'black',2,'черный','2012-07-23 18:31:54','2012-07-23 18:31:54');
/*!40000 ALTER TABLE `option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_values_variants`
--

DROP TABLE IF EXISTS `option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_values_variants` (
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  KEY `index_option_values_variants_on_variant_id` (`variant_id`),
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_values_variants`
--

LOCK TABLES `option_values_variants` WRITE;
/*!40000 ALTER TABLE `option_values_variants` DISABLE KEYS */;
INSERT INTO `option_values_variants` VALUES (4,1),(5,1),(6,1),(6,2),(7,4),(7,5),(8,1),(8,3);
/*!40000 ALTER TABLE `option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'R254003880',39000.00,39015.00,'2012-07-23 13:19:17','2012-07-25 15:27:50','complete',15.00,0.00,'2012-07-25 15:27:50',1,1,0.00,13537749,'ready','pending','spree@example.com',NULL),(2,2,'R843876270',135200.00,135200.00,'2012-07-24 08:05:22','2012-07-24 08:05:22','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending',NULL,NULL),(3,3,'R625475525',4499.00,4499.00,'2012-07-24 18:22:20','2012-07-24 18:22:20','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending',NULL,NULL),(4,1,'R676187417',33800.00,33815.00,'2012-07-25 15:36:58','2012-07-25 16:46:13','complete',15.00,0.00,'2012-07-25 16:46:13',7,7,0.00,13537749,'ready','pending','spree@example.com',NULL),(5,1,'R865750688',117000.00,117000.00,'2012-07-25 19:13:55','2012-07-25 19:13:55','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending','spree@example.com',NULL),(6,5,'R445783088',2600.00,2600.00,'2012-07-26 14:46:09','2012-07-26 15:02:06','address',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending','grigl@mail.ru',NULL),(7,6,'R085823874',2600.00,2600.00,'2012-07-26 15:16:00','2012-07-26 15:16:30','address',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending','griglmail@gmail.com',NULL),(8,7,'R783417755',2600.00,2600.00,'2012-07-26 15:22:00','2012-07-26 15:23:33','address',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending','admin@example.com',NULL),(9,8,'R628618748',2600.00,2600.00,'2012-07-26 15:25:49','2012-07-26 15:26:24','address',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,'pending','go@example.com',NULL),(10,9,'R410731864',2600.00,2600.00,'2012-07-26 15:34:08','2012-07-26 22:23:08','delivery',0.00,0.00,NULL,9,9,0.00,NULL,NULL,'pending','dasdasd@example.com',NULL),(11,10,'R060008430',0.00,0.00,'2012-07-26 22:46:41','2012-07-26 22:46:41','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL),(12,11,'R648485260',0.00,0.00,'2012-07-26 22:46:54','2012-07-26 22:46:54','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL),(13,12,'R050325252',0.00,0.00,'2012-07-26 22:50:29','2012-07-26 22:50:29','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL),(14,13,'R701788604',0.00,0.00,'2012-07-26 22:55:09','2012-07-26 22:55:09','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL),(15,14,'R030574617',2600.00,2600.00,'2012-07-26 23:07:50','2012-07-27 01:00:53','address',0.00,0.00,NULL,11,11,0.00,NULL,NULL,'pending','gr@exampl.com',NULL),(16,15,'R121127180',2600.00,2600.00,'2012-07-27 01:03:13','2012-07-27 01:03:53','address',0.00,0.00,NULL,13,13,0.00,NULL,NULL,'pending','dfbdfb@svsdv.ru',NULL),(17,16,'R162458382',2600.00,2600.00,'2012-07-27 01:14:56','2012-07-27 01:24:47','address',0.00,0.00,NULL,17,17,0.00,NULL,NULL,'pending','dfgsdf@sdsd.ru',NULL),(18,17,'R670256647',2600.00,2600.00,'2012-07-27 09:25:01','2012-07-27 09:29:34','address',0.00,0.00,NULL,29,29,0.00,NULL,NULL,'pending','hjhv@dcsd.ru',NULL),(19,18,'R157627674',2600.00,2600.00,'2012-07-27 09:34:19','2012-07-27 09:41:07','delivery',0.00,0.00,NULL,33,33,0.00,NULL,NULL,'pending','dsdvs@sdsdv.ru',NULL),(20,19,'R110586886',2600.00,2615.00,'2012-07-27 09:56:56','2012-07-27 10:39:15','complete',15.00,0.00,'2012-07-27 10:39:16',37,37,0.00,13537749,'pending','balance_due','sfvdf@sdcsd.ru',NULL),(21,20,'R067504813',5200.00,5200.00,'2012-07-27 10:42:28','2012-07-27 10:54:25','delivery',0.00,0.00,NULL,39,39,0.00,13537749,NULL,'pending','sdfgsf@sdsdv.ru',NULL),(22,21,'R764480733',2600.00,2600.00,'2012-07-27 10:58:29','2012-07-27 10:59:23','complete',0.00,0.00,'2012-07-27 10:59:23',41,41,0.00,13537749,NULL,'pending','fvdfv@rfer.ru',NULL),(23,22,'R553676822',2600.00,2600.00,'2012-07-27 10:59:37','2012-07-27 11:38:20','complete',0.00,0.00,'2012-07-27 11:38:21',43,43,0.00,13537749,NULL,'pending','sdfsdf@sdfsdf.ru',NULL),(24,23,'R124772178',36400.00,36400.00,'2012-07-27 11:38:47','2012-07-27 11:49:19','confirm',0.00,0.00,NULL,45,45,0.00,192811543,NULL,'pending','jvg@hgjg.com',NULL),(25,24,'R342633144',13000.00,13000.00,'2012-07-27 11:52:25','2012-07-27 11:53:18','complete',0.00,0.00,'2012-07-27 11:53:18',47,47,0.00,13537749,NULL,'pending','sdfsd@rter.com',NULL),(26,25,'R025566463',0.00,0.00,'2012-07-27 11:53:25','2012-07-27 11:53:25','cart',0.00,0.00,NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,NULL),(27,26,'R643846268',2600.00,2600.00,'2012-07-27 12:04:38','2012-07-27 12:11:54','confirm',0.00,0.00,NULL,49,49,0.00,574015644,NULL,'pending','sdvsd@fvd.ru',NULL),(28,27,'R863132707',2600.00,2600.00,'2012-07-27 12:12:53','2012-07-27 12:13:39','complete',0.00,0.00,'2012-07-27 12:13:39',51,51,0.00,13537749,NULL,'pending','sfgb@erw.com',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Gateway::Robokassa','Робокасса','',1,'development','2012-07-25 11:44:32','2012-07-25 11:44:32',NULL,''),(2,'PaymentMethod::Check','Чек','',1,'development','2012-07-25 11:45:09','2012-07-25 11:45:09',NULL,'');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (4,1,'2012-07-25 15:27:33','2012-07-25 15:27:33',39015.00,NULL,NULL,2,'checkout',NULL,NULL),(5,4,'2012-07-25 16:46:06','2012-07-25 16:46:06',33815.00,NULL,NULL,2,'checkout',NULL,NULL),(6,20,'2012-07-27 10:00:16','2012-07-27 10:00:16',2615.00,NULL,NULL,2,'checkout',NULL,NULL),(7,20,'2012-07-27 10:11:15','2012-07-27 10:11:15',2600.00,NULL,NULL,2,'checkout',NULL,NULL),(8,20,'2012-07-27 10:36:36','2012-07-27 10:36:36',2600.00,NULL,NULL,2,'checkout',NULL,NULL),(9,20,'2012-07-27 10:39:15','2012-07-27 10:39:15',2615.00,NULL,NULL,2,'checkout',NULL,NULL),(10,21,'2012-07-27 10:54:25','2012-07-27 10:54:25',5200.00,NULL,NULL,1,'checkout',NULL,NULL),(11,21,'2012-07-27 10:55:06','2012-07-27 10:55:06',5200.00,NULL,NULL,2,'checkout',NULL,NULL),(12,21,'2012-07-27 10:55:28','2012-07-27 10:55:28',5200.00,NULL,NULL,1,'checkout',NULL,NULL),(13,21,'2012-07-27 10:57:06','2012-07-27 10:57:06',5200.00,NULL,NULL,2,'checkout',NULL,NULL),(14,22,'2012-07-27 10:59:23','2012-07-27 10:59:23',2600.00,NULL,NULL,2,'checkout',NULL,NULL),(15,23,'2012-07-27 11:38:20','2012-07-27 11:38:20',2600.00,NULL,NULL,2,'checkout',NULL,NULL),(16,24,'2012-07-27 11:45:31','2012-07-27 11:45:31',36400.00,NULL,NULL,1,'checkout',NULL,NULL),(17,24,'2012-07-27 11:46:04','2012-07-27 11:46:04',36400.00,NULL,NULL,2,'checkout',NULL,NULL),(18,24,'2012-07-27 11:46:40','2012-07-27 11:46:40',36400.00,NULL,NULL,2,'checkout',NULL,NULL),(19,24,'2012-07-27 11:46:49','2012-07-27 11:46:49',36400.00,NULL,NULL,1,'checkout',NULL,NULL),(20,24,'2012-07-27 11:49:19','2012-07-27 11:49:19',36400.00,NULL,NULL,1,'checkout',NULL,NULL),(21,25,'2012-07-27 11:53:11','2012-07-27 11:53:11',13000.00,NULL,NULL,2,'checkout',NULL,NULL),(22,27,'2012-07-27 12:11:54','2012-07-27 12:11:54',2600.00,NULL,NULL,1,'checkout',NULL,NULL),(23,28,'2012-07-27 12:13:34','2012-07-27 12:13:34',2600.00,NULL,NULL,2,'checkout',NULL,NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preferences` (
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
) ENGINE=InnoDB AUTO_INCREMENT=243735674 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES (1,'default_locale',1,'Configuration',NULL,NULL,'ru','2012-07-23 07:07:43','2012-07-27 12:13:38'),(2,'default_country_id',1,'Configuration',NULL,NULL,'168','2012-07-23 07:07:43','2012-07-27 12:13:38'),(3,'allow_ssl_in_production',1,'Configuration',NULL,NULL,'0','2012-07-23 07:07:43','2012-07-27 12:13:38'),(4,'disable_bill_address',1,'Configuration',NULL,NULL,'1','2012-07-23 07:07:43','2012-07-27 12:13:38'),(5,'admin_interface_logo',1,'Configuration',NULL,NULL,'admin/logo.png','2012-07-23 07:07:43','2012-07-23 07:07:43'),(6,'store_email',1,'Configuration',NULL,NULL,'test@site.ru','2012-07-23 07:07:43','2012-07-23 07:07:43'),(7,'store_phone',1,'Configuration',NULL,NULL,'+7 (495) 1234567','2012-07-23 07:07:43','2012-07-23 07:07:43'),(8,'products_per_page',1,'Configuration',NULL,NULL,'9','2012-07-23 07:07:43','2012-07-27 12:13:38'),(59769363,'amount',491052212,'Calculator',NULL,NULL,'5','2012-07-23 07:07:47','2012-07-23 07:07:47'),(87531454,'amount',192811543,'Calculator',NULL,NULL,'10','2012-07-23 07:07:47','2012-07-23 07:07:47'),(174063089,'amount',574015644,'Calculator',NULL,NULL,'5','2012-07-23 07:07:47','2012-07-23 07:07:47'),(243735672,'amount',13537749,'Calculator',NULL,NULL,'15','2012-07-23 07:07:47','2012-07-23 07:07:47'),(243735673,'checkout_zone',1,'Configuration',NULL,NULL,'РФ','2012-07-23 07:09:41','2012-07-23 07:09:41');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_groups`
--

DROP TABLE IF EXISTS `product_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_groups_on_name` (`name`),
  KEY `index_product_groups_on_permalink` (`permalink`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_groups`
--

LOCK TABLES `product_groups` WRITE;
/*!40000 ALTER TABLE `product_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_groups_products`
--

DROP TABLE IF EXISTS `product_groups_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_groups_products` (
  `product_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_groups_products`
--

LOCK TABLES `product_groups_products` WRITE;
/*!40000 ALTER TABLE `product_groups_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_groups_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_types`
--

DROP TABLE IF EXISTS `product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_types`
--

LOCK TABLES `product_option_types` WRITE;
/*!40000 ALTER TABLE `product_option_types` DISABLE KEYS */;
INSERT INTO `product_option_types` VALUES (1,3,1,1,'2012-07-23 18:01:07','2012-07-23 18:01:07'),(2,1,1,1,'2012-07-23 18:23:59','2012-07-23 18:23:59'),(3,1,2,2,'2012-07-23 18:34:50','2012-07-23 18:34:50'),(4,3,2,2,'2012-07-23 18:41:39','2012-07-23 18:41:39');
/*!40000 ALTER TABLE `product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_properties`
--

DROP TABLE IF EXISTS `product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_properties_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_properties`
--

LOCK TABLES `product_properties` WRITE;
/*!40000 ALTER TABLE `product_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_scopes`
--

DROP TABLE IF EXISTS `product_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `arguments` text,
  PRIMARY KEY (`id`),
  KEY `index_product_scopes_on_name` (`name`),
  KEY `index_product_scopes_on_product_group_id` (`product_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_scopes`
--

LOCK TABLES `product_scopes` WRITE;
/*!40000 ALTER TABLE `product_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
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
  PRIMARY KEY (`id`),
  KEY `index_products_on_available_on` (`available_on`),
  KEY `index_products_on_deleted_at` (`deleted_at`),
  KEY `index_products_on_name` (`name`),
  KEY `index_products_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Converse Brown All Stars','Описание товара','2012-07-23 11:43:14','2012-07-23 18:37:49','converse-brown-all-stars','2012-07-04 20:00:00',NULL,NULL,NULL,'','',0,1),(2,'Converse black','Описание товара&nbsp;','2012-07-23 12:01:49','2012-07-23 13:27:21','converse-black','2012-07-04 20:00:00',NULL,NULL,NULL,'','',0,1),(3,'Keds White','Описание товара&nbsp;','2012-07-23 12:02:56','2012-07-23 18:40:50','keds-white','2012-07-04 20:00:00',NULL,NULL,NULL,'','',0,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_promotion_rules`
--

DROP TABLE IF EXISTS `products_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_promotion_rules` (
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_promotion_rules`
--

LOCK TABLES `products_promotion_rules` WRITE;
/*!40000 ALTER TABLE `products_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_taxons`
--

DROP TABLE IF EXISTS `products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_taxons` (
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  KEY `index_products_taxons_on_product_id` (`product_id`),
  KEY `index_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_taxons`
--

LOCK TABLES `products_taxons` WRITE;
/*!40000 ALTER TABLE `products_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_rules`
--

DROP TABLE IF EXISTS `promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_rules` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_rules`
--

LOCK TABLES `promotion_rules` WRITE;
/*!40000 ALTER TABLE `promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_rules_users`
--

DROP TABLE IF EXISTS `promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_rules_users` (
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  KEY `index_promotion_rules_users_on_user_id` (`user_id`),
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_rules_users`
--

LOCK TABLES `promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_prototypes`
--

DROP TABLE IF EXISTS `properties_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties_prototypes` (
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_prototypes`
--

LOCK TABLES `properties_prototypes` WRITE;
/*!40000 ALTER TABLE `properties_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prototypes`
--

DROP TABLE IF EXISTS `prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prototypes`
--

LOCK TABLES `prototypes` WRITE;
/*!40000 ALTER TABLE `prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_authorizations`
--

DROP TABLE IF EXISTS `return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `reason` text,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_authorizations`
--

LOCK TABLES `return_authorizations` WRITE;
/*!40000 ALTER TABLE `return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id` (`role_id`),
  KEY `index_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,1);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20081216193152'),('20090311090247'),('20090625125735'),('20090814113100'),('20090814142845'),('20090823005402'),('20090827180351'),('20090829000527'),('20090904192342'),('20090923100315'),('20091007134354'),('20091008091614'),('20091012120519'),('20091015110842'),('20091015153048'),('20091016174634'),('20091017175558'),('20091021133257'),('20091104151730'),('20091126190904'),('20091209153045'),('20091209202200'),('20091211203813'),('20091212161118'),('20091213222815'),('20091214183826'),('20091219021134'),('20100105090147'),('20100105132138'),('20100107141738'),('20100111205525'),('20100112151511'),('20100113090919'),('20100113203104'),('20100121160010'),('20100121183934'),('20100125145351'),('20100126103714'),('20100204105222'),('20100209025806'),('20100209144531'),('20100213103131'),('20100214212536'),('20100223170312'),('20100223183812'),('20100224153127'),('20100301163454'),('20100306153445'),('20100317120946'),('20100323085528'),('20100419190933'),('20100419194457'),('20100426100726'),('20100427121301'),('20100501084722'),('20100501095202'),('20100502163939'),('20100504142133'),('20100506180619'),('20100506185838'),('20100528155333'),('20100528185820'),('20100605152042'),('20100624110730'),('20100624123336'),('20100624175547'),('20100811163637'),('20100811205836'),('20100812162326'),('20100813023502'),('20100813185745'),('20100816212146'),('20100817152723'),('20100819170125'),('20100820135707'),('20100901171814'),('20100903203949'),('20100923095305'),('20100923162011'),('20100929151905'),('20101008190536'),('20101026184700'),('20101026184714'),('20101026184746'),('20101026184808'),('20101026184833'),('20101026184855'),('20101026184916'),('20101026184932'),('20101026184950'),('20101026184959'),('20101026185022'),('20101026192225'),('20101028151745'),('20101103212716'),('20101111133551'),('20101117031806'),('20101214150824'),('20101217012656'),('20101219201531'),('20101223215658'),('20110110094042'),('20110110130847'),('20110111122537'),('20110302102208'),('20110314192118'),('20110330125354'),('20110404120925'),('20110510080413');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,1,13537749,NULL,'2012-07-25 09:17:37','2012-07-25 09:17:37','H76125213878',NULL,NULL,1,'ready'),(2,4,13537749,NULL,'2012-07-25 16:45:58','2012-07-25 16:45:58','H40231304680',NULL,NULL,7,'ready'),(3,20,13537749,NULL,'2012-07-27 10:36:37','2012-07-27 10:36:37','H58072662207',NULL,NULL,37,'pending');
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_categories`
--

DROP TABLE IF EXISTS `shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_categories`
--

LOCK TABLES `shipping_categories` WRITE;
/*!40000 ALTER TABLE `shipping_categories` DISABLE KEYS */;
INSERT INTO `shipping_categories` VALUES (1,'По умолчанию','2012-07-23 07:07:47','2012-07-23 07:07:47');
/*!40000 ALTER TABLE `shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_on` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=574015645 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (13537749,1,'Курьером','2012-07-23 07:07:47','2012-07-23 07:07:47',NULL),(192811543,1,'Почта России (по предоплате)','2012-07-23 07:07:47','2012-07-23 07:07:47',NULL),(574015644,1,'Почта России (наложным платежём)','2012-07-23 07:07:47','2012-07-23 07:07:47',NULL);
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_events`
--

DROP TABLE IF EXISTS `state_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_events` (
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_events`
--

LOCK TABLES `state_events` WRITE;
/*!40000 ALTER TABLE `state_events` DISABLE KEYS */;
INSERT INTO `state_events` VALUES (1,1,1,'payment','2012-07-25 07:59:44','2012-07-25 07:59:44','pending','Order','paid'),(2,1,1,'payment','2012-07-25 07:59:44','2012-07-25 07:59:44','pending','Order','paid'),(3,1,1,'payment','2012-07-25 08:16:48','2012-07-25 08:16:48','paid','Order','pending'),(4,1,1,'payment','2012-07-25 08:17:12','2012-07-25 08:17:12','pending','Order','paid'),(5,1,1,'payment','2012-07-25 08:17:12','2012-07-25 08:17:12','pending','Order','paid'),(6,1,1,'payment','2012-07-25 08:17:31','2012-07-25 08:17:31','paid','Order','pending'),(7,1,1,'payment','2012-07-25 08:42:04','2012-07-25 08:42:04','pending','Order','paid'),(8,1,1,'payment','2012-07-25 08:42:04','2012-07-25 08:42:04','pending','Order','paid'),(9,1,1,'payment','2012-07-25 08:42:16','2012-07-25 08:42:16','paid','Order','pending'),(10,1,1,'payment','2012-07-25 08:55:00','2012-07-25 08:55:00','pending','Order','paid'),(11,1,1,'payment','2012-07-25 08:55:00','2012-07-25 08:55:00','pending','Order','paid'),(12,1,1,'payment','2012-07-25 08:55:43','2012-07-25 08:55:43','paid','Order','pending'),(13,1,1,'payment','2012-07-25 08:55:54','2012-07-25 08:55:54','pending','Order','paid'),(14,1,1,'payment','2012-07-25 08:55:54','2012-07-25 08:55:54','pending','Order','paid'),(15,1,1,'payment','2012-07-25 08:56:40','2012-07-25 08:56:40','paid','Order','pending'),(16,1,1,'payment','2012-07-25 08:56:53','2012-07-25 08:56:53','pending','Order','paid'),(17,1,1,'payment','2012-07-25 08:56:53','2012-07-25 08:56:53','pending','Order','paid'),(18,1,1,'payment','2012-07-25 08:58:33','2012-07-25 08:58:33','paid','Order','pending'),(19,1,1,'order','2012-07-25 15:27:52','2012-07-25 15:27:52','cart','Order','complete'),(20,4,1,'order','2012-07-25 16:46:15','2012-07-25 16:46:15','cart','Order','complete'),(21,6,5,'payment','2012-07-26 14:46:53','2012-07-26 14:46:53','pending','Order','paid'),(22,6,5,'payment','2012-07-26 14:46:53','2012-07-26 14:46:53','pending','Order','paid'),(23,6,5,'payment','2012-07-26 14:47:13','2012-07-26 14:47:13','paid','Order','pending'),(24,6,5,'payment','2012-07-26 15:14:42','2012-07-26 15:14:42','pending','Order','paid'),(25,6,5,'payment','2012-07-26 15:14:42','2012-07-26 15:14:42','pending','Order','paid'),(26,6,5,'payment','2012-07-26 15:14:49','2012-07-26 15:14:49','paid','Order','pending'),(27,20,19,'payment','2012-07-27 10:39:15','2012-07-27 10:39:15','pending','Order','balance_due'),(28,20,19,'shipment','2012-07-27 10:39:15','2012-07-27 10:39:15','ready','Order','pending'),(29,20,19,'payment','2012-07-27 10:39:15','2012-07-27 10:39:15','pending','Order','balance_due'),(30,20,19,'shipment','2012-07-27 10:39:15','2012-07-27 10:39:15','ready','Order','pending'),(31,20,19,'order','2012-07-27 10:39:17','2012-07-27 10:39:17','cart','Order','complete'),(32,21,20,'payment','2012-07-27 10:46:52','2012-07-27 10:46:52','balance_due','Order','pending'),(33,22,21,'order','2012-07-27 10:59:25','2012-07-27 10:59:25','cart','Order','complete'),(34,23,22,'order','2012-07-27 11:38:21','2012-07-27 11:38:21','cart','Order','complete'),(35,24,23,'payment','2012-07-27 11:40:13','2012-07-27 11:40:13','pending','Order','paid'),(36,24,23,'payment','2012-07-27 11:40:13','2012-07-27 11:40:13','pending','Order','paid'),(37,24,23,'payment','2012-07-27 11:40:20','2012-07-27 11:40:20','paid','Order','pending'),(38,25,24,'order','2012-07-27 11:53:18','2012-07-27 11:53:18','cart','Order','complete'),(39,28,27,'order','2012-07-27 12:13:41','2012-07-27 12:13:41','cart','Order','complete');
/*!40000 ALTER TABLE `state_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Республика Адыгея','RU-AD',168),(2,'Республика Башкортостан','RU-BA',168),(3,'Республика Бурятия','RU-BU',168),(4,'Республика Алтай','RU-AL',168),(5,'Республика Дагестан','RU-DA',168),(6,'Республика Ингушетия','RU-IN',168),(7,'Кабардино-Балкарская республика','RU-KB',168),(8,'Республика Калмыкия','RU-KL',168),(9,'Карачаево-Черкесская республика','RU-KC',168),(10,'Республика Карелия','RU-KR',168),(11,'Республика Коми','RU-KO',168),(12,'Республика Марий Эл','RU-ME',168),(13,'Республика Мордовия','RU-MO',168),(14,'Республика Саха (Якутия)','RU-SA',168),(15,'Республика Северная Осетия — Алания','RU-SE',168),(16,'Республика Татарстан','RU-TA',168),(17,'Республика Тыва','RU-TY',168),(18,'Удмуртская республика','RU-UD',168),(19,'Республика Хакасия','RU-KK',168),(20,'Чеченская республика','RU-CE',168),(21,'Чувашская республика','RU-CU',168),(22,'Алтайский край','RU-ALT',168),(23,'Краснодарский край','RU-KDA',168),(24,'Красноярский край','RU-KIA',168),(25,'Приморский край','RU-PRI',168),(26,'Ставропольский край','RU-STA',168),(27,'Хабаровский край','RU-KHA',168),(28,'Амурская область','RU-AMU',168),(29,'Архангельская область','RU-ARK',168),(30,'Астраханская область','RU-AST',168),(31,'Белгородская область','RU-BEL',168),(32,'Брянская область','RU-BRY',168),(33,'Владимирская область','RU-VLA',168),(34,'Волгоградская область','RU-VGG',168),(35,'Вологодская область','RU-VLG',168),(36,'Воронежская область','RU-VOR',168),(37,'Ивановская область','RU-IVA',168),(38,'Иркутская область','RU-IRK',168),(39,'Калининградская область','RU-KGD',168),(40,'Калужская область','RU-KLU',168),(41,'Камчатский край','RU-KAM',168),(42,'Кемеровская область','RU-KEM',168),(43,'Кировская область','RU-KIR',168),(44,'Костромская область','RU-KOS',168),(45,'Курганская область','RU-KGN',168),(46,'Курская область','RU-KRS',168),(47,'Ленинградская область','RU-LEN',168),(48,'Липецкая область','RU-LIP',168),(49,'Магаданская область','RU-MAG',168),(50,'Московская область','RU-MOS',168),(51,'Мурманская область','RU-MUR',168),(52,'Нижегородская область','RU-NIZ',168),(53,'Новгородская область','RU-NGR',168),(54,'Новосибирская область','RU-NVS',168),(55,'Омская область','RU-OMS',168),(56,'Оренбургская область','RU-ORE',168),(57,'Орловская область','RU-ORL',168),(58,'Пензенская область','RU-PNZ',168),(59,'Пермский край','RU-PER',168),(60,'Псковская область','RU-PSK',168),(61,'Ростовская область','RU-ROS',168),(62,'Рязанская область','RU-RYA',168),(63,'Самарская область','RU-SAM',168),(64,'Саратовская область','RU-SAR',168),(65,'Сахалинская область','RU-SAK',168),(66,'Свердловская область','RU-SVE',168),(67,'Смоленская область','RU-SMO',168),(68,'Тамбовская область','RU-TAM',168),(69,'Тверская область','RU-TVE',168),(70,'Томская область','RU-TOM',168),(71,'Тульская область','RU-TUL',168),(72,'Тюменская область','RU-TYU',168),(73,'Ульяновская область','RU-ULY',168),(74,'Челябинская область','RU-CHE',168),(75,'Забайкальский край','RU-ZAB',168),(76,'Ярославская область','RU-YAR',168),(77,'Москва','RU-MOW',168),(78,'Санкт-Петербург','RU-SPE',168),(79,'Еврейская автономная область','RU-YEV',168),(83,'Ненецкий автономный округ','RU-NEN',168),(86,'Ханты-Мансийский автономный округ - Югра','RU-KHM',168),(87,'Чукотский автономный округ','RU-CHU',168),(89,'Ямало-Ненецкий автономный округ','RU-YAN',168);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_categories`
--

DROP TABLE IF EXISTS `tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_categories`
--

LOCK TABLES `tax_categories` WRITE;
/*!40000 ALTER TABLE `tax_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `amount` decimal(8,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_on_homepage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxonomies`
--

LOCK TABLES `taxonomies` WRITE;
/*!40000 ALTER TABLE `taxonomies` DISABLE KEYS */;
INSERT INTO `taxonomies` VALUES (1,'Коллекции','2012-07-23 13:50:21','2012-07-23 13:50:21',1),(2,'Брэнды','2012-07-23 15:09:27','2012-07-23 15:09:27',1);
/*!40000 ALTER TABLE `taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxons`
--

DROP TABLE IF EXISTS `taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxons` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxons`
--

LOCK TABLES `taxons` WRITE;
/*!40000 ALTER TABLE `taxons` DISABLE KEYS */;
INSERT INTO `taxons` VALUES (1,1,NULL,0,'Коллекции','2012-07-23 13:50:22','2012-07-23 13:50:22','kollektsii',1,8,NULL,NULL,NULL,NULL,NULL),(2,1,1,0,'Осень - Зима','2012-07-23 13:50:58','2012-07-23 15:07:19','kollektsii/osen-zima',2,3,NULL,NULL,NULL,NULL,NULL),(4,1,1,1,'Весна - Лето','2012-07-23 13:51:37','2012-07-23 15:07:27','kollektsii/vesna-leto',4,5,NULL,NULL,NULL,NULL,NULL),(5,1,1,2,'Все коллекции','2012-07-23 15:07:05','2012-07-23 15:07:05','kollektsii/vse-kollektsii',6,7,NULL,NULL,NULL,NULL,NULL),(6,2,NULL,0,'Брэнды','2012-07-23 15:09:27','2012-07-23 15:09:27','brendy',9,26,NULL,NULL,NULL,NULL,NULL),(7,2,6,0,'Havaianas','2012-07-23 15:10:20','2012-07-23 15:10:20','brendy/havaianas',10,11,NULL,NULL,NULL,NULL,NULL),(8,2,6,1,'Fred Perry','2012-07-23 15:10:32','2012-07-23 15:10:32','brendy/fred-perry',12,13,NULL,NULL,NULL,NULL,NULL),(9,2,6,2,'Converse','2012-07-23 15:10:43','2012-07-23 15:10:43','brendy/converse',14,15,NULL,NULL,NULL,NULL,NULL),(10,2,6,3,'Sneaky Steve','2012-07-23 15:10:58','2012-07-23 15:10:58','brendy/sneaky-steve',16,17,NULL,NULL,NULL,NULL,NULL),(11,2,6,4,'Dr Martens','2012-07-23 15:11:20','2012-07-23 15:11:20','brendy/dr-martens',18,19,NULL,NULL,NULL,NULL,NULL),(12,2,6,5,'Svea','2012-07-23 15:11:31','2012-07-23 15:11:31','brendy/svea',20,21,NULL,NULL,NULL,NULL,NULL),(13,2,6,6,'Shulong','2012-07-23 15:12:04','2012-07-23 15:12:04','brendy/shulong',22,23,NULL,NULL,NULL,NULL,NULL),(14,2,6,7,'Gram','2012-07-23 15:12:14','2012-07-23 15:12:14','brendy/gram',24,25,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokenized_permissions`
--

DROP TABLE IF EXISTS `tokenized_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokenized_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissable_id` int(11) DEFAULT NULL,
  `permissable_type` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokenized_name_and_type` (`permissable_id`,`permissable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokenized_permissions`
--

LOCK TABLES `tokenized_permissions` WRITE;
/*!40000 ALTER TABLE `tokenized_permissions` DISABLE KEYS */;
INSERT INTO `tokenized_permissions` VALUES (1,1,'Order','76f01b3fbeb0b8f9','2012-07-23 13:19:17','2012-07-23 13:19:17'),(2,2,'Order','a61526ce5fb9e139','2012-07-24 08:05:22','2012-07-24 08:05:22'),(3,3,'Order','423e8d661cc9c761','2012-07-24 18:22:20','2012-07-24 18:22:20'),(4,4,'Order','9c541eaaf1af0001','2012-07-25 15:36:58','2012-07-25 15:36:58'),(5,5,'Order','e6045d0eb9fca3ae','2012-07-25 19:13:55','2012-07-25 19:13:55'),(6,6,'Order','9cd634bb7f6bc29c','2012-07-26 14:46:09','2012-07-26 14:46:09'),(7,7,'Order','1a6f99a21bbaa8c7','2012-07-26 15:16:00','2012-07-26 15:16:00'),(8,8,'Order','491a141af8f79bd8','2012-07-26 15:22:00','2012-07-26 15:22:00'),(9,9,'Order','2f5d168a2a57f4a8','2012-07-26 15:25:49','2012-07-26 15:25:49'),(10,10,'Order','caa1a122e0d8190c','2012-07-26 15:34:08','2012-07-26 15:34:08'),(11,11,'Order','737eb8da6887c29e','2012-07-26 22:46:41','2012-07-26 22:46:41'),(12,12,'Order','2ac8e61680b848e2','2012-07-26 22:46:54','2012-07-26 22:46:54'),(13,13,'Order','9ddbc801c3706343','2012-07-26 22:50:29','2012-07-26 22:50:29'),(14,14,'Order','8a5722c019a55fa8','2012-07-26 22:55:09','2012-07-26 22:55:09'),(15,15,'Order','fe52acf97a07b938','2012-07-26 23:07:50','2012-07-26 23:07:50'),(16,16,'Order','f1438451074c0db4','2012-07-27 01:03:13','2012-07-27 01:03:13'),(17,17,'Order','89c1074e5416fa43','2012-07-27 01:14:56','2012-07-27 01:14:56'),(18,18,'Order','9419402076955136','2012-07-27 09:25:01','2012-07-27 09:25:01'),(19,19,'Order','6e998610a2758189','2012-07-27 09:34:19','2012-07-27 09:34:19'),(20,20,'Order','416bf7bd7b4194f2','2012-07-27 09:56:56','2012-07-27 09:56:56'),(21,21,'Order','e7cf5c8c23ef7929','2012-07-27 10:42:28','2012-07-27 10:42:28'),(22,22,'Order','6348578b57e64220','2012-07-27 10:58:29','2012-07-27 10:58:29'),(23,23,'Order','707ed21adec09e32','2012-07-27 10:59:37','2012-07-27 10:59:37'),(24,24,'Order','ed9238b86e30d0aa','2012-07-27 11:38:48','2012-07-27 11:38:48'),(25,25,'Order','98f3d77e3fb1afc6','2012-07-27 11:52:25','2012-07-27 11:52:25'),(26,26,'Order','f294f28b6f375c66','2012-07-27 11:53:25','2012-07-27 11:53:25'),(27,27,'Order','67209d4d62f2ac1c','2012-07-27 12:04:38','2012-07-27 12:04:38'),(28,28,'Order','1f7ab312db892ee5','2012-07-27 12:12:53','2012-07-27 12:12:53');
/*!40000 ALTER TABLE `tokenized_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `environment` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'spree@example.com','0227c4c92a8bbaa93233c94b991b9d88d9d75b92383d0cf37440eea3321906d09adadee7caec93c1526e42e62ea81e921956a5a284ccefdded2d64c499775610','8SJcjKXzQvtBqdjQ0QAc',NULL,'2012-07-23 07:09:19','2012-07-25 15:38:08',NULL,NULL,NULL,3,0,NULL,'2012-07-25 15:38:08','2012-07-25 07:46:12','10.0.2.2','10.0.2.2','spree@example.com',NULL,NULL,NULL,NULL,NULL,NULL),(2,'sk7OejQlfCX_OPqE-gDa@example.net','e2b5f9920b4e0e7cf27dba7429dafd64111d14b91ef7102cb36265ee929e64d2934ec0b0ff0622c1fc305207c93b34ae4280cb767ea80f2ee143a67f64d286b8','CU4UtpeMI70jq6ZBLQhV',NULL,'2012-07-24 08:05:22','2012-07-24 08:05:22','sk7OejQlfCX_OPqE-gDa',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'sk7OejQlfCX_OPqE-gDa@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(3,'ctYwmiwJH52QnQCzTQPM@example.net','a31f4032d7d4ee1bdfe04f41b3d184da53a45fcd61b2c3a3dcd4a89f904c7831a6fa153c62d75e8442a97788af5798c2fa54dba45efd724174bb66d0d08fec5e','ghR38aW61drj7dViqe7a',NULL,'2012-07-24 18:22:20','2012-07-24 18:22:20','ctYwmiwJH52QnQCzTQPM',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'ctYwmiwJH52QnQCzTQPM@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Mix-N7Eoh7knh5n2x5wI@example.net','721814ffbef7329ff311f7e8ce7437a4b8cc450b82e04bc24ec7e00d85003238257226533fca16b89f0de3d8e36e291945d81d8eb1545f045ba305bda4fe1dbb','kxPAozhReBmjxMvC2rSF',NULL,'2012-07-25 15:36:58','2012-07-25 15:36:58','Mix-N7Eoh7knh5n2x5wI',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'Mix-N7Eoh7knh5n2x5wI@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(5,'dq3CuKke8t9l3Bvf-W8j@example.net','fa7386eceea3183774c9d12a12a77c385d1be6bbbe6a34a2d658ef91851ce3e7384be8b454a3c646c14a5ce1ff2d14df92bf090e3338e05c3bd5756ef8f4711c','BvukTJyURWQI19qPC3lN',NULL,'2012-07-26 14:46:09','2012-07-26 14:46:09','dq3CuKke8t9l3Bvf-W8j',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'dq3CuKke8t9l3Bvf-W8j@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(6,'pgBpkTL3FsJCv4WxQRKY@example.net','24095c6ceb02e52b420c189e6be06dc1513a93f3fc74272e82dd53547ca7c8f9bb898faf99663b5cf0b16ee74d6264da4ca3184964e1ff2a3a93d8219d1a3579','DBZ2qmLz9Wu5RUW8XZv2',NULL,'2012-07-26 15:16:00','2012-07-26 15:16:00','pgBpkTL3FsJCv4WxQRKY',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'pgBpkTL3FsJCv4WxQRKY@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(7,'T8ighG-4FyR-BUUQTZZ6@example.net','66b4d84068250a7702fd40eda6d2bc6d18c29b0b682a3831e87fa8b009e16ae2845abdf5d9fd03c8e7ba8f6ae5db1bde625d3a167f1bba3b4335d7f78d889c6d','ct58rXqaSjY2biJOj1lN',NULL,'2012-07-26 15:22:00','2012-07-26 15:22:00','T8ighG-4FyR-BUUQTZZ6',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'T8ighG-4FyR-BUUQTZZ6@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(8,'BP5YQVua9qJVVpk7oaMM@example.net','e3d2cc87226b2b7094e2318649b2ec2b618e208400a32b93426a962be41fa3c0b3eeb5c75c7e3d99cc4c4db3a68099b71a8cb98cc13064e046b585057782361f','SuSxHxRzJX1ZD0NUM3dy',NULL,'2012-07-26 15:25:49','2012-07-26 15:25:49','BP5YQVua9qJVVpk7oaMM',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'BP5YQVua9qJVVpk7oaMM@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(9,'XoM0D5MTzHpsj-rGJBwj@example.net','826c5c108278c1cf7b10a1410f7e8a29907b7701aeec28f614a9b017f89f5328cdc95385e33dc12aadd7d5b94cb8eb755f47b4f9cbdae9e01d4d2e0d04291cfb','9L7HQCsFPsUo9RXlvsIh',NULL,'2012-07-26 15:34:08','2012-07-26 15:34:08','XoM0D5MTzHpsj-rGJBwj',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'XoM0D5MTzHpsj-rGJBwj@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(10,'LeemXzi-RD8Q7-oY5tki@example.net','449aef5afeaad4314ade9e1dc30b316885d037018ba2dbff85fba0ba19086936ec3219f6803923887cc9a845c3bbc081f56fc68ffa240df0ac1ff56a2ac5a138','gwy8YMp1qjoDMek1jCbX',NULL,'2012-07-26 22:46:41','2012-07-26 22:46:41','LeemXzi-RD8Q7-oY5tki',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'LeemXzi-RD8Q7-oY5tki@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(11,'1iH87CCD-_bTt6Ns-y2Y@example.net','d34d74cf4eeb160b28ce2f63c57279545cfa91b255bc0351df38c51e80ab3390cafb613a5f5004626e4e7416a6ac232ab04e4d9eb270659a37e32b6f3111078d','hUJC7ktyZtlFEDLsxxvy',NULL,'2012-07-26 22:46:54','2012-07-26 22:46:54','1iH87CCD-_bTt6Ns-y2Y',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'1iH87CCD-_bTt6Ns-y2Y@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(12,'aNEFFDkuLyQLXTajztAK@example.net','1e6bf97dfd12d5e2ca0ca21f7e1c6c027efc06422139a0061df0f97e9790864180e88206889cd809cf57fad46b7badd795e05d049536ca473a4ac183dfcbafa6','MyCcZN1p9A7jh9ykgEsQ',NULL,'2012-07-26 22:50:29','2012-07-26 22:50:29','aNEFFDkuLyQLXTajztAK',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'aNEFFDkuLyQLXTajztAK@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(13,'ga7r07__EjIMBivx6ktj@example.net','5dc2c495e259fdf77a0b8b93956c8d866dfd23fcf5229557ee63a9a96750204c3e1182c97d8ba4a02f367db0e5ea68cbaeea7b2e9f7ac8b42a3e285ac37f8324','Isfe445eA4DWm3RAzN67',NULL,'2012-07-26 22:55:09','2012-07-26 22:55:09','ga7r07__EjIMBivx6ktj',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'ga7r07__EjIMBivx6ktj@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Dcj8xlHsuaArsgXBY82_@example.net','0b5ba1329aea1a7966e19774695424680e3d574b0fdba8c7ec0b3a99534a5dc13d94b84b825786d7cf877a59e6c8f3af163778174a08e6aaa6694154877ef49f','dRjYK91MlkFDN29dGMD9',NULL,'2012-07-26 23:07:50','2012-07-26 23:07:50','Dcj8xlHsuaArsgXBY82_',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'Dcj8xlHsuaArsgXBY82_@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(15,'rliATZahuIAPToQO0yS7@example.net','23fcb916e3736d2d6bb7370c114d0b34bae63764cd8577536f4e4d82924f3f5530690987c62331963c5dc724df28f255b2265e657255ee2befd95c325f6ec0b7','vEyPVh7xn8SNuRQuLdwW',NULL,'2012-07-27 01:03:13','2012-07-27 01:03:13','rliATZahuIAPToQO0yS7',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'rliATZahuIAPToQO0yS7@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(16,'cQcswWFs7U7_w7R-TS2H@example.net','633c347a9328bae8b9491ac386bd3b2fc31af3a85af642918623b46599f5e4a7d7f6f16775c2be05c26fbc677faaa2d59c831b6015a200bfac20e7fe35deb08e','xbhoM1A6WQQXTUHliwWS',NULL,'2012-07-27 01:14:56','2012-07-27 01:14:56','cQcswWFs7U7_w7R-TS2H',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'cQcswWFs7U7_w7R-TS2H@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(17,'TeZesf1tpw6kXheEdrSR@example.net','a5bb062a42d5cb53fe66394fdd14c1a50d009f27e7c9d13361e4564dae04f00f03d52f925ed0457b5a9d9b611d4038463b416df119eefff7c3bd173bc608501f','N2BdxeaWokpCvvIPJW3y',NULL,'2012-07-27 09:25:01','2012-07-27 09:25:01','TeZesf1tpw6kXheEdrSR',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'TeZesf1tpw6kXheEdrSR@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(18,'kgqiTSvXuBOCrAi6ff9R@example.net','7c3cfb4f90b4edde5233908071a615f23987916402103057500a55cd3395ca33311cc711cda8d01426cdca045f3952c64395cc4e87826910711fb8f6bfdcea67','6AtxNVO2vdCy4iDvYfxG',NULL,'2012-07-27 09:34:19','2012-07-27 09:34:19','kgqiTSvXuBOCrAi6ff9R',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'kgqiTSvXuBOCrAi6ff9R@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(19,'5nDoo7UGGsGV7R6kCFaA@example.net','71eb6ef3b6034abb5318ffc3c54f623d54318c40040864df7c47110d6ea9e3b099182ff70c5008a8aa5b0387a610dca37ccf0eb1890c30ade944d8b3cf66228f','1Rn3arJ2GxJIiaip80Mw',NULL,'2012-07-27 09:56:56','2012-07-27 09:56:56','5nDoo7UGGsGV7R6kCFaA',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'5nDoo7UGGsGV7R6kCFaA@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(20,'0MwhjxchlDpsyuSNYuVq@example.net','d19261d2d53ac8963b36978408ea8861d69a605ffcf9949a3c80e98a82c3a2dacbe8398c2f3641854debced1ffe640a8f18a5b8d109eb6c69801aa8e50cdd4c6','B7a5wMiYrj6H5UtQpnp9',NULL,'2012-07-27 10:42:28','2012-07-27 10:42:28','0MwhjxchlDpsyuSNYuVq',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'0MwhjxchlDpsyuSNYuVq@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(21,'zpI9kcEn3QGVB9ApumWH@example.net','a8ba05cf6a43a31f910d4cde27b7aca06d1aaa63da910193a265d8d557df8780a6db59238a8b60066607b4e2c5d0a23693307df05d013081bd3d23fbab0ddbd3','rC4dnxssAeAUy1hn8Fyt',NULL,'2012-07-27 10:58:29','2012-07-27 10:58:29','zpI9kcEn3QGVB9ApumWH',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'zpI9kcEn3QGVB9ApumWH@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(22,'bALTL-BlsYmcoHwHNdRm@example.net','8ebd3022a71d2bdd0aa2097cbf2506835b1b0abde039a53cceea293bd225fe4ed35b014eee365742585bb75ff9372b7941b1ab9fde65d5cb037e82931c1e55e5','bJN8gEjltOpnQcNUQHxK',NULL,'2012-07-27 10:59:37','2012-07-27 10:59:37','bALTL-BlsYmcoHwHNdRm',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'bALTL-BlsYmcoHwHNdRm@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(23,'juUW7cR-LGAs-UF9Qkq4@example.net','929d89b6d7a676576b446193ba501225f0ebce9bbb0f1d052f92c5ec79d007659a25ffc0ceec9d6f79acd7e1a99978d271a6cd62068fbd39d180b76cfbc22d15','XstISdlxiuTD2T6fPwi2',NULL,'2012-07-27 11:38:47','2012-07-27 11:38:47','juUW7cR-LGAs-UF9Qkq4',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'juUW7cR-LGAs-UF9Qkq4@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(24,'2BsX_z7hp4pItUjg79G2@example.net','757bfe846caeba9145a27bf2cc5931ca45abf16fdac541b5badebeeaf37e9769682f4f25d71655b003d34ea5820ff181be32508c07d645a000a78ab6d8fbe352','hdRUZ7BAoaxD3x5108er',NULL,'2012-07-27 11:52:25','2012-07-27 11:52:25','2BsX_z7hp4pItUjg79G2',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'2BsX_z7hp4pItUjg79G2@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(25,'skGWoWOUEJCka71yspXZ@example.net','1467d84a03ff2bcddf34558c365bb5af9db4a9200c0b157b0aca193207e329c4901d71c54609c16752633f2736c6eb1385eb059c5fc65d8e0ada1b10aa8cb432','0eUDVJOUnLRshCOFMM1c',NULL,'2012-07-27 11:53:25','2012-07-27 11:53:25','skGWoWOUEJCka71yspXZ',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'skGWoWOUEJCka71yspXZ@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(26,'e6UKFycPHXbBiXoie5ni@example.net','e87f0d5122bd9f54472acb897bf0cbf744ca345c5caa08253ccb6e1c1eb125bc8db0216fb1229eb7ffeccbfe488113a4e17ebae25bf35d6801f57aa9f703adb6','K1vkSu23ULWheGFBBIQB',NULL,'2012-07-27 12:04:38','2012-07-27 12:04:38','e6UKFycPHXbBiXoie5ni',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'e6UKFycPHXbBiXoie5ni@example.net',NULL,NULL,NULL,NULL,NULL,NULL),(27,'cCHctBCRnmELN3hCh9s6@example.net','6f2a45c1f4b8b47bd8fb1413301770f460564108f7206dc0e666e105f0944683030a3e48fcdf26144cf6e56cbf5bc2273d78a377e4aa37a8188cc3e94f66083c','cFJ70nBMdXcFkYLo9eR9',NULL,'2012-07-27 12:12:53','2012-07-27 12:12:53','cCHctBCRnmELN3hCh9s6',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'cCHctBCRnmELN3hCh9s6@example.net',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variants` (
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
  PRIMARY KEY (`id`),
  KEY `index_variants_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variants`
--

LOCK TABLES `variants` WRITE;
/*!40000 ALTER TABLE `variants` DISABLE KEYS */;
INSERT INTO `variants` VALUES (1,1,'',2600.00,NULL,NULL,NULL,NULL,NULL,1,-37,NULL,NULL),(2,2,'',1899.00,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL),(3,3,'',2100.00,NULL,NULL,NULL,NULL,NULL,1,0,NULL,NULL),(4,3,'',2100.00,NULL,NULL,NULL,NULL,'2012-07-23 18:40:50',0,3,NULL,NULL),(5,1,'',2600.00,NULL,NULL,NULL,NULL,'2012-07-23 18:35:42',0,4,NULL,NULL),(6,1,'',2600.00,NULL,NULL,NULL,NULL,NULL,0,4,NULL,NULL),(7,1,'',2600.00,NULL,NULL,NULL,NULL,NULL,0,2,NULL,NULL),(8,1,'',2600.00,NULL,NULL,NULL,NULL,NULL,0,5,NULL,NULL);
/*!40000 ALTER TABLE `variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_members`
--

DROP TABLE IF EXISTS `zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) DEFAULT NULL,
  `zoneable_id` int(11) DEFAULT NULL,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=764978543 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_members`
--

LOCK TABLES `zone_members` WRITE;
/*!40000 ALTER TABLE `zone_members` DISABLE KEYS */;
INSERT INTO `zone_members` VALUES (764978542,1,168,'Country','2012-07-23 07:07:47','2012-07-23 07:07:47');
/*!40000 ALTER TABLE `zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,'РФ','Российская Федерация','2012-07-23 07:07:47','2012-07-23 07:07:47');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-27 16:15:14
