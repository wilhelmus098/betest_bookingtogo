-- MySQL dump 10.13  Distrib 5.7.42, for Win64 (x86_64)
--
-- Host: localhost    Database: betest_bookingtogo
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF'),(2,'Åland Islands','AX'),(3,'Albania','AL'),(4,'Algeria','DZ'),(5,'American Samoa','AS'),(6,'Andorra','AD'),(7,'Angola','AO'),(8,'Anguilla','AI'),(9,'Antarctica','AQ'),(10,'Antigua and Barbuda','AG'),(11,'Argentina','AR'),(12,'Armenia','AM'),(13,'Aruba','AW'),(14,'Australia','AU'),(15,'Austria','AT'),(16,'Azerbaijan','AZ'),(17,'Bahamas','BS'),(18,'Bahrain','BH'),(19,'Bangladesh','BD'),(20,'Barbados','BB'),(21,'Belarus','BY'),(22,'Belgium','BE'),(23,'Belize','BZ'),(24,'Benin','BJ'),(25,'Bermuda','BM'),(26,'Bhutan','BT'),(27,'Bolivia, Plurinational State of','BO'),(28,'Bonaire, Sint Eustatius and Saba','BQ'),(29,'Bosnia and Herzegovina','BA'),(30,'Botswana','BW'),(31,'Bouvet Island','BV'),(32,'Brazil','BR'),(33,'British Indian Ocean Territory','IO'),(34,'Brunei Darussalam','BN'),(35,'Bulgaria','BG'),(36,'Burkina Faso','BF'),(37,'Burundi','BI'),(38,'Cambodia','KH'),(39,'Cameroon','CM'),(40,'Canada','CA'),(41,'Cape Verde','CV'),(42,'Cayman Islands','KY'),(43,'Central African Republic','CF'),(44,'Chad','TD'),(45,'Chile','CL'),(46,'China','CN'),(47,'Christmas Island','CX'),(48,'Cocos (Keeling) Islands','CC'),(49,'Colombia','CO'),(50,'Comoros','KM'),(51,'Congo','CG'),(52,'Congo, the Democratic Republic of the','CD'),(53,'Cook Islands','CK'),(54,'Costa Rica','CR'),(55,'Côte d\'Ivoire','CI'),(56,'Croatia','HR'),(57,'Cuba','CU'),(58,'Curaçao','CW'),(59,'Cyprus','CY'),(60,'Czech Republic','CZ'),(61,'Denmark','DK'),(62,'Djibouti','DJ'),(63,'Dominica','DM'),(64,'Dominican Republic','DO'),(65,'Ecuador','EC'),(66,'Egypt','EG'),(67,'El Salvador','SV'),(68,'Equatorial Guinea','GQ'),(69,'Eritrea','ER'),(70,'Estonia','EE'),(71,'Ethiopia','ET'),(72,'Falkland Islands (Malvinas)','FK'),(73,'Faroe Islands','FO'),(74,'Fiji','FJ'),(75,'Finland','FI'),(76,'France','FR'),(77,'French Guiana','GF'),(78,'French Polynesia','PF'),(79,'French Southern Territories','TF'),(80,'Gabon','GA'),(81,'Gambia','GM'),(82,'Georgia','GE'),(83,'Germany','DE'),(84,'Ghana','GH'),(85,'Gibraltar','GI'),(86,'Greece','GR'),(87,'Greenland','GL'),(88,'Grenada','GD'),(89,'Guadeloupe','GP'),(90,'Guam','GU'),(91,'Guatemala','GT'),(92,'Guernsey','GG'),(93,'Guinea','GN'),(94,'Guinea-Bissau','GW'),(95,'Guyana','GY'),(96,'Haiti','HT'),(97,'Heard Island and McDonald Mcdonald Islands','HM'),(98,'Holy See (Vatican City State)','VA'),(99,'Honduras','HN'),(100,'Hong Kong','HK'),(101,'Hungary','HU'),(102,'Iceland','IS'),(103,'India','IN'),(104,'Indonesia','ID'),(105,'Iran, Islamic Republic of','IR'),(106,'Iraq','IQ'),(107,'Ireland','IE'),(108,'Isle of Man','IM'),(109,'Israel','IL'),(110,'Italy','IT'),(111,'Jamaica','JM'),(112,'Japan','JP'),(113,'Jersey','JE'),(114,'Jordan','JO'),(115,'Kazakhstan','KZ'),(116,'Kenya','KE'),(117,'Kiribati','KI'),(118,'Korea, Democratic People\'s Republic of','KP'),(119,'Korea, Republic of','KR'),(120,'Kuwait','KW'),(121,'Kyrgyzstan','KG'),(122,'Lao People\'s Democratic Republic','LA'),(123,'Latvia','LV'),(124,'Lebanon','LB'),(125,'Lesotho','LS'),(126,'Liberia','LR'),(127,'Libya','LY'),(128,'Liechtenstein','LI'),(129,'Lithuania','LT'),(130,'Luxembourg','LU'),(131,'Macao','MO'),(132,'Macedonia, the Former Yugoslav Republic of','MK'),(133,'Madagascar','MG'),(134,'Malawi','MW'),(135,'Malaysia','MY'),(136,'Maldives','MV'),(137,'Mali','ML'),(138,'Malta','MT'),(139,'Marshall Islands','MH'),(140,'Martinique','MQ'),(141,'Mauritania','MR'),(142,'Mauritius','MU'),(143,'Mayotte','YT'),(144,'Mexico','MX'),(145,'Micronesia, Federated States of','FM'),(146,'Moldova, Republic of','MD'),(147,'Monaco','MC'),(148,'Mongolia','MN'),(149,'Montenegro','ME'),(150,'Montserrat','MS'),(151,'Morocco','MA'),(152,'Mozambique','MZ'),(153,'Myanmar','MM'),(154,'Namibia','NA'),(155,'Nauru','NR'),(156,'Nepal','NP'),(157,'Netherlands','NL'),(158,'New Caledonia','NC'),(159,'New Zealand','NZ'),(160,'Nicaragua','NI'),(161,'Niger','NE'),(162,'Nigeria','NG'),(163,'Niue','NU'),(164,'Norfolk Island','NF'),(165,'Northern Mariana Islands','MP'),(166,'Norway','NO'),(167,'Oman','OM'),(168,'Pakistan','PK'),(169,'Palau','PW'),(170,'Palestine, State of','PS'),(171,'Panama','PA'),(172,'Papua New Guinea','PG'),(173,'Paraguay','PY'),(174,'Peru','PE'),(175,'Philippines','PH'),(176,'Pitcairn','PN'),(177,'Poland','PL'),(178,'Portugal','PT'),(179,'Puerto Rico','PR'),(180,'Qatar','QA'),(181,'Réunion','RE'),(182,'Romania','RO'),(183,'Russian Federation','RU'),(184,'Rwanda','RW'),(185,'Saint Barthélemy','BL'),(186,'Saint Helena, Ascension and Tristan da Cunha','SH'),(187,'Saint Kitts and Nevis','KN'),(188,'Saint Lucia','LC'),(189,'Saint Martin (French part)','MF'),(190,'Saint Pierre and Miquelon','PM'),(191,'Saint Vincent and the Grenadines','VC'),(192,'Samoa','WS'),(193,'San Marino','SM'),(194,'Sao Tome and Principe','ST'),(195,'Saudi Arabia','SA'),(196,'Senegal','SN'),(197,'Serbia','RS'),(198,'Seychelles','SC'),(199,'Sierra Leone','SL'),(200,'Singapore','SG'),(201,'Sint Maarten (Dutch part)','SX'),(202,'Slovakia','SK'),(203,'Slovenia','SI'),(204,'Solomon Islands','SB'),(205,'Somalia','SO'),(206,'South Africa','ZA'),(207,'South Georgia and the South Sandwich Islands','GS'),(208,'South Sudan','SS'),(209,'Spain','ES'),(210,'Sri Lanka','LK'),(211,'Sudan','SD'),(212,'Suriname','SR'),(213,'Svalbard and Jan Mayen','SJ'),(214,'Swaziland','SZ'),(215,'Sweden','SE'),(216,'Switzerland','CH'),(217,'Syrian Arab Republic','SY'),(218,'Taiwan','TW'),(219,'Tajikistan','TJ'),(220,'Tanzania, United Republic of','TZ'),(221,'Thailand','TH'),(222,'Timor-Leste','TL'),(223,'Togo','TG'),(224,'Tokelau','TK'),(225,'Tonga','TO'),(226,'Trinidad and Tobago','TT'),(227,'Tunisia','TN'),(228,'Turkey','TR'),(229,'Turkmenistan','TM'),(230,'Turks and Caicos Islands','TC'),(231,'Tuvalu','TV'),(232,'Uganda','UG'),(233,'Ukraine','UA'),(234,'United Arab Emirates','AE'),(235,'United Kingdom','GB'),(236,'United States','US'),(237,'United States Minor Outlying Islands','UM'),(238,'Uruguay','UY'),(239,'Uzbekistan','UZ'),(240,'Vanuatu','VU'),(241,'Venezuela, Bolivarian Republic of','VE'),(242,'Viet Nam','VN'),(243,'Virgin Islands, British','VG'),(244,'Virgin Islands, U.S.','VI'),(245,'Wallis and Futuna','WF'),(246,'Western Sahara','EH'),(247,'Yemen','YE'),(248,'Zambia','ZM'),(249,'Zimbabwe','ZW');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_country_id_foreign` (`country_id`),
  CONSTRAINT `customers_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (6,2,'aab','2020-01-01 11:11:11','09876','user123@mail.com'),(7,3,'aab','2020-01-01 10:10:10','09876','user1234@mail.com'),(11,7,'mozes','1998-09-17 00:00:00','123456','mozes@yopmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `families`
--

DROP TABLE IF EXISTS `families`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `families` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned NOT NULL,
  `relation` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `families_customer_id_foreign` (`customer_id`),
  CONSTRAINT `families_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `families`
--

LOCK TABLES `families` WRITE;
/*!40000 ALTER TABLE `families` DISABLE KEYS */;
INSERT INTO `families` VALUES (24,6,'Spouse','tes','2020-01-01 10:10:11'),(25,6,'Spouse','tes2','2020-01-01 10:10:13'),(28,7,'Spouse','tes','2020-01-01 10:10:12'),(29,7,'Spouse','test2','2020-01-01 10:10:13'),(30,7,'Sister','ee','2020-01-01 10:10:14'),(49,11,'brother','bob','2020-01-01 10:10:13'),(50,11,'sister','tom','2020-01-01 10:10:11');
/*!40000 ALTER TABLE `families` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_07_14_105734_create_countries_table',1),(6,'2023_07_14_110133_create_customers_table',1),(7,'2023_07_14_110938_create_families_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'betest_bookingtogo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 13:20:33
