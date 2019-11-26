-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: sylius_dev
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `migration_versions`
--
CREATE DATABASE IF NOT EXISTS dumped;

USE dumped;

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20170912085504','2019-10-14 17:44:41'),('20170913125128','2019-10-14 17:44:41'),('20171003103916','2019-10-14 17:44:42'),('20180102140039','2019-10-14 17:44:42'),('20190109095211','2019-10-14 17:44:42'),('20190109160409','2019-10-14 17:44:42'),('20190508083953','2019-10-14 17:44:42'),('20190621035710','2019-10-14 17:44:42');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`),
  CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address`
--

LOCK TABLES `sylius_address` WRITE;
/*!40000 ALTER TABLE `sylius_address` DISABLE KEYS */;
INSERT INTO `sylius_address` VALUES (634,18202,'Jeffrey','Breitenberg',NULL,'584 Murazik Roads',NULL,'Kieraland','96172-4328','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(635,NULL,'Jeffrey','Breitenberg',NULL,'584 Murazik Roads',NULL,'Kieraland','96172-4328','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(636,NULL,'Jeffrey','Breitenberg',NULL,'584 Murazik Roads',NULL,'Kieraland','96172-4328','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(637,18198,'Zaria','Torp',NULL,'161 Kade Fords',NULL,'Cristinafurt','48648','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(638,NULL,'Zaria','Torp',NULL,'161 Kade Fords',NULL,'Cristinafurt','48648','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(639,NULL,'Zaria','Torp',NULL,'161 Kade Fords',NULL,'Cristinafurt','48648','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(640,18205,'Riley','Heathcote',NULL,'64989 Verla Valleys Suite 862',NULL,'West Timmothybury','97483','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(641,NULL,'Riley','Heathcote',NULL,'64989 Verla Valleys Suite 862',NULL,'West Timmothybury','97483','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(642,NULL,'Riley','Heathcote',NULL,'64989 Verla Valleys Suite 862',NULL,'West Timmothybury','97483','2019-11-04 08:27:50','2019-11-04 08:27:50','US',NULL,NULL),(643,18206,'Daniella','Christiansen',NULL,'56090 Tillman Heights Apt. 205',NULL,'North Randal','41458','2019-11-04 08:27:50','2019-11-04 08:27:51','US',NULL,NULL),(644,NULL,'Daniella','Christiansen',NULL,'56090 Tillman Heights Apt. 205',NULL,'North Randal','41458','2019-11-04 08:27:50','2019-11-04 08:27:51','US',NULL,NULL),(645,NULL,'Daniella','Christiansen',NULL,'56090 Tillman Heights Apt. 205',NULL,'North Randal','41458','2019-11-04 08:27:50','2019-11-04 08:27:51','US',NULL,NULL),(646,18202,'Julianne','Keebler',NULL,'845 Paris Locks',NULL,'West Hilberthaven','27994','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(647,NULL,'Julianne','Keebler',NULL,'845 Paris Locks',NULL,'West Hilberthaven','27994','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(648,NULL,'Julianne','Keebler',NULL,'845 Paris Locks',NULL,'West Hilberthaven','27994','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(649,18207,'Aron','Hamill',NULL,'86125 Dakota Run Suite 849',NULL,'East Shainaborough','00826-5295','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(650,NULL,'Aron','Hamill',NULL,'86125 Dakota Run Suite 849',NULL,'East Shainaborough','00826-5295','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(651,NULL,'Aron','Hamill',NULL,'86125 Dakota Run Suite 849',NULL,'East Shainaborough','00826-5295','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(652,18196,'Tod','Kuhlman',NULL,'250 Micheal Rapid Apt. 101',NULL,'Nonaport','01585','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(653,NULL,'Tod','Kuhlman',NULL,'250 Micheal Rapid Apt. 101',NULL,'Nonaport','01585','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(654,NULL,'Tod','Kuhlman',NULL,'250 Micheal Rapid Apt. 101',NULL,'Nonaport','01585','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(655,18213,'Alize','Schimmel',NULL,'40800 Adam Corner',NULL,'Daltonport','06400-5441','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(656,NULL,'Alize','Schimmel',NULL,'40800 Adam Corner',NULL,'Daltonport','06400-5441','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(657,NULL,'Alize','Schimmel',NULL,'40800 Adam Corner',NULL,'Daltonport','06400-5441','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(658,18196,'Lucas','O\'Keefe',NULL,'938 Grimes Light',NULL,'East Kaelahaven','24536','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(659,NULL,'Lucas','O\'Keefe',NULL,'938 Grimes Light',NULL,'East Kaelahaven','24536','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(660,NULL,'Lucas','O\'Keefe',NULL,'938 Grimes Light',NULL,'East Kaelahaven','24536','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(661,18200,'Jeff','Gutmann',NULL,'1581 Greenholt Passage Apt. 070',NULL,'Schambergerfurt','16919-0496','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(662,NULL,'Jeff','Gutmann',NULL,'1581 Greenholt Passage Apt. 070',NULL,'Schambergerfurt','16919-0496','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(663,NULL,'Jeff','Gutmann',NULL,'1581 Greenholt Passage Apt. 070',NULL,'Schambergerfurt','16919-0496','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(664,18197,'Vena','Kautzer',NULL,'41809 Anika Bypass',NULL,'Schambergermouth','69930-6958','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(665,NULL,'Vena','Kautzer',NULL,'41809 Anika Bypass',NULL,'Schambergermouth','69930-6958','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(666,NULL,'Vena','Kautzer',NULL,'41809 Anika Bypass',NULL,'Schambergermouth','69930-6958','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(667,18210,'Cary','McCullough',NULL,'35820 Lorenza Glen Apt. 721',NULL,'Darrelland','48038','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(668,NULL,'Cary','McCullough',NULL,'35820 Lorenza Glen Apt. 721',NULL,'Darrelland','48038','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(669,NULL,'Cary','McCullough',NULL,'35820 Lorenza Glen Apt. 721',NULL,'Darrelland','48038','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(670,18206,'Uriah','Heller',NULL,'5106 Amani Trace',NULL,'Ortizport','33788-0684','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(671,NULL,'Uriah','Heller',NULL,'5106 Amani Trace',NULL,'Ortizport','33788-0684','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(672,NULL,'Uriah','Heller',NULL,'5106 Amani Trace',NULL,'Ortizport','33788-0684','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(673,18213,'Alessandro','Schultz',NULL,'753 Clementine Neck Suite 531',NULL,'Mayertberg','49723','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(674,NULL,'Alessandro','Schultz',NULL,'753 Clementine Neck Suite 531',NULL,'Mayertberg','49723','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(675,NULL,'Alessandro','Schultz',NULL,'753 Clementine Neck Suite 531',NULL,'Mayertberg','49723','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(676,18196,'Lenna','Hamill',NULL,'61530 Jamil Forges Suite 886',NULL,'West Brian','08693-2050','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(677,NULL,'Lenna','Hamill',NULL,'61530 Jamil Forges Suite 886',NULL,'West Brian','08693-2050','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(678,NULL,'Lenna','Hamill',NULL,'61530 Jamil Forges Suite 886',NULL,'West Brian','08693-2050','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(679,18208,'Marcelino','Ratke',NULL,'8897 Russel Loaf Apt. 297',NULL,'West Joanniestad','14268','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(680,NULL,'Marcelino','Ratke',NULL,'8897 Russel Loaf Apt. 297',NULL,'West Joanniestad','14268','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(681,NULL,'Marcelino','Ratke',NULL,'8897 Russel Loaf Apt. 297',NULL,'West Joanniestad','14268','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(682,18204,'Shany','Konopelski',NULL,'366 Marco Shoal Suite 573',NULL,'South Nikkoborough','05628-6159','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(683,NULL,'Shany','Konopelski',NULL,'366 Marco Shoal Suite 573',NULL,'South Nikkoborough','05628-6159','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(684,NULL,'Shany','Konopelski',NULL,'366 Marco Shoal Suite 573',NULL,'South Nikkoborough','05628-6159','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(685,18199,'Aiden','Ritchie',NULL,'1737 Jayda Trail',NULL,'East Timmymouth','36365-6959','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(686,NULL,'Aiden','Ritchie',NULL,'1737 Jayda Trail',NULL,'East Timmymouth','36365-6959','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(687,NULL,'Aiden','Ritchie',NULL,'1737 Jayda Trail',NULL,'East Timmymouth','36365-6959','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(688,18202,'Benedict','Lind',NULL,'264 Haleigh Club Apt. 872',NULL,'Clevelandhaven','17614','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(689,NULL,'Benedict','Lind',NULL,'264 Haleigh Club Apt. 872',NULL,'Clevelandhaven','17614','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(690,NULL,'Benedict','Lind',NULL,'264 Haleigh Club Apt. 872',NULL,'Clevelandhaven','17614','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(691,18202,'Cornelius','Williamson',NULL,'48855 Gudrun Lodge Apt. 504',NULL,'Goldnerborough','20246','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(692,NULL,'Cornelius','Williamson',NULL,'48855 Gudrun Lodge Apt. 504',NULL,'Goldnerborough','20246','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(693,NULL,'Cornelius','Williamson',NULL,'48855 Gudrun Lodge Apt. 504',NULL,'Goldnerborough','20246','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(694,18211,'Cassandra','Funk',NULL,'382 Gino Track Apt. 713',NULL,'Bartellland','56413-1454','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(695,18201,'Alexys','Wuckert',NULL,'8938 Cathryn Fords',NULL,'Reichelchester','79840-5255','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(696,18205,'Karson','Lakin',NULL,'19322 Marcelina Lake',NULL,'Lake Alanischester','65075','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(697,18193,'Sophia','Boyer','+1-825-998-5613','7051 Deon Lock',NULL,'Hintzbury','35445-0868','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(698,18196,'Lenny','Gorczany',NULL,'479 Hintz Radial',NULL,'East Autumn','10701-8250','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(699,18205,'Lisa','Bosco','962.767.9536','796 Dibbert Cape',NULL,'Lake Matteoberg','03899-7231','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(700,18205,'Herbert','Mohr','914-771-6720 x33366','27899 Clementina Ridge','Metz-O\'Reilly','Filomenafort','44746','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(701,18201,'Giovani','Nader',NULL,'1171 Kub Rapid Apt. 693',NULL,'Port Lyla','07595','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(702,18205,'Hollie','O\'Keefe','(608) 747-0244 x330','3282 Spencer Wells',NULL,'South Stacey','16188-0013','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL),(703,18193,'Levi','Ortiz',NULL,'573 Hollie Trail',NULL,'Kubmouth','60652','2019-11-04 08:27:51','2019-11-04 08:27:51','US',NULL,NULL);
/*!40000 ALTER TABLE `sylius_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=704 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_address_log_entries`
--

LOCK TABLES `sylius_address_log_entries` WRITE;
/*!40000 ALTER TABLE `sylius_address_log_entries` DISABLE KEYS */;
INSERT INTO `sylius_address_log_entries` VALUES (634,'create','2019-11-04 08:27:50','634','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffrey\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"584 Murazik Roads\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kieraland\";s:8:\"postcode\";s:10:\"96172-4328\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(635,'create','2019-11-04 08:27:50','635','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffrey\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"584 Murazik Roads\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kieraland\";s:8:\"postcode\";s:10:\"96172-4328\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(636,'create','2019-11-04 08:27:50','636','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Jeffrey\";s:8:\"lastName\";s:11:\"Breitenberg\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"584 Murazik Roads\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kieraland\";s:8:\"postcode\";s:10:\"96172-4328\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(637,'create','2019-11-04 08:27:51','637','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Zaria\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"161 Kade Fords\";s:7:\"company\";N;s:4:\"city\";s:12:\"Cristinafurt\";s:8:\"postcode\";s:5:\"48648\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(638,'create','2019-11-04 08:27:51','638','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Zaria\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"161 Kade Fords\";s:7:\"company\";N;s:4:\"city\";s:12:\"Cristinafurt\";s:8:\"postcode\";s:5:\"48648\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(639,'create','2019-11-04 08:27:51','639','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Zaria\";s:8:\"lastName\";s:4:\"Torp\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"161 Kade Fords\";s:7:\"company\";N;s:4:\"city\";s:12:\"Cristinafurt\";s:8:\"postcode\";s:5:\"48648\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(640,'create','2019-11-04 08:27:51','640','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Riley\";s:8:\"lastName\";s:9:\"Heathcote\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"64989 Verla Valleys Suite 862\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Timmothybury\";s:8:\"postcode\";s:5:\"97483\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(641,'create','2019-11-04 08:27:51','641','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Riley\";s:8:\"lastName\";s:9:\"Heathcote\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"64989 Verla Valleys Suite 862\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Timmothybury\";s:8:\"postcode\";s:5:\"97483\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(642,'create','2019-11-04 08:27:51','642','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Riley\";s:8:\"lastName\";s:9:\"Heathcote\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"64989 Verla Valleys Suite 862\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Timmothybury\";s:8:\"postcode\";s:5:\"97483\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(643,'create','2019-11-04 08:27:51','643','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Daniella\";s:8:\"lastName\";s:12:\"Christiansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"56090 Tillman Heights Apt. 205\";s:7:\"company\";N;s:4:\"city\";s:12:\"North Randal\";s:8:\"postcode\";s:5:\"41458\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(644,'create','2019-11-04 08:27:51','644','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Daniella\";s:8:\"lastName\";s:12:\"Christiansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"56090 Tillman Heights Apt. 205\";s:7:\"company\";N;s:4:\"city\";s:12:\"North Randal\";s:8:\"postcode\";s:5:\"41458\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(645,'create','2019-11-04 08:27:51','645','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Daniella\";s:8:\"lastName\";s:12:\"Christiansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"56090 Tillman Heights Apt. 205\";s:7:\"company\";N;s:4:\"city\";s:12:\"North Randal\";s:8:\"postcode\";s:5:\"41458\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(646,'create','2019-11-04 08:27:51','646','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Julianne\";s:8:\"lastName\";s:7:\"Keebler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"845 Paris Locks\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Hilberthaven\";s:8:\"postcode\";s:5:\"27994\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(647,'create','2019-11-04 08:27:51','647','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Julianne\";s:8:\"lastName\";s:7:\"Keebler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"845 Paris Locks\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Hilberthaven\";s:8:\"postcode\";s:5:\"27994\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(648,'create','2019-11-04 08:27:51','648','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Julianne\";s:8:\"lastName\";s:7:\"Keebler\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"845 Paris Locks\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Hilberthaven\";s:8:\"postcode\";s:5:\"27994\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(649,'create','2019-11-04 08:27:51','649','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Aron\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"86125 Dakota Run Suite 849\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Shainaborough\";s:8:\"postcode\";s:10:\"00826-5295\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(650,'create','2019-11-04 08:27:51','650','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Aron\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"86125 Dakota Run Suite 849\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Shainaborough\";s:8:\"postcode\";s:10:\"00826-5295\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(651,'create','2019-11-04 08:27:51','651','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Aron\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"86125 Dakota Run Suite 849\";s:7:\"company\";N;s:4:\"city\";s:18:\"East Shainaborough\";s:8:\"postcode\";s:10:\"00826-5295\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(652,'create','2019-11-04 08:27:51','652','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Tod\";s:8:\"lastName\";s:7:\"Kuhlman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"250 Micheal Rapid Apt. 101\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nonaport\";s:8:\"postcode\";s:5:\"01585\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(653,'create','2019-11-04 08:27:51','653','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Tod\";s:8:\"lastName\";s:7:\"Kuhlman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"250 Micheal Rapid Apt. 101\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nonaport\";s:8:\"postcode\";s:5:\"01585\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(654,'create','2019-11-04 08:27:51','654','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:3:\"Tod\";s:8:\"lastName\";s:7:\"Kuhlman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"250 Micheal Rapid Apt. 101\";s:7:\"company\";N;s:4:\"city\";s:8:\"Nonaport\";s:8:\"postcode\";s:5:\"01585\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(655,'create','2019-11-04 08:27:51','655','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:8:\"Schimmel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"40800 Adam Corner\";s:7:\"company\";N;s:4:\"city\";s:10:\"Daltonport\";s:8:\"postcode\";s:10:\"06400-5441\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(656,'create','2019-11-04 08:27:51','656','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:8:\"Schimmel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"40800 Adam Corner\";s:7:\"company\";N;s:4:\"city\";s:10:\"Daltonport\";s:8:\"postcode\";s:10:\"06400-5441\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(657,'create','2019-11-04 08:27:51','657','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Alize\";s:8:\"lastName\";s:8:\"Schimmel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"40800 Adam Corner\";s:7:\"company\";N;s:4:\"city\";s:10:\"Daltonport\";s:8:\"postcode\";s:10:\"06400-5441\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(658,'create','2019-11-04 08:27:51','658','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lucas\";s:8:\"lastName\";s:7:\"O\'Keefe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"938 Grimes Light\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Kaelahaven\";s:8:\"postcode\";s:5:\"24536\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(659,'create','2019-11-04 08:27:51','659','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lucas\";s:8:\"lastName\";s:7:\"O\'Keefe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"938 Grimes Light\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Kaelahaven\";s:8:\"postcode\";s:5:\"24536\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(660,'create','2019-11-04 08:27:51','660','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lucas\";s:8:\"lastName\";s:7:\"O\'Keefe\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"938 Grimes Light\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Kaelahaven\";s:8:\"postcode\";s:5:\"24536\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(661,'create','2019-11-04 08:27:51','661','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Jeff\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"1581 Greenholt Passage Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:15:\"Schambergerfurt\";s:8:\"postcode\";s:10:\"16919-0496\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(662,'create','2019-11-04 08:27:51','662','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Jeff\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"1581 Greenholt Passage Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:15:\"Schambergerfurt\";s:8:\"postcode\";s:10:\"16919-0496\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(663,'create','2019-11-04 08:27:51','663','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Jeff\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"1581 Greenholt Passage Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:15:\"Schambergerfurt\";s:8:\"postcode\";s:10:\"16919-0496\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(664,'create','2019-11-04 08:27:51','664','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"41809 Anika Bypass\";s:7:\"company\";N;s:4:\"city\";s:16:\"Schambergermouth\";s:8:\"postcode\";s:10:\"69930-6958\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(665,'create','2019-11-04 08:27:51','665','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"41809 Anika Bypass\";s:7:\"company\";N;s:4:\"city\";s:16:\"Schambergermouth\";s:8:\"postcode\";s:10:\"69930-6958\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(666,'create','2019-11-04 08:27:51','666','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Vena\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"41809 Anika Bypass\";s:7:\"company\";N;s:4:\"city\";s:16:\"Schambergermouth\";s:8:\"postcode\";s:10:\"69930-6958\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(667,'create','2019-11-04 08:27:51','667','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:10:\"McCullough\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"35820 Lorenza Glen Apt. 721\";s:7:\"company\";N;s:4:\"city\";s:10:\"Darrelland\";s:8:\"postcode\";s:5:\"48038\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(668,'create','2019-11-04 08:27:51','668','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:10:\"McCullough\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"35820 Lorenza Glen Apt. 721\";s:7:\"company\";N;s:4:\"city\";s:10:\"Darrelland\";s:8:\"postcode\";s:5:\"48038\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(669,'create','2019-11-04 08:27:51','669','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:10:\"McCullough\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"35820 Lorenza Glen Apt. 721\";s:7:\"company\";N;s:4:\"city\";s:10:\"Darrelland\";s:8:\"postcode\";s:5:\"48038\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(670,'create','2019-11-04 08:27:51','670','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Uriah\";s:8:\"lastName\";s:6:\"Heller\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"5106 Amani Trace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Ortizport\";s:8:\"postcode\";s:10:\"33788-0684\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(671,'create','2019-11-04 08:27:51','671','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Uriah\";s:8:\"lastName\";s:6:\"Heller\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"5106 Amani Trace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Ortizport\";s:8:\"postcode\";s:10:\"33788-0684\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(672,'create','2019-11-04 08:27:51','672','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Uriah\";s:8:\"lastName\";s:6:\"Heller\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"5106 Amani Trace\";s:7:\"company\";N;s:4:\"city\";s:9:\"Ortizport\";s:8:\"postcode\";s:10:\"33788-0684\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(673,'create','2019-11-04 08:27:51','673','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:10:\"Alessandro\";s:8:\"lastName\";s:7:\"Schultz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"753 Clementine Neck Suite 531\";s:7:\"company\";N;s:4:\"city\";s:10:\"Mayertberg\";s:8:\"postcode\";s:5:\"49723\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(674,'create','2019-11-04 08:27:51','674','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:10:\"Alessandro\";s:8:\"lastName\";s:7:\"Schultz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"753 Clementine Neck Suite 531\";s:7:\"company\";N;s:4:\"city\";s:10:\"Mayertberg\";s:8:\"postcode\";s:5:\"49723\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(675,'create','2019-11-04 08:27:51','675','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:10:\"Alessandro\";s:8:\"lastName\";s:7:\"Schultz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"753 Clementine Neck Suite 531\";s:7:\"company\";N;s:4:\"city\";s:10:\"Mayertberg\";s:8:\"postcode\";s:5:\"49723\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(676,'create','2019-11-04 08:27:51','676','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lenna\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61530 Jamil Forges Suite 886\";s:7:\"company\";N;s:4:\"city\";s:10:\"West Brian\";s:8:\"postcode\";s:10:\"08693-2050\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(677,'create','2019-11-04 08:27:51','677','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lenna\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61530 Jamil Forges Suite 886\";s:7:\"company\";N;s:4:\"city\";s:10:\"West Brian\";s:8:\"postcode\";s:10:\"08693-2050\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(678,'create','2019-11-04 08:27:51','678','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lenna\";s:8:\"lastName\";s:6:\"Hamill\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"61530 Jamil Forges Suite 886\";s:7:\"company\";N;s:4:\"city\";s:10:\"West Brian\";s:8:\"postcode\";s:10:\"08693-2050\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(679,'create','2019-11-04 08:27:51','679','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Marcelino\";s:8:\"lastName\";s:5:\"Ratke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"8897 Russel Loaf Apt. 297\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Joanniestad\";s:8:\"postcode\";s:5:\"14268\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(680,'create','2019-11-04 08:27:51','680','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Marcelino\";s:8:\"lastName\";s:5:\"Ratke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"8897 Russel Loaf Apt. 297\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Joanniestad\";s:8:\"postcode\";s:5:\"14268\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(681,'create','2019-11-04 08:27:51','681','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Marcelino\";s:8:\"lastName\";s:5:\"Ratke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"8897 Russel Loaf Apt. 297\";s:7:\"company\";N;s:4:\"city\";s:16:\"West Joanniestad\";s:8:\"postcode\";s:5:\"14268\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(682,'create','2019-11-04 08:27:51','682','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Shany\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"366 Marco Shoal Suite 573\";s:7:\"company\";N;s:4:\"city\";s:18:\"South Nikkoborough\";s:8:\"postcode\";s:10:\"05628-6159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(683,'create','2019-11-04 08:27:51','683','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Shany\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"366 Marco Shoal Suite 573\";s:7:\"company\";N;s:4:\"city\";s:18:\"South Nikkoborough\";s:8:\"postcode\";s:10:\"05628-6159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(684,'create','2019-11-04 08:27:51','684','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Shany\";s:8:\"lastName\";s:10:\"Konopelski\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"366 Marco Shoal Suite 573\";s:7:\"company\";N;s:4:\"city\";s:18:\"South Nikkoborough\";s:8:\"postcode\";s:10:\"05628-6159\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(685,'create','2019-11-04 08:27:51','685','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Aiden\";s:8:\"lastName\";s:7:\"Ritchie\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1737 Jayda Trail\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Timmymouth\";s:8:\"postcode\";s:10:\"36365-6959\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(686,'create','2019-11-04 08:27:51','686','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Aiden\";s:8:\"lastName\";s:7:\"Ritchie\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1737 Jayda Trail\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Timmymouth\";s:8:\"postcode\";s:10:\"36365-6959\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(687,'create','2019-11-04 08:27:51','687','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Aiden\";s:8:\"lastName\";s:7:\"Ritchie\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"1737 Jayda Trail\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Timmymouth\";s:8:\"postcode\";s:10:\"36365-6959\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(688,'create','2019-11-04 08:27:51','688','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Benedict\";s:8:\"lastName\";s:4:\"Lind\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"264 Haleigh Club Apt. 872\";s:7:\"company\";N;s:4:\"city\";s:14:\"Clevelandhaven\";s:8:\"postcode\";s:5:\"17614\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(689,'create','2019-11-04 08:27:51','689','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Benedict\";s:8:\"lastName\";s:4:\"Lind\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"264 Haleigh Club Apt. 872\";s:7:\"company\";N;s:4:\"city\";s:14:\"Clevelandhaven\";s:8:\"postcode\";s:5:\"17614\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(690,'create','2019-11-04 08:27:51','690','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:8:\"Benedict\";s:8:\"lastName\";s:4:\"Lind\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"264 Haleigh Club Apt. 872\";s:7:\"company\";N;s:4:\"city\";s:14:\"Clevelandhaven\";s:8:\"postcode\";s:5:\"17614\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(691,'create','2019-11-04 08:27:51','691','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:10:\"Williamson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"48855 Gudrun Lodge Apt. 504\";s:7:\"company\";N;s:4:\"city\";s:14:\"Goldnerborough\";s:8:\"postcode\";s:5:\"20246\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(692,'create','2019-11-04 08:27:51','692','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:10:\"Williamson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"48855 Gudrun Lodge Apt. 504\";s:7:\"company\";N;s:4:\"city\";s:14:\"Goldnerborough\";s:8:\"postcode\";s:5:\"20246\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(693,'create','2019-11-04 08:27:51','693','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:10:\"Williamson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"48855 Gudrun Lodge Apt. 504\";s:7:\"company\";N;s:4:\"city\";s:14:\"Goldnerborough\";s:8:\"postcode\";s:5:\"20246\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(694,'create','2019-11-04 08:27:51','694','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:9:\"Cassandra\";s:8:\"lastName\";s:4:\"Funk\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"382 Gino Track Apt. 713\";s:7:\"company\";N;s:4:\"city\";s:11:\"Bartellland\";s:8:\"postcode\";s:10:\"56413-1454\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(695,'create','2019-11-04 08:27:51','695','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Alexys\";s:8:\"lastName\";s:7:\"Wuckert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"8938 Cathryn Fords\";s:7:\"company\";N;s:4:\"city\";s:14:\"Reichelchester\";s:8:\"postcode\";s:10:\"79840-5255\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(696,'create','2019-11-04 08:27:51','696','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Karson\";s:8:\"lastName\";s:5:\"Lakin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"19322 Marcelina Lake\";s:7:\"company\";N;s:4:\"city\";s:18:\"Lake Alanischester\";s:8:\"postcode\";s:5:\"65075\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(697,'create','2019-11-04 08:27:51','697','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Sophia\";s:8:\"lastName\";s:5:\"Boyer\";s:11:\"phoneNumber\";s:15:\"+1-825-998-5613\";s:6:\"street\";s:14:\"7051 Deon Lock\";s:7:\"company\";N;s:4:\"city\";s:9:\"Hintzbury\";s:8:\"postcode\";s:10:\"35445-0868\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(698,'create','2019-11-04 08:27:51','698','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:5:\"Lenny\";s:8:\"lastName\";s:8:\"Gorczany\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"479 Hintz Radial\";s:7:\"company\";N;s:4:\"city\";s:11:\"East Autumn\";s:8:\"postcode\";s:10:\"10701-8250\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(699,'create','2019-11-04 08:27:51','699','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Lisa\";s:8:\"lastName\";s:5:\"Bosco\";s:11:\"phoneNumber\";s:12:\"962.767.9536\";s:6:\"street\";s:16:\"796 Dibbert Cape\";s:7:\"company\";N;s:4:\"city\";s:15:\"Lake Matteoberg\";s:8:\"postcode\";s:10:\"03899-7231\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(700,'create','2019-11-04 08:27:51','700','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Herbert\";s:8:\"lastName\";s:4:\"Mohr\";s:11:\"phoneNumber\";s:19:\"914-771-6720 x33366\";s:6:\"street\";s:22:\"27899 Clementina Ridge\";s:7:\"company\";s:13:\"Metz-O\'Reilly\";s:4:\"city\";s:12:\"Filomenafort\";s:8:\"postcode\";s:5:\"44746\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(701,'create','2019-11-04 08:27:51','701','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:7:\"Giovani\";s:8:\"lastName\";s:5:\"Nader\";s:11:\"phoneNumber\";N;s:6:\"street\";s:23:\"1171 Kub Rapid Apt. 693\";s:7:\"company\";N;s:4:\"city\";s:9:\"Port Lyla\";s:8:\"postcode\";s:5:\"07595\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(702,'create','2019-11-04 08:27:51','702','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:6:\"Hollie\";s:8:\"lastName\";s:7:\"O\'Keefe\";s:11:\"phoneNumber\";s:19:\"(608) 747-0244 x330\";s:6:\"street\";s:18:\"3282 Spencer Wells\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Stacey\";s:8:\"postcode\";s:10:\"16188-0013\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL),(703,'create','2019-11-04 08:27:51','703','App\\Entity\\Addressing\\Address',1,'a:10:{s:9:\"firstName\";s:4:\"Levi\";s:8:\"lastName\";s:5:\"Ortiz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:16:\"573 Hollie Trail\";s:7:\"company\";N;s:4:\"city\";s:8:\"Kubmouth\";s:8:\"postcode\";s:5:\"60652\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}',NULL);
/*!40000 ALTER TABLE `sylius_address_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`),
  CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=162800 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_adjustment`
--

LOCK TABLES `sylius_adjustment` WRITE;
/*!40000 ALTER TABLE `sylius_adjustment` DISABLE KEYS */;
INSERT INTO `sylius_adjustment` VALUES (162388,NULL,NULL,37094,'order_promotion','New Year',-210,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162389,NULL,NULL,37094,'order_promotion','Christmas',-3788,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162390,NULL,NULL,37094,'tax','Clothing Sales Tax 7% (7%)',316,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162391,NULL,NULL,37095,'order_promotion','New Year',-210,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162392,NULL,NULL,37095,'order_promotion','Christmas',-3788,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162393,NULL,NULL,37095,'tax','Clothing Sales Tax 7% (7%)',315,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162394,NULL,NULL,37096,'order_promotion','New Year',-209,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162395,NULL,NULL,37096,'order_promotion','Christmas',-3787,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162396,NULL,NULL,37096,'tax','Clothing Sales Tax 7% (7%)',315,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162397,NULL,NULL,37097,'order_promotion','New Year',-50,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162398,NULL,NULL,37097,'order_promotion','Christmas',-899,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162399,NULL,NULL,37097,'tax','Clothing Sales Tax 7% (7%)',75,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162400,NULL,NULL,37098,'order_promotion','New Year',-50,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162401,NULL,NULL,37098,'order_promotion','Christmas',-899,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162402,NULL,NULL,37098,'tax','Clothing Sales Tax 7% (7%)',75,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162403,NULL,NULL,37099,'order_promotion','New Year',-55,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162404,NULL,NULL,37099,'order_promotion','Christmas',-980,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162405,NULL,NULL,37099,'tax','Clothing Sales Tax 7% (7%)',82,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162406,NULL,NULL,37100,'order_promotion','New Year',-54,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162407,NULL,NULL,37100,'order_promotion','Christmas',-980,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162408,NULL,NULL,37100,'tax','Clothing Sales Tax 7% (7%)',82,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162409,NULL,NULL,37101,'order_promotion','New Year',-54,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162410,NULL,NULL,37101,'order_promotion','Christmas',-980,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162411,NULL,NULL,37101,'tax','Clothing Sales Tax 7% (7%)',82,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162412,NULL,NULL,37102,'order_promotion','New Year',-54,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162413,NULL,NULL,37102,'order_promotion','Christmas',-980,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162414,NULL,NULL,37102,'tax','Clothing Sales Tax 7% (7%)',81,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162415,NULL,NULL,37103,'order_promotion','New Year',-54,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162416,NULL,NULL,37103,'order_promotion','Christmas',-979,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162417,NULL,NULL,37103,'tax','Clothing Sales Tax 7% (7%)',81,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162418,10244,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162419,NULL,NULL,37104,'tax','Clothing Sales Tax 7% (7%)',56,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162420,NULL,NULL,37105,'tax','Clothing Sales Tax 7% (7%)',56,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162421,NULL,NULL,37106,'tax','Clothing Sales Tax 7% (7%)',55,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162422,10245,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162423,NULL,NULL,37107,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162424,NULL,NULL,37107,'order_promotion','Christmas',-2199,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162425,NULL,NULL,37107,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162426,NULL,NULL,37108,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162427,NULL,NULL,37108,'order_promotion','Christmas',-2199,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162428,NULL,NULL,37108,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162429,NULL,NULL,37109,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162430,NULL,NULL,37109,'order_promotion','Christmas',-2199,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162431,NULL,NULL,37109,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162432,NULL,NULL,37110,'order_promotion','New Year',-43,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162433,NULL,NULL,37110,'order_promotion','Christmas',-2199,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162434,NULL,NULL,37110,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162435,NULL,NULL,37111,'order_promotion','New Year',-43,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162436,NULL,NULL,37111,'order_promotion','Christmas',-2198,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162437,NULL,NULL,37111,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162438,NULL,NULL,37112,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162439,NULL,NULL,37112,'order_promotion','Christmas',-2208,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162440,NULL,NULL,37112,'tax','Clothing Sales Tax 7% (7%)',184,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162441,NULL,NULL,37113,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162442,NULL,NULL,37113,'order_promotion','Christmas',-2208,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162443,NULL,NULL,37113,'tax','Clothing Sales Tax 7% (7%)',184,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162444,NULL,NULL,37114,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162445,NULL,NULL,37114,'order_promotion','Christmas',-2208,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162446,NULL,NULL,37114,'tax','Clothing Sales Tax 7% (7%)',184,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162447,NULL,NULL,37115,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162448,NULL,NULL,37115,'order_promotion','Christmas',-2208,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162449,NULL,NULL,37115,'tax','Clothing Sales Tax 7% (7%)',184,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162450,NULL,NULL,37116,'order_promotion','New Year',-44,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162451,NULL,NULL,37116,'order_promotion','Christmas',-2208,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162452,NULL,NULL,37116,'tax','Clothing Sales Tax 7% (7%)',183,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162453,NULL,NULL,37117,'order_promotion','New Year',-72,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162454,NULL,NULL,37117,'order_promotion','Christmas',-3571,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162455,NULL,NULL,37117,'tax','Clothing Sales Tax 7% (7%)',298,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162456,NULL,NULL,37118,'order_promotion','New Year',-71,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162457,NULL,NULL,37118,'order_promotion','Christmas',-3571,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162458,NULL,NULL,37118,'tax','Clothing Sales Tax 7% (7%)',298,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162459,NULL,NULL,37119,'order_promotion','New Year',-71,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162460,NULL,NULL,37119,'order_promotion','Christmas',-3571,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162461,NULL,NULL,37119,'tax','Clothing Sales Tax 7% (7%)',297,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162462,NULL,NULL,37120,'order_promotion','New Year',-71,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162463,NULL,NULL,37120,'order_promotion','Christmas',-3571,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162464,NULL,NULL,37120,'tax','Clothing Sales Tax 7% (7%)',297,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162465,NULL,NULL,37121,'order_promotion','New Year',-71,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162466,NULL,NULL,37121,'order_promotion','Christmas',-3571,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162467,NULL,NULL,37121,'tax','Clothing Sales Tax 7% (7%)',297,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162468,NULL,NULL,37122,'order_promotion','New Year',-20,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162469,NULL,NULL,37122,'order_promotion','Christmas',-995,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162470,NULL,NULL,37122,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162471,NULL,NULL,37123,'order_promotion','New Year',-20,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162472,NULL,NULL,37123,'order_promotion','Christmas',-995,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162473,NULL,NULL,37123,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162474,NULL,NULL,37124,'order_promotion','New Year',-20,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162475,NULL,NULL,37124,'order_promotion','Christmas',-995,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162476,NULL,NULL,37124,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162477,NULL,NULL,37125,'order_promotion','New Year',-20,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162478,NULL,NULL,37125,'order_promotion','Christmas',-995,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162479,NULL,NULL,37125,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162480,NULL,NULL,37126,'order_promotion','New Year',-19,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162481,NULL,NULL,37126,'order_promotion','Christmas',-995,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162482,NULL,NULL,37126,'tax','Clothing Sales Tax 7% (7%)',82,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162483,NULL,NULL,37127,'order_promotion','New Year',-22,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162484,NULL,NULL,37127,'order_promotion','Christmas',-1072,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162485,NULL,NULL,37127,'tax','Clothing Sales Tax 7% (7%)',90,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162486,NULL,NULL,37128,'order_promotion','New Year',-22,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162487,NULL,NULL,37128,'order_promotion','Christmas',-1072,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162488,NULL,NULL,37128,'tax','Clothing Sales Tax 7% (7%)',89,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162489,NULL,NULL,37129,'order_promotion','New Year',-21,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162490,NULL,NULL,37129,'order_promotion','Christmas',-1072,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162491,NULL,NULL,37129,'tax','Clothing Sales Tax 7% (7%)',89,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162492,NULL,NULL,37130,'order_promotion','New Year',-21,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162493,NULL,NULL,37130,'order_promotion','Christmas',-1071,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162494,NULL,NULL,37130,'tax','Clothing Sales Tax 7% (7%)',89,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162495,NULL,NULL,37131,'order_promotion','New Year',-21,0,0,'new_year','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162496,NULL,NULL,37131,'order_promotion','Christmas',-1071,0,0,'christmas','2019-11-04 08:27:50','2019-11-04 08:27:50'),(162497,NULL,NULL,37131,'tax','Clothing Sales Tax 7% (7%)',89,1,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162498,10246,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(162499,NULL,NULL,37132,'order_promotion','New Year',-68,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162500,NULL,NULL,37132,'order_promotion','Christmas',-1052,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162501,NULL,NULL,37132,'tax','Clothing Sales Tax 7% (7%)',88,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162502,NULL,NULL,37133,'order_promotion','New Year',-68,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162503,NULL,NULL,37133,'order_promotion','Christmas',-1052,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162504,NULL,NULL,37133,'tax','Clothing Sales Tax 7% (7%)',88,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162505,NULL,NULL,37134,'order_promotion','New Year',-68,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162506,NULL,NULL,37134,'order_promotion','Christmas',-1051,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162507,NULL,NULL,37134,'tax','Clothing Sales Tax 7% (7%)',88,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162508,NULL,NULL,37135,'order_promotion','New Year',-67,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162509,NULL,NULL,37135,'order_promotion','Christmas',-1051,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162510,NULL,NULL,37135,'tax','Clothing Sales Tax 7% (7%)',87,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162511,NULL,NULL,37136,'order_promotion','New Year',-67,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162512,NULL,NULL,37136,'order_promotion','Christmas',-1051,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162513,NULL,NULL,37136,'tax','Clothing Sales Tax 7% (7%)',87,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162514,NULL,NULL,37137,'order_promotion','New Year',-11,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162515,NULL,NULL,37137,'order_promotion','Christmas',-165,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162516,NULL,NULL,37137,'tax','Sales Tax 20% (20%)',42,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162517,NULL,NULL,37138,'order_promotion','New Year',-201,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162518,NULL,NULL,37138,'order_promotion','Christmas',-3124,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162519,NULL,NULL,37138,'tax','Clothing Sales Tax 7% (7%)',260,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162520,NULL,NULL,37139,'order_promotion','New Year',-201,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162521,NULL,NULL,37139,'order_promotion','Christmas',-3123,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162522,NULL,NULL,37139,'tax','Clothing Sales Tax 7% (7%)',260,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162523,NULL,NULL,37140,'order_promotion','New Year',-83,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162524,NULL,NULL,37140,'order_promotion','Christmas',-1291,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162525,NULL,NULL,37140,'tax','Clothing Sales Tax 7% (7%)',108,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162526,NULL,NULL,37141,'order_promotion','New Year',-83,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162527,NULL,NULL,37141,'order_promotion','Christmas',-1291,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162528,NULL,NULL,37141,'tax','Clothing Sales Tax 7% (7%)',107,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162529,NULL,NULL,37142,'order_promotion','New Year',-83,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162530,NULL,NULL,37142,'order_promotion','Christmas',-1291,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162531,NULL,NULL,37142,'tax','Clothing Sales Tax 7% (7%)',107,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162532,10247,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162533,NULL,NULL,37143,'order_promotion','New Year',-113,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162534,NULL,NULL,37143,'order_promotion','Christmas',-2434,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162535,NULL,NULL,37143,'tax','Clothing Sales Tax 7% (7%)',203,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162536,NULL,NULL,37144,'order_promotion','New Year',-112,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162537,NULL,NULL,37144,'order_promotion','Christmas',-2434,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162538,NULL,NULL,37144,'tax','Clothing Sales Tax 7% (7%)',203,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162539,NULL,NULL,37145,'order_promotion','New Year',-112,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162540,NULL,NULL,37145,'order_promotion','Christmas',-2433,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162541,NULL,NULL,37145,'tax','Clothing Sales Tax 7% (7%)',202,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162542,NULL,NULL,37146,'order_promotion','New Year',-112,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162543,NULL,NULL,37146,'order_promotion','Christmas',-2433,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162544,NULL,NULL,37146,'tax','Clothing Sales Tax 7% (7%)',202,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162545,NULL,NULL,37147,'order_promotion','New Year',-183,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162546,NULL,NULL,37147,'order_promotion','Christmas',-3961,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162547,NULL,NULL,37147,'tax','Clothing Sales Tax 7% (7%)',330,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162548,NULL,NULL,37148,'order_promotion','New Year',-182,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162549,NULL,NULL,37148,'order_promotion','Christmas',-3961,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162550,NULL,NULL,37148,'tax','Clothing Sales Tax 7% (7%)',330,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162551,NULL,NULL,37149,'order_promotion','New Year',-182,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162552,NULL,NULL,37149,'order_promotion','Christmas',-3960,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162553,NULL,NULL,37149,'tax','Clothing Sales Tax 7% (7%)',329,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162554,NULL,NULL,37150,'order_promotion','New Year',-2,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162555,NULL,NULL,37150,'order_promotion','Christmas',-44,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162556,NULL,NULL,37150,'tax','Clothing Sales Tax 7% (7%)',4,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162557,NULL,NULL,37151,'order_promotion','New Year',-2,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162558,NULL,NULL,37151,'order_promotion','Christmas',-44,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162559,NULL,NULL,37151,'tax','Clothing Sales Tax 7% (7%)',3,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162560,10248,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162561,NULL,NULL,37152,'order_promotion','New Year',-88,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162562,NULL,NULL,37152,'order_promotion','Christmas',-1289,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162563,NULL,NULL,37152,'tax','Clothing Sales Tax 7% (7%)',108,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162564,NULL,NULL,37153,'order_promotion','New Year',-88,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162565,NULL,NULL,37153,'order_promotion','Christmas',-1289,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162566,NULL,NULL,37153,'tax','Clothing Sales Tax 7% (7%)',108,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162567,NULL,NULL,37154,'order_promotion','New Year',-88,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162568,NULL,NULL,37154,'order_promotion','Christmas',-1289,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162569,NULL,NULL,37154,'tax','Clothing Sales Tax 7% (7%)',107,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162570,NULL,NULL,37155,'order_promotion','New Year',-88,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162571,NULL,NULL,37155,'order_promotion','Christmas',-1289,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162572,NULL,NULL,37155,'tax','Clothing Sales Tax 7% (7%)',107,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162573,NULL,NULL,37156,'order_promotion','New Year',-88,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162574,NULL,NULL,37156,'order_promotion','Christmas',-1288,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162575,NULL,NULL,37156,'tax','Clothing Sales Tax 7% (7%)',107,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162576,NULL,NULL,37157,'order_promotion','New Year',-275,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162577,NULL,NULL,37157,'order_promotion','Christmas',-4028,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162578,NULL,NULL,37157,'tax','Clothing Sales Tax 7% (7%)',336,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162579,NULL,NULL,37158,'order_promotion','New Year',-274,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162580,NULL,NULL,37158,'order_promotion','Christmas',-4028,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162581,NULL,NULL,37158,'tax','Clothing Sales Tax 7% (7%)',335,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162582,NULL,NULL,37159,'order_promotion','New Year',-11,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162583,NULL,NULL,37159,'order_promotion','Christmas',-165,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162584,NULL,NULL,37159,'tax','Sales Tax 20% (20%)',42,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162585,10249,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162586,NULL,NULL,37160,'order_promotion','New Year',-116,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162587,NULL,NULL,37160,'order_promotion','Christmas',-1578,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162588,NULL,NULL,37160,'tax','Clothing Sales Tax 7% (7%)',132,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162589,NULL,NULL,37161,'order_promotion','New Year',-116,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162590,NULL,NULL,37161,'order_promotion','Christmas',-1578,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162591,NULL,NULL,37161,'tax','Clothing Sales Tax 7% (7%)',132,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162592,NULL,NULL,37162,'order_promotion','New Year',-115,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162593,NULL,NULL,37162,'order_promotion','Christmas',-1578,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162594,NULL,NULL,37162,'tax','Clothing Sales Tax 7% (7%)',131,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162595,NULL,NULL,37163,'order_promotion','New Year',-115,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162596,NULL,NULL,37163,'order_promotion','Christmas',-1578,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162597,NULL,NULL,37163,'tax','Clothing Sales Tax 7% (7%)',131,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162598,NULL,NULL,37164,'order_promotion','New Year',-269,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162599,NULL,NULL,37164,'order_promotion','Christmas',-3681,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162600,NULL,NULL,37164,'tax','Clothing Sales Tax 7% (7%)',307,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162601,NULL,NULL,37165,'order_promotion','New Year',-269,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162602,NULL,NULL,37165,'order_promotion','Christmas',-3681,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162603,NULL,NULL,37165,'tax','Clothing Sales Tax 7% (7%)',306,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162604,10250,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162605,NULL,NULL,37166,'order_promotion','New Year',-200,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162606,NULL,NULL,37166,'order_promotion','Christmas',-3545,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162607,NULL,NULL,37166,'tax','Clothing Sales Tax 7% (7%)',296,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162608,NULL,NULL,37167,'order_promotion','New Year',-200,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162609,NULL,NULL,37167,'order_promotion','Christmas',-3545,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162610,NULL,NULL,37167,'tax','Clothing Sales Tax 7% (7%)',295,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162611,NULL,NULL,37168,'order_promotion','New Year',-200,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162612,NULL,NULL,37168,'order_promotion','Christmas',-3545,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162613,NULL,NULL,37168,'tax','Clothing Sales Tax 7% (7%)',295,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162614,NULL,NULL,37169,'order_promotion','New Year',-200,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162615,NULL,NULL,37169,'order_promotion','Christmas',-3545,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162616,NULL,NULL,37169,'tax','Clothing Sales Tax 7% (7%)',295,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162617,NULL,NULL,37170,'order_promotion','New Year',-200,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162618,NULL,NULL,37170,'order_promotion','Christmas',-3545,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162619,NULL,NULL,37170,'tax','Clothing Sales Tax 7% (7%)',295,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162620,10251,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162621,NULL,NULL,37171,'tax','Sales Tax 20% (20%)',454,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162622,NULL,NULL,37172,'tax','Sales Tax 20% (20%)',454,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162623,NULL,NULL,37173,'tax','Sales Tax 20% (20%)',453,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162624,10252,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162625,NULL,NULL,37174,'order_promotion','New Year',-364,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162626,NULL,NULL,37174,'tax','Clothing Sales Tax 7% (7%)',472,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162627,NULL,NULL,37175,'order_promotion','New Year',-363,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162628,NULL,NULL,37175,'tax','Clothing Sales Tax 7% (7%)',471,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162629,NULL,NULL,37176,'order_promotion','New Year',-273,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162630,NULL,NULL,37176,'tax','Clothing Sales Tax 7% (7%)',354,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162631,10253,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162632,NULL,NULL,37177,'order_promotion','New Year',-205,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162633,NULL,NULL,37177,'order_promotion','Christmas',-3725,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162634,NULL,NULL,37177,'tax','Clothing Sales Tax 7% (7%)',310,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162635,NULL,NULL,37178,'order_promotion','New Year',-205,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162636,NULL,NULL,37178,'order_promotion','Christmas',-3724,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162637,NULL,NULL,37178,'tax','Clothing Sales Tax 7% (7%)',310,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162638,NULL,NULL,37179,'order_promotion','New Year',-205,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162639,NULL,NULL,37179,'order_promotion','Christmas',-3724,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162640,NULL,NULL,37179,'tax','Clothing Sales Tax 7% (7%)',310,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162641,NULL,NULL,37180,'order_promotion','New Year',-11,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162642,NULL,NULL,37180,'order_promotion','Christmas',-196,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162643,NULL,NULL,37180,'tax','Clothing Sales Tax 7% (7%)',17,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162644,NULL,NULL,37181,'order_promotion','New Year',-11,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162645,NULL,NULL,37181,'order_promotion','Christmas',-196,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162646,NULL,NULL,37181,'tax','Clothing Sales Tax 7% (7%)',16,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162647,NULL,NULL,37182,'order_promotion','New Year',-10,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162648,NULL,NULL,37182,'order_promotion','Christmas',-196,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162649,NULL,NULL,37182,'tax','Clothing Sales Tax 7% (7%)',16,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162650,NULL,NULL,37183,'order_promotion','New Year',-27,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162651,NULL,NULL,37183,'order_promotion','Christmas',-489,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162652,NULL,NULL,37183,'tax','Clothing Sales Tax 7% (7%)',41,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162653,NULL,NULL,37184,'order_promotion','New Year',-27,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162654,NULL,NULL,37184,'order_promotion','Christmas',-489,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162655,NULL,NULL,37184,'tax','Clothing Sales Tax 7% (7%)',41,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162656,NULL,NULL,37185,'order_promotion','New Year',-27,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162657,NULL,NULL,37185,'order_promotion','Christmas',-489,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162658,NULL,NULL,37185,'tax','Clothing Sales Tax 7% (7%)',40,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162659,NULL,NULL,37186,'order_promotion','New Year',-136,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162660,NULL,NULL,37186,'order_promotion','Christmas',-2475,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162661,NULL,NULL,37186,'tax','Sales Tax 20% (20%)',630,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162662,NULL,NULL,37187,'order_promotion','New Year',-136,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162663,NULL,NULL,37187,'order_promotion','Christmas',-2475,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162664,NULL,NULL,37187,'tax','Sales Tax 20% (20%)',630,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162665,10254,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162666,NULL,NULL,37188,'tax','Clothing Sales Tax 7% (7%)',7,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162667,NULL,NULL,37189,'tax','Sales Tax 20% (20%)',1100,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162668,10255,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162669,NULL,NULL,37190,'order_promotion','New Year',-334,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162670,NULL,NULL,37190,'tax','Sales Tax 20% (20%)',1033,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162671,NULL,NULL,37191,'order_promotion','New Year',-333,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162672,NULL,NULL,37191,'tax','Sales Tax 20% (20%)',1033,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162673,NULL,NULL,37192,'order_promotion','New Year',-333,0,0,'new_year','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162674,NULL,NULL,37192,'tax','Sales Tax 20% (20%)',1033,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162675,10256,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162676,NULL,NULL,37193,'order_promotion','Christmas',-4364,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162677,NULL,NULL,37193,'tax','Clothing Sales Tax 7% (7%)',363,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162678,NULL,NULL,37194,'order_promotion','Christmas',-4099,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162679,NULL,NULL,37194,'tax','Clothing Sales Tax 7% (7%)',342,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162680,NULL,NULL,37195,'order_promotion','Christmas',-4099,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162681,NULL,NULL,37195,'tax','Clothing Sales Tax 7% (7%)',341,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162682,NULL,NULL,37196,'order_promotion','Christmas',-4099,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162683,NULL,NULL,37196,'tax','Clothing Sales Tax 7% (7%)',341,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162684,NULL,NULL,37197,'order_promotion','Christmas',-4098,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162685,NULL,NULL,37197,'tax','Clothing Sales Tax 7% (7%)',341,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162686,NULL,NULL,37198,'order_promotion','Christmas',-2535,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162687,NULL,NULL,37198,'tax','Sales Tax 20% (20%)',646,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162688,NULL,NULL,37199,'order_promotion','Christmas',-2535,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162689,NULL,NULL,37199,'tax','Sales Tax 20% (20%)',645,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162690,NULL,NULL,37200,'order_promotion','Christmas',-2535,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162691,NULL,NULL,37200,'tax','Sales Tax 20% (20%)',645,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162692,NULL,NULL,37201,'order_promotion','Christmas',-2535,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162693,NULL,NULL,37201,'tax','Sales Tax 20% (20%)',645,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162694,10257,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162695,NULL,NULL,37202,'tax','Clothing Sales Tax 7% (7%)',649,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162696,NULL,NULL,37203,'tax','Clothing Sales Tax 7% (7%)',649,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162697,10258,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162698,NULL,NULL,37204,'order_promotion','Christmas',-3236,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162699,NULL,NULL,37204,'tax','Clothing Sales Tax 7% (7%)',270,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162700,NULL,NULL,37205,'order_promotion','Christmas',-3235,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162701,NULL,NULL,37205,'tax','Clothing Sales Tax 7% (7%)',269,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162702,NULL,NULL,37206,'order_promotion','Christmas',-3235,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162703,NULL,NULL,37206,'tax','Clothing Sales Tax 7% (7%)',269,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162704,NULL,NULL,37207,'order_promotion','Christmas',-1833,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162705,NULL,NULL,37207,'tax','Clothing Sales Tax 7% (7%)',153,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162706,NULL,NULL,37208,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162707,NULL,NULL,37208,'tax','Clothing Sales Tax 7% (7%)',153,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162708,NULL,NULL,37209,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162709,NULL,NULL,37209,'tax','Clothing Sales Tax 7% (7%)',152,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162710,NULL,NULL,37210,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162711,NULL,NULL,37210,'tax','Clothing Sales Tax 7% (7%)',152,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162712,NULL,NULL,37211,'order_promotion','Christmas',-2855,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162713,NULL,NULL,37211,'tax','Clothing Sales Tax 7% (7%)',238,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162714,NULL,NULL,37212,'order_promotion','Christmas',-2854,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162715,NULL,NULL,37212,'tax','Clothing Sales Tax 7% (7%)',238,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162716,NULL,NULL,37213,'order_promotion','Christmas',-2854,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162717,NULL,NULL,37213,'tax','Clothing Sales Tax 7% (7%)',238,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162718,NULL,NULL,37214,'order_promotion','Christmas',-2854,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162719,NULL,NULL,37214,'tax','Clothing Sales Tax 7% (7%)',237,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162720,NULL,NULL,37215,'order_promotion','Christmas',-2854,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162721,NULL,NULL,37215,'tax','Clothing Sales Tax 7% (7%)',237,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162722,10259,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162723,NULL,NULL,37216,'order_promotion','Christmas',-997,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162724,NULL,NULL,37216,'tax','Sales Tax 20% (20%)',254,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162725,NULL,NULL,37217,'order_promotion','Christmas',-1833,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162726,NULL,NULL,37217,'tax','Clothing Sales Tax 7% (7%)',153,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162727,NULL,NULL,37218,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162728,NULL,NULL,37218,'tax','Clothing Sales Tax 7% (7%)',153,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162729,NULL,NULL,37219,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162730,NULL,NULL,37219,'tax','Clothing Sales Tax 7% (7%)',152,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162731,NULL,NULL,37220,'order_promotion','Christmas',-1832,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162732,NULL,NULL,37220,'tax','Clothing Sales Tax 7% (7%)',152,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162733,NULL,NULL,37221,'order_promotion','Christmas',-4149,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162734,NULL,NULL,37221,'tax','Clothing Sales Tax 7% (7%)',346,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162735,NULL,NULL,37222,'order_promotion','Christmas',-4149,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162736,NULL,NULL,37222,'tax','Clothing Sales Tax 7% (7%)',346,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162737,NULL,NULL,37223,'order_promotion','Christmas',-4149,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162738,NULL,NULL,37223,'tax','Clothing Sales Tax 7% (7%)',345,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162739,NULL,NULL,37224,'order_promotion','Christmas',-4149,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162740,NULL,NULL,37224,'tax','Clothing Sales Tax 7% (7%)',345,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162741,NULL,NULL,37225,'order_promotion','Christmas',-4148,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162742,NULL,NULL,37225,'tax','Clothing Sales Tax 7% (7%)',345,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162743,10260,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162744,NULL,NULL,37226,'order_promotion','Christmas',-814,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162745,NULL,NULL,37226,'tax','Clothing Sales Tax 7% (7%)',68,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162746,NULL,NULL,37227,'order_promotion','Christmas',-814,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162747,NULL,NULL,37227,'tax','Clothing Sales Tax 7% (7%)',68,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162748,NULL,NULL,37228,'order_promotion','Christmas',-813,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162749,NULL,NULL,37228,'tax','Clothing Sales Tax 7% (7%)',67,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162750,NULL,NULL,37229,'order_promotion','Christmas',-4198,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162751,NULL,NULL,37229,'tax','Clothing Sales Tax 7% (7%)',349,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162752,NULL,NULL,37230,'order_promotion','Christmas',-993,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162753,NULL,NULL,37230,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162754,NULL,NULL,37231,'order_promotion','Christmas',-993,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162755,NULL,NULL,37231,'tax','Clothing Sales Tax 7% (7%)',83,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162756,NULL,NULL,37232,'order_promotion','Christmas',-993,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162757,NULL,NULL,37232,'tax','Clothing Sales Tax 7% (7%)',82,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162758,NULL,NULL,37233,'order_promotion','Christmas',-2010,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162759,NULL,NULL,37233,'tax','Clothing Sales Tax 7% (7%)',167,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162760,NULL,NULL,37234,'order_promotion','Christmas',-921,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162761,NULL,NULL,37234,'tax','Clothing Sales Tax 7% (7%)',77,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162762,NULL,NULL,37235,'order_promotion','Christmas',-921,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162763,NULL,NULL,37235,'tax','Clothing Sales Tax 7% (7%)',77,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162764,NULL,NULL,37236,'order_promotion','Christmas',-921,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162765,NULL,NULL,37236,'tax','Clothing Sales Tax 7% (7%)',76,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162766,10261,NULL,NULL,'shipping','UPS',561,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162767,NULL,NULL,37237,'order_promotion','Christmas',-3212,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162768,NULL,NULL,37237,'tax','Clothing Sales Tax 7% (7%)',268,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162769,NULL,NULL,37238,'order_promotion','Christmas',-3212,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162770,NULL,NULL,37238,'tax','Clothing Sales Tax 7% (7%)',267,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162771,NULL,NULL,37239,'order_promotion','Christmas',-3212,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162772,NULL,NULL,37239,'tax','Clothing Sales Tax 7% (7%)',267,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162773,NULL,NULL,37240,'order_promotion','Christmas',-201,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162774,NULL,NULL,37240,'tax','Clothing Sales Tax 7% (7%)',17,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162775,NULL,NULL,37241,'order_promotion','Christmas',-200,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162776,NULL,NULL,37241,'tax','Clothing Sales Tax 7% (7%)',16,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162777,NULL,NULL,37242,'order_promotion','Christmas',-2420,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162778,NULL,NULL,37242,'tax','Sales Tax 20% (20%)',616,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162779,NULL,NULL,37243,'order_promotion','Christmas',-2419,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162780,NULL,NULL,37243,'tax','Sales Tax 20% (20%)',616,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162781,NULL,NULL,37244,'order_promotion','Christmas',-2419,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162782,NULL,NULL,37244,'tax','Sales Tax 20% (20%)',616,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162783,NULL,NULL,37245,'order_promotion','Christmas',-2419,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162784,NULL,NULL,37245,'tax','Sales Tax 20% (20%)',615,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162785,NULL,NULL,37246,'order_promotion','Christmas',-185,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162786,NULL,NULL,37246,'tax','Clothing Sales Tax 7% (7%)',16,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162787,NULL,NULL,37247,'order_promotion','Christmas',-185,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162788,NULL,NULL,37247,'tax','Clothing Sales Tax 7% (7%)',16,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162789,NULL,NULL,37248,'order_promotion','Christmas',-185,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162790,NULL,NULL,37248,'tax','Clothing Sales Tax 7% (7%)',15,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162791,NULL,NULL,37249,'order_promotion','Christmas',-185,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162792,NULL,NULL,37249,'tax','Clothing Sales Tax 7% (7%)',15,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162793,NULL,NULL,37250,'order_promotion','Christmas',-184,0,0,'christmas','2019-11-04 08:27:51','2019-11-04 08:27:51'),(162794,NULL,NULL,37250,'tax','Clothing Sales Tax 7% (7%)',15,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162795,10262,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162796,NULL,NULL,37251,'tax','Clothing Sales Tax 7% (7%)',161,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162797,NULL,NULL,37252,'tax','Clothing Sales Tax 7% (7%)',161,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162798,NULL,NULL,37253,'tax','Clothing Sales Tax 7% (7%)',160,1,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(162799,10263,NULL,NULL,'shipping','DHL Express',781,0,0,NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51');
/*!40000 ALTER TABLE `sylius_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`),
  CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_access_token`
--

LOCK TABLES `sylius_admin_api_access_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_access_token` DISABLE KEYS */;
INSERT INTO `sylius_admin_api_access_token` VALUES (10,10,21,'SampleToken',NULL,NULL);
/*!40000 ALTER TABLE `sylius_admin_api_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`),
  CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_auth_code`
--

LOCK TABLES `sylius_admin_api_auth_code` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_client`
--

LOCK TABLES `sylius_admin_api_client` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_client` DISABLE KEYS */;
INSERT INTO `sylius_admin_api_client` VALUES (10,'demo_client','a:0:{}','secret_demo_client','a:1:{i:0;s:8:\"password\";}');
/*!40000 ALTER TABLE `sylius_admin_api_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`),
  CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_api_refresh_token`
--

LOCK TABLES `sylius_admin_api_refresh_token` WRITE;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_admin_api_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_admin_user`
--

LOCK TABLES `sylius_admin_user` WRITE;
/*!40000 ALTER TABLE `sylius_admin_user` DISABLE KEYS */;
INSERT INTO `sylius_admin_user` VALUES (20,'sylius','sylius',1,'8ts89rv11mo0wsscs8g0wow8s88k8sc','$argon2i$v=19$m=65536,t=4,p=1$NlBXMEtDbzIuanZjL1RZdg$6Ewbp8BprokREnAbCkseNW3oaAWt1on9f27v8KIJiU8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}','sylius@example.com','sylius@example.com','2019-11-04 08:27:48','2019-11-04 08:27:48','John','Doe','en_US','argon2i'),(21,'api','api',1,'157pnrg2cqdcsk4sogsc00cw484kgo0','$argon2i$v=19$m=65536,t=4,p=1$NGhuNWxVdXZENWVnSFNrcA$sHGDST8knk3x/4l7xNaeFNAqpoh6SbA1R04j/VbUgzw',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}','api@example.com','api@example.com','2019-11-04 08:27:49','2019-11-04 08:27:49','Luke','Brushwood','en_US','argon2i');
/*!40000 ALTER TABLE `sylius_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_avatar_image`
--

DROP TABLE IF EXISTS `sylius_avatar_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_avatar_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`),
  CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_avatar_image`
--

LOCK TABLES `sylius_avatar_image` WRITE;
/*!40000 ALTER TABLE `sylius_avatar_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_avatar_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`),
  CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel`
--

LOCK TABLES `sylius_channel` WRITE;
/*!40000 ALTER TABLE `sylius_channel` DISABLE KEYS */;
INSERT INTO `sylius_channel` VALUES (10,11,11,11,'FASHION_WEB','US Web Store','Beige',NULL,1,'localhost','2019-11-04 08:27:43','2019-11-04 08:27:43',NULL,'order_items_based',NULL,0,0,1,10);
/*!40000 ALTER TABLE `sylius_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`),
  CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_currencies`
--

LOCK TABLES `sylius_channel_currencies` WRITE;
/*!40000 ALTER TABLE `sylius_channel_currencies` DISABLE KEYS */;
INSERT INTO `sylius_channel_currencies` VALUES (10,11);
/*!40000 ALTER TABLE `sylius_channel_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`),
  CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_locales`
--

LOCK TABLES `sylius_channel_locales` WRITE;
/*!40000 ALTER TABLE `sylius_channel_locales` DISABLE KEYS */;
INSERT INTO `sylius_channel_locales` VALUES (10,11);
/*!40000 ALTER TABLE `sylius_channel_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`),
  CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_channel_pricing`
--

LOCK TABLES `sylius_channel_pricing` WRITE;
/*!40000 ALTER TABLE `sylius_channel_pricing` DISABLE KEYS */;
INSERT INTO `sylius_channel_pricing` VALUES (1073,1073,7353,NULL,'FASHION_WEB'),(1074,1074,9246,NULL,'FASHION_WEB'),(1075,1075,9184,NULL,'FASHION_WEB'),(1076,1076,8315,NULL,'FASHION_WEB'),(1077,1077,4416,NULL,'FASHION_WEB'),(1078,1078,6487,NULL,'FASHION_WEB'),(1079,1079,7273,NULL,'FASHION_WEB'),(1080,1080,4224,NULL,'FASHION_WEB'),(1081,1081,809,NULL,'FASHION_WEB'),(1082,1082,1735,NULL,'FASHION_WEB'),(1083,1083,5810,NULL,'FASHION_WEB'),(1084,1084,9265,NULL,'FASHION_WEB'),(1085,1085,5733,NULL,'FASHION_WEB'),(1086,1086,7572,NULL,'FASHION_WEB'),(1087,1087,1358,NULL,'FASHION_WEB'),(1088,1088,3294,NULL,'FASHION_WEB'),(1089,1089,2413,NULL,'FASHION_WEB'),(1090,1090,9429,NULL,'FASHION_WEB'),(1091,1091,8670,NULL,'FASHION_WEB'),(1092,1092,620,NULL,'FASHION_WEB'),(1093,1093,3635,NULL,'FASHION_WEB'),(1094,1094,349,NULL,'FASHION_WEB'),(1095,1095,8087,NULL,'FASHION_WEB'),(1096,1096,4081,NULL,'FASHION_WEB'),(1097,1097,2957,NULL,'FASHION_WEB'),(1098,1098,5928,NULL,'FASHION_WEB'),(1099,1099,420,NULL,'FASHION_WEB'),(1100,1100,102,NULL,'FASHION_WEB'),(1101,1101,7164,NULL,'FASHION_WEB'),(1102,1102,5643,NULL,'FASHION_WEB'),(1103,1103,387,NULL,'FASHION_WEB'),(1104,1104,5761,NULL,'FASHION_WEB'),(1105,1105,2268,NULL,'FASHION_WEB'),(1106,1106,5498,NULL,'FASHION_WEB'),(1107,1107,8187,NULL,'FASHION_WEB'),(1108,1108,6082,NULL,'FASHION_WEB'),(1109,1109,3962,NULL,'FASHION_WEB'),(1110,1110,8096,NULL,'FASHION_WEB'),(1111,1111,9371,NULL,'FASHION_WEB'),(1112,1112,622,NULL,'FASHION_WEB'),(1113,1113,3938,NULL,'FASHION_WEB'),(1114,1114,6448,NULL,'FASHION_WEB'),(1115,1115,1849,NULL,'FASHION_WEB'),(1116,1116,427,NULL,'FASHION_WEB'),(1117,1117,2382,NULL,'FASHION_WEB'),(1118,1118,944,NULL,'FASHION_WEB'),(1119,1119,456,NULL,'FASHION_WEB'),(1120,1120,4569,NULL,'FASHION_WEB'),(1121,1121,7788,NULL,'FASHION_WEB'),(1122,1122,9208,NULL,'FASHION_WEB'),(1123,1123,1052,NULL,'FASHION_WEB'),(1124,1124,3861,NULL,'FASHION_WEB'),(1125,1125,2344,NULL,'FASHION_WEB'),(1126,1126,2157,NULL,'FASHION_WEB'),(1127,1127,4072,NULL,'FASHION_WEB'),(1128,1128,4964,NULL,'FASHION_WEB'),(1129,1129,8310,NULL,'FASHION_WEB'),(1130,1130,4957,NULL,'FASHION_WEB'),(1131,1131,8734,NULL,'FASHION_WEB'),(1132,1132,4534,NULL,'FASHION_WEB'),(1133,1133,5568,NULL,'FASHION_WEB'),(1134,1134,4389,NULL,'FASHION_WEB'),(1135,1135,2310,NULL,'FASHION_WEB'),(1136,1136,5866,NULL,'FASHION_WEB'),(1137,1137,5619,NULL,'FASHION_WEB'),(1138,1138,9112,NULL,'FASHION_WEB'),(1139,1139,8635,NULL,'FASHION_WEB'),(1140,1140,6970,NULL,'FASHION_WEB'),(1141,1141,1772,NULL,'FASHION_WEB'),(1142,1142,2078,NULL,'FASHION_WEB'),(1143,1143,5453,NULL,'FASHION_WEB'),(1144,1144,4196,NULL,'FASHION_WEB'),(1145,1145,502,NULL,'FASHION_WEB'),(1146,1146,705,NULL,'FASHION_WEB'),(1147,1147,5687,NULL,'FASHION_WEB'),(1148,1148,6355,NULL,'FASHION_WEB'),(1149,1149,2683,NULL,'FASHION_WEB'),(1150,1150,2904,NULL,'FASHION_WEB'),(1151,1151,595,NULL,'FASHION_WEB'),(1152,1152,5693,NULL,'FASHION_WEB'),(1153,1153,2457,NULL,'FASHION_WEB'),(1154,1154,8257,NULL,'FASHION_WEB'),(1155,1155,2257,NULL,'FASHION_WEB'),(1156,1156,7445,NULL,'FASHION_WEB'),(1157,1157,298,NULL,'FASHION_WEB'),(1158,1158,2093,NULL,'FASHION_WEB'),(1159,1159,8994,NULL,'FASHION_WEB'),(1160,1160,4268,NULL,'FASHION_WEB'),(1161,1161,1006,NULL,'FASHION_WEB'),(1162,1162,3702,NULL,'FASHION_WEB'),(1163,1163,3698,NULL,'FASHION_WEB'),(1164,1164,3193,NULL,'FASHION_WEB'),(1165,1165,8619,NULL,'FASHION_WEB'),(1166,1166,2281,NULL,'FASHION_WEB'),(1167,1167,7768,NULL,'FASHION_WEB'),(1168,1168,9315,NULL,'FASHION_WEB'),(1169,1169,3126,NULL,'FASHION_WEB'),(1170,1170,4164,NULL,'FASHION_WEB'),(1171,1171,5062,NULL,'FASHION_WEB'),(1172,1172,850,NULL,'FASHION_WEB'),(1173,1173,7300,NULL,'FASHION_WEB'),(1174,1174,9920,NULL,'FASHION_WEB'),(1175,1175,506,NULL,'FASHION_WEB'),(1176,1176,5041,NULL,'FASHION_WEB'),(1177,1177,7787,NULL,'FASHION_WEB'),(1178,1178,2996,NULL,'FASHION_WEB'),(1179,1179,9219,NULL,'FASHION_WEB'),(1180,1180,1264,NULL,'FASHION_WEB'),(1181,1181,5963,NULL,'FASHION_WEB'),(1182,1182,7543,NULL,'FASHION_WEB'),(1183,1183,571,NULL,'FASHION_WEB'),(1184,1184,9540,NULL,'FASHION_WEB'),(1185,1185,9629,NULL,'FASHION_WEB'),(1186,1186,8818,NULL,'FASHION_WEB'),(1187,1187,3662,NULL,'FASHION_WEB'),(1188,1188,3017,NULL,'FASHION_WEB'),(1189,1189,2571,NULL,'FASHION_WEB'),(1190,1190,1138,NULL,'FASHION_WEB'),(1191,1191,8436,NULL,'FASHION_WEB');
/*!40000 ALTER TABLE `sylius_channel_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_country`
--

LOCK TABLES `sylius_country` WRITE;
/*!40000 ALTER TABLE `sylius_country` DISABLE KEYS */;
INSERT INTO `sylius_country` VALUES (11,'US',1);
/*!40000 ALTER TABLE `sylius_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_currency`
--

LOCK TABLES `sylius_currency` WRITE;
/*!40000 ALTER TABLE `sylius_currency` DISABLE KEYS */;
INSERT INTO `sylius_currency` VALUES (11,'USD','2019-11-04 08:27:42','2019-11-04 08:27:42');
/*!40000 ALTER TABLE `sylius_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`),
  CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19214 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer`
--

LOCK TABLES `sylius_customer` WRITE;
/*!40000 ALTER TABLE `sylius_customer` DISABLE KEYS */;
INSERT INTO `sylius_customer` VALUES (18193,20,NULL,'shop@example.com','shop@example.com','John','Doe','1970-09-07 10:51:06','u','2019-11-04 08:27:43','2019-11-04 08:27:43','+1 (740) 767-6110',0),(18194,19,NULL,'cordie.toy@yahoo.com','cordie.toy@yahoo.com','Francis','Willms','1996-01-23 09:41:39','u','2019-11-04 08:27:43','2019-11-04 08:27:43','+1 (731) 733-7025',0),(18195,19,NULL,'ckassulke@bailey.com','ckassulke@bailey.com','Ada','Frami','1933-11-28 20:52:20','u','2019-11-04 08:27:43','2019-11-04 08:27:43','393-439-2881 x39427',0),(18196,19,NULL,'ben.kohler@rice.info','ben.kohler@rice.info','Reta','Rolfson','1929-08-03 12:51:30','u','2019-11-04 08:27:43','2019-11-04 08:27:44','1-359-840-8652 x41290',0),(18197,20,NULL,'stiedemann.marian@windler.com','stiedemann.marian@windler.com','Mohammad','Franecki','1981-08-12 18:55:56','u','2019-11-04 08:27:44','2019-11-04 08:27:44','+1.596.664.5827',0),(18198,19,NULL,'terry97@yahoo.com','terry97@yahoo.com','Ole','Bosco','1969-03-31 17:21:23','u','2019-11-04 08:27:44','2019-11-04 08:27:44','403.234.5634 x9328',0),(18199,19,NULL,'mdurgan@hotmail.com','mdurgan@hotmail.com','Lynn','Nitzsche','1966-03-24 12:25:06','u','2019-11-04 08:27:44','2019-11-04 08:27:45','1-990-997-6635',0),(18200,20,NULL,'roob.prince@gmail.com','roob.prince@gmail.com','Marcelino','Cassin','1988-03-10 11:09:34','u','2019-11-04 08:27:45','2019-11-04 08:27:45','(414) 734-5333',0),(18201,20,NULL,'vincenza.turcotte@swift.com','vincenza.turcotte@swift.com','Edgar','Williamson','1950-01-28 13:50:47','u','2019-11-04 08:27:45','2019-11-04 08:27:45','(740) 270-5546',0),(18202,19,NULL,'hazle16@collier.com','hazle16@collier.com','Hilma','Bosco','2003-11-11 09:49:35','u','2019-11-04 08:27:45','2019-11-04 08:27:45','1-742-764-6521',0),(18203,19,NULL,'walter.russ@yahoo.com','walter.russ@yahoo.com','Enola','McKenzie','1976-06-26 12:26:24','u','2019-11-04 08:27:45','2019-11-04 08:27:46','+1-879-318-8503',0),(18204,20,NULL,'loyce83@yahoo.com','loyce83@yahoo.com','Rory','Howell','2001-04-01 15:12:05','u','2019-11-04 08:27:46','2019-11-04 08:27:46','236-247-2542 x589',0),(18205,19,NULL,'kuphal.dora@yahoo.com','kuphal.dora@yahoo.com','Elda','Larkin','1999-05-14 07:38:24','u','2019-11-04 08:27:46','2019-11-04 08:27:46','994.880.1657 x10475',0),(18206,19,NULL,'maryam47@yahoo.com','maryam47@yahoo.com','Dewayne','Braun','1958-03-15 03:49:47','u','2019-11-04 08:27:46','2019-11-04 08:27:46','852-712-3790',0),(18207,20,NULL,'noelia31@bergstrom.info','noelia31@bergstrom.info','Alicia','Ankunding','1920-01-14 13:58:24','u','2019-11-04 08:27:46','2019-11-04 08:27:47','268-684-9345',0),(18208,20,NULL,'rachael01@veum.org','rachael01@veum.org','Octavia','Davis','2004-11-04 13:56:24','u','2019-11-04 08:27:47','2019-11-04 08:27:47','1-537-220-3895',0),(18209,20,NULL,'rickey.fadel@rempel.org','rickey.fadel@rempel.org','Colten','Mante','1937-06-08 03:31:38','u','2019-11-04 08:27:47','2019-11-04 08:27:47','858.464.2648 x871',0),(18210,20,NULL,'bayer.clifford@wintheiser.net','bayer.clifford@wintheiser.net','Eusebio','Legros','1932-07-06 10:25:25','u','2019-11-04 08:27:47','2019-11-04 08:27:47','+1-354-782-4946',0),(18211,20,NULL,'pschowalter@gmail.com','pschowalter@gmail.com','Mateo','Kessler','1974-04-26 03:43:39','u','2019-11-04 08:27:47','2019-11-04 08:27:48','1-709-467-7332',0),(18212,19,NULL,'adolph.marks@yahoo.com','adolph.marks@yahoo.com','Jaycee','Stokes','1961-05-15 13:38:12','u','2019-11-04 08:27:48','2019-11-04 08:27:48','1-420-506-5046 x15029',0),(18213,20,NULL,'austyn26@simonis.com','austyn26@simonis.com','Evelyn','Schowalter','1958-12-10 00:22:39','u','2019-11-04 08:27:48','2019-11-04 08:27:48','1-757-788-5693 x282',0),(18214,NULL,NULL,'cecile77@raynaud.com','cecile77@raynaud.com','Jeannine','Vallee','1965-11-13 03:48:41','u','2019-11-17 06:15:41','2019-11-04 08:27:57','01 20 24 01 41',0),(18215,NULL,NULL,'gaudin.jerome@chauvin.com','gaudin.jerome@chauvin.com','Véronique','Guibert','1971-03-26 07:22:20','u','2019-10-16 17:38:41','2019-11-04 08:27:57','0509825193',1),(18216,NULL,NULL,'gosselin.francois@pereira.fr','gosselin.francois@pereira.fr','Valentine','Carlier','1989-05-16 18:20:15','u','2019-11-10 21:01:17','2019-11-04 08:27:57','05 07 53 81 23',0),(18217,NULL,NULL,'hugues60@marchal.fr','hugues60@marchal.fr','Gilles','Pottier','1972-07-07 07:53:01','u','2019-11-06 04:16:25','2019-11-04 08:27:57','+33 7 68 69 12 73',1),(18218,NULL,NULL,'lmarie@live.com','lmarie@live.com','Luc','Lefebvre','1988-01-10 06:51:18','u','2019-10-27 06:59:51','2019-11-04 08:27:57','01 67 73 35 81',1),(18219,NULL,NULL,'traore.dominique@riou.fr','traore.dominique@riou.fr','Olivie','Navarro','1997-01-09 00:27:08','u','2019-10-23 23:34:51','2019-11-04 08:27:57','+33 (0)3 40 11 03 89',1),(18220,NULL,NULL,'louis.boucher@laposte.net','louis.boucher@laposte.net','Laetitia','Ruiz','1975-12-12 04:32:32','u','2019-11-27 05:55:30','2019-11-04 08:27:57','06 60 71 93 70',1),(18221,NULL,NULL,'rcousin@guerin.org','rcousin@guerin.org','Henri','Descamps','1962-07-26 01:41:30','u','2019-10-05 04:06:46','2019-11-04 08:27:57','0495880176',1),(18222,NULL,NULL,'leger.jean@boulay.fr','leger.jean@boulay.fr','Noémi','Bonnin','1975-02-19 00:15:21','u','2019-11-21 07:34:05','2019-11-04 08:27:57','+33 (0)2 61 93 15 22',0),(18223,NULL,NULL,'wroyer@tiscali.fr','wroyer@tiscali.fr','Nicole','Gosselin','1986-09-09 06:46:49','u','2019-10-29 07:14:12','2019-11-04 08:27:57','+33 3 47 16 32 53',0),(18224,NULL,NULL,'boutin.lucie@wanadoo.fr','boutin.lucie@wanadoo.fr','Auguste','Petit','1987-06-11 12:45:08','u','2019-10-04 17:33:40','2019-11-04 08:27:57','09 69 67 95 47',1),(18225,NULL,NULL,'ines62@payet.fr','ines62@payet.fr','Louise','Traore','1965-11-01 10:09:29','u','2019-11-30 13:35:07','2019-11-04 08:27:57','+33 1 28 69 83 81',1),(18226,NULL,NULL,'philippine83@hebert.fr','philippine83@hebert.fr','Julien','Costa','1976-04-26 08:56:35','u','2019-10-07 11:01:20','2019-11-04 08:27:57','+33 (0)1 48 03 59 17',0),(18227,NULL,NULL,'denis.bertrand@yahoo.fr','denis.bertrand@yahoo.fr','Joseph','Brun','1977-01-04 22:11:05','u','2019-10-18 09:52:58','2019-11-04 08:27:57','08 17 19 91 61',1),(18228,NULL,NULL,'vincent.elodie@blin.com','vincent.elodie@blin.com','Marine','Pelletier','1979-12-17 09:32:29','u','2019-10-15 11:57:30','2019-11-04 08:27:57','0897914323',1),(18229,NULL,NULL,'elisabeth41@yahoo.fr','elisabeth41@yahoo.fr','Sylvie','Cohen','1975-02-06 18:39:32','u','2019-11-17 03:57:57','2019-11-04 08:27:57','0117306722',1),(18230,NULL,NULL,'imbert.corinne@pottier.net','imbert.corinne@pottier.net','Thibaut','Arnaud','1999-05-14 08:13:39','u','2019-10-30 12:37:37','2019-11-04 08:27:57','+33 (0)3 65 77 69 17',1),(18231,NULL,NULL,'rgros@sfr.fr','rgros@sfr.fr','Louis','Gay','1961-12-05 00:16:29','u','2019-10-13 01:08:01','2019-11-04 08:27:57','01 55 24 68 93',1),(18232,NULL,NULL,'maggie74@martins.fr','maggie74@martins.fr','Michelle','Fontaine','1990-11-21 08:28:34','u','2019-11-22 22:26:41','2019-11-04 08:27:57','01 37 67 99 93',1),(18233,NULL,NULL,'genevieve53@barbier.fr','genevieve53@barbier.fr','Camille','Andre','1960-02-15 19:22:54','u','2019-12-01 10:25:56','2019-11-04 08:27:57','+33 9 88 99 63 28',0),(18234,NULL,NULL,'hamon.laurence@pires.com','hamon.laurence@pires.com','Adélaïde','Peron','1961-01-16 02:10:30','u','2019-12-04 02:55:44','2019-11-04 08:27:57','0342420633',1),(18235,NULL,NULL,'umillet@leleu.com','umillet@leleu.com','Éléonore','Fleury','1974-06-20 01:08:37','u','2019-10-17 18:33:23','2019-11-04 08:27:57','02 47 36 02 58',0),(18236,NULL,NULL,'jeannine06@rodriguez.net','jeannine06@rodriguez.net','Édouard','Levy','1987-12-21 10:14:02','u','2019-11-07 10:58:00','2019-11-04 08:27:57','+33 (0)2 97 42 13 38',1),(18237,NULL,NULL,'alfred.royer@noos.fr','alfred.royer@noos.fr','Margot','Poirier','1996-01-13 17:36:53','u','2019-10-12 01:21:23','2019-11-04 08:27:57','0183378310',0),(18238,NULL,NULL,'matthieu39@tiscali.fr','matthieu39@tiscali.fr','Michelle','Cordier','1978-10-14 23:01:40','u','2019-11-22 06:56:39','2019-11-04 08:27:57','01 94 55 53 24',0),(18239,NULL,NULL,'herve.alphonse@gilbert.fr','herve.alphonse@gilbert.fr','Adrienne','Leroy','1988-07-05 01:23:56','u','2019-11-08 08:39:30','2019-11-04 08:27:57','+33 (0)1 12 02 78 87',0),(18240,NULL,NULL,'antoine88@gonzalez.fr','antoine88@gonzalez.fr','Margot','Vasseur','1967-12-20 12:34:10','u','2019-11-13 15:54:01','2019-11-04 08:27:57','0163031443',0),(18241,NULL,NULL,'germain.jean@gmail.com','germain.jean@gmail.com','Matthieu','Faivre','1963-04-20 06:17:03','u','2019-10-27 02:31:54','2019-11-04 08:27:57','+33 6 01 24 06 98',0),(18242,NULL,NULL,'fparis@sfr.fr','fparis@sfr.fr','Tristan','Hebert','1985-08-18 23:36:20','u','2019-11-04 04:01:43','2019-11-04 08:27:57','01 49 82 84 18',1),(18243,NULL,NULL,'giraud.maryse@laposte.net','giraud.maryse@laposte.net','Rémy','Millet','1997-02-15 08:26:17','u','2019-11-25 21:41:18','2019-11-04 08:27:57','+33 5 89 56 70 74',1),(18244,NULL,NULL,'xprevost@wanadoo.fr','xprevost@wanadoo.fr','Gilbert','Teixeira','1993-03-31 20:19:25','u','2019-10-04 11:40:24','2019-11-04 08:27:57','+33 7 97 80 43 43',1),(18245,NULL,NULL,'hernandez.zoe@lambert.fr','hernandez.zoe@lambert.fr','Lucie','Bigot','1996-04-19 05:11:12','u','2019-10-05 17:41:33','2019-11-04 08:27:57','09 85 50 54 68',1),(18246,NULL,NULL,'mbesnard@faivre.com','mbesnard@faivre.com','Marine','Camus','1993-10-24 20:03:42','u','2019-10-24 21:57:21','2019-11-04 08:27:57','0789623659',0),(18247,NULL,NULL,'matthieu91@free.fr','matthieu91@free.fr','Alexandrie','Ribeiro','1969-06-16 08:11:57','u','2019-10-06 14:56:21','2019-11-04 08:27:57','+33 (0)8 06 55 66 09',1),(18248,NULL,NULL,'franck.joubert@pineau.fr','franck.joubert@pineau.fr','Luc','Delahaye','1976-03-30 15:11:46','u','2019-11-21 00:51:27','2019-11-04 08:27:57','+33 (0)1 45 94 00 11',0),(18249,NULL,NULL,'bonnin.adrien@bouygtel.fr','bonnin.adrien@bouygtel.fr','Catherine','Pichon','1964-12-29 06:33:23','u','2019-10-31 21:34:34','2019-11-04 08:27:57','0806460381',1),(18250,NULL,NULL,'guilbert.adele@sfr.fr','guilbert.adele@sfr.fr','Gilles','Blanchet','1966-09-01 00:50:28','u','2019-11-08 08:43:09','2019-11-04 08:27:57','0547043972',0),(18251,NULL,NULL,'dominique.richard@noos.fr','dominique.richard@noos.fr','Capucine','Picard','1990-06-03 00:39:49','u','2019-11-16 21:29:43','2019-11-04 08:27:57','+33 (0)9 82 66 58 55',0),(18252,NULL,NULL,'leroux.alfred@allain.com','leroux.alfred@allain.com','Nicolas','Jacob','1980-02-25 08:37:37','u','2019-11-18 07:49:07','2019-11-04 08:27:57','0417917380',1),(18253,NULL,NULL,'charles.luce@voila.fr','charles.luce@voila.fr','Renée','Bonnin','1986-01-15 13:17:58','u','2019-11-17 11:21:22','2019-11-04 08:27:57','+33 8 08 59 21 64',1),(18254,NULL,NULL,'timothee31@delattre.fr','timothee31@delattre.fr','Julie','Lefevre','1973-08-16 20:43:02','u','2019-10-23 07:38:14','2019-11-04 08:27:57','08 11 07 94 25',1),(18255,NULL,NULL,'tpottier@morvan.net','tpottier@morvan.net','Roger','Berthelot','1998-01-31 20:55:40','u','2019-11-13 20:59:42','2019-11-04 08:27:57','09 66 66 96 00',1),(18256,NULL,NULL,'mathieu.robert@laroche.com','mathieu.robert@laroche.com','Matthieu','Dubois','1982-11-09 05:37:39','u','2019-10-31 23:16:55','2019-11-04 08:27:57','0378177087',1),(18257,NULL,NULL,'bdaniel@gmail.com','bdaniel@gmail.com','Nicolas','Marty','1995-11-24 03:42:59','u','2019-11-20 04:18:33','2019-11-04 08:27:57','+33 1 16 77 75 70',1),(18258,NULL,NULL,'roland74@orange.fr','roland74@orange.fr','Paul','Parent','1989-07-01 18:36:02','u','2019-11-19 01:07:33','2019-11-04 08:27:57','+33 (0)4 03 02 58 87',0),(18259,NULL,NULL,'olivie.lecomte@live.com','olivie.lecomte@live.com','Adrien','Weiss','1969-05-05 13:28:58','u','2019-11-12 08:16:54','2019-11-04 08:27:57','06 71 36 36 67',1),(18260,NULL,NULL,'vdiallo@breton.fr','vdiallo@breton.fr','Dorothée','Lemoine','1995-03-16 04:34:17','u','2019-10-16 00:38:52','2019-11-04 08:27:57','01 82 01 14 84',0),(18261,NULL,NULL,'rene73@club-internet.fr','rene73@club-internet.fr','Théophile','Alexandre','1978-10-28 13:54:59','u','2019-11-01 15:58:52','2019-11-04 08:27:57','01 23 71 47 61',1),(18262,NULL,NULL,'breton.nicolas@petit.net','breton.nicolas@petit.net','Jeannine','Diallo','1965-02-13 14:19:56','u','2019-11-16 23:23:06','2019-11-04 08:27:57','0178148719',1),(18263,NULL,NULL,'maurice23@durand.net','maurice23@durand.net','Hélène','Rey','1987-12-04 04:05:35','u','2019-11-30 14:18:12','2019-11-04 08:27:57','08 93 51 99 69',1),(18264,NULL,NULL,'vallee.vincent@noos.fr','vallee.vincent@noos.fr','Catherine','Meyer','1983-05-07 12:49:04','u','2019-11-26 08:48:32','2019-11-04 08:27:57','0767812965',1),(18265,NULL,NULL,'petitjean.brigitte@hotmail.fr','petitjean.brigitte@hotmail.fr','Thibaut','Mendes','1969-01-04 05:50:59','u','2019-10-14 01:44:10','2019-11-04 08:27:57','0279621670',1),(18266,NULL,NULL,'alain.auger@club-internet.fr','alain.auger@club-internet.fr','Claudine','Evrard','1997-11-16 19:18:54','u','2019-11-15 15:17:19','2019-11-04 08:27:57','0944418370',1),(18267,NULL,NULL,'pauline94@free.fr','pauline94@free.fr','Victor','Charpentier','1997-05-26 23:58:23','u','2019-11-01 17:50:34','2019-11-04 08:27:57','02 37 14 85 87',1),(18268,NULL,NULL,'suzanne.dossantos@laposte.net','suzanne.dossantos@laposte.net','Sophie','Rey','1961-08-06 19:57:02','u','2019-10-09 20:39:56','2019-11-04 08:27:57','+33 2 74 79 57 07',0),(18269,NULL,NULL,'laporte.luce@club-internet.fr','laporte.luce@club-internet.fr','Étienne','Germain','1976-12-24 21:33:14','u','2019-11-09 17:32:37','2019-11-04 08:27:57','+33 (0)2 87 55 13 87',0),(18270,NULL,NULL,'klesage@dbmail.com','klesage@dbmail.com','David','Letellier','1995-10-01 19:23:28','u','2019-11-06 19:45:29','2019-11-04 08:27:57','04 91 12 69 39',1),(18271,NULL,NULL,'lagarde.francoise@noos.fr','lagarde.francoise@noos.fr','Charles','Gaudin','1976-08-08 03:56:06','u','2019-11-26 18:45:44','2019-11-04 08:27:57','0103076857',0),(18272,NULL,NULL,'timothee.brunel@langlois.fr','timothee.brunel@langlois.fr','Thérèse','Pascal','1980-10-13 19:55:13','u','2019-11-15 13:20:08','2019-11-04 08:27:57','08 09 56 65 93',0),(18273,NULL,NULL,'jean73@club-internet.fr','jean73@club-internet.fr','Margot','Pasquier','1995-12-26 04:40:59','u','2019-10-31 07:46:09','2019-11-04 08:27:57','0191751658',0),(18274,NULL,NULL,'josephine.marty@live.com','josephine.marty@live.com','Emmanuelle','Thierry','1971-07-04 09:13:26','u','2019-11-05 14:46:52','2019-11-04 08:27:57','+33 (0)2 91 68 58 70',1),(18275,NULL,NULL,'coste.michel@yahoo.fr','coste.michel@yahoo.fr','Brigitte','Leduc','1999-10-07 10:45:06','u','2019-10-06 22:06:09','2019-11-04 08:27:57','+33 4 40 95 59 20',1),(18276,NULL,NULL,'aurore.dufour@orange.fr','aurore.dufour@orange.fr','Marianne','Deschamps','1960-01-15 08:25:52','u','2019-12-02 08:37:21','2019-11-04 08:27:57','+33 (0)1 06 75 39 21',0),(18277,NULL,NULL,'nath.perez@hotmail.fr','nath.perez@hotmail.fr','Louise','Bouchet','1981-02-14 07:35:59','u','2019-11-01 18:54:59','2019-11-04 08:27:57','+33 (0)7 43 57 77 18',0),(18278,NULL,NULL,'luce63@wanadoo.fr','luce63@wanadoo.fr','Dominique','Lemaitre','1975-07-13 12:28:05','u','2019-10-12 09:01:03','2019-11-04 08:27:57','0751748677',0),(18279,NULL,NULL,'louise.parent@lucas.com','louise.parent@lucas.com','Sébastien','Leblanc','1976-04-18 01:32:05','u','2019-10-31 16:32:11','2019-11-04 08:27:57','+33 6 84 08 65 37',1),(18280,NULL,NULL,'theodore83@noos.fr','theodore83@noos.fr','Adrienne','Ruiz','1970-06-16 16:10:53','u','2019-11-29 14:46:36','2019-11-04 08:27:57','+33 5 61 53 89 90',1),(18281,NULL,NULL,'margot23@orange.fr','margot23@orange.fr','Chantal','Lefevre','1982-09-15 23:19:11','u','2019-11-06 23:45:47','2019-11-04 08:27:57','+33 6 46 68 10 63',0),(18282,NULL,NULL,'marcel.evrard@roussel.com','marcel.evrard@roussel.com','Jérôme','Jacquet','1997-08-19 05:35:11','u','2019-11-30 05:26:45','2019-11-04 08:27:57','04 67 26 67 07',1),(18283,NULL,NULL,'marianne11@free.fr','marianne11@free.fr','Isabelle','Thierry','1987-02-11 19:21:57','u','2019-11-28 09:05:05','2019-11-04 08:27:57','05 28 10 37 57',0),(18284,NULL,NULL,'alain.andre@tiscali.fr','alain.andre@tiscali.fr','Michel','Diaz','1997-12-30 08:01:53','u','2019-11-02 06:12:20','2019-11-04 08:27:57','+33 2 53 57 87 55',0),(18285,NULL,NULL,'marianne.pruvost@samson.fr','marianne.pruvost@samson.fr','Monique','Normand','1959-11-06 14:26:47','u','2019-10-29 09:23:00','2019-11-04 08:27:57','0823193557',0),(18286,NULL,NULL,'frederic.charrier@lelievre.com','frederic.charrier@lelievre.com','Louise','Jean','1979-08-16 17:08:39','u','2019-11-28 23:29:05','2019-11-04 08:27:57','+33 3 40 85 29 91',1),(18287,NULL,NULL,'antoine.maurice@gerard.net','antoine.maurice@gerard.net','Agathe','Maurice','1970-03-31 19:35:05','u','2019-11-19 16:20:27','2019-11-04 08:27:57','+33 (0)1 39 62 71 22',1),(18288,NULL,NULL,'claude.bonnet@wanadoo.fr','claude.bonnet@wanadoo.fr','Célina','Roy','1967-06-01 20:53:19','u','2019-11-23 07:09:58','2019-11-04 08:27:57','01 96 85 19 52',0),(18289,NULL,NULL,'jgauthier@sfr.fr','jgauthier@sfr.fr','Constance','Ferreira','1971-03-27 12:18:51','u','2019-10-15 23:09:18','2019-11-04 08:27:57','02 21 56 71 01',1),(18290,NULL,NULL,'susanne37@free.fr','susanne37@free.fr','Adrien','Mace','1972-04-11 18:46:36','u','2019-11-09 00:07:39','2019-11-04 08:27:57','0393318792',0),(18291,NULL,NULL,'juliette79@vallet.fr','juliette79@vallet.fr','Alexandre','Michaud','1967-08-28 14:39:25','u','2019-11-27 23:17:01','2019-11-04 08:27:57','+33 1 50 63 57 06',1),(18292,NULL,NULL,'thibault.pasquier@sfr.fr','thibault.pasquier@sfr.fr','Michèle','Fabre','1971-10-02 02:36:50','u','2019-11-24 01:23:18','2019-11-04 08:27:57','+33 6 98 40 15 97',0),(18293,NULL,NULL,'aevrard@tele2.fr','aevrard@tele2.fr','Antoinette','Lecoq','1977-03-14 22:27:46','u','2019-12-01 07:53:17','2019-11-04 08:27:57','+33 (0)2 02 66 74 95',0),(18294,NULL,NULL,'yves15@bouygtel.fr','yves15@bouygtel.fr','Théophile','Colas','1984-09-05 06:12:46','u','2019-11-30 10:14:54','2019-11-04 08:27:57','+33 1 62 33 84 27',1),(18295,NULL,NULL,'acousin@allain.fr','acousin@allain.fr','Richard','Salmon','1987-09-18 08:18:00','u','2019-11-05 12:50:34','2019-11-04 08:27:57','+33 (0)6 91 21 95 85',1),(18296,NULL,NULL,'xtorres@tiscali.fr','xtorres@tiscali.fr','Paul','Prevost','1992-07-28 20:38:59','u','2019-10-27 18:47:43','2019-11-04 08:27:57','0141901739',1),(18297,NULL,NULL,'victor.pelletier@pinto.org','victor.pelletier@pinto.org','Guillaume','Noel','1980-09-09 19:23:50','u','2019-10-13 01:35:29','2019-11-04 08:27:57','+33 5 99 91 74 04',0),(18298,NULL,NULL,'penelope.rocher@vasseur.com','penelope.rocher@vasseur.com','Benjamin','Bourgeois','1966-12-02 20:33:41','u','2019-10-17 07:06:38','2019-11-04 08:27:57','0695496248',0),(18299,NULL,NULL,'helene84@caron.com','helene84@caron.com','Nathalie','Arnaud','1972-07-23 11:04:48','u','2019-11-06 15:28:53','2019-11-04 08:27:57','0401810797',0),(18300,NULL,NULL,'etienne.michaud@orange.fr','etienne.michaud@orange.fr','Anaïs','Thomas','1980-01-07 12:18:02','u','2019-10-12 08:18:43','2019-11-04 08:27:57','0634965360',1),(18301,NULL,NULL,'leconte.patricia@lambert.com','leconte.patricia@lambert.com','Maurice','Marechal','1982-08-01 05:12:08','u','2019-11-10 06:53:40','2019-11-04 08:27:57','0754456145',0),(18302,NULL,NULL,'dacosta.martine@leclerc.com','dacosta.martine@leclerc.com','Alex','Berger','1976-08-17 04:26:44','u','2019-11-30 03:08:10','2019-11-04 08:27:57','+33 7 95 12 71 03',0),(18303,NULL,NULL,'brunet.amelie@bouygtel.fr','brunet.amelie@bouygtel.fr','Yves','Mace','1998-11-30 19:57:08','u','2019-11-28 02:42:32','2019-11-04 08:27:57','0782874731',0),(18304,NULL,NULL,'qmaurice@mathieu.fr','qmaurice@mathieu.fr','Eugène','Launay','1975-10-08 19:34:05','u','2019-12-01 10:56:20','2019-11-04 08:27:57','+33 (0)1 23 09 08 28',0),(18305,NULL,NULL,'snavarro@lopes.com','snavarro@lopes.com','Danielle','Dupont','1980-01-31 10:20:01','u','2019-10-10 09:30:02','2019-11-04 08:27:57','09 61 20 48 17',1),(18306,NULL,NULL,'caroline.dumas@rodrigues.fr','caroline.dumas@rodrigues.fr','Xavier','Ruiz','1967-09-15 14:31:05','u','2019-10-31 06:57:59','2019-11-04 08:27:57','0258680616',1),(18307,NULL,NULL,'claire37@guilbert.fr','claire37@guilbert.fr','Constance','Gonzalez','1992-01-28 06:58:03','u','2019-10-11 10:21:47','2019-11-04 08:27:57','02 47 68 16 13',0),(18308,NULL,NULL,'oevrard@langlois.org','oevrard@langlois.org','Chantal','Lelievre','1993-11-08 18:02:47','u','2019-11-27 11:17:14','2019-11-04 08:27:57','+33 5 25 12 52 47',1),(18309,NULL,NULL,'noemi16@gmail.com','noemi16@gmail.com','Audrey','Michel','1999-01-30 17:54:00','u','2019-11-09 08:23:53','2019-11-04 08:27:57','+33 (0)2 02 15 93 09',0),(18310,NULL,NULL,'pmendes@hubert.fr','pmendes@hubert.fr','Marc','Boyer','1986-08-31 12:08:08','u','2019-10-16 14:53:13','2019-11-04 08:27:57','+33 (0)4 90 19 35 27',0),(18311,NULL,NULL,'fblanchard@live.com','fblanchard@live.com','Sébastien','Vaillant','1960-04-02 12:15:56','u','2019-10-27 22:18:41','2019-11-04 08:27:57','+33 8 01 96 92 54',0),(18312,NULL,NULL,'zcarre@fernandes.com','zcarre@fernandes.com','Catherine','Henry','1972-04-24 18:20:52','u','2019-11-19 12:43:51','2019-11-04 08:27:57','03 72 24 89 48',1),(18313,NULL,NULL,'scaron@laposte.net','scaron@laposte.net','Bernadette','Pascal','1982-06-07 23:11:15','u','2019-11-24 16:25:36','2019-11-04 08:27:57','+33 3 26 00 98 13',1),(18314,NULL,NULL,'alves.vincent@lambert.fr','alves.vincent@lambert.fr','Marine','Leconte','1981-07-27 15:40:46','u','2019-10-25 13:44:58','2019-11-04 08:27:57','+33 4 64 34 58 63',0),(18315,NULL,NULL,'laine.gabriel@free.fr','laine.gabriel@free.fr','Clémence','Devaux','1964-08-15 11:58:01','u','2019-11-07 11:18:37','2019-11-04 08:27:57','0966938752',1),(18316,NULL,NULL,'toussaint.denis@daniel.com','toussaint.denis@daniel.com','Eugène','Paris','1964-05-31 11:50:50','u','2019-12-03 22:44:18','2019-11-04 08:27:57','08 06 53 92 17',0),(18317,NULL,NULL,'clemence52@lemaire.com','clemence52@lemaire.com','Mathilde','Vaillant','1981-06-26 06:42:47','u','2019-10-30 02:18:43','2019-11-04 08:27:57','+33 (0)4 70 89 63 38',1),(18318,NULL,NULL,'valexandre@faivre.com','valexandre@faivre.com','Brigitte','Benard','1992-10-11 14:55:41','u','2019-11-02 13:31:16','2019-11-04 08:27:57','+33 5 80 19 94 14',0),(18319,NULL,NULL,'cecile.peltier@hotmail.fr','cecile.peltier@hotmail.fr','Isaac','Schneider','1995-10-11 20:07:40','u','2019-10-11 18:40:45','2019-11-04 08:27:57','01 55 90 40 30',0),(18320,NULL,NULL,'edith71@lebreton.com','edith71@lebreton.com','Frédérique','Valette','1990-03-08 09:34:13','u','2019-11-18 13:06:59','2019-11-04 08:27:57','+33 9 27 95 35 44',0),(18321,NULL,NULL,'leduc.nicolas@petit.org','leduc.nicolas@petit.org','Pierre','Charpentier','1999-06-17 02:26:09','u','2019-10-17 00:29:32','2019-11-04 08:27:57','+33 1 70 11 71 71',0),(18322,NULL,NULL,'eleblanc@peltier.com','eleblanc@peltier.com','Jacques','Aubry','1972-07-15 10:12:00','u','2019-10-06 21:17:18','2019-11-04 08:27:57','0819592695',0),(18323,NULL,NULL,'roger.claire@salmon.com','roger.claire@salmon.com','Alexandria','Rocher','1983-12-18 09:40:34','u','2019-10-22 05:13:28','2019-11-04 08:27:57','+33 6 99 53 80 78',1),(18324,NULL,NULL,'ucohen@sfr.fr','ucohen@sfr.fr','Aimé','Chretien','1969-08-07 07:23:02','u','2019-11-14 13:01:29','2019-11-04 08:27:57','+33 (0)9 69 67 16 87',1),(18325,NULL,NULL,'uthomas@dbmail.com','uthomas@dbmail.com','Claude','Durand','1989-09-21 05:00:33','u','2019-10-13 06:15:24','2019-11-04 08:27:57','+33 (0)1 40 29 61 73',0),(18326,NULL,NULL,'hugues00@barbe.com','hugues00@barbe.com','Sabine','Delahaye','1976-08-10 12:47:22','u','2019-10-28 21:00:04','2019-11-04 08:27:57','+33 (0)4 54 32 55 61',1),(18327,NULL,NULL,'pierre.hamel@becker.fr','pierre.hamel@becker.fr','Chantal','Chauvin','1988-04-14 14:28:29','u','2019-10-25 19:36:06','2019-11-04 08:27:57','+33 4 06 30 99 51',1),(18328,NULL,NULL,'mahe.philippe@mahe.com','mahe.philippe@mahe.com','David','Raynaud','1987-09-20 01:02:48','u','2019-11-13 11:32:29','2019-11-04 08:27:57','+33 (0)8 12 85 35 56',1),(18329,NULL,NULL,'celine.morvan@guyot.com','celine.morvan@guyot.com','Théophile','Clerc','1985-10-22 13:08:07','u','2019-11-03 13:26:43','2019-11-04 08:27:57','+33 (0)4 03 26 21 58',1),(18330,NULL,NULL,'egarcia@sfr.fr','egarcia@sfr.fr','Bernadette','Denis','1963-12-11 00:37:33','u','2019-10-19 19:24:50','2019-11-04 08:27:57','+33 (0)7 33 24 72 41',0),(18331,NULL,NULL,'lpascal@club-internet.fr','lpascal@club-internet.fr','Pierre','Tanguy','1982-09-12 21:31:40','u','2019-11-05 00:56:07','2019-11-04 08:27:57','+33 1 18 39 00 71',0),(18332,NULL,NULL,'mlaurent@sfr.fr','mlaurent@sfr.fr','Françoise','Fournier','1993-04-08 02:52:58','u','2019-11-18 13:21:36','2019-11-04 08:27:57','0546415700',1),(18333,NULL,NULL,'jerome.grondin@rousset.com','jerome.grondin@rousset.com','Hugues','Fernandes','1997-10-05 14:55:10','u','2019-11-03 04:58:16','2019-11-04 08:27:57','+33 2 46 95 52 87',0),(18334,NULL,NULL,'auguste.lemonnier@petit.org','auguste.lemonnier@petit.org','Aurore','Lejeune','1971-05-01 09:38:08','u','2019-11-13 12:01:44','2019-11-04 08:27:57','01 33 01 49 25',0),(18335,NULL,NULL,'tguillou@sfr.fr','tguillou@sfr.fr','Alain','Hardy','1991-01-23 00:22:49','u','2019-10-18 15:27:03','2019-11-04 08:27:57','0757038641',0),(18336,NULL,NULL,'madeleine.texier@orange.fr','madeleine.texier@orange.fr','Philippine','Schneider','1975-01-03 08:30:55','u','2019-11-16 13:56:53','2019-11-04 08:27:57','+33 (0)5 06 78 47 60',1),(18337,NULL,NULL,'carlier.lorraine@club-internet.fr','carlier.lorraine@club-internet.fr','Claude','Martinez','1972-04-03 14:33:44','u','2019-10-23 18:20:28','2019-11-04 08:27:57','+33 (0)3 83 19 15 66',0),(18338,NULL,NULL,'margaud28@tele2.fr','margaud28@tele2.fr','Robert','Olivier','1991-04-23 08:56:57','u','2019-11-02 02:05:35','2019-11-04 08:27:57','+33 1 52 68 06 25',1),(18339,NULL,NULL,'vbenard@delmas.net','vbenard@delmas.net','Bertrand','Le Goff','1997-07-17 14:07:47','u','2019-10-06 03:11:00','2019-11-04 08:27:57','+33 (0)1 71 47 32 88',0),(18340,NULL,NULL,'brigitte48@gmail.com','brigitte48@gmail.com','Philippine','Coste','1968-09-25 19:44:41','u','2019-11-02 16:26:10','2019-11-04 08:27:57','+33 1 73 21 83 47',0),(18341,NULL,NULL,'franck.lejeune@free.fr','franck.lejeune@free.fr','Hélène','Bonnin','1964-12-17 05:43:39','u','2019-11-16 16:39:58','2019-11-04 08:27:57','0147786141',1),(18342,NULL,NULL,'rossi.gilbert@live.com','rossi.gilbert@live.com','Raymond','Delahaye','1979-12-08 16:50:31','u','2019-11-18 01:54:04','2019-11-04 08:27:57','0228754608',0),(18343,NULL,NULL,'tristan.lenoir@roux.net','tristan.lenoir@roux.net','Claudine','Pasquier','1968-11-27 08:06:57','u','2019-10-22 17:50:40','2019-11-04 08:27:57','09 24 22 64 96',1),(18344,NULL,NULL,'bruneau.elisabeth@gmail.com','bruneau.elisabeth@gmail.com','Catherine','Dupuis','1985-01-15 05:54:50','u','2019-11-16 18:55:00','2019-11-04 08:27:57','+33 (0)1 65 77 86 99',1),(18345,NULL,NULL,'nathalie.lagarde@gmail.com','nathalie.lagarde@gmail.com','Hélène','Sanchez','1998-08-10 02:01:21','u','2019-10-22 01:14:29','2019-11-04 08:27:57','+33 (0)8 98 10 18 78',0),(18346,NULL,NULL,'louis.becker@meyer.fr','louis.becker@meyer.fr','Agnès','Delorme','1988-06-06 19:56:32','u','2019-10-08 14:18:06','2019-11-04 08:27:57','09 08 19 02 60',0),(18347,NULL,NULL,'maggie30@dbmail.com','maggie30@dbmail.com','Dominique','Millet','1996-05-20 19:18:16','u','2019-11-03 08:01:52','2019-11-04 08:27:57','08 15 99 73 92',0),(18348,NULL,NULL,'gallet.guillaume@girard.org','gallet.guillaume@girard.org','Marcel','Leblanc','1986-05-02 17:26:14','u','2019-11-02 01:29:50','2019-11-04 08:27:57','+33 7 77 52 47 21',1),(18349,NULL,NULL,'stephanie.marty@toussaint.com','stephanie.marty@toussaint.com','Michel','Valentin','1980-04-12 10:48:12','u','2019-10-16 00:22:20','2019-11-04 08:27:57','+33 4 19 17 86 91',0),(18350,NULL,NULL,'diane39@yahoo.fr','diane39@yahoo.fr','Alphonse','Lefevre','1984-02-03 07:42:58','u','2019-11-13 03:01:41','2019-11-04 08:27:57','02 26 42 49 25',0),(18351,NULL,NULL,'rferrand@legoff.com','rferrand@legoff.com','Frédéric','Barthelemy','1967-12-25 08:21:26','u','2019-11-28 23:00:12','2019-11-04 08:27:57','01 58 93 02 06',1),(18352,NULL,NULL,'anastasie64@tele2.fr','anastasie64@tele2.fr','Xavier','Renard','1992-10-06 11:08:16','u','2019-10-09 10:16:43','2019-11-04 08:27:57','05 69 88 39 55',1),(18353,NULL,NULL,'jalbert@delorme.net','jalbert@delorme.net','Jean','Hubert','1990-06-09 21:27:39','u','2019-11-14 02:05:59','2019-11-04 08:27:57','06 65 32 02 79',1),(18354,NULL,NULL,'grenier.jerome@voila.fr','grenier.jerome@voila.fr','Laurent','Nguyen','1963-08-10 19:22:27','u','2019-10-18 19:47:15','2019-11-04 08:27:57','+33 (0)5 97 41 16 57',0),(18355,NULL,NULL,'hugues81@pascal.com','hugues81@pascal.com','André','Riviere','1988-09-13 22:05:45','u','2019-10-18 13:04:39','2019-11-04 08:27:57','0744292021',0),(18356,NULL,NULL,'alexandre.barthelemy@lopez.fr','alexandre.barthelemy@lopez.fr','Claudine','Breton','1982-06-04 05:09:11','u','2019-12-01 15:58:53','2019-11-04 08:27:57','0893268691',0),(18357,NULL,NULL,'david18@renaud.fr','david18@renaud.fr','Henri','Perrier','1962-12-12 00:10:08','u','2019-11-21 02:21:19','2019-11-04 08:27:57','+33 3 90 00 33 51',1),(18358,NULL,NULL,'isabelle.rousseau@laposte.net','isabelle.rousseau@laposte.net','Andrée','Lombard','1988-03-11 22:31:47','u','2019-12-04 02:44:24','2019-11-04 08:27:57','04 70 96 72 40',0),(18359,NULL,NULL,'sophie93@hotmail.fr','sophie93@hotmail.fr','Philippine','Riou','1964-06-21 16:54:04','u','2019-10-11 08:18:16','2019-11-04 08:27:57','+33 6 20 03 97 26',0),(18360,NULL,NULL,'kimbert@hoareau.org','kimbert@hoareau.org','Tristan','Begue','1966-04-12 12:19:07','u','2019-10-08 22:26:36','2019-11-04 08:27:57','+33 (0)1 88 85 07 23',1),(18361,NULL,NULL,'antoine97@yahoo.fr','antoine97@yahoo.fr','Adélaïde','Renard','1992-02-22 11:03:00','u','2019-10-16 15:58:48','2019-11-04 08:27:57','0804755316',1),(18362,NULL,NULL,'mlejeune@lefevre.fr','mlejeune@lefevre.fr','Nicolas','Ramos','1986-05-22 16:47:21','u','2019-11-07 18:39:03','2019-11-04 08:27:57','+33 3 49 89 09 38',0),(18363,NULL,NULL,'diallo.anais@guillaume.com','diallo.anais@guillaume.com','Agathe','Andre','1984-08-14 07:12:31','u','2019-11-23 23:51:45','2019-11-04 08:27:57','+33 4 48 00 74 06',1),(18364,NULL,NULL,'jerome13@orange.fr','jerome13@orange.fr','Olivie','Courtois','1988-04-10 17:15:28','u','2019-11-10 18:12:12','2019-11-04 08:27:57','+33 9 67 81 53 94',1),(18365,NULL,NULL,'daniel.pages@bouygtel.fr','daniel.pages@bouygtel.fr','Valérie','Wagner','1980-01-21 01:58:41','u','2019-11-03 14:59:17','2019-11-04 08:27:57','0443242051',0),(18366,NULL,NULL,'zoe.roux@bouygtel.fr','zoe.roux@bouygtel.fr','Alix','Brun','1984-08-22 14:49:30','u','2019-11-07 12:16:44','2019-11-04 08:27:57','+33 8 22 07 71 30',1),(18367,NULL,NULL,'gilles06@ledoux.com','gilles06@ledoux.com','Susan','Morin','1987-06-25 13:09:54','u','2019-10-10 04:58:57','2019-11-04 08:27:57','03 42 76 20 58',1),(18368,NULL,NULL,'boyer.virginie@merle.fr','boyer.virginie@merle.fr','Aurélie','Legrand','1962-01-02 15:02:38','u','2019-11-21 21:20:55','2019-11-04 08:27:57','0826835270',1),(18369,NULL,NULL,'theophile.martins@deschamps.fr','theophile.martins@deschamps.fr','Adrien','Gilles','1980-03-06 04:10:46','u','2019-11-22 16:22:05','2019-11-04 08:27:57','+33 4 66 96 24 02',1),(18370,NULL,NULL,'joseph.madeleine@dijoux.net','joseph.madeleine@dijoux.net','René','Boyer','1990-07-23 20:13:37','u','2019-10-05 22:12:16','2019-11-04 08:27:57','+33 3 26 08 60 87',1),(18371,NULL,NULL,'pasquier.victoire@live.com','pasquier.victoire@live.com','Emmanuel','Peron','1967-09-02 00:20:11','u','2019-11-17 14:44:08','2019-11-04 08:27:57','01 01 89 80 03',1),(18372,NULL,NULL,'genevieve.petit@thomas.fr','genevieve.petit@thomas.fr','Nathalie','Lagarde','1985-01-14 15:33:04','u','2019-11-18 10:13:47','2019-11-04 08:27:57','+33 (0)4 29 65 95 91',1),(18373,NULL,NULL,'daniel35@gomez.com','daniel35@gomez.com','Alex','Allain','1970-05-27 00:01:33','u','2019-10-12 04:51:38','2019-11-04 08:27:57','+33 (0)8 98 49 20 83',0),(18374,NULL,NULL,'michelle.vallee@live.com','michelle.vallee@live.com','Clémence','Peltier','1976-08-13 22:43:08','u','2019-10-11 19:21:10','2019-11-04 08:27:57','0122771134',0),(18375,NULL,NULL,'gregoire.guyot@noos.fr','gregoire.guyot@noos.fr','Corinne','Pascal','1984-12-14 21:35:23','u','2019-11-15 13:56:41','2019-11-04 08:27:57','+33 (0)7 82 38 53 40',0),(18376,NULL,NULL,'corinne.imbert@yahoo.fr','corinne.imbert@yahoo.fr','Joséphine','Allard','1975-07-24 01:49:15','u','2019-10-24 06:05:19','2019-11-04 08:27:57','+33 (0)9 52 03 61 79',0),(18377,NULL,NULL,'louis.dubois@ifrance.com','louis.dubois@ifrance.com','Céline','Menard','1999-07-14 18:04:49','u','2019-11-04 02:15:55','2019-11-04 08:27:57','+33 8 97 16 32 44',1),(18378,NULL,NULL,'gabriel.laroche@tiscali.fr','gabriel.laroche@tiscali.fr','Antoinette','Delannoy','1978-02-27 14:53:45','u','2019-10-18 11:17:43','2019-11-04 08:27:57','02 86 05 94 35',1),(18379,NULL,NULL,'jacqueline09@wagner.com','jacqueline09@wagner.com','Pierre','Jacquot','1979-02-03 05:02:25','u','2019-11-24 11:25:18','2019-11-04 08:27:57','06 60 43 98 36',1),(18380,NULL,NULL,'anoel@david.fr','anoel@david.fr','Paul','Delahaye','1983-12-24 08:29:26','u','2019-11-18 10:55:07','2019-11-04 08:27:57','01 67 98 76 93',0),(18381,NULL,NULL,'zbouvet@potier.com','zbouvet@potier.com','Thierry','Devaux','1998-07-21 02:36:31','u','2019-11-29 18:44:29','2019-11-04 08:27:57','+33 8 26 83 05 27',0),(18382,NULL,NULL,'maillot.agnes@tiscali.fr','maillot.agnes@tiscali.fr','Bernard','Bertrand','1979-12-15 06:07:34','u','2019-11-20 20:22:34','2019-11-04 08:27:57','0136556484',1),(18383,NULL,NULL,'david62@bouchet.com','david62@bouchet.com','Audrey','Legrand','1974-10-08 02:06:57','u','2019-11-08 14:49:13','2019-11-04 08:27:57','0404509198',1),(18384,NULL,NULL,'philippe.thomas@club-internet.fr','philippe.thomas@club-internet.fr','Josette','Roussel','1971-09-24 02:33:59','u','2019-11-01 14:14:18','2019-11-04 08:27:57','0917928618',0),(18385,NULL,NULL,'alfred96@live.com','alfred96@live.com','Marcelle','Levy','1996-02-11 12:42:09','u','2019-10-18 12:42:43','2019-11-04 08:27:57','0769485927',0),(18386,NULL,NULL,'gauthier.arthur@laposte.net','gauthier.arthur@laposte.net','Claire','Perrot','1978-12-26 22:37:40','u','2019-10-06 16:20:47','2019-11-04 08:27:57','+33 (0)1 45 71 92 75',0),(18387,NULL,NULL,'perret.marthe@francois.net','perret.marthe@francois.net','Noël','Vincent','1984-03-19 08:25:43','u','2019-11-12 19:14:11','2019-11-04 08:27:57','0420110848',0),(18388,NULL,NULL,'genevieve60@tiscali.fr','genevieve60@tiscali.fr','Alfred','Costa','1993-05-12 02:02:45','u','2019-11-07 16:29:11','2019-11-04 08:27:57','0477685549',0),(18389,NULL,NULL,'augustin.michel@langlois.com','augustin.michel@langlois.com','Joseph','Salmon','1987-02-09 19:11:54','u','2019-11-21 01:53:59','2019-11-04 08:27:57','+33 (0)7 75 34 84 93',0),(18390,NULL,NULL,'antoinette85@noos.fr','antoinette85@noos.fr','Honoré','Perrier','1966-03-28 19:35:07','u','2019-11-02 23:36:31','2019-11-04 08:27:57','0119873740',1),(18391,NULL,NULL,'madeleine.martins@jean.fr','madeleine.martins@jean.fr','Gilbert','Garcia','1989-10-14 17:54:59','u','2019-10-29 21:54:00','2019-11-04 08:27:57','0440416251',0),(18392,NULL,NULL,'thibaut48@renaud.net','thibaut48@renaud.net','Suzanne','Maury','1969-10-01 04:54:56','u','2019-11-16 03:55:12','2019-11-04 08:27:57','+33 (0)9 00 83 64 97',0),(18393,NULL,NULL,'robert28@bodin.net','robert28@bodin.net','Hortense','Blanc','1992-12-17 15:38:53','u','2019-10-28 12:23:55','2019-11-04 08:27:57','+33 (0)1 64 27 34 07',1),(18394,NULL,NULL,'brigitte47@gomes.org','brigitte47@gomes.org','Adrien','Benoit','1974-07-09 14:44:07','u','2019-10-27 23:46:08','2019-11-04 08:27:57','0597035082',0),(18395,NULL,NULL,'christophe.marin@gillet.net','christophe.marin@gillet.net','Frédéric','Bernier','1989-07-31 23:09:18','u','2019-11-09 03:47:53','2019-11-04 08:27:57','0987563908',0),(18396,NULL,NULL,'allard.isaac@lagarde.net','allard.isaac@lagarde.net','Sophie','Aubry','1984-12-03 06:07:45','u','2019-10-18 05:05:18','2019-11-04 08:27:57','+33 2 26 37 24 96',1),(18397,NULL,NULL,'auguste93@ifrance.com','auguste93@ifrance.com','Vincent','Gautier','1982-04-03 12:43:06','u','2019-11-09 10:35:09','2019-11-04 08:27:57','+33 7 82 66 69 58',1),(18398,NULL,NULL,'gregoire.roy@pons.com','gregoire.roy@pons.com','Robert','Royer','1971-04-08 01:37:48','u','2019-11-22 19:07:17','2019-11-04 08:27:57','0977141514',0),(18399,NULL,NULL,'gcoste@dbmail.com','gcoste@dbmail.com','Henri','Charpentier','1987-08-29 15:34:59','u','2019-10-05 08:08:16','2019-11-04 08:27:57','01 13 61 69 14',1),(18400,NULL,NULL,'ddescamps@tiscali.fr','ddescamps@tiscali.fr','Suzanne','Grondin','1988-03-21 13:09:00','u','2019-11-14 16:34:50','2019-11-04 08:27:57','+33 6 57 68 93 63',0),(18401,NULL,NULL,'idelmas@free.fr','idelmas@free.fr','Aimée','Mary','1970-10-16 17:50:33','u','2019-11-01 16:35:33','2019-11-04 08:27:57','0818141028',0),(18402,NULL,NULL,'ncarlier@gmail.com','ncarlier@gmail.com','Noémi','Olivier','1985-12-18 19:12:15','u','2019-11-26 23:46:55','2019-11-04 08:27:57','05 42 13 13 24',1),(18403,NULL,NULL,'dacosta.emmanuelle@free.fr','dacosta.emmanuelle@free.fr','Matthieu','Guillot','1998-09-09 06:54:01','u','2019-11-05 13:53:23','2019-11-04 08:27:57','0349652580',0),(18404,NULL,NULL,'guyot.stephane@rey.com','guyot.stephane@rey.com','Auguste','Thomas','1961-11-13 09:06:05','u','2019-10-17 06:55:42','2019-11-04 08:27:57','+33 (0)1 87 30 82 12',1),(18405,NULL,NULL,'marguerite.lombard@sfr.fr','marguerite.lombard@sfr.fr','Jeanne','Delattre','1983-02-03 20:27:06','u','2019-10-29 04:35:07','2019-11-04 08:27:57','+33 (0)1 32 54 44 19',1),(18406,NULL,NULL,'daniel81@maillot.fr','daniel81@maillot.fr','Célina','Loiseau','1992-08-02 12:51:25','u','2019-11-29 23:06:26','2019-11-04 08:27:57','04 54 50 81 34',1),(18407,NULL,NULL,'wgilles@hotmail.fr','wgilles@hotmail.fr','Emmanuelle','Techer','1976-10-20 00:38:34','u','2019-11-03 06:34:09','2019-11-04 08:27:57','0763132688',0),(18408,NULL,NULL,'aime08@tiscali.fr','aime08@tiscali.fr','Christine','Lucas','1987-04-15 11:53:00','u','2019-11-12 09:07:18','2019-11-04 08:27:57','0643651434',1),(18409,NULL,NULL,'glanglois@tiscali.fr','glanglois@tiscali.fr','Paulette','Bousquet','1977-02-24 06:28:43','u','2019-11-09 07:05:55','2019-11-04 08:27:57','+33 5 11 95 30 33',0),(18410,NULL,NULL,'julien.klein@guerin.net','julien.klein@guerin.net','Marthe','Tessier','1962-08-11 18:57:01','u','2019-11-07 22:01:04','2019-11-04 08:27:57','+33 4 91 70 03 98',0),(18411,NULL,NULL,'emile.dias@legall.fr','emile.dias@legall.fr','Stéphane','Fouquet','1998-12-04 22:30:32','u','2019-10-21 09:05:18','2019-11-04 08:27:57','+33 (0)8 26 26 72 59',0),(18412,NULL,NULL,'renaud.guillaume@club-internet.fr','renaud.guillaume@club-internet.fr','Isaac','Hamel','1974-06-13 22:38:25','u','2019-11-25 20:14:08','2019-11-04 08:27:57','0190007114',1),(18413,NULL,NULL,'cordier.roger@henry.org','cordier.roger@henry.org','Gérard','Cohen','1999-07-26 06:09:06','u','2019-10-08 04:12:41','2019-11-04 08:27:57','+33 7 58 35 02 62',1),(18414,NULL,NULL,'jguibert@hotmail.fr','jguibert@hotmail.fr','Louis','Mercier','1965-09-24 15:05:19','u','2019-11-29 10:23:50','2019-11-04 08:27:57','04 96 71 75 16',0),(18415,NULL,NULL,'manon.dacosta@morel.fr','manon.dacosta@morel.fr','Océane','Dias','1969-04-22 20:51:17','u','2019-10-31 19:43:29','2019-11-04 08:27:57','07 97 65 33 52',1),(18416,NULL,NULL,'marchal.remy@yahoo.fr','marchal.remy@yahoo.fr','Émile','Bruneau','1991-08-02 01:33:53','u','2019-11-24 09:49:10','2019-11-04 08:27:57','09 03 64 26 69',1),(18417,NULL,NULL,'tlefort@noos.fr','tlefort@noos.fr','Victor','Rolland','1961-09-25 23:07:54','u','2019-10-22 14:14:38','2019-11-04 08:27:57','0975635475',0),(18418,NULL,NULL,'david.charrier@roche.com','david.charrier@roche.com','Benoît','Richard','1973-06-11 17:21:07','u','2019-11-25 14:19:40','2019-11-04 08:27:57','+33 (0)6 84 41 98 56',0),(18419,NULL,NULL,'colin.clemence@tele2.fr','colin.clemence@tele2.fr','Anouk','Loiseau','1999-04-20 09:05:02','u','2019-11-22 14:30:51','2019-11-04 08:27:57','03 58 05 16 99',0),(18420,NULL,NULL,'bernard.margaret@tiscali.fr','bernard.margaret@tiscali.fr','Véronique','Joubert','1988-11-05 16:42:36','u','2019-10-17 10:44:35','2019-11-04 08:27:57','01 77 86 54 20',0),(18421,NULL,NULL,'mace.zacharie@free.fr','mace.zacharie@free.fr','Édith','Delaunay','1980-05-23 05:43:42','u','2019-11-22 13:47:00','2019-11-04 08:27:57','03 80 42 57 75',0),(18422,NULL,NULL,'benoit70@diallo.com','benoit70@diallo.com','Jules','Payet','1992-06-07 19:59:45','u','2019-11-26 23:48:13','2019-11-04 08:27:57','0191538972',1),(18423,NULL,NULL,'josephine.bouvet@tele2.fr','josephine.bouvet@tele2.fr','Noël','Joseph','1981-07-04 16:28:10','u','2019-10-10 00:56:02','2019-11-04 08:27:57','+33 (0)1 76 34 74 06',1),(18424,NULL,NULL,'frederique.pages@live.com','frederique.pages@live.com','Diane','Rocher','1994-10-02 02:56:57','u','2019-10-27 19:07:34','2019-11-04 08:27:57','0920893485',0),(18425,NULL,NULL,'guy.henry@noos.fr','guy.henry@noos.fr','Vincent','Nguyen','1993-04-10 13:32:16','u','2019-11-01 11:24:57','2019-11-04 08:27:57','+33 (0)8 97 66 07 42',1),(18426,NULL,NULL,'dupuis.claudine@voila.fr','dupuis.claudine@voila.fr','Adèle','Bertrand','1996-06-08 15:11:50','u','2019-11-23 01:11:29','2019-11-04 08:27:57','0892227595',1),(18427,NULL,NULL,'tpottier@bouygtel.fr','tpottier@bouygtel.fr','Aimée','Huet','1987-10-09 17:38:05','u','2019-10-24 12:50:35','2019-11-04 08:27:57','01 48 75 59 41',0),(18428,NULL,NULL,'benoit.raymond@gonzalez.fr','benoit.raymond@gonzalez.fr','Grégoire','Boyer','1968-07-12 12:04:10','u','2019-11-04 19:48:52','2019-11-04 08:27:57','+33 (0)3 53 59 12 66',1),(18429,NULL,NULL,'michelle81@mary.fr','michelle81@mary.fr','Virginie','Perrin','1997-06-15 23:32:15','u','2019-10-05 13:20:34','2019-11-04 08:27:57','+33 7 90 30 94 74',0),(18430,NULL,NULL,'qparent@yahoo.fr','qparent@yahoo.fr','Léon','Andre','1975-07-22 15:40:53','u','2019-10-18 15:19:02','2019-11-04 08:27:57','+33 2 13 45 16 23',1),(18431,NULL,NULL,'dorothee.regnier@gmail.com','dorothee.regnier@gmail.com','Édith','Bouvet','1990-12-19 14:25:52','u','2019-11-28 05:36:37','2019-11-04 08:27:57','+33 9 04 44 01 02',0),(18432,NULL,NULL,'bruiz@brun.com','bruiz@brun.com','Dominique','Traore','1963-03-10 23:39:04','u','2019-11-06 15:57:50','2019-11-04 08:27:57','0182742648',1),(18433,NULL,NULL,'blaurent@yahoo.fr','blaurent@yahoo.fr','Adrien','Barbe','1962-01-17 09:04:45','u','2019-10-31 22:24:52','2019-11-04 08:27:57','+33 5 19 02 76 17',1),(18434,NULL,NULL,'renault.charles@pinto.com','renault.charles@pinto.com','Jules','Roux','1997-06-17 03:37:53','u','2019-11-17 03:43:53','2019-11-04 08:27:57','0473905716',1),(18435,NULL,NULL,'william67@ifrance.com','william67@ifrance.com','Lucie','Marechal','1987-10-31 06:35:30','u','2019-10-28 13:46:59','2019-11-04 08:27:57','09 91 48 17 89',0),(18436,NULL,NULL,'noel15@gmail.com','noel15@gmail.com','Guy','Bonneau','1965-08-27 21:32:29','u','2019-10-28 08:22:54','2019-11-04 08:27:57','+33 6 94 33 92 54',1),(18437,NULL,NULL,'ndelannoy@laposte.net','ndelannoy@laposte.net','Yves','Delorme','1974-03-23 07:27:05','u','2019-10-09 05:36:03','2019-11-04 08:27:57','+33 5 03 56 39 64',1),(18438,NULL,NULL,'eugene.ramos@hotmail.fr','eugene.ramos@hotmail.fr','Suzanne','Tanguy','1992-01-24 07:07:18','u','2019-12-01 01:38:48','2019-11-04 08:27:57','01 12 49 01 82',1),(18439,NULL,NULL,'nguyen.sebastien@lefebvre.net','nguyen.sebastien@lefebvre.net','Anouk','Lelievre','1962-02-13 05:04:59','u','2019-11-24 05:43:48','2019-11-04 08:27:57','0471304998',0),(18440,NULL,NULL,'marechal.constance@dijoux.fr','marechal.constance@dijoux.fr','Alfred','Chauvin','1983-11-05 14:54:18','u','2019-10-22 10:40:27','2019-11-04 08:27:57','02 22 95 99 85',1),(18441,NULL,NULL,'guillaume.christine@tele2.fr','guillaume.christine@tele2.fr','Stéphanie','Leduc','1981-05-14 03:34:05','u','2019-10-31 16:03:07','2019-11-04 08:27:57','01 73 85 20 28',1),(18442,NULL,NULL,'arnaude.munoz@dbmail.com','arnaude.munoz@dbmail.com','Noémi','Duhamel','1999-04-08 02:25:35','u','2019-10-29 13:27:02','2019-11-04 08:27:57','+33 (0)2 75 75 23 90',1),(18443,NULL,NULL,'patrick.moulin@hotmail.fr','patrick.moulin@hotmail.fr','Michel','Allain','1973-09-09 08:25:23','u','2019-11-20 06:41:36','2019-11-04 08:27:57','09 24 63 17 77',1),(18444,NULL,NULL,'sribeiro@maillet.com','sribeiro@maillet.com','Adèle','Petit','1991-09-13 15:27:21','u','2019-11-18 00:12:07','2019-11-04 08:27:57','04 99 00 14 78',0),(18445,NULL,NULL,'stephane91@fleury.fr','stephane91@fleury.fr','Véronique','De Oliveira','1966-07-16 17:20:24','u','2019-10-16 01:07:53','2019-11-04 08:27:57','0169180299',0),(18446,NULL,NULL,'fregnier@tele2.fr','fregnier@tele2.fr','Olivier','Adam','1981-11-14 01:48:37','u','2019-10-14 09:11:54','2019-11-04 08:27:57','0555194843',1),(18447,NULL,NULL,'brigitte.courtois@noos.fr','brigitte.courtois@noos.fr','Claude','Nguyen','1961-03-25 03:37:38','u','2019-10-07 16:36:31','2019-11-04 08:27:57','01 06 24 97 35',1),(18448,NULL,NULL,'suzanne.monnier@dumas.com','suzanne.monnier@dumas.com','Josette','Lesage','1966-09-20 12:17:41','u','2019-11-19 14:52:17','2019-11-04 08:27:57','08 03 86 37 30',0),(18449,NULL,NULL,'mlopes@robert.fr','mlopes@robert.fr','Lucy','Allard','1985-06-16 07:44:10','u','2019-10-24 23:49:41','2019-11-04 08:27:57','+33 (0)1 65 05 81 51',1),(18450,NULL,NULL,'dalbert@noos.fr','dalbert@noos.fr','Bernard','Sanchez','1971-10-01 11:04:47','u','2019-11-08 07:40:27','2019-11-04 08:27:57','0190389994',1),(18451,NULL,NULL,'edouard.leroy@laposte.net','edouard.leroy@laposte.net','Amélie','Marty','1984-10-30 11:34:28','u','2019-11-22 12:49:19','2019-11-04 08:27:57','0899323140',1),(18452,NULL,NULL,'barbier.gregoire@laposte.net','barbier.gregoire@laposte.net','Antoinette','Moulin','1978-12-17 05:22:24','u','2019-11-22 22:32:05','2019-11-04 08:27:57','0165493869',0),(18453,NULL,NULL,'omaillet@dbmail.com','omaillet@dbmail.com','Colette','Neveu','1996-04-11 09:35:56','u','2019-11-14 13:52:06','2019-11-04 08:27:57','0120297835',0),(18454,NULL,NULL,'mollivier@cohen.com','mollivier@cohen.com','Inès','Garcia','1993-11-17 17:02:21','u','2019-10-29 00:23:22','2019-11-04 08:27:57','+33 (0)1 38 01 55 86',0),(18455,NULL,NULL,'xavier.langlois@bouygtel.fr','xavier.langlois@bouygtel.fr','Laetitia','Gay','1995-01-05 21:31:22','u','2019-10-15 02:18:04','2019-11-04 08:27:57','08 10 74 27 49',0),(18456,NULL,NULL,'audrey.gerard@carpentier.fr','audrey.gerard@carpentier.fr','Michel','Ollivier','1981-12-05 01:07:47','u','2019-10-31 02:42:35','2019-11-04 08:27:57','+33 5 22 61 37 11',0),(18457,NULL,NULL,'cgoncalves@bouygtel.fr','cgoncalves@bouygtel.fr','Margaud','Lagarde','1991-01-01 02:45:25','u','2019-11-09 06:10:05','2019-11-04 08:27:57','+33 (0)9 02 90 54 90',1),(18458,NULL,NULL,'apires@tele2.fr','apires@tele2.fr','Élisabeth','Guyot','1985-12-23 22:21:46','u','2019-10-20 13:40:17','2019-11-04 08:27:57','0820342021',1),(18459,NULL,NULL,'uvalette@orange.fr','uvalette@orange.fr','René','Guyon','1976-09-07 02:39:20','u','2019-10-29 02:08:08','2019-11-04 08:27:57','+33 5 98 71 88 70',1),(18460,NULL,NULL,'catherine.lenoir@perret.com','catherine.lenoir@perret.com','Anaïs','Wagner','1971-01-07 02:21:26','u','2019-10-10 23:53:42','2019-11-04 08:27:57','+33 7 67 72 39 47',0),(18461,NULL,NULL,'mweber@free.fr','mweber@free.fr','Dorothée','Delattre','1974-09-02 01:12:26','u','2019-11-14 14:07:57','2019-11-04 08:27:57','+33 (0)6 52 83 96 88',0),(18462,NULL,NULL,'germain.alix@tele2.fr','germain.alix@tele2.fr','Lucas','Daniel','1969-04-02 09:00:42','u','2019-11-03 16:06:57','2019-11-04 08:27:57','0182405544',1),(18463,NULL,NULL,'hgaudin@live.com','hgaudin@live.com','Laetitia','Bouchet','1965-03-14 20:35:42','u','2019-11-05 15:29:41','2019-11-04 08:27:57','0388850788',0),(18464,NULL,NULL,'guillaume34@rocher.fr','guillaume34@rocher.fr','Théophile','Grenier','1992-08-08 15:58:18','u','2019-10-14 11:37:16','2019-11-04 08:27:57','+33 9 20 56 95 65',1),(18465,NULL,NULL,'frederique.guillou@lecomte.net','frederique.guillou@lecomte.net','Cécile','Chretien','1965-01-29 08:29:13','u','2019-11-22 11:01:42','2019-11-04 08:27:57','0120496713',1),(18466,NULL,NULL,'victor25@weiss.com','victor25@weiss.com','Émile','Mendes','1989-08-14 21:52:06','u','2019-11-21 02:51:38','2019-11-04 08:27:57','06 10 87 76 34',0),(18467,NULL,NULL,'nathalie66@guillou.fr','nathalie66@guillou.fr','Xavier','Meunier','1973-06-05 12:29:57','u','2019-11-04 14:36:08','2019-11-04 08:27:57','0303714889',1),(18468,NULL,NULL,'victor.marchand@club-internet.fr','victor.marchand@club-internet.fr','Alexandre','Gomes','1979-03-24 11:37:33','u','2019-11-05 08:51:20','2019-11-04 08:27:57','02 34 32 01 93',0),(18469,NULL,NULL,'blondel.denise@bouygtel.fr','blondel.denise@bouygtel.fr','Patrick','Martin','1982-12-02 03:35:12','u','2019-10-28 09:11:10','2019-11-04 08:27:57','07 87 75 47 11',1),(18470,NULL,NULL,'joly.aime@roux.org','joly.aime@roux.org','Claude','Laroche','1971-06-08 22:21:51','u','2019-11-24 20:31:24','2019-11-04 08:27:57','0980528588',1),(18471,NULL,NULL,'nath.michaud@dias.org','nath.michaud@dias.org','Étienne','Girard','1965-01-10 06:23:50','u','2019-11-28 01:22:16','2019-11-04 08:27:57','+33 4 66 88 57 48',1),(18472,NULL,NULL,'jperez@chartier.fr','jperez@chartier.fr','Emmanuel','Blanc','1964-09-06 00:45:04','u','2019-11-03 16:38:28','2019-11-04 08:27:57','02 34 11 14 71',1),(18473,NULL,NULL,'fouquet.maggie@noos.fr','fouquet.maggie@noos.fr','Daniel','Hubert','1971-04-25 23:40:20','u','2019-11-11 03:18:50','2019-11-04 08:27:57','+33 (0)4 08 89 07 59',1),(18474,NULL,NULL,'thibault09@hotmail.fr','thibault09@hotmail.fr','Sophie','Leclerc','1988-12-27 03:07:59','u','2019-11-24 07:13:45','2019-11-04 08:27:57','+33 9 43 92 38 67',1),(18475,NULL,NULL,'kmuller@voila.fr','kmuller@voila.fr','Aurélie','Leger','1961-05-07 21:31:32','u','2019-11-26 04:59:52','2019-11-04 08:27:57','0126676345',0),(18476,NULL,NULL,'aimee98@letellier.net','aimee98@letellier.net','Henri','Jacquot','1971-09-29 04:53:56','u','2019-10-06 02:23:34','2019-11-04 08:27:57','01 46 94 49 37',1),(18477,NULL,NULL,'rregnier@voila.fr','rregnier@voila.fr','Aimée','Munoz','1987-03-06 12:47:22','u','2019-10-18 04:07:59','2019-11-04 08:27:57','0897206560',1),(18478,NULL,NULL,'rguilbert@regnier.fr','rguilbert@regnier.fr','Timothée','Chevallier','1970-03-27 23:49:58','u','2019-10-28 11:52:56','2019-11-04 08:27:57','+33 7 58 91 82 98',1),(18479,NULL,NULL,'maillet.jeanne@potier.fr','maillet.jeanne@potier.fr','Suzanne','Foucher','1980-11-16 13:19:32','u','2019-11-14 02:52:51','2019-11-04 08:27:57','0415983286',1),(18480,NULL,NULL,'charles.susanne@gmail.com','charles.susanne@gmail.com','Charlotte','Guillet','1985-03-01 19:28:42','u','2019-10-10 07:55:00','2019-11-04 08:27:57','+33 (0)1 60 40 31 43',0),(18481,NULL,NULL,'reynaud.yves@bouygtel.fr','reynaud.yves@bouygtel.fr','Lucy','Launay','1964-07-26 13:38:45','u','2019-11-14 20:23:29','2019-11-04 08:27:57','0769474500',0),(18482,NULL,NULL,'legros.christophe@parent.fr','legros.christophe@parent.fr','Alexandrie','Neveu','1960-06-25 13:46:46','u','2019-11-23 18:39:10','2019-11-04 08:27:57','+33 (0)2 18 23 77 05',1),(18483,NULL,NULL,'mary.claudine@herve.fr','mary.claudine@herve.fr','Adélaïde','Jacob','1989-09-27 13:01:32','u','2019-11-22 00:24:48','2019-11-04 08:27:57','0801129967',1),(18484,NULL,NULL,'gilbert.baudry@voila.fr','gilbert.baudry@voila.fr','Antoine','Besnard','1995-11-17 21:53:41','u','2019-10-31 01:08:21','2019-11-04 08:27:57','+33 1 37 91 83 51',1),(18485,NULL,NULL,'maury.danielle@caron.fr','maury.danielle@caron.fr','Gabriel','Duval','1997-09-01 14:47:50','u','2019-12-02 16:56:16','2019-11-04 08:27:57','06 32 62 08 84',0),(18486,NULL,NULL,'andre92@gmail.com','andre92@gmail.com','Marcelle','Dias','1997-03-31 23:19:46','u','2019-11-11 19:00:48','2019-11-04 08:27:57','09 58 02 36 39',1),(18487,NULL,NULL,'mathieu.lucie@bouygtel.fr','mathieu.lucie@bouygtel.fr','Lorraine','Perrin','1997-05-28 10:22:17','u','2019-11-10 18:29:27','2019-11-04 08:27:57','01 11 87 34 03',1),(18488,NULL,NULL,'marc.lemaire@letellier.fr','marc.lemaire@letellier.fr','Étienne','Regnier','1994-07-03 22:08:32','u','2019-10-30 22:54:52','2019-11-04 08:27:57','0893575016',1),(18489,NULL,NULL,'legall.zoe@hotmail.fr','legall.zoe@hotmail.fr','Honoré','Martins','1969-12-03 05:19:54','u','2019-11-12 17:10:27','2019-11-04 08:27:57','+33 (0)7 97 82 57 57',1),(18490,NULL,NULL,'mrodriguez@charrier.fr','mrodriguez@charrier.fr','Manon','Laine','1964-10-12 19:02:54','u','2019-11-27 14:42:24','2019-11-04 08:27:57','+33 (0)4 06 88 47 66',1),(18491,NULL,NULL,'hgarcia@weber.org','hgarcia@weber.org','Patrick','Ollivier','1994-03-21 09:27:45','u','2019-11-16 23:23:31','2019-11-04 08:27:57','+33 7 97 59 21 04',0),(18492,NULL,NULL,'jollivier@valette.fr','jollivier@valette.fr','Catherine','Schmitt','1997-10-10 21:36:31','u','2019-11-13 00:53:37','2019-11-04 08:27:57','+33 (0)9 51 29 61 47',0),(18493,NULL,NULL,'yves.philippe@yahoo.fr','yves.philippe@yahoo.fr','Corinne','Maillard','1986-03-07 23:24:33','u','2019-11-09 09:17:19','2019-11-04 08:27:57','0540945738',1),(18494,NULL,NULL,'tverdier@mahe.com','tverdier@mahe.com','Eugène','Aubert','1960-06-30 11:07:12','u','2019-11-15 02:24:58','2019-11-04 08:27:57','+33 2 39 74 65 82',1),(18495,NULL,NULL,'hschmitt@sfr.fr','hschmitt@sfr.fr','Monique','Durand','1977-09-02 17:20:49','u','2019-11-16 14:54:17','2019-11-04 08:27:57','0731761194',0),(18496,NULL,NULL,'jleveque@muller.com','jleveque@muller.com','Bernadette','Bernard','1960-05-18 10:42:07','u','2019-10-04 22:40:52','2019-11-04 08:27:57','0182577868',0),(18497,NULL,NULL,'andree46@ifrance.com','andree46@ifrance.com','Marcel','Renard','1971-10-13 09:52:30','u','2019-10-11 12:24:57','2019-11-04 08:27:57','+33 2 62 22 28 52',1),(18498,NULL,NULL,'fischer.sophie@tiscali.fr','fischer.sophie@tiscali.fr','Dorothée','Gimenez','1992-04-10 04:38:08','u','2019-10-21 23:55:34','2019-11-04 08:27:57','+33 (0)6 43 78 02 12',1),(18499,NULL,NULL,'celine.barre@wanadoo.fr','celine.barre@wanadoo.fr','Isabelle','Couturier','1968-02-13 09:45:45','u','2019-11-14 17:38:40','2019-11-04 08:27:57','+33 (0)3 80 59 92 70',0),(18500,NULL,NULL,'olivier16@free.fr','olivier16@free.fr','Édouard','Alves','1998-10-20 03:25:56','u','2019-11-28 11:59:18','2019-11-04 08:27:57','+33 (0)2 04 66 78 67',0),(18501,NULL,NULL,'marine.barbe@picard.fr','marine.barbe@picard.fr','Christiane','Sanchez','1974-11-01 18:06:03','u','2019-10-18 22:54:03','2019-11-04 08:27:57','+33 9 26 18 16 42',0),(18502,NULL,NULL,'martinez.jerome@live.com','martinez.jerome@live.com','Benoît','Turpin','1973-05-02 15:12:15','u','2019-10-24 12:06:57','2019-11-04 08:27:57','+33 (0)4 87 67 78 31',0),(18503,NULL,NULL,'xavier.breton@ledoux.fr','xavier.breton@ledoux.fr','Matthieu','Lacombe','1999-01-04 08:18:40','u','2019-10-22 17:28:05','2019-11-04 08:27:57','+33 8 97 03 34 18',1),(18504,NULL,NULL,'dpicard@leroux.fr','dpicard@leroux.fr','Charlotte','Bazin','1963-06-11 03:13:13','u','2019-10-22 03:04:53','2019-11-04 08:27:57','+33 5 68 30 48 77',0),(18505,NULL,NULL,'tanguy.alain@courtois.fr','tanguy.alain@courtois.fr','André','Thibault','1979-06-03 11:07:04','u','2019-10-26 15:58:34','2019-11-04 08:27:57','08 91 25 06 28',1),(18506,NULL,NULL,'william.fischer@gallet.org','william.fischer@gallet.org','Margot','Cordier','1967-10-30 05:08:06','u','2019-12-04 04:49:11','2019-11-04 08:27:57','0486237544',1),(18507,NULL,NULL,'isaac.masson@tele2.fr','isaac.masson@tele2.fr','Céline','Mace','1998-09-04 21:01:09','u','2019-10-11 06:49:01','2019-11-04 08:27:57','+33 (0)5 80 34 85 54',1),(18508,NULL,NULL,'honore06@launay.net','honore06@launay.net','Jérôme','Royer','1968-12-22 14:25:07','u','2019-11-28 10:26:10','2019-11-04 08:27:57','0159953739',0),(18509,NULL,NULL,'tleroy@lejeune.fr','tleroy@lejeune.fr','Jacques','Pottier','1967-10-18 09:41:27','u','2019-11-07 16:46:15','2019-11-04 08:27:57','03 30 28 61 23',1),(18510,NULL,NULL,'dsamson@sfr.fr','dsamson@sfr.fr','Rémy','De Oliveira','1998-11-07 07:47:04','u','2019-10-30 04:28:14','2019-11-04 08:27:57','+33 (0)9 65 35 01 35',1),(18511,NULL,NULL,'victoire55@julien.fr','victoire55@julien.fr','Susan','Blot','1964-01-01 10:16:46','u','2019-10-26 03:50:39','2019-11-04 08:27:57','+33 5 95 81 06 16',0),(18512,NULL,NULL,'dominique.coulon@pottier.com','dominique.coulon@pottier.com','Capucine','Guyot','1979-07-08 13:49:32','u','2019-11-24 22:51:05','2019-11-04 08:27:57','+33 (0)1 56 72 67 25',0),(18513,NULL,NULL,'rriviere@club-internet.fr','rriviere@club-internet.fr','Anastasie','Petit','1969-07-20 15:36:43','u','2019-11-11 17:28:47','2019-11-04 08:27:57','0184023603',1),(18514,NULL,NULL,'philippine.laine@morel.net','philippine.laine@morel.net','Zacharie','Leroux','1975-06-02 08:07:17','u','2019-11-10 19:26:59','2019-11-04 08:27:57','0794632571',1),(18515,NULL,NULL,'rousset.arnaude@wanadoo.fr','rousset.arnaude@wanadoo.fr','Agathe','Maillot','1962-07-05 22:23:54','u','2019-10-16 12:46:27','2019-11-04 08:27:57','+33 (0)1 19 64 30 71',0),(18516,NULL,NULL,'langlois.margot@garcia.fr','langlois.margot@garcia.fr','Manon','Perrot','1975-06-01 20:02:31','u','2019-11-02 22:39:37','2019-11-04 08:27:57','+33 (0)1 69 87 95 07',0),(18517,NULL,NULL,'tessier.luc@rodriguez.com','tessier.luc@rodriguez.com','Léon','Delaunay','1998-04-25 09:01:31','u','2019-10-29 17:42:27','2019-11-04 08:27:57','0386297280',1),(18518,NULL,NULL,'theodore.brun@marchand.com','theodore.brun@marchand.com','Noël','Clement','1964-12-05 08:31:11','u','2019-11-14 23:34:45','2019-11-04 08:27:57','0137575599',0),(18519,NULL,NULL,'christiane96@brun.com','christiane96@brun.com','Thomas','Laine','1962-07-07 21:00:21','u','2019-11-22 21:19:31','2019-11-04 08:27:57','03 52 46 80 50',0),(18520,NULL,NULL,'anouk.lefebvre@vincent.com','anouk.lefebvre@vincent.com','Suzanne','Blanchet','1994-01-13 14:52:45','u','2019-11-02 02:40:17','2019-11-04 08:27:57','0136418330',1),(18521,NULL,NULL,'hugues22@bouygtel.fr','hugues22@bouygtel.fr','Paulette','Gosselin','1976-01-28 02:37:37','u','2019-11-01 08:55:17','2019-11-04 08:27:57','+33 (0)5 22 97 51 61',1),(18522,NULL,NULL,'klabbe@leclerc.com','klabbe@leclerc.com','Renée','Bigot','1976-05-21 23:16:56','u','2019-10-10 02:09:14','2019-11-04 08:27:57','+33 1 97 91 46 24',1),(18523,NULL,NULL,'lambert.auguste@wanadoo.fr','lambert.auguste@wanadoo.fr','Madeleine','Benoit','1988-01-19 21:31:47','u','2019-10-21 14:44:02','2019-11-04 08:27:57','+33 8 28 32 16 61',0),(18524,NULL,NULL,'leger.clemence@laposte.net','leger.clemence@laposte.net','Dominique','Pasquier','1996-02-02 06:42:34','u','2019-11-05 21:11:10','2019-11-04 08:27:57','+33 7 63 26 94 20',1),(18525,NULL,NULL,'genevieve59@sfr.fr','genevieve59@sfr.fr','Sabine','Paul','1986-07-06 11:30:00','u','2019-11-04 23:14:16','2019-11-04 08:27:57','0126935867',1),(18526,NULL,NULL,'ufouquet@herve.com','ufouquet@herve.com','Alfred','Tessier','1994-11-23 13:08:10','u','2019-11-10 13:30:18','2019-11-04 08:27:57','+33 7 66 91 39 31',1),(18527,NULL,NULL,'ohamon@ferrand.fr','ohamon@ferrand.fr','Élodie','Chevallier','1988-06-06 22:15:10','u','2019-10-05 20:44:54','2019-11-04 08:27:57','07 97 70 93 17',1),(18528,NULL,NULL,'wguillot@raynaud.fr','wguillot@raynaud.fr','Stéphanie','Baron','1972-11-25 17:38:15','u','2019-10-22 09:24:22','2019-11-04 08:27:57','08 97 71 64 44',0),(18529,NULL,NULL,'qleveque@hotmail.fr','qleveque@hotmail.fr','Matthieu','Garnier','1969-01-29 22:16:24','u','2019-11-28 01:19:05','2019-11-04 08:27:57','+33 5 45 71 12 24',0),(18530,NULL,NULL,'emile09@boutin.fr','emile09@boutin.fr','William','Lemaitre','1995-04-20 09:13:16','u','2019-11-18 18:42:03','2019-11-04 08:27:57','+33 (0)8 04 14 91 09',0),(18531,NULL,NULL,'barbier.guillaume@vaillant.org','barbier.guillaume@vaillant.org','Auguste','Delannoy','1997-11-18 05:40:22','u','2019-11-16 22:55:45','2019-11-04 08:27:57','+33 1 08 01 90 06',1),(18532,NULL,NULL,'olivier.lorraine@laposte.net','olivier.lorraine@laposte.net','Alix','Bouvet','1970-06-06 12:19:51','u','2019-11-08 19:24:08','2019-11-04 08:27:57','03 07 75 93 77',0),(18533,NULL,NULL,'auger.olivier@denis.fr','auger.olivier@denis.fr','Nathalie','Chretien','1988-09-04 18:38:44','u','2019-11-01 20:54:37','2019-11-04 08:27:57','+33 (0)4 80 77 90 35',0),(18534,NULL,NULL,'theodore02@raymond.org','theodore02@raymond.org','Charles','Roger','1967-03-16 06:16:22','u','2019-11-01 11:16:53','2019-11-04 08:27:57','+33 7 56 66 26 32',1),(18535,NULL,NULL,'cecile71@orange.fr','cecile71@orange.fr','Émile','Millet','1962-04-28 00:51:12','u','2019-11-04 10:23:42','2019-11-04 08:27:57','06 49 47 96 46',0),(18536,NULL,NULL,'jacquot.pauline@bouygtel.fr','jacquot.pauline@bouygtel.fr','Christophe','Petitjean','1975-09-16 10:16:50','u','2019-10-17 08:08:10','2019-11-04 08:27:57','06 65 78 32 44',0),(18537,NULL,NULL,'elise.charrier@orange.fr','elise.charrier@orange.fr','Henriette','Vallee','1986-12-02 21:30:06','u','2019-10-04 12:14:17','2019-11-04 08:27:57','+33 3 61 66 95 66',0),(18538,NULL,NULL,'hugues89@yahoo.fr','hugues89@yahoo.fr','Susanne','Leduc','1991-05-22 20:42:16','u','2019-10-29 14:48:16','2019-11-04 08:27:57','01 94 49 99 89',0),(18539,NULL,NULL,'rodriguez.emmanuelle@bouygtel.fr','rodriguez.emmanuelle@bouygtel.fr','Geneviève','Chretien','1961-01-28 00:35:15','u','2019-10-29 04:57:37','2019-11-04 08:27:57','0349602678',1),(18540,NULL,NULL,'hortense.grenier@weiss.fr','hortense.grenier@weiss.fr','Marine','Pages','1999-03-22 10:28:16','u','2019-11-05 23:16:21','2019-11-04 08:27:57','+33 1 71 11 61 31',0),(18541,NULL,NULL,'jmarie@hoarau.net','jmarie@hoarau.net','Édouard','Lambert','1975-12-23 18:46:03','u','2019-11-29 15:45:15','2019-11-04 08:27:57','0967089003',1),(18542,NULL,NULL,'agathe.boutin@ifrance.com','agathe.boutin@ifrance.com','Valérie','Muller','1988-12-02 04:30:49','u','2019-10-31 15:04:33','2019-11-04 08:27:57','0320039768',0),(18543,NULL,NULL,'besnard.hugues@duval.fr','besnard.hugues@duval.fr','Aurore','Martineau','1977-10-21 09:56:28','u','2019-12-01 23:22:12','2019-11-04 08:27:57','05 08 31 87 05',1),(18544,NULL,NULL,'guilbert.aurore@hotmail.fr','guilbert.aurore@hotmail.fr','Robert','Godard','1970-09-13 03:48:59','u','2019-11-18 17:22:55','2019-11-04 08:27:57','+33 6 93 84 33 43',1),(18545,NULL,NULL,'lgilbert@tele2.fr','lgilbert@tele2.fr','Michel','Marques','1966-05-15 23:28:41','u','2019-10-31 12:19:24','2019-11-04 08:27:57','+33 4 76 02 75 16',1),(18546,NULL,NULL,'arthur39@tele2.fr','arthur39@tele2.fr','Adélaïde','Pasquier','1965-11-05 07:37:20','u','2019-11-25 01:54:50','2019-11-04 08:27:57','04 20 18 24 75',0),(18547,NULL,NULL,'ygiraud@blot.fr','ygiraud@blot.fr','Adrienne','Leveque','1980-11-06 07:50:56','u','2019-10-13 22:24:53','2019-11-04 08:27:57','+33 1 19 12 88 61',1),(18548,NULL,NULL,'daniel86@gallet.fr','daniel86@gallet.fr','Hortense','Raymond','1977-03-01 12:23:53','u','2019-12-01 04:18:10','2019-11-04 08:27:57','01 99 78 46 21',0),(18549,NULL,NULL,'anais.francois@millet.fr','anais.francois@millet.fr','Timothée','Pages','1997-05-31 18:32:16','u','2019-11-25 15:57:18','2019-11-04 08:27:57','0528915047',0),(18550,NULL,NULL,'zcollin@orange.fr','zcollin@orange.fr','Cécile','Pereira','1979-09-26 17:48:51','u','2019-10-05 21:30:18','2019-11-04 08:27:57','+33 4 01 85 59 62',0),(18551,NULL,NULL,'npetitjean@royer.com','npetitjean@royer.com','Patricia','Lamy','1981-03-11 20:52:23','u','2019-10-16 11:25:43','2019-11-04 08:27:57','07 88 04 35 82',0),(18552,NULL,NULL,'aroyer@gmail.com','aroyer@gmail.com','Thibaut','Renard','1961-11-23 21:19:54','u','2019-11-08 01:36:09','2019-11-04 08:27:57','+33 1 01 77 94 55',0),(18553,NULL,NULL,'christiane95@dbmail.com','christiane95@dbmail.com','Jérôme','Da Costa','1977-12-17 05:01:41','u','2019-11-03 23:52:50','2019-11-04 08:27:57','01 16 04 47 62',0),(18554,NULL,NULL,'genevieve.leveque@tele2.fr','genevieve.leveque@tele2.fr','Grégoire','Valette','1975-01-25 08:02:14','u','2019-10-25 17:15:27','2019-11-04 08:27:57','+33 (0)8 93 92 69 68',1),(18555,NULL,NULL,'frederique34@chauveau.com','frederique34@chauveau.com','Isabelle','Courtois','1980-09-19 22:34:58','u','2019-11-24 18:30:39','2019-11-04 08:27:57','+33 (0)8 98 51 47 04',0),(18556,NULL,NULL,'alexandrie.robert@noos.fr','alexandrie.robert@noos.fr','Charlotte','Picard','1979-04-26 11:28:58','u','2019-11-01 18:18:26','2019-11-04 08:27:57','0829392944',1),(18557,NULL,NULL,'laporte.lorraine@royer.com','laporte.lorraine@royer.com','Claude','Launay','1985-05-11 18:34:26','u','2019-11-23 20:50:02','2019-11-04 08:27:57','+33 8 93 35 54 71',1),(18558,NULL,NULL,'jsalmon@bouygtel.fr','jsalmon@bouygtel.fr','Nicolas','Hebert','1964-03-23 07:44:39','u','2019-11-14 08:51:29','2019-11-04 08:27:57','+33 2 79 43 82 40',0),(18559,NULL,NULL,'mathilde96@yahoo.fr','mathilde96@yahoo.fr','Richard','Dumont','1994-02-11 14:36:24','u','2019-10-15 03:25:46','2019-11-04 08:27:57','+33 (0)9 94 97 99 17',0),(18560,NULL,NULL,'margaud53@tiscali.fr','margaud53@tiscali.fr','Alex','Denis','1987-03-09 02:37:33','u','2019-10-11 23:20:24','2019-11-04 08:27:57','08 20 50 90 61',0),(18561,NULL,NULL,'spicard@dbmail.com','spicard@dbmail.com','Cécile','Caron','1986-07-02 11:23:14','u','2019-10-13 07:04:26','2019-11-04 08:27:57','+33 5 42 57 75 64',1),(18562,NULL,NULL,'guilbert.adrienne@dbmail.com','guilbert.adrienne@dbmail.com','Nathalie','Allard','1984-11-27 16:48:26','u','2019-11-22 09:04:53','2019-11-04 08:27:57','+33 9 02 55 97 99',1),(18563,NULL,NULL,'vperrin@gauthier.com','vperrin@gauthier.com','Henri','Sanchez','1981-12-08 18:07:39','u','2019-10-11 23:43:07','2019-11-04 08:27:57','+33 (0)6 13 03 70 93',1),(18564,NULL,NULL,'gmartineau@aubert.com','gmartineau@aubert.com','Xavier','Bouvet','1978-03-01 00:29:57','u','2019-10-07 04:01:25','2019-11-04 08:27:57','0933458144',1),(18565,NULL,NULL,'bailly.arthur@wanadoo.fr','bailly.arthur@wanadoo.fr','Alfred','Peron','1976-12-01 00:31:39','u','2019-11-09 13:28:18','2019-11-04 08:27:57','06 61 45 39 75',1),(18566,NULL,NULL,'denise14@noos.fr','denise14@noos.fr','Emmanuelle','Marchand','1999-01-20 21:29:14','u','2019-11-05 21:30:47','2019-11-04 08:27:57','+33 1 09 26 87 80',0),(18567,NULL,NULL,'delaunay.clemence@laposte.net','delaunay.clemence@laposte.net','Adrienne','Dupuy','1967-10-08 16:10:34','u','2019-11-23 19:25:44','2019-11-04 08:27:57','0139428419',0),(18568,NULL,NULL,'levy.christophe@gmail.com','levy.christophe@gmail.com','Augustin','Pages','1975-07-30 23:08:59','u','2019-10-18 09:15:03','2019-11-04 08:27:58','+33 (0)4 05 03 70 49',1),(18569,NULL,NULL,'victoire51@tiscali.fr','victoire51@tiscali.fr','Marguerite','Marchal','1975-10-26 01:23:24','u','2019-10-25 11:34:10','2019-11-04 08:27:58','+33 (0)4 22 07 07 36',1),(18570,NULL,NULL,'blopez@bouygtel.fr','blopez@bouygtel.fr','Noémi','Nicolas','1971-01-21 19:12:24','u','2019-10-23 05:09:08','2019-11-04 08:27:58','09 27 82 59 60',1),(18571,NULL,NULL,'maurice05@gallet.com','maurice05@gallet.com','Nathalie','Briand','1982-09-07 18:05:41','u','2019-10-31 17:50:08','2019-11-04 08:27:58','0672111106',0),(18572,NULL,NULL,'michel.zoe@tele2.fr','michel.zoe@tele2.fr','Rémy','Aubert','1972-11-19 08:18:11','u','2019-10-13 06:22:13','2019-11-04 08:27:58','0200961336',0),(18573,NULL,NULL,'etienne.constance@pinto.com','etienne.constance@pinto.com','Bertrand','Salmon','1960-03-26 08:32:02','u','2019-11-19 02:08:04','2019-11-04 08:27:58','0486281263',0),(18574,NULL,NULL,'roux.suzanne@morel.fr','roux.suzanne@morel.fr','Matthieu','Hamon','1994-06-05 14:12:31','u','2019-11-16 18:57:25','2019-11-04 08:27:58','+33 1 41 16 07 36',1),(18575,NULL,NULL,'michaud.roger@lejeune.com','michaud.roger@lejeune.com','Juliette','Delmas','1977-04-07 23:18:38','u','2019-10-17 05:02:56','2019-11-04 08:27:58','+33 3 17 95 91 71',1),(18576,NULL,NULL,'paulette56@ledoux.com','paulette56@ledoux.com','Jules','Michel','1989-04-14 08:49:39','u','2019-10-31 07:38:42','2019-11-04 08:27:58','03 07 52 83 98',1),(18577,NULL,NULL,'dominique.lecoq@club-internet.fr','dominique.lecoq@club-internet.fr','Catherine','Launay','1996-06-05 19:35:50','u','2019-11-05 13:06:33','2019-11-04 08:27:58','04 14 69 38 36',1),(18578,NULL,NULL,'christophe.rodriguez@blondel.net','christophe.rodriguez@blondel.net','Benoît','Thomas','1979-01-10 11:08:14','u','2019-11-13 15:30:54','2019-11-04 08:27:58','0320286377',0),(18579,NULL,NULL,'catherine34@chretien.fr','catherine34@chretien.fr','Margot','Giraud','1998-10-04 11:47:44','u','2019-10-06 09:57:14','2019-11-04 08:27:58','0637312324',0),(18580,NULL,NULL,'jules.boulay@noos.fr','jules.boulay@noos.fr','Paul','Boucher','1978-12-23 03:38:21','u','2019-11-23 09:11:09','2019-11-04 08:27:58','+33 8 97 43 32 50',0),(18581,NULL,NULL,'glemaitre@yahoo.fr','glemaitre@yahoo.fr','Aimée','Jacquet','1977-04-18 16:01:32','u','2019-11-01 04:29:06','2019-11-04 08:27:58','+33 (0)1 79 65 22 24',1),(18582,NULL,NULL,'grondin.denis@noos.fr','grondin.denis@noos.fr','Théophile','Schmitt','1995-08-05 13:19:47','u','2019-11-25 16:01:11','2019-11-04 08:27:58','+33 (0)1 44 14 77 22',0),(18583,NULL,NULL,'aime65@hoareau.com','aime65@hoareau.com','Inès','Leclerc','1986-08-26 23:42:45','u','2019-11-25 00:45:48','2019-11-04 08:27:58','+33 (0)1 84 03 87 97',0),(18584,NULL,NULL,'edeoliveira@dbmail.com','edeoliveira@dbmail.com','Margaud','Morel','1977-07-02 19:55:46','u','2019-11-07 06:24:06','2019-11-04 08:27:58','0811062835',1),(18585,NULL,NULL,'victoire.bourgeois@voila.fr','victoire.bourgeois@voila.fr','Marcel','Roger','1977-12-04 02:40:38','u','2019-11-17 22:54:30','2019-11-04 08:27:58','04 17 25 63 72',1),(18586,NULL,NULL,'marques.audrey@live.com','marques.audrey@live.com','Marguerite','Albert','1988-10-13 08:03:14','u','2019-10-20 14:01:46','2019-11-04 08:27:58','0932997748',0),(18587,NULL,NULL,'nicolas.huet@lebrun.com','nicolas.huet@lebrun.com','Diane','Pruvost','1988-07-04 14:20:08','u','2019-11-03 12:05:16','2019-11-04 08:27:58','+33 (0)4 99 58 45 53',1),(18588,NULL,NULL,'gallet.noel@orange.fr','gallet.noel@orange.fr','Jacques','Lamy','1988-06-17 14:55:37','u','2019-10-26 22:26:32','2019-11-04 08:27:58','+33 (0)1 26 89 42 87',0),(18589,NULL,NULL,'veronique44@diaz.fr','veronique44@diaz.fr','Martin','Munoz','1974-07-22 16:35:07','u','2019-11-01 09:24:46','2019-11-04 08:27:58','+33 4 65 02 09 17',0),(18590,NULL,NULL,'abonnet@gmail.com','abonnet@gmail.com','Zacharie','Lopez','1995-09-23 00:24:53','u','2019-10-26 05:43:10','2019-11-04 08:27:58','+33 3 82 07 39 51',0),(18591,NULL,NULL,'alix.pineau@dbmail.com','alix.pineau@dbmail.com','Virginie','Guilbert','1981-07-24 12:23:40','u','2019-11-03 15:36:38','2019-11-04 08:27:58','01 83 88 76 80',1),(18592,NULL,NULL,'cgilles@noos.fr','cgilles@noos.fr','Charles','Leconte','1963-02-10 21:58:54','u','2019-10-15 16:45:12','2019-11-04 08:27:58','05 41 90 72 39',1),(18593,NULL,NULL,'marthe.durand@tele2.fr','marthe.durand@tele2.fr','Pierre','Marchal','1997-09-28 17:36:58','u','2019-10-09 13:31:04','2019-11-04 08:27:58','02 99 84 97 25',1),(18594,NULL,NULL,'michele24@morel.org','michele24@morel.org','Grégoire','Joseph','1984-10-28 11:09:51','u','2019-11-06 16:57:24','2019-11-04 08:27:58','01 01 20 53 44',0),(18595,NULL,NULL,'nathalie.chartier@marchal.com','nathalie.chartier@marchal.com','Isaac','Poirier','1969-01-27 23:19:34','u','2019-10-19 04:10:00','2019-11-04 08:27:58','+33 (0)9 71 22 87 27',1),(18596,NULL,NULL,'bertin.astrid@hotmail.fr','bertin.astrid@hotmail.fr','Valentine','Letellier','1975-10-17 21:16:00','u','2019-10-26 18:47:52','2019-11-04 08:27:58','+33 4 19 79 68 82',1),(18597,NULL,NULL,'susan49@orange.fr','susan49@orange.fr','Nath','Wagner','1993-11-29 05:00:11','u','2019-10-10 12:02:26','2019-11-04 08:27:58','+33 9 36 31 67 00',0),(18598,NULL,NULL,'besson.noemi@ifrance.com','besson.noemi@ifrance.com','Thibault','Samson','1979-03-24 22:14:24','u','2019-10-08 05:19:30','2019-11-04 08:27:58','+33 (0)5 65 40 24 87',0),(18599,NULL,NULL,'lebrun.veronique@voila.fr','lebrun.veronique@voila.fr','Danielle','Ruiz','1985-04-06 04:34:53','u','2019-11-25 14:24:57','2019-11-04 08:27:58','+33 (0)4 22 26 44 97',1),(18600,NULL,NULL,'olivier.colas@free.fr','olivier.colas@free.fr','Hugues','Arnaud','1992-11-06 05:41:10','u','2019-10-29 05:57:08','2019-11-04 08:27:58','05 65 19 10 78',1),(18601,NULL,NULL,'eperez@perret.fr','eperez@perret.fr','Laurence','Masse','1980-09-21 01:25:07','u','2019-10-11 07:03:26','2019-11-04 08:27:58','+33 (0)6 95 59 33 87',1),(18602,NULL,NULL,'bmahe@leroux.fr','bmahe@leroux.fr','Thérèse','Coulon','1993-03-28 01:46:42','u','2019-10-23 17:45:45','2019-11-04 08:27:58','+33 8 91 42 99 36',0),(18603,NULL,NULL,'philippe.chretien@club-internet.fr','philippe.chretien@club-internet.fr','Anastasie','Simon','1961-05-10 23:20:00','u','2019-11-01 05:31:20','2019-11-04 08:27:58','+33 (0)8 27 50 95 10',0),(18604,NULL,NULL,'kjoubert@hotmail.fr','kjoubert@hotmail.fr','Susanne','Vallet','1993-09-23 12:02:58','u','2019-10-05 22:34:03','2019-11-04 08:27:58','+33 1 56 13 10 88',0),(18605,NULL,NULL,'victor.auger@mendes.org','victor.auger@mendes.org','Emmanuelle','Bazin','1995-02-21 14:58:35','u','2019-10-23 10:53:35','2019-11-04 08:27:58','+33 (0)6 06 47 33 18',0),(18606,NULL,NULL,'vklein@tiscali.fr','vklein@tiscali.fr','Stéphane','Jean','1986-06-13 11:51:54','u','2019-10-28 19:08:30','2019-11-04 08:27:58','02 46 69 71 74',0),(18607,NULL,NULL,'chantal81@orange.fr','chantal81@orange.fr','Robert','Mary','1997-05-21 06:05:55','u','2019-11-10 09:23:55','2019-11-04 08:27:58','+33 (0)4 49 48 26 72',0),(18608,NULL,NULL,'etienne.dossantos@dacosta.net','etienne.dossantos@dacosta.net','Olivie','Teixeira','1986-05-02 17:44:24','u','2019-10-11 19:23:22','2019-11-04 08:27:58','+33 2 35 56 94 87',1),(18609,NULL,NULL,'maurice59@masse.fr','maurice59@masse.fr','Sébastien','Fouquet','1983-07-15 04:52:01','u','2019-12-02 05:40:41','2019-11-04 08:27:58','07 48 79 30 38',0),(18610,NULL,NULL,'fournier.gerard@wanadoo.fr','fournier.gerard@wanadoo.fr','Jacques','Godard','1966-08-16 11:31:58','u','2019-10-14 16:55:50','2019-11-04 08:27:58','+33 (0)1 04 71 77 37',1),(18611,NULL,NULL,'robert.valentine@techer.com','robert.valentine@techer.com','Nathalie','Chauvin','1989-09-16 17:38:36','u','2019-11-06 06:09:16','2019-11-04 08:27:58','+33 (0)2 68 94 39 41',1),(18612,NULL,NULL,'pruvost.marguerite@noos.fr','pruvost.marguerite@noos.fr','Catherine','Olivier','1989-05-16 05:25:11','u','2019-11-29 11:42:19','2019-11-04 08:27:58','+33 (0)7 40 15 40 25',1),(18613,NULL,NULL,'andre01@antoine.fr','andre01@antoine.fr','Marc','Guibert','1990-08-06 08:16:53','u','2019-10-11 01:25:42','2019-11-04 08:27:58','+33 (0)1 62 70 92 09',1),(18614,NULL,NULL,'guillon.alphonse@pages.com','guillon.alphonse@pages.com','Frédéric','Rey','1982-02-21 09:59:00','u','2019-11-15 22:17:46','2019-11-04 08:27:58','01 42 25 00 38',1),(18615,NULL,NULL,'elebon@levy.fr','elebon@levy.fr','Frédéric','Colas','1985-12-20 02:17:31','u','2019-10-07 20:12:35','2019-11-04 08:27:58','09 60 78 33 31',1),(18616,NULL,NULL,'gilles.thierry@voila.fr','gilles.thierry@voila.fr','Bernadette','Bousquet','1998-07-11 00:51:26','u','2019-11-30 21:58:32','2019-11-04 08:27:58','+33 (0)7 86 23 70 39',1),(18617,NULL,NULL,'ollivier.renee@dufour.fr','ollivier.renee@dufour.fr','Jean','Guyon','1975-10-18 04:53:09','u','2019-11-30 11:12:06','2019-11-04 08:27:58','04 61 97 92 80',0),(18618,NULL,NULL,'roland34@maury.fr','roland34@maury.fr','Adèle','Noel','1967-02-08 00:29:12','u','2019-10-26 15:36:52','2019-11-04 08:27:58','+33 8 97 03 37 28',0),(18619,NULL,NULL,'ferrand.louis@allard.com','ferrand.louis@allard.com','Alfred','Marques','1986-02-08 20:20:58','u','2019-11-02 17:29:57','2019-11-04 08:27:58','+33 6 00 24 66 94',1),(18620,NULL,NULL,'olivier.michaud@chauvet.fr','olivier.michaud@chauvet.fr','Bernadette','Charles','1966-02-28 17:07:04','u','2019-10-29 06:40:40','2019-11-04 08:27:58','0783075967',1),(18621,NULL,NULL,'vmorvan@dbmail.com','vmorvan@dbmail.com','Antoinette','Marie','1978-07-14 05:52:22','u','2019-10-06 14:09:07','2019-11-04 08:27:58','+33 (0)2 72 80 35 31',0),(18622,NULL,NULL,'thardy@laurent.fr','thardy@laurent.fr','Marie','Weber','1975-03-25 10:14:48','u','2019-10-17 14:56:37','2019-11-04 08:27:58','+33 (0)1 22 43 43 03',1),(18623,NULL,NULL,'cbruneau@gaudin.com','cbruneau@gaudin.com','Nicolas','Masson','1964-09-19 04:30:59','u','2019-10-18 16:37:40','2019-11-04 08:27:58','04 42 61 07 19',0),(18624,NULL,NULL,'louis.poirier@ifrance.com','louis.poirier@ifrance.com','Julien','Maillot','1984-08-30 16:56:28','u','2019-10-18 03:02:26','2019-11-04 08:27:58','+33 (0)7 65 31 87 42',0),(18625,NULL,NULL,'berger.anais@ifrance.com','berger.anais@ifrance.com','André','Albert','1982-02-17 10:28:29','u','2019-11-10 22:02:51','2019-11-04 08:27:58','0316920591',0),(18626,NULL,NULL,'emmanuelle.noel@collet.org','emmanuelle.noel@collet.org','Lucas','Barre','1968-02-07 02:10:30','u','2019-11-02 21:01:33','2019-11-04 08:27:58','0422887573',0),(18627,NULL,NULL,'legendre.pierre@maurice.fr','legendre.pierre@maurice.fr','Michel','Diallo','1962-02-22 12:23:48','u','2019-10-23 22:45:19','2019-11-04 08:27:58','0585252979',1),(18628,NULL,NULL,'marc89@laposte.net','marc89@laposte.net','Jérôme','Muller','1979-11-29 16:06:57','u','2019-11-15 03:53:41','2019-11-04 08:27:58','01 83 57 36 71',0),(18629,NULL,NULL,'manon.maurice@wanadoo.fr','manon.maurice@wanadoo.fr','Sébastien','Menard','1965-08-11 10:05:26','u','2019-11-12 02:31:22','2019-11-04 08:27:58','0142221419',1),(18630,NULL,NULL,'hcoste@dufour.fr','hcoste@dufour.fr','Julie','Daniel','1980-05-09 23:34:28','u','2019-10-07 06:04:11','2019-11-04 08:27:58','0220019829',0),(18631,NULL,NULL,'bpinto@bourgeois.com','bpinto@bourgeois.com','Anouk','Faure','1961-11-02 05:06:18','u','2019-11-20 13:14:45','2019-11-04 08:27:58','+33 (0)6 47 20 46 30',0),(18632,NULL,NULL,'sabine73@wanadoo.fr','sabine73@wanadoo.fr','Susan','Le Roux','1974-12-01 04:29:50','u','2019-11-08 14:27:55','2019-11-04 08:27:58','0423288869',1),(18633,NULL,NULL,'celine.jacob@dbmail.com','celine.jacob@dbmail.com','Alexandre','Ramos','1981-04-04 00:47:41','u','2019-11-18 22:58:53','2019-11-04 08:27:58','+33 (0)5 07 33 73 46',1),(18634,NULL,NULL,'barthelemy.maggie@gmail.com','barthelemy.maggie@gmail.com','Françoise','Bouvier','1976-12-04 17:20:57','u','2019-11-03 02:34:19','2019-11-04 08:27:58','+33 (0)3 20 20 47 09',0),(18635,NULL,NULL,'charles.pires@dbmail.com','charles.pires@dbmail.com','Franck','Fournier','1986-08-16 20:41:14','u','2019-11-13 03:30:50','2019-11-04 08:27:58','01 38 01 54 59',0),(18636,NULL,NULL,'btecher@live.com','btecher@live.com','Gabriel','Maillard','1983-10-18 13:32:29','u','2019-10-15 06:15:44','2019-11-04 08:27:58','09 05 33 26 56',0),(18637,NULL,NULL,'chartier.laurent@gregoire.fr','chartier.laurent@gregoire.fr','Hugues','Lefebvre','1985-04-14 06:44:18','u','2019-11-30 20:01:19','2019-11-04 08:27:58','04 16 99 17 73',0),(18638,NULL,NULL,'marcel.besnard@pasquier.org','marcel.besnard@pasquier.org','Nicole','Chartier','1975-01-28 10:36:42','u','2019-11-22 05:48:02','2019-11-04 08:27:58','05 27 62 99 33',0),(18639,NULL,NULL,'andree.vincent@bertin.org','andree.vincent@bertin.org','Odette','Leleu','1972-05-31 03:55:07','u','2019-10-14 06:41:48','2019-11-04 08:27:58','0124991719',1),(18640,NULL,NULL,'jean.maurice@wanadoo.fr','jean.maurice@wanadoo.fr','Benjamin','Guillot','1986-11-29 06:12:23','u','2019-10-06 12:58:43','2019-11-04 08:27:58','0757372449',1),(18641,NULL,NULL,'nicolas.pons@renault.net','nicolas.pons@renault.net','Michèle','Blondel','1967-04-02 15:03:09','u','2019-11-17 00:14:08','2019-11-04 08:27:58','0296182683',1),(18642,NULL,NULL,'thibault88@carre.net','thibault88@carre.net','Éric','Ferreira','1992-10-29 08:08:06','u','2019-11-07 10:04:30','2019-11-04 08:27:58','+33 4 00 43 63 96',0),(18643,NULL,NULL,'adelorme@schneider.com','adelorme@schneider.com','Sylvie','Berger','1994-09-05 22:41:42','u','2019-11-18 23:18:04','2019-11-04 08:27:58','01 09 98 68 15',0),(18644,NULL,NULL,'ydevaux@wanadoo.fr','ydevaux@wanadoo.fr','Patrick','Perrot','1972-09-11 07:33:07','u','2019-11-19 12:42:32','2019-11-04 08:27:58','0797135811',1),(18645,NULL,NULL,'valerie17@bouygtel.fr','valerie17@bouygtel.fr','Olivier','Laroche','1986-06-10 22:21:52','u','2019-11-29 17:44:06','2019-11-04 08:27:58','+33 (0)6 68 95 42 89',0),(18646,NULL,NULL,'leduc.patricia@aubry.fr','leduc.patricia@aubry.fr','Bernadette','Leveque','1998-06-05 16:57:37','u','2019-11-14 14:13:38','2019-11-04 08:27:58','+33 6 53 00 75 14',1),(18647,NULL,NULL,'nblondel@live.com','nblondel@live.com','Pénélope','Mathieu','1966-03-07 21:45:22','u','2019-10-06 10:29:31','2019-11-04 08:27:58','0782840264',1),(18648,NULL,NULL,'alexandre87@petit.fr','alexandre87@petit.fr','Jean','Aubry','1960-12-03 02:23:42','u','2019-10-04 11:42:08','2019-11-04 08:27:58','+33 (0)6 93 72 49 48',0),(18649,NULL,NULL,'kbarbe@tiscali.fr','kbarbe@tiscali.fr','Nicolas','Bouvier','1985-10-10 09:16:55','u','2019-11-13 14:53:17','2019-11-04 08:27:58','0309256853',1),(18650,NULL,NULL,'zperez@joubert.fr','zperez@joubert.fr','Antoine','Girard','1975-07-23 05:24:30','u','2019-10-10 20:55:18','2019-11-04 08:27:58','+33 5 23 28 65 77',1),(18651,NULL,NULL,'aimee.baron@antoine.net','aimee.baron@antoine.net','Tristan','Lemaitre','1990-06-25 06:58:18','u','2019-10-05 01:23:22','2019-11-04 08:27:58','+33 3 54 12 99 17',0),(18652,NULL,NULL,'nathalie79@tele2.fr','nathalie79@tele2.fr','Frédéric','Giraud','1963-05-01 21:08:38','u','2019-11-28 19:35:01','2019-11-04 08:27:58','+33 (0)6 82 86 66 69',0),(18653,NULL,NULL,'martin.valentin@club-internet.fr','martin.valentin@club-internet.fr','Bertrand','Pascal','1963-11-02 22:53:20','u','2019-11-10 23:43:19','2019-11-04 08:27:58','0418327466',0),(18654,NULL,NULL,'wboutin@techer.fr','wboutin@techer.fr','Bertrand','Dumas','1961-04-05 13:32:52','u','2019-11-27 06:31:21','2019-11-04 08:27:58','01 51 80 55 75',1),(18655,NULL,NULL,'legros.gabriel@voila.fr','legros.gabriel@voila.fr','Richard','Picard','1961-10-25 19:52:19','u','2019-11-08 01:01:39','2019-11-04 08:27:58','+33 (0)1 68 07 61 18',1),(18656,NULL,NULL,'elisabeth.pichon@live.com','elisabeth.pichon@live.com','Emmanuelle','Gaudin','1969-12-07 13:12:31','u','2019-10-29 01:16:49','2019-11-04 08:27:58','+33 (0)4 52 90 97 80',1),(18657,NULL,NULL,'allain.dorothee@yahoo.fr','allain.dorothee@yahoo.fr','Margaud','Paul','1998-01-17 14:02:52','u','2019-11-10 17:41:02','2019-11-04 08:27:58','+33 (0)7 40 15 11 09',0),(18658,NULL,NULL,'camille26@club-internet.fr','camille26@club-internet.fr','Adélaïde','Bernard','1972-07-12 14:36:32','u','2019-10-12 21:59:54','2019-11-04 08:27:58','0647133183',0),(18659,NULL,NULL,'charrier.benoit@ifrance.com','charrier.benoit@ifrance.com','Jacques','Raynaud','1960-07-04 04:54:49','u','2019-11-23 21:06:22','2019-11-04 08:27:58','0381736326',0),(18660,NULL,NULL,'denis26@torres.fr','denis26@torres.fr','Alexandria','Berthelot','1973-12-30 04:56:03','u','2019-10-19 21:51:58','2019-11-04 08:27:58','0129739149',1),(18661,NULL,NULL,'lombard.margot@laposte.net','lombard.margot@laposte.net','Élise','Didier','1975-12-13 07:53:01','u','2019-11-05 22:01:04','2019-11-04 08:27:58','0949773047',1),(18662,NULL,NULL,'valentin.christophe@sfr.fr','valentin.christophe@sfr.fr','Alain','Boucher','1989-12-31 05:47:08','u','2019-10-04 09:41:15','2019-11-04 08:27:58','+33 5 71 58 44 42',1),(18663,NULL,NULL,'wrenault@live.com','wrenault@live.com','Océane','Leveque','1967-08-12 05:04:31','u','2019-12-01 08:09:01','2019-11-04 08:27:58','0274739878',1),(18664,NULL,NULL,'guyon.emile@poirier.com','guyon.emile@poirier.com','André','Andre','1964-08-15 02:59:44','u','2019-10-11 15:02:28','2019-11-04 08:27:58','+33 1 20 58 65 29',1),(18665,NULL,NULL,'lpetitjean@wanadoo.fr','lpetitjean@wanadoo.fr','Philippine','Robin','1987-08-15 14:29:22','u','2019-11-16 08:47:31','2019-11-04 08:27:58','+33 (0)1 02 78 91 79',0),(18666,NULL,NULL,'helene.menard@pineau.org','helene.menard@pineau.org','Nicole','Legendre','1974-03-17 02:59:40','u','2019-11-11 19:53:57','2019-11-04 08:27:58','+33 1 72 78 67 25',1),(18667,NULL,NULL,'philippe41@wanadoo.fr','philippe41@wanadoo.fr','Audrey','Marchand','1987-03-07 15:59:34','u','2019-10-14 06:57:09','2019-11-04 08:27:58','0983876747',0),(18668,NULL,NULL,'kverdier@sfr.fr','kverdier@sfr.fr','Dominique','Pascal','1965-04-19 14:24:44','u','2019-10-19 13:33:43','2019-11-04 08:27:58','+33 3 05 70 61 51',1),(18669,NULL,NULL,'remy90@collin.fr','remy90@collin.fr','Henri','Gomez','1975-08-14 17:42:54','u','2019-11-21 18:46:08','2019-11-04 08:27:58','+33 (0)1 95 73 62 73',0),(18670,NULL,NULL,'ohamon@hamon.com','ohamon@hamon.com','Vincent','Lefevre','1963-07-28 20:45:40','u','2019-11-25 09:57:24','2019-11-04 08:27:58','+33 (0)6 47 21 00 83',0),(18671,NULL,NULL,'lopez.luc@hotmail.fr','lopez.luc@hotmail.fr','Claude','Tanguy','1972-01-23 02:34:25','u','2019-10-31 20:04:22','2019-11-04 08:27:58','0449938004',1),(18672,NULL,NULL,'frederic.valette@maury.fr','frederic.valette@maury.fr','Manon','Royer','1965-10-02 22:45:45','u','2019-12-03 23:59:40','2019-11-04 08:27:58','+33 4 74 95 23 04',0),(18673,NULL,NULL,'vidal.eugene@wanadoo.fr','vidal.eugene@wanadoo.fr','Timothée','Laurent','1999-09-30 15:52:10','u','2019-11-03 10:37:16','2019-11-04 08:27:58','0802391110',0),(18674,NULL,NULL,'parent.xavier@delannoy.fr','parent.xavier@delannoy.fr','Michelle','Arnaud','1998-03-28 06:07:34','u','2019-10-19 13:27:47','2019-11-04 08:27:58','+33 6 94 59 40 60',1),(18675,NULL,NULL,'operez@club-internet.fr','operez@club-internet.fr','Catherine','Gomez','1960-09-01 04:00:46','u','2019-11-29 10:10:38','2019-11-04 08:27:58','+33 (0)1 44 71 74 27',0),(18676,NULL,NULL,'wpichon@techer.fr','wpichon@techer.fr','Tristan','Pichon','1995-07-07 12:20:43','u','2019-11-11 16:26:59','2019-11-04 08:27:58','+33 (0)9 29 07 71 31',1),(18677,NULL,NULL,'joseph.guillou@pelletier.org','joseph.guillou@pelletier.org','Madeleine','Gomez','1993-09-21 03:37:33','u','2019-11-16 01:11:58','2019-11-04 08:27:58','0786764567',0),(18678,NULL,NULL,'ybuisson@tiscali.fr','ybuisson@tiscali.fr','Valérie','Leroux','1971-06-26 05:26:20','u','2019-11-30 12:59:16','2019-11-04 08:27:58','+33 (0)1 46 52 99 32',1),(18679,NULL,NULL,'mgaillard@fouquet.net','mgaillard@fouquet.net','Marguerite','Le Roux','1966-02-03 12:25:51','u','2019-11-13 17:33:44','2019-11-04 08:27:58','0731258908',1),(18680,NULL,NULL,'nparis@sfr.fr','nparis@sfr.fr','Aimé','Tessier','1970-06-09 05:21:38','u','2019-11-22 06:19:36','2019-11-04 08:27:58','+33 1 06 24 54 82',1),(18681,NULL,NULL,'uantoine@gauthier.net','uantoine@gauthier.net','Élisabeth','Costa','1963-08-05 08:25:29','u','2019-11-11 12:44:27','2019-11-04 08:27:58','01 89 01 60 95',0),(18682,NULL,NULL,'leon72@joubert.net','leon72@joubert.net','Laurent','Royer','1986-11-27 06:23:51','u','2019-10-25 01:24:35','2019-11-04 08:27:58','+33 6 79 69 22 76',1),(18683,NULL,NULL,'jacques.chantal@yahoo.fr','jacques.chantal@yahoo.fr','Geneviève','Blanc','1996-07-25 12:17:38','u','2019-11-27 04:19:23','2019-11-04 08:27:58','0362192779',0),(18684,NULL,NULL,'dominique94@yahoo.fr','dominique94@yahoo.fr','Noémi','Laine','1980-02-11 23:07:59','u','2019-11-20 22:18:25','2019-11-04 08:27:58','0733192258',1),(18685,NULL,NULL,'danielle.coste@voila.fr','danielle.coste@voila.fr','Alphonse','Levy','1998-07-07 23:39:09','u','2019-10-20 07:52:56','2019-11-04 08:27:58','+33 (0)6 57 26 03 04',0),(18686,NULL,NULL,'david.aurelie@bouygtel.fr','david.aurelie@bouygtel.fr','Sylvie','Pascal','1961-05-02 00:07:36','u','2019-10-08 01:11:39','2019-11-04 08:27:58','0102956902',0),(18687,NULL,NULL,'lopes.denis@tiscali.fr','lopes.denis@tiscali.fr','Augustin','Lefevre','1967-04-08 06:14:49','u','2019-11-02 16:41:08','2019-11-04 08:27:58','+33 1 90 91 69 18',0),(18688,NULL,NULL,'mrolland@bouygtel.fr','mrolland@bouygtel.fr','Anouk','Lagarde','1991-10-14 22:18:35','u','2019-11-09 13:20:16','2019-11-04 08:27:58','0893731611',0),(18689,NULL,NULL,'edith.philippe@colin.fr','edith.philippe@colin.fr','Adèle','Bouvet','1983-05-24 18:01:32','u','2019-11-26 07:18:47','2019-11-04 08:27:58','0194804234',0),(18690,NULL,NULL,'patrick26@dbmail.com','patrick26@dbmail.com','Claude','Pages','1979-03-17 01:40:42','u','2019-10-15 03:53:20','2019-11-04 08:27:58','0944723825',0),(18691,NULL,NULL,'orey@monnier.com','orey@monnier.com','Manon','Lecomte','1967-06-21 19:16:44','u','2019-12-01 02:31:51','2019-11-04 08:27:58','02 99 28 74 77',1),(18692,NULL,NULL,'paul.menard@aubry.net','paul.menard@aubry.net','Lucy','Leroy','1982-11-21 18:00:44','u','2019-10-20 18:43:40','2019-11-04 08:27:58','0607262030',1),(18693,NULL,NULL,'susanne45@noos.fr','susanne45@noos.fr','Roger','Pereira','1977-08-25 13:52:14','u','2019-11-14 02:07:52','2019-11-04 08:27:58','01 67 56 28 54',0),(18694,NULL,NULL,'aime36@hardy.org','aime36@hardy.org','Isaac','Hamon','1972-10-28 23:56:46','u','2019-11-18 13:47:29','2019-11-04 08:27:58','02 33 98 63 10',1),(18695,NULL,NULL,'tmillet@gmail.com','tmillet@gmail.com','Noël','Lejeune','1982-02-18 00:51:56','u','2019-11-23 03:44:44','2019-11-04 08:27:58','+33 2 09 92 42 96',0),(18696,NULL,NULL,'garnier.victoire@sfr.fr','garnier.victoire@sfr.fr','Alix','Texier','1982-03-25 00:37:46','u','2019-10-12 07:16:47','2019-11-04 08:27:58','07 46 34 11 47',1),(18697,NULL,NULL,'thibaut70@mendes.fr','thibaut70@mendes.fr','Matthieu','Rocher','1981-04-05 07:21:20','u','2019-11-11 09:03:58','2019-11-04 08:27:58','+33 (0)6 37 14 48 49',1),(18698,NULL,NULL,'sabine97@thierry.fr','sabine97@thierry.fr','Marc','Richard','1970-07-10 22:54:47','u','2019-10-27 23:10:46','2019-11-04 08:27:58','+33 9 23 43 02 68',0),(18699,NULL,NULL,'gerard28@perrin.com','gerard28@perrin.com','Jacqueline','Lamy','1966-11-10 07:54:43','u','2019-11-26 07:13:14','2019-11-04 08:27:58','+33 (0)9 01 72 58 44',1),(18700,NULL,NULL,'stephane.baron@maillot.fr','stephane.baron@maillot.fr','Cécile','Roche','1970-10-06 20:07:37','u','2019-12-01 02:57:25','2019-11-04 08:27:58','+33 5 33 22 77 31',0),(18701,NULL,NULL,'maryse35@sfr.fr','maryse35@sfr.fr','Sylvie','Bailly','1999-09-04 20:53:07','u','2019-10-16 05:59:36','2019-11-04 08:27:58','07 57 88 25 60',1),(18702,NULL,NULL,'julien87@berger.fr','julien87@berger.fr','Benoît','Lenoir','1988-11-09 22:37:24','u','2019-10-31 17:09:20','2019-11-04 08:27:58','07 85 42 55 93',1),(18703,NULL,NULL,'timothee74@marques.fr','timothee74@marques.fr','Valentine','Chartier','1980-02-11 18:55:36','u','2019-10-27 00:44:48','2019-11-04 08:27:58','+33 2 21 16 56 43',1),(18704,NULL,NULL,'klein.maggie@deoliveira.com','klein.maggie@deoliveira.com','Bertrand','Roussel','1966-12-31 20:44:16','u','2019-10-21 00:37:07','2019-11-04 08:27:58','+33 (0)1 66 89 63 37',1),(18705,NULL,NULL,'chantal00@bouygtel.fr','chantal00@bouygtel.fr','Adélaïde','Leduc','1984-11-30 18:22:27','u','2019-11-05 07:55:25','2019-11-04 08:27:58','+33 2 49 41 19 20',0),(18706,NULL,NULL,'louis78@club-internet.fr','louis78@club-internet.fr','Alexandria','Meyer','1995-12-23 22:56:51','u','2019-11-26 00:25:09','2019-11-04 08:27:58','07 63 41 42 77',0),(18707,NULL,NULL,'brigitte.peltier@rey.com','brigitte.peltier@rey.com','Lorraine','Marty','1963-12-29 11:02:41','u','2019-11-10 18:53:48','2019-11-04 08:27:58','0556705736',1),(18708,NULL,NULL,'josephine.allard@prevost.com','josephine.allard@prevost.com','Sylvie','Simon','1977-12-02 03:06:12','u','2019-10-06 09:17:36','2019-11-04 08:27:58','0667150993',1),(18709,NULL,NULL,'vdelaunay@hotmail.fr','vdelaunay@hotmail.fr','Christiane','Leclercq','1977-07-13 18:28:49','u','2019-10-25 16:36:18','2019-11-04 08:27:58','03 66 88 91 10',1),(18710,NULL,NULL,'christelle76@ifrance.com','christelle76@ifrance.com','Maurice','Marion','1991-07-08 05:08:05','u','2019-11-25 02:43:03','2019-11-04 08:27:58','08 97 90 40 51',1),(18711,NULL,NULL,'suzanne91@daniel.fr','suzanne91@daniel.fr','Colette','Legrand','1976-12-22 06:19:57','u','2019-10-24 10:28:42','2019-11-04 08:27:58','+33 (0)2 17 43 97 00',1),(18712,NULL,NULL,'legendre.joseph@dbmail.com','legendre.joseph@dbmail.com','Eugène','Pereira','1998-07-11 07:08:13','u','2019-10-11 23:10:20','2019-11-04 08:27:58','+33 (0)4 82 24 71 53',1),(18713,NULL,NULL,'zoe72@wanadoo.fr','zoe72@wanadoo.fr','Dominique','Alexandre','1976-09-12 18:12:40','u','2019-10-24 12:51:18','2019-11-04 08:27:58','+33 2 97 78 62 30',1),(18714,NULL,NULL,'theodore.lesage@hotmail.fr','theodore.lesage@hotmail.fr','Étienne','Ruiz','1989-09-15 16:39:07','u','2019-11-09 11:52:17','2019-11-04 08:27:58','+33 8 12 13 36 57',0),(18715,NULL,NULL,'claudine59@yahoo.fr','claudine59@yahoo.fr','Matthieu','Hamel','1989-05-07 17:01:30','u','2019-10-16 12:24:19','2019-11-04 08:27:58','+33 (0)1 28 41 76 47',1),(18716,NULL,NULL,'jean.tessier@lucas.com','jean.tessier@lucas.com','François','Francois','1996-12-18 23:19:12','u','2019-10-14 03:54:40','2019-11-04 08:27:58','+33 (0)1 91 67 55 45',1),(18717,NULL,NULL,'reynaud.penelope@gmail.com','reynaud.penelope@gmail.com','David','Royer','1964-05-16 07:18:17','u','2019-11-03 23:57:26','2019-11-04 08:27:58','07 88 44 92 93',1),(18718,NULL,NULL,'raynaud.aime@tele2.fr','raynaud.aime@tele2.fr','Marine','Millet','1972-05-22 17:06:38','u','2019-11-15 11:42:11','2019-11-04 08:27:58','+33 9 67 24 33 54',1),(18719,NULL,NULL,'edouard.pages@germain.com','edouard.pages@germain.com','Roland','Guyon','1982-10-06 16:30:10','u','2019-11-17 00:12:34','2019-11-04 08:27:58','+33 (0)5 06 61 27 02',0),(18720,NULL,NULL,'wbousquet@lemaire.fr','wbousquet@lemaire.fr','Monique','Marechal','1961-11-22 07:01:22','u','2019-10-28 05:38:23','2019-11-04 08:27:58','0932957786',0),(18721,NULL,NULL,'abaudry@maury.com','abaudry@maury.com','Adèle','Legros','1984-06-09 16:02:40','u','2019-10-10 18:17:44','2019-11-04 08:27:58','0962213951',0),(18722,NULL,NULL,'nhernandez@blin.fr','nhernandez@blin.fr','Jeanne','Besson','1977-05-18 20:33:34','u','2019-10-05 05:56:05','2019-11-04 08:27:58','0527031179',1),(18723,NULL,NULL,'leon87@germain.com','leon87@germain.com','Rémy','Robin','1990-11-10 10:36:21','u','2019-11-29 02:06:54','2019-11-04 08:27:58','06 27 74 03 55',0),(18724,NULL,NULL,'william31@live.com','william31@live.com','Benoît','Marques','1990-10-07 03:27:07','u','2019-11-10 08:05:58','2019-11-04 08:27:58','+33 6 76 61 11 45',0),(18725,NULL,NULL,'ollivier.eugene@rodrigues.fr','ollivier.eugene@rodrigues.fr','Colette','Pelletier','1970-11-21 00:37:37','u','2019-11-02 13:55:59','2019-11-04 08:27:58','+33 (0)9 94 77 10 74',0),(18726,NULL,NULL,'helene.noel@gmail.com','helene.noel@gmail.com','Stéphanie','Carre','1966-03-24 00:37:08','u','2019-10-22 12:17:41','2019-11-04 08:27:58','+33 (0)4 50 87 33 96',0),(18727,NULL,NULL,'delahaye.christelle@ifrance.com','delahaye.christelle@ifrance.com','Élisabeth','Alexandre','1986-10-26 09:13:17','u','2019-10-25 05:06:58','2019-11-04 08:27:58','+33 6 54 78 39 85',0),(18728,NULL,NULL,'vleclercq@yahoo.fr','vleclercq@yahoo.fr','Cécile','Morin','1981-08-13 18:38:28','u','2019-10-06 11:28:55','2019-11-04 08:27:58','09 71 40 79 49',0),(18729,NULL,NULL,'louis35@noos.fr','louis35@noos.fr','Édouard','Jacquot','1976-09-25 19:34:10','u','2019-11-18 22:28:00','2019-11-04 08:27:58','0453170451',0),(18730,NULL,NULL,'bernadette77@aubry.com','bernadette77@aubry.com','Jacques','Marchand','1982-12-09 16:43:50','u','2019-11-17 03:04:57','2019-11-04 08:27:58','+33 1 18 62 19 44',1),(18731,NULL,NULL,'tmarechal@hotmail.fr','tmarechal@hotmail.fr','Aimée','Carpentier','1986-09-10 15:44:18','u','2019-11-12 22:15:07','2019-11-04 08:27:58','03 42 35 62 66',1),(18732,NULL,NULL,'colin.edouard@tiscali.fr','colin.edouard@tiscali.fr','Anastasie','Laurent','1966-03-28 00:24:22','u','2019-12-03 06:39:49','2019-11-04 08:27:58','07 60 25 24 12',1),(18733,NULL,NULL,'elodie.mace@wanadoo.fr','elodie.mace@wanadoo.fr','Adrienne','Philippe','1989-12-21 05:02:55','u','2019-11-05 07:38:06','2019-11-04 08:27:58','+33 (0)1 14 08 99 53',0),(18734,NULL,NULL,'marty.paul@sfr.fr','marty.paul@sfr.fr','Françoise','Lebon','1984-08-17 04:03:50','u','2019-11-20 19:21:12','2019-11-04 08:27:58','+33 (0)1 41 85 06 73',0),(18735,NULL,NULL,'christine.alves@ifrance.com','christine.alves@ifrance.com','Jacqueline','Denis','1999-04-24 03:52:21','u','2019-10-13 07:39:34','2019-11-04 08:27:58','+33 (0)9 99 78 48 85',1),(18736,NULL,NULL,'astrid.masse@ifrance.com','astrid.masse@ifrance.com','Isabelle','Monnier','1986-01-04 20:16:43','u','2019-10-17 03:31:06','2019-11-04 08:27:58','+33 (0)9 37 23 38 78',1),(18737,NULL,NULL,'ppinto@tele2.fr','ppinto@tele2.fr','Gabriel','Durand','1972-01-08 17:14:40','u','2019-11-15 07:21:54','2019-11-04 08:27:58','+33 7 73 10 41 63',0),(18738,NULL,NULL,'susan.sauvage@noos.fr','susan.sauvage@noos.fr','Lucas','Lesage','1996-04-10 05:43:07','u','2019-11-08 15:19:35','2019-11-04 08:27:58','+33 1 17 44 27 30',1),(18739,NULL,NULL,'pruvost.astrid@langlois.com','pruvost.astrid@langlois.com','Théophile','Blot','1981-02-12 22:04:20','u','2019-11-12 21:13:42','2019-11-04 08:27:58','0513228278',1),(18740,NULL,NULL,'qrodrigues@evrard.fr','qrodrigues@evrard.fr','William','Martinez','1996-08-30 18:31:07','u','2019-11-03 17:36:51','2019-11-04 08:27:58','02 59 15 86 31',1),(18741,NULL,NULL,'fgregoire@bouygtel.fr','fgregoire@bouygtel.fr','Eugène','Letellier','1998-04-10 07:24:14','u','2019-11-19 20:43:00','2019-11-04 08:27:58','0184908230',1),(18742,NULL,NULL,'leon75@loiseau.com','leon75@loiseau.com','Hugues','Jacques','1988-10-05 11:45:41','u','2019-11-05 08:00:11','2019-11-04 08:27:58','+33 5 32 16 13 14',1),(18743,NULL,NULL,'paulette.gerard@cousin.net','paulette.gerard@cousin.net','Célina','Herve','1996-03-27 02:14:52','u','2019-11-03 23:03:59','2019-11-04 08:27:58','+33 (0)5 69 79 28 05',0),(18744,NULL,NULL,'emilie.martinez@samson.com','emilie.martinez@samson.com','Guillaume','Tessier','1988-03-29 16:38:19','u','2019-11-13 23:43:37','2019-11-04 08:27:58','0287494198',1),(18745,NULL,NULL,'mcousin@dbmail.com','mcousin@dbmail.com','Raymond','Potier','1985-09-23 10:30:35','u','2019-11-18 02:23:30','2019-11-04 08:27:58','0513713437',1),(18746,NULL,NULL,'francoise.mary@ifrance.com','francoise.mary@ifrance.com','Dominique','Dumont','1961-08-20 04:17:25','u','2019-11-29 14:17:55','2019-11-04 08:27:58','0683720491',0),(18747,NULL,NULL,'nathalie51@dbmail.com','nathalie51@dbmail.com','Denise','Pons','1981-02-28 05:58:52','u','2019-10-22 08:42:38','2019-11-04 08:27:58','+33 3 62 12 46 00',0),(18748,NULL,NULL,'antoine71@laposte.net','antoine71@laposte.net','Adrien','Durand','1987-02-04 07:58:33','u','2019-11-21 06:42:20','2019-11-04 08:27:58','07 57 27 79 95',0),(18749,NULL,NULL,'bvalentin@dbmail.com','bvalentin@dbmail.com','Jérôme','Schmitt','1969-08-10 15:04:10','u','2019-11-05 19:44:09','2019-11-04 08:27:58','+33 (0)1 63 45 29 69',1),(18750,NULL,NULL,'benard.zoe@klein.org','benard.zoe@klein.org','Joséphine','Teixeira','1960-05-30 01:20:16','u','2019-11-24 15:34:19','2019-11-04 08:27:58','0145929558',1),(18751,NULL,NULL,'jcollet@lecomte.com','jcollet@lecomte.com','Charles','Gaudin','1990-03-26 17:15:48','u','2019-11-20 15:44:45','2019-11-04 08:27:58','04 59 87 96 18',0),(18752,NULL,NULL,'william52@club-internet.fr','william52@club-internet.fr','Laetitia','Herve','1990-12-11 13:08:56','u','2019-10-18 13:43:46','2019-11-04 08:27:58','0554850865',0),(18753,NULL,NULL,'elise.delahaye@brunel.fr','elise.delahaye@brunel.fr','Antoine','Vasseur','1996-05-20 14:18:53','u','2019-11-12 11:07:44','2019-11-04 08:27:58','09 40 12 05 27',0),(18754,NULL,NULL,'hugues26@guillet.org','hugues26@guillet.org','Charles','Diaz','1968-11-12 22:53:53','u','2019-11-30 13:07:13','2019-11-04 08:27:58','+33 5 86 77 32 75',0),(18755,NULL,NULL,'ubigot@morel.com','ubigot@morel.com','Gilbert','Bonnet','1997-12-25 08:37:04','u','2019-10-26 05:13:41','2019-11-04 08:27:58','+33 (0)4 77 14 56 57',0),(18756,NULL,NULL,'gilles.dupont@hamon.org','gilles.dupont@hamon.org','Olivie','Louis','1966-06-04 09:57:54','u','2019-11-24 21:44:04','2019-11-04 08:27:58','+33 (0)4 98 56 81 42',0),(18757,NULL,NULL,'deoliveira.christine@gmail.com','deoliveira.christine@gmail.com','Margot','Leclerc','1987-01-31 19:12:38','u','2019-11-24 08:08:20','2019-11-04 08:27:58','+33 (0)2 18 81 37 02',0),(18758,NULL,NULL,'jean.gregoire@voila.fr','jean.gregoire@voila.fr','Alice','Barre','1970-02-06 00:07:32','u','2019-10-29 09:13:15','2019-11-04 08:27:58','+33 4 88 75 57 54',0),(18759,NULL,NULL,'renaud.thibault@free.fr','renaud.thibault@free.fr','Andrée','Toussaint','1995-03-14 12:57:57','u','2019-11-20 11:09:27','2019-11-04 08:27:58','+33 3 49 80 87 96',1),(18760,NULL,NULL,'phenry@perrot.fr','phenry@perrot.fr','Laurence','Coulon','1972-02-18 20:08:38','u','2019-10-11 00:07:24','2019-11-04 08:27:58','0820324660',1),(18761,NULL,NULL,'thibault.michelle@petitjean.com','thibault.michelle@petitjean.com','Virginie','Guillet','1964-04-05 20:28:50','u','2019-11-29 00:11:50','2019-11-04 08:27:58','0127425073',0),(18762,NULL,NULL,'wfaure@ifrance.com','wfaure@ifrance.com','Marie','Pottier','1965-12-15 23:52:54','u','2019-10-11 19:04:21','2019-11-04 08:27:58','04 59 96 09 07',1),(18763,NULL,NULL,'xroussel@yahoo.fr','xroussel@yahoo.fr','Maryse','Guillot','1972-06-12 02:48:52','u','2019-10-23 07:24:50','2019-11-04 08:27:58','+33 (0)1 26 23 51 86',0),(18764,NULL,NULL,'dupuis.luc@blondel.fr','dupuis.luc@blondel.fr','Éléonore','Lagarde','1978-04-29 18:25:57','u','2019-10-08 18:45:47','2019-11-04 08:27:58','+33 8 95 87 20 65',0),(18765,NULL,NULL,'lemaire.roger@wanadoo.fr','lemaire.roger@wanadoo.fr','Océane','Turpin','1975-03-10 17:04:24','u','2019-11-17 12:13:41','2019-11-04 08:27:58','+33 7 73 89 70 81',0),(18766,NULL,NULL,'alexandre93@turpin.org','alexandre93@turpin.org','Aurore','Guichard','1989-10-12 18:58:29','u','2019-10-15 04:25:25','2019-11-04 08:27:58','+33 5 19 21 90 05',0),(18767,NULL,NULL,'zbecker@live.com','zbecker@live.com','Auguste','Lemonnier','1980-07-31 17:30:57','u','2019-10-14 06:43:32','2019-11-04 08:27:58','+33 (0)5 41 22 81 05',1),(18768,NULL,NULL,'christelle.germain@hotmail.fr','christelle.germain@hotmail.fr','Théodore','Hoareau','1980-02-14 02:08:05','u','2019-11-28 10:25:30','2019-11-04 08:27:58','+33 9 20 60 42 01',1),(18769,NULL,NULL,'chevalier.marcel@ifrance.com','chevalier.marcel@ifrance.com','Rémy','Fischer','1982-05-21 17:43:13','u','2019-10-16 04:47:20','2019-11-04 08:27:58','+33 1 80 85 40 72',1),(18770,NULL,NULL,'delannoy.gilbert@alves.com','delannoy.gilbert@alves.com','Célina','Laporte','1988-04-14 12:10:49','u','2019-10-15 16:43:16','2019-11-04 08:27:58','0618721177',1),(18771,NULL,NULL,'noel.danielle@laposte.net','noel.danielle@laposte.net','Lucie','Teixeira','1965-03-22 03:01:58','u','2019-11-09 08:59:44','2019-11-04 08:27:58','01 34 41 13 91',0),(18772,NULL,NULL,'olivier.petit@levy.net','olivier.petit@levy.net','Éric','Bertin','1998-03-05 20:21:46','u','2019-10-09 17:13:41','2019-11-04 08:27:58','09 74 17 32 25',1),(18773,NULL,NULL,'guerin.alexandrie@hotmail.fr','guerin.alexandrie@hotmail.fr','Nicolas','Pruvost','1964-07-17 16:39:06','u','2019-11-27 16:14:44','2019-11-04 08:27:58','0989496985',1),(18774,NULL,NULL,'vallet.olivie@noos.fr','vallet.olivie@noos.fr','Isaac','Bigot','1966-11-27 06:58:18','u','2019-12-02 12:55:56','2019-11-04 08:27:58','+33 8 97 27 02 24',1),(18775,NULL,NULL,'llefebvre@live.com','llefebvre@live.com','Louis','Guillet','1973-12-30 16:50:30','u','2019-10-14 19:13:24','2019-11-04 08:27:58','+33 9 80 47 00 95',0),(18776,NULL,NULL,'gilles88@hotmail.fr','gilles88@hotmail.fr','Éric','Pinto','1970-06-22 12:17:15','u','2019-11-23 03:52:40','2019-11-04 08:27:58','+33 (0)1 12 37 00 57',1),(18777,NULL,NULL,'caron.denis@wanadoo.fr','caron.denis@wanadoo.fr','Agnès','Chauvin','1977-06-10 16:50:34','u','2019-10-19 19:44:46','2019-11-04 08:27:58','0460766271',1),(18778,NULL,NULL,'agnes15@leblanc.com','agnes15@leblanc.com','Susanne','Garnier','1964-02-21 08:27:01','u','2019-11-28 03:07:39','2019-11-04 08:27:58','+33 (0)1 06 59 07 74',1),(18779,NULL,NULL,'etienne18@loiseau.fr','etienne18@loiseau.fr','Louis','Muller','1997-10-07 19:48:32','u','2019-11-10 21:10:29','2019-11-04 08:27:58','+33 4 84 84 97 80',1),(18780,NULL,NULL,'leger.thibaut@lecoq.fr','leger.thibaut@lecoq.fr','Stéphanie','Leclercq','1991-03-03 18:50:56','u','2019-10-16 21:07:23','2019-11-04 08:27:58','04 30 03 94 96',0),(18781,NULL,NULL,'gilles.lacroix@lebreton.fr','gilles.lacroix@lebreton.fr','Victor','Guerin','1960-05-16 12:50:09','u','2019-11-12 23:14:54','2019-11-04 08:27:58','+33 (0)3 48 62 91 91',1),(18782,NULL,NULL,'lucy.durand@live.com','lucy.durand@live.com','Victor','Alexandre','1969-01-22 16:38:35','u','2019-10-05 00:43:26','2019-11-04 08:27:58','+33 3 93 22 74 78',1),(18783,NULL,NULL,'berthelot.margaret@sfr.fr','berthelot.margaret@sfr.fr','Brigitte','Lopez','1973-05-15 13:03:55','u','2019-12-02 17:43:16','2019-11-04 08:27:58','0203414532',1),(18784,NULL,NULL,'weiss.brigitte@aubert.fr','weiss.brigitte@aubert.fr','Agnès','Fontaine','1969-11-01 23:13:37','u','2019-11-15 14:40:44','2019-11-04 08:27:58','+33 8 09 60 44 58',1),(18785,NULL,NULL,'labbe.aimee@raymond.fr','labbe.aimee@raymond.fr','Suzanne','Picard','1976-01-10 12:12:29','u','2019-11-19 08:11:58','2019-11-04 08:27:58','+33 1 50 83 18 52',1),(18786,NULL,NULL,'andree60@club-internet.fr','andree60@club-internet.fr','Antoine','Clement','1964-01-20 20:33:20','u','2019-10-06 21:41:13','2019-11-04 08:27:58','+33 8 10 64 27 04',0),(18787,NULL,NULL,'renee40@mathieu.net','renee40@mathieu.net','Henriette','Fernandes','1961-05-20 14:42:25','u','2019-10-31 07:53:49','2019-11-04 08:27:58','09 84 66 89 80',0),(18788,NULL,NULL,'dcouturier@club-internet.fr','dcouturier@club-internet.fr','Guillaume','Boutin','1977-01-21 19:38:53','u','2019-10-31 07:35:10','2019-11-04 08:27:58','07 62 35 74 64',1),(18789,NULL,NULL,'alphonse.pottier@laposte.net','alphonse.pottier@laposte.net','Denis','Riou','1979-11-15 00:32:14','u','2019-11-02 04:49:06','2019-11-04 08:27:58','0389555529',0),(18790,NULL,NULL,'william83@noos.fr','william83@noos.fr','Maurice','Grondin','1978-11-15 06:02:19','u','2019-11-29 15:42:50','2019-11-04 08:27:58','0102918489',0),(18791,NULL,NULL,'lecomte.charles@bouygtel.fr','lecomte.charles@bouygtel.fr','Célina','Lefevre','1984-08-15 14:11:57','u','2019-10-11 14:13:34','2019-11-04 08:27:58','0538042914',0),(18792,NULL,NULL,'aimee.ruiz@bertin.com','aimee.ruiz@bertin.com','Luc','Pascal','1998-10-13 13:24:46','u','2019-10-30 23:06:36','2019-11-04 08:27:58','04 12 48 84 62',0),(18793,NULL,NULL,'odette75@hotmail.fr','odette75@hotmail.fr','Édouard','Delahaye','1964-03-04 11:22:28','u','2019-10-23 01:25:16','2019-11-04 08:27:58','+33 (0)2 78 82 10 04',1),(18794,NULL,NULL,'dumas.christine@lemaitre.fr','dumas.christine@lemaitre.fr','Laure','Gonzalez','1974-08-08 01:56:54','u','2019-11-11 04:38:30','2019-11-04 08:27:58','+33 1 25 01 32 28',1),(18795,NULL,NULL,'duval.martin@dupuis.fr','duval.martin@dupuis.fr','Maurice','Marie','1965-02-25 01:09:02','u','2019-11-23 11:57:41','2019-11-04 08:27:58','+33 (0)9 69 84 39 43',0),(18796,NULL,NULL,'jmasson@sauvage.fr','jmasson@sauvage.fr','Bertrand','Pages','1987-04-07 11:18:26','u','2019-11-07 05:39:05','2019-11-04 08:27:58','+33 (0)5 31 75 08 47',0),(18797,NULL,NULL,'pasquier.virginie@ifrance.com','pasquier.virginie@ifrance.com','Suzanne','Lamy','1984-10-23 03:14:21','u','2019-10-14 20:53:58','2019-11-04 08:27:58','0587967037',1),(18798,NULL,NULL,'maryse.foucher@tele2.fr','maryse.foucher@tele2.fr','Édouard','Faure','1994-12-07 13:02:48','u','2019-11-08 20:58:48','2019-11-04 08:27:58','0898977513',0),(18799,NULL,NULL,'leconte.margaud@gmail.com','leconte.margaud@gmail.com','Jérôme','Peron','1990-12-06 06:38:08','u','2019-11-08 19:51:34','2019-11-04 08:27:58','0154962196',1),(18800,NULL,NULL,'tlecoq@laposte.net','tlecoq@laposte.net','Alexandria','Chauvet','1996-10-24 12:52:48','u','2019-11-25 17:23:42','2019-11-04 08:27:58','0104979585',0),(18801,NULL,NULL,'mathieu.michelle@boutin.net','mathieu.michelle@boutin.net','Claudine','Pelletier','1994-09-04 05:10:46','u','2019-10-24 09:45:53','2019-11-04 08:27:58','+33 8 22 12 31 21',1),(18802,NULL,NULL,'emmanuelle65@pascal.fr','emmanuelle65@pascal.fr','Geneviève','Mallet','1960-09-26 01:22:06','u','2019-11-07 19:01:53','2019-11-04 08:27:58','+33 (0)4 95 89 16 30',1),(18803,NULL,NULL,'jgregoire@camus.net','jgregoire@camus.net','Bernadette','Maillard','1975-11-06 01:07:05','u','2019-11-10 09:51:21','2019-11-04 08:27:58','+33 7 60 23 64 77',1),(18804,NULL,NULL,'eric22@gros.net','eric22@gros.net','Margaux','Bourdon','1994-01-04 17:36:01','u','2019-11-16 18:47:52','2019-11-04 08:27:58','+33 9 67 17 59 94',0),(18805,NULL,NULL,'wseguin@live.com','wseguin@live.com','Lucie','Lemaitre','1994-11-07 09:36:27','u','2019-10-06 22:13:26','2019-11-04 08:27:58','+33 (0)8 16 25 78 41',0),(18806,NULL,NULL,'manon82@guillet.com','manon82@guillet.com','Clémence','Hebert','1990-11-21 08:08:35','u','2019-11-24 06:52:06','2019-11-04 08:27:58','0126060084',0),(18807,NULL,NULL,'madeleine38@perrier.com','madeleine38@perrier.com','Nathalie','Lebrun','1985-08-17 15:31:23','u','2019-11-06 17:08:42','2019-11-04 08:27:58','0821971458',1),(18808,NULL,NULL,'leleu.thibaut@sfr.fr','leleu.thibaut@sfr.fr','Anouk','Berger','1977-10-25 23:06:47','u','2019-11-18 08:12:52','2019-11-04 08:27:58','05 57 07 37 31',1),(18809,NULL,NULL,'abousquet@yahoo.fr','abousquet@yahoo.fr','Julien','Marchand','1995-10-02 23:31:17','u','2019-11-13 04:05:47','2019-11-04 08:27:58','+33 7 42 85 42 53',1),(18810,NULL,NULL,'robert70@sfr.fr','robert70@sfr.fr','Alexandria','Levy','1961-02-17 01:48:56','u','2019-12-02 14:32:56','2019-11-04 08:27:58','+33 (0)1 66 77 11 03',1),(18811,NULL,NULL,'fpaul@muller.net','fpaul@muller.net','Raymond','Perret','1979-02-02 06:04:59','u','2019-10-05 11:45:54','2019-11-04 08:27:58','05 21 86 94 09',1),(18812,NULL,NULL,'ymaurice@deschamps.org','ymaurice@deschamps.org','Guillaume','Roussel','1970-10-04 07:10:44','u','2019-11-20 03:54:55','2019-11-04 08:27:58','+33 7 83 93 16 60',1),(18813,NULL,NULL,'dorothee61@yahoo.fr','dorothee61@yahoo.fr','Théodore','Lecoq','1965-12-11 00:26:02','u','2019-11-29 03:34:15','2019-11-04 08:27:58','0911955289',0),(18814,NULL,NULL,'esamson@club-internet.fr','esamson@club-internet.fr','Jules','Gautier','1992-01-14 14:03:47','u','2019-11-06 00:20:20','2019-11-04 08:27:58','05 12 13 11 87',0),(18815,NULL,NULL,'garnier.charlotte@ifrance.com','garnier.charlotte@ifrance.com','Édouard','Martinez','1960-10-17 09:00:45','u','2019-11-07 01:43:44','2019-11-04 08:27:58','05 72 75 05 75',0),(18816,NULL,NULL,'oceane27@voila.fr','oceane27@voila.fr','Julie','Faure','1986-10-27 06:45:27','u','2019-11-06 13:03:03','2019-11-04 08:27:58','+33 (0)9 55 37 16 10',1),(18817,NULL,NULL,'tbesson@germain.com','tbesson@germain.com','Robert','Renaud','1977-02-17 23:16:09','u','2019-10-17 06:55:14','2019-11-04 08:27:58','0295598931',0),(18818,NULL,NULL,'qcolin@tiscali.fr','qcolin@tiscali.fr','Bertrand','Fernandes','1980-08-31 14:43:37','u','2019-11-06 14:45:38','2019-11-04 08:27:58','+33 (0)1 31 08 24 63',0),(18819,NULL,NULL,'sanchez.william@mace.com','sanchez.william@mace.com','Marguerite','Pinto','1961-03-23 23:12:29','u','2019-10-27 19:24:44','2019-11-04 08:27:58','+33 1 28 53 89 32',1),(18820,NULL,NULL,'adrienne94@wanadoo.fr','adrienne94@wanadoo.fr','Frédéric','Dumont','1961-12-02 20:31:08','u','2019-11-04 13:18:32','2019-11-04 08:27:58','0577756739',0),(18821,NULL,NULL,'lucy54@free.fr','lucy54@free.fr','Joséphine','Noel','1966-08-04 06:12:45','u','2019-12-03 19:34:57','2019-11-04 08:27:58','+33 4 05 77 73 00',0),(18822,NULL,NULL,'ggomes@delaunay.fr','ggomes@delaunay.fr','Agnès','Clement','1962-05-02 09:04:57','u','2019-11-02 21:56:50','2019-11-04 08:27:58','01 48 13 15 32',0),(18823,NULL,NULL,'zdevaux@dbmail.com','zdevaux@dbmail.com','Théophile','Blin','1995-06-14 13:38:53','u','2019-12-01 04:58:37','2019-11-04 08:27:58','+33 5 82 18 72 94',0),(18824,NULL,NULL,'zrolland@voila.fr','zrolland@voila.fr','Anastasie','Germain','1966-12-17 11:47:41','u','2019-10-23 01:26:53','2019-11-04 08:27:58','0440416060',0),(18825,NULL,NULL,'noel97@yahoo.fr','noel97@yahoo.fr','Jacques','Andre','1996-12-13 21:50:37','u','2019-11-13 03:15:11','2019-11-04 08:27:58','0420526020',1),(18826,NULL,NULL,'alfred.launay@wanadoo.fr','alfred.launay@wanadoo.fr','Denis','Boulanger','1988-03-15 18:44:27','u','2019-10-24 22:08:52','2019-11-04 08:27:58','0826847562',0),(18827,NULL,NULL,'laurence31@wanadoo.fr','laurence31@wanadoo.fr','Joseph','Hubert','1974-03-03 08:00:21','u','2019-11-07 14:32:45','2019-11-04 08:27:58','02 58 34 04 94',0),(18828,NULL,NULL,'elise15@gmail.com','elise15@gmail.com','Agnès','Pruvost','1963-09-23 20:47:37','u','2019-10-26 01:29:41','2019-11-04 08:27:58','0358008420',0),(18829,NULL,NULL,'monique.leroux@delorme.net','monique.leroux@delorme.net','Roland','Henry','1996-09-16 02:33:44','u','2019-10-11 21:35:21','2019-11-04 08:27:58','08 17 37 63 06',1),(18830,NULL,NULL,'dias.jerome@club-internet.fr','dias.jerome@club-internet.fr','Nath','Fouquet','1987-11-08 21:05:29','u','2019-11-17 08:47:48','2019-11-04 08:27:58','0508196960',1),(18831,NULL,NULL,'francois82@leroy.com','francois82@leroy.com','Sylvie','Collin','1987-05-31 06:42:24','u','2019-10-14 02:52:10','2019-11-04 08:27:58','+33 (0)1 97 51 02 98',0),(18832,NULL,NULL,'stephane57@free.fr','stephane57@free.fr','Henriette','Vallee','1984-04-01 15:42:19','u','2019-11-02 19:27:42','2019-11-04 08:27:58','08 14 51 72 63',0),(18833,NULL,NULL,'victor.leclercq@blot.com','victor.leclercq@blot.com','Corinne','Chauveau','1978-11-08 05:05:22','u','2019-10-18 10:01:48','2019-11-04 08:27:58','+33 (0)7 42 51 57 31',1),(18834,NULL,NULL,'mercier.corinne@legendre.com','mercier.corinne@legendre.com','André','Thierry','1989-05-04 23:46:41','u','2019-10-08 13:36:19','2019-11-04 08:27:58','0477966112',1),(18835,NULL,NULL,'michel.salmon@lenoir.net','michel.salmon@lenoir.net','Constance','Meunier','1972-03-07 18:04:59','u','2019-11-16 09:46:27','2019-11-04 08:27:58','+33 (0)4 68 90 09 26',0),(18836,NULL,NULL,'auguste62@morvan.com','auguste62@morvan.com','Édith','Letellier','1993-03-14 16:45:37','u','2019-11-18 09:27:40','2019-11-04 08:27:58','01 63 71 43 66',1),(18837,NULL,NULL,'wagner.olivier@pottier.fr','wagner.olivier@pottier.fr','Julien','Courtois','1992-10-06 09:58:20','u','2019-10-14 15:14:51','2019-11-04 08:27:58','+33 (0)6 30 61 05 62',1),(18838,NULL,NULL,'emile.riviere@poirier.org','emile.riviere@poirier.org','Claude','Paris','1971-03-21 02:30:41','u','2019-10-24 16:19:35','2019-11-04 08:27:58','+33 (0)7 64 33 83 92',0),(18839,NULL,NULL,'fournier.michelle@yahoo.fr','fournier.michelle@yahoo.fr','Nathalie','Ribeiro','1986-12-03 20:51:09','u','2019-11-24 11:26:19','2019-11-04 08:27:58','0271759425',1),(18840,NULL,NULL,'penelope84@guibert.org','penelope84@guibert.org','Gabriel','Merle','1962-07-29 17:09:10','u','2019-11-09 06:57:58','2019-11-04 08:27:58','09 96 31 87 25',1),(18841,NULL,NULL,'qcousin@guillou.com','qcousin@guillou.com','Pauline','Joly','1976-04-04 00:08:07','u','2019-11-12 18:34:16','2019-11-04 08:27:58','07 41 95 23 86',0),(18842,NULL,NULL,'emmanuel.roussel@noos.fr','emmanuel.roussel@noos.fr','Gabrielle','Benard','1969-08-21 16:42:12','u','2019-11-30 14:27:32','2019-11-04 08:27:58','+33 (0)1 63 48 38 99',1),(18843,NULL,NULL,'leon.dumas@camus.com','leon.dumas@camus.com','Benoît','Allard','1970-04-06 08:54:38','u','2019-11-13 00:12:20','2019-11-04 08:27:58','02 43 43 86 54',1),(18844,NULL,NULL,'chevalier.jerome@toussaint.com','chevalier.jerome@toussaint.com','Joseph','Wagner','1968-01-08 00:56:39','u','2019-11-13 03:34:21','2019-11-04 08:27:58','08 03 31 66 92',1),(18845,NULL,NULL,'delattre.martine@philippe.org','delattre.martine@philippe.org','Nicole','Pinto','1962-11-23 14:47:52','u','2019-12-01 15:42:36','2019-11-04 08:27:58','0733753082',1),(18846,NULL,NULL,'yverdier@monnier.net','yverdier@monnier.net','Simone','Laporte','1997-05-18 04:32:22','u','2019-11-18 12:32:29','2019-11-04 08:27:58','+33 (0)3 09 48 82 84',1),(18847,NULL,NULL,'smarques@schneider.fr','smarques@schneider.fr','Marc','Raymond','1960-07-12 14:21:31','u','2019-11-26 01:41:30','2019-11-04 08:27:58','0124305029',1),(18848,NULL,NULL,'valerie.mendes@michel.fr','valerie.mendes@michel.fr','Arnaude','Gosselin','1995-01-06 11:18:05','u','2019-10-31 20:57:03','2019-11-04 08:27:58','+33 (0)8 18 04 40 41',1),(18849,NULL,NULL,'arthur02@maillard.net','arthur02@maillard.net','Richard','Meunier','1980-01-03 17:22:17','u','2019-10-08 18:57:11','2019-11-04 08:27:58','09 32 54 19 04',1),(18850,NULL,NULL,'stephane51@morvan.net','stephane51@morvan.net','Thérèse','Le Gall','1988-12-30 15:20:50','u','2019-11-20 12:03:00','2019-11-04 08:27:58','+33 (0)8 97 81 05 95',0),(18851,NULL,NULL,'qgillet@sfr.fr','qgillet@sfr.fr','Thibaut','Moreno','1980-01-25 04:44:09','u','2019-11-12 15:56:24','2019-11-04 08:27:58','0697240131',0),(18852,NULL,NULL,'cbruneau@morel.net','cbruneau@morel.net','Éléonore','Michaud','1987-01-14 03:27:20','u','2019-10-22 04:22:56','2019-11-04 08:27:58','01 57 16 23 77',1),(18853,NULL,NULL,'francoise.fernandes@bouchet.fr','francoise.fernandes@bouchet.fr','Susanne','Joseph','1991-11-03 19:50:42','u','2019-11-30 00:18:23','2019-11-04 08:27:58','04 14 73 09 95',0),(18854,NULL,NULL,'brigitte06@laposte.net','brigitte06@laposte.net','Paul','Colin','1995-07-20 14:52:52','u','2019-10-14 01:46:02','2019-11-04 08:27:58','+33 (0)4 26 46 96 49',1),(18855,NULL,NULL,'xavier.simon@simon.com','xavier.simon@simon.com','Sabine','Duhamel','1966-09-15 17:45:14','u','2019-11-27 17:07:22','2019-11-04 08:27:58','0661391769',1),(18856,NULL,NULL,'allain.sophie@fouquet.com','allain.sophie@fouquet.com','Émile','Cousin','1976-06-27 11:03:57','u','2019-11-09 00:49:11','2019-11-04 08:27:58','0162702691',1),(18857,NULL,NULL,'cleleu@valette.com','cleleu@valette.com','Guillaume','Petitjean','1996-08-30 16:19:10','u','2019-11-13 13:04:19','2019-11-04 08:27:58','03 14 26 71 12',1),(18858,NULL,NULL,'dvoisin@moulin.fr','dvoisin@moulin.fr','Vincent','Louis','1986-05-29 11:12:08','u','2019-10-10 17:28:14','2019-11-04 08:27:58','+33 (0)1 72 79 88 28',0),(18859,NULL,NULL,'riviere.olivier@gregoire.fr','riviere.olivier@gregoire.fr','Laurent','Hubert','1981-08-06 12:03:22','u','2019-11-20 10:16:24','2019-11-04 08:27:58','01 89 87 17 85',1),(18860,NULL,NULL,'masse.christelle@live.com','masse.christelle@live.com','Agathe','Ruiz','1998-12-11 22:50:15','u','2019-11-09 23:57:28','2019-11-04 08:27:58','0339853680',0),(18861,NULL,NULL,'franck.marty@pichon.com','franck.marty@pichon.com','Luce','Weber','1976-01-20 21:47:19','u','2019-10-23 05:20:03','2019-11-04 08:27:58','06 18 90 33 31',0),(18862,NULL,NULL,'martin.morel@live.com','martin.morel@live.com','Sabine','Valette','1983-09-06 22:36:41','u','2019-10-21 18:20:15','2019-11-04 08:27:58','0981872488',0),(18863,NULL,NULL,'nallain@lacombe.com','nallain@lacombe.com','Paul','Pelletier','1989-12-05 23:01:12','u','2019-10-20 16:45:44','2019-11-04 08:27:58','+33 (0)6 90 86 50 68',1),(18864,NULL,NULL,'emmanuelle.gaillard@live.com','emmanuelle.gaillard@live.com','Hugues','Hamon','1995-11-18 09:09:41','u','2019-10-10 15:35:01','2019-11-04 08:27:58','+33 (0)9 61 99 65 99',0),(18865,NULL,NULL,'christiane10@ruiz.com','christiane10@ruiz.com','Chantal','Gillet','1983-12-15 11:58:54','u','2019-11-13 11:26:13','2019-11-04 08:27:58','08 98 90 94 61',0),(18866,NULL,NULL,'zoe96@tele2.fr','zoe96@tele2.fr','Renée','Peltier','1973-03-23 17:10:17','u','2019-11-03 11:45:30','2019-11-04 08:27:58','+33 7 59 82 91 98',1),(18867,NULL,NULL,'adrien.pascal@sfr.fr','adrien.pascal@sfr.fr','Guy','Lelievre','1993-03-29 04:43:25','u','2019-11-23 15:34:40','2019-11-04 08:27:58','0382292742',0),(18868,NULL,NULL,'wwagner@mercier.fr','wwagner@mercier.fr','Susan','Aubry','1973-04-20 19:58:24','u','2019-12-01 12:34:14','2019-11-04 08:27:58','+33 4 17 69 81 62',1),(18869,NULL,NULL,'renee60@vidal.net','renee60@vidal.net','Jules','Martinez','1998-01-19 15:32:58','u','2019-11-02 07:41:21','2019-11-04 08:27:58','0468692123',0),(18870,NULL,NULL,'kleveque@club-internet.fr','kleveque@club-internet.fr','Adélaïde','Poirier','1981-12-15 13:30:58','u','2019-11-10 20:21:44','2019-11-04 08:27:58','+33 (0)7 89 24 01 55',0),(18871,NULL,NULL,'xvidal@sfr.fr','xvidal@sfr.fr','Capucine','Collin','1972-04-02 21:13:04','u','2019-10-06 10:30:21','2019-11-04 08:27:58','+33 (0)6 51 29 50 92',0),(18872,NULL,NULL,'placombe@gmail.com','placombe@gmail.com','Laurent','Denis','1969-08-15 00:58:45','u','2019-11-15 21:06:58','2019-11-04 08:27:58','05 54 67 32 89',1),(18873,NULL,NULL,'julie71@wanadoo.fr','julie71@wanadoo.fr','David','Payet','1999-08-18 21:09:30','u','2019-11-30 17:49:10','2019-11-04 08:27:58','+33 (0)2 78 89 06 85',0),(18874,NULL,NULL,'alfred67@tele2.fr','alfred67@tele2.fr','Tristan','Mendes','1962-04-06 05:22:02','u','2019-10-24 19:38:46','2019-11-04 08:27:58','+33 1 31 50 77 29',1),(18875,NULL,NULL,'patrick.boulay@picard.net','patrick.boulay@picard.net','Pauline','Gomez','1998-05-08 17:25:41','u','2019-10-18 00:38:39','2019-11-04 08:27:58','0788294971',0),(18876,NULL,NULL,'auguste54@rodriguez.fr','auguste54@rodriguez.fr','Marc','Mallet','1993-03-20 21:38:46','u','2019-10-23 10:53:39','2019-11-04 08:27:58','0892796758',0),(18877,NULL,NULL,'maurice.laporte@orange.fr','maurice.laporte@orange.fr','Robert','Martinez','1980-09-25 14:31:31','u','2019-11-29 14:41:06','2019-11-04 08:27:58','+33 (0)1 67 73 69 31',1),(18878,NULL,NULL,'philippe46@pineau.net','philippe46@pineau.net','Thomas','Grondin','1985-12-01 20:12:33','u','2019-11-17 02:53:00','2019-11-04 08:27:58','+33 1 33 09 73 69',0),(18879,NULL,NULL,'dupre.alain@rocher.fr','dupre.alain@rocher.fr','Juliette','Caron','1988-07-26 07:44:06','u','2019-11-30 18:15:21','2019-11-04 08:27:58','+33 2 85 78 51 35',0),(18880,NULL,NULL,'anne.roche@orange.fr','anne.roche@orange.fr','Benoît','Riviere','1986-04-04 11:01:21','u','2019-10-14 11:52:51','2019-11-04 08:27:58','03 65 29 59 18',0),(18881,NULL,NULL,'mgrenier@sfr.fr','mgrenier@sfr.fr','Arthur','Moulin','1981-03-07 16:40:43','u','2019-10-25 09:55:13','2019-11-04 08:27:58','+33 8 92 99 49 47',0),(18882,NULL,NULL,'nantoine@leger.fr','nantoine@leger.fr','René','Charrier','1999-07-31 15:50:38','u','2019-11-07 12:22:03','2019-11-04 08:27:58','06 98 91 70 72',0),(18883,NULL,NULL,'julie49@laposte.net','julie49@laposte.net','Paul','Dupuy','1999-09-23 08:38:08','u','2019-11-07 03:03:25','2019-11-04 08:27:58','0697692732',0),(18884,NULL,NULL,'michel81@etienne.com','michel81@etienne.com','Lucas','Navarro','1961-10-18 18:48:03','u','2019-11-27 20:50:37','2019-11-04 08:27:58','+33 (0)4 15 37 45 11',0),(18885,NULL,NULL,'philippe.gerard@tele2.fr','philippe.gerard@tele2.fr','Alexandrie','Nicolas','1978-05-25 13:07:59','u','2019-11-09 19:22:17','2019-11-04 08:27:58','07 51 27 45 30',0),(18886,NULL,NULL,'peltier.gilles@legall.com','peltier.gilles@legall.com','Camille','Pinto','1967-01-31 22:40:03','u','2019-11-13 13:03:24','2019-11-04 08:27:58','+33 (0)9 99 80 96 46',0),(18887,NULL,NULL,'perret.penelope@sfr.fr','perret.penelope@sfr.fr','Céline','Maillard','1977-08-24 01:34:01','u','2019-10-06 09:12:20','2019-11-04 08:27:58','+33 (0)2 91 64 75 88',1),(18888,NULL,NULL,'faivre.gabriel@ifrance.com','faivre.gabriel@ifrance.com','Andrée','Mallet','1964-10-01 21:11:29','u','2019-10-13 02:50:51','2019-11-04 08:27:58','+33 (0)1 94 43 84 08',1),(18889,NULL,NULL,'eugene49@bouygtel.fr','eugene49@bouygtel.fr','Philippe','Tanguy','1995-08-26 07:02:21','u','2019-10-23 18:41:59','2019-11-04 08:27:58','07 36 23 02 26',1),(18890,NULL,NULL,'zboucher@legros.net','zboucher@legros.net','Hugues','Durand','1977-08-17 16:45:28','u','2019-10-26 01:13:37','2019-11-04 08:27:58','+33 (0)2 60 96 38 13',0),(18891,NULL,NULL,'mlouis@gmail.com','mlouis@gmail.com','Renée','Teixeira','1972-04-25 12:06:57','u','2019-10-08 04:59:10','2019-11-04 08:27:58','01 33 55 09 02',1),(18892,NULL,NULL,'peron.georges@chauvin.com','peron.georges@chauvin.com','Sébastien','Parent','1994-11-27 21:37:15','u','2019-11-28 10:39:26','2019-11-04 08:27:58','04 33 77 41 71',0),(18893,NULL,NULL,'vfouquet@dbmail.com','vfouquet@dbmail.com','Monique','Regnier','1996-06-26 02:15:54','u','2019-11-26 02:18:15','2019-11-04 08:27:58','0614749780',0),(18894,NULL,NULL,'gilles.fischer@ifrance.com','gilles.fischer@ifrance.com','Nicolas','Diaz','1977-11-27 13:47:35','u','2019-11-28 14:46:37','2019-11-04 08:27:58','0776333858',1),(18895,NULL,NULL,'yves.morvan@tele2.fr','yves.morvan@tele2.fr','Gabrielle','Faivre','1998-05-31 17:42:16','u','2019-10-18 23:43:02','2019-11-04 08:27:58','0897811163',1),(18896,NULL,NULL,'tristan94@peron.com','tristan94@peron.com','Frédérique','Carpentier','1990-06-10 11:14:21','u','2019-10-28 19:47:09','2019-11-04 08:27:58','02 62 28 58 40',1),(18897,NULL,NULL,'valerie.daniel@noos.fr','valerie.daniel@noos.fr','Marine','Gros','1985-10-22 08:28:08','u','2019-11-11 09:39:38','2019-11-04 08:27:58','01 46 58 09 06',0),(18898,NULL,NULL,'ddelorme@gmail.com','ddelorme@gmail.com','Eugène','Denis','1974-01-10 01:59:25','u','2019-11-25 05:13:50','2019-11-04 08:27:58','08 93 74 85 14',0),(18899,NULL,NULL,'lagarde.marguerite@daniel.com','lagarde.marguerite@daniel.com','Timothée','Carlier','1998-08-08 20:03:06','u','2019-10-22 08:19:26','2019-11-04 08:27:58','0564070809',0),(18900,NULL,NULL,'maggie.pineau@wanadoo.fr','maggie.pineau@wanadoo.fr','Daniel','Bertrand','1962-09-22 14:00:07','u','2019-11-18 23:50:48','2019-11-04 08:27:58','+33 4 76 55 12 64',0),(18901,NULL,NULL,'nathalie03@blin.com','nathalie03@blin.com','Olivier','Dumas','1963-03-27 18:07:26','u','2019-11-10 20:04:51','2019-11-04 08:27:58','0683603097',1),(18902,NULL,NULL,'yhumbert@free.fr','yhumbert@free.fr','Alain','Pereira','1980-09-09 16:19:08','u','2019-10-10 18:55:17','2019-11-04 08:27:58','+33 1 15 28 26 27',0),(18903,NULL,NULL,'wparis@hotmail.fr','wparis@hotmail.fr','Claude','Pascal','1975-08-06 02:03:23','u','2019-12-02 01:13:53','2019-11-04 08:27:58','05 53 36 41 89',1),(18904,NULL,NULL,'nicolas.caron@laposte.net','nicolas.caron@laposte.net','Pierre','Boutin','1962-06-23 19:56:58','u','2019-10-20 15:49:38','2019-11-04 08:27:58','+33 1 63 22 92 58',0),(18905,NULL,NULL,'josette62@gaudin.fr','josette62@gaudin.fr','Renée','Garcia','1984-03-04 19:55:57','u','2019-10-16 12:17:35','2019-11-04 08:27:58','+33 3 76 76 08 93',1),(18906,NULL,NULL,'roland88@maurice.com','roland88@maurice.com','Mathilde','Pierre','1962-05-31 03:16:58','u','2019-10-26 08:00:56','2019-11-04 08:27:58','+33 1 89 44 01 85',0),(18907,NULL,NULL,'corinne50@bourdon.fr','corinne50@bourdon.fr','Lorraine','Raymond','1989-05-09 03:30:23','u','2019-10-16 05:47:33','2019-11-04 08:27:58','+33 2 59 56 60 09',1),(18908,NULL,NULL,'honore08@brun.com','honore08@brun.com','Marguerite','Boutin','1967-08-03 16:17:43','u','2019-11-17 05:40:38','2019-11-04 08:27:58','0482994730',0),(18909,NULL,NULL,'gabriel.lesage@lacroix.org','gabriel.lesage@lacroix.org','Rémy','Gaudin','1977-09-22 16:23:20','u','2019-10-22 09:51:09','2019-11-04 08:27:58','+33 (0)4 97 84 57 47',0),(18910,NULL,NULL,'guillaume24@gmail.com','guillaume24@gmail.com','Brigitte','Morel','1998-04-09 13:24:00','u','2019-11-24 23:07:11','2019-11-04 08:27:58','08 16 21 71 18',1),(18911,NULL,NULL,'daniel.corinne@devaux.org','daniel.corinne@devaux.org','Julien','Fleury','1994-03-17 23:01:00','u','2019-10-05 19:27:49','2019-11-04 08:27:58','+33 (0)6 41 47 83 85',1),(18912,NULL,NULL,'joubert.robert@noos.fr','joubert.robert@noos.fr','William','Mace','1975-03-29 04:25:43','u','2019-11-30 20:43:22','2019-11-04 08:27:58','0425358768',1),(18913,NULL,NULL,'michel.costa@dbmail.com','michel.costa@dbmail.com','Brigitte','Pottier','1964-12-08 17:59:43','u','2019-10-31 13:08:36','2019-11-04 08:27:58','+33 (0)8 92 32 65 27',0),(18914,NULL,NULL,'olivier.perrier@payet.org','olivier.perrier@payet.org','Tristan','Rolland','1977-03-16 08:07:38','u','2019-10-24 06:13:43','2019-11-04 08:27:58','+33 1 20 35 61 06',1),(18915,NULL,NULL,'lucas48@club-internet.fr','lucas48@club-internet.fr','Gérard','Launay','1980-01-01 05:50:12','u','2019-11-11 16:46:09','2019-11-04 08:27:58','+33 4 96 73 07 18',1),(18916,NULL,NULL,'carpentier.josephine@yahoo.fr','carpentier.josephine@yahoo.fr','Odette','Payet','1986-10-27 03:43:29','u','2019-10-06 11:58:41','2019-11-04 08:27:58','08 93 16 86 61',0),(18917,NULL,NULL,'clemence61@leroy.org','clemence61@leroy.org','Agathe','Le Gall','1983-12-30 13:29:56','u','2019-11-13 03:43:01','2019-11-04 08:27:58','0986581369',1),(18918,NULL,NULL,'ilemaire@allard.fr','ilemaire@allard.fr','Philippine','Andre','1970-03-09 05:19:15','u','2019-10-26 17:44:30','2019-11-04 08:27:58','+33 (0)1 35 27 08 81',1),(18919,NULL,NULL,'teixeira.suzanne@bernard.com','teixeira.suzanne@bernard.com','Marianne','Devaux','1981-04-19 17:53:34','u','2019-10-28 23:14:37','2019-11-04 08:27:58','+33 (0)3 48 38 61 50',1),(18920,NULL,NULL,'gregoire33@sfr.fr','gregoire33@sfr.fr','Étienne','David','1988-07-11 12:04:41','u','2019-11-13 04:44:01','2019-11-04 08:27:58','+33 (0)3 36 54 76 90',1),(18921,NULL,NULL,'ines.dumont@marion.com','ines.dumont@marion.com','Chantal','Chauveau','1960-01-07 22:09:49','u','2019-11-02 16:14:33','2019-11-04 08:27:58','+33 1 45 26 08 99',1),(18922,NULL,NULL,'antoine81@yahoo.fr','antoine81@yahoo.fr','Michelle','Blanchet','1967-09-21 20:34:24','u','2019-11-16 02:37:40','2019-11-04 08:27:58','+33 (0)6 94 93 75 30',0),(18923,NULL,NULL,'blot.michelle@boucher.fr','blot.michelle@boucher.fr','Juliette','Techer','1986-07-04 05:04:38','u','2019-10-26 19:18:09','2019-11-04 08:27:58','06 08 61 46 62',1),(18924,NULL,NULL,'hdenis@maillard.org','hdenis@maillard.org','Stéphanie','Martel','1979-09-14 13:18:13','u','2019-10-17 01:38:13','2019-11-04 08:27:58','01 41 21 02 34',1),(18925,NULL,NULL,'margot91@dbmail.com','margot91@dbmail.com','Thierry','Brunel','1982-01-21 20:34:41','u','2019-11-09 07:00:50','2019-11-04 08:27:58','+33 8 97 29 30 87',0),(18926,NULL,NULL,'goncalves.gilles@courtois.com','goncalves.gilles@courtois.com','Christophe','Delorme','1975-12-22 12:50:35','u','2019-11-15 05:03:56','2019-11-04 08:27:58','+33 (0)1 75 13 88 15',1),(18927,NULL,NULL,'bgodard@noos.fr','bgodard@noos.fr','Valérie','Boucher','1968-04-10 11:27:32','u','2019-10-10 04:57:38','2019-11-04 08:27:58','0109140489',0),(18928,NULL,NULL,'pdumont@tiscali.fr','pdumont@tiscali.fr','Frédérique','Poulain','1973-04-02 22:04:27','u','2019-10-17 16:33:23','2019-11-04 08:27:58','+33 (0)5 55 09 11 21',0),(18929,NULL,NULL,'marty.guy@levy.org','marty.guy@levy.org','Alix','Rossi','1964-08-31 11:43:03','u','2019-12-01 23:46:29','2019-11-04 08:27:58','0176980299',0),(18930,NULL,NULL,'elise.giraud@laposte.net','elise.giraud@laposte.net','Guillaume','Nicolas','1975-12-23 06:27:12','u','2019-11-17 18:44:28','2019-11-04 08:27:58','+33 7 35 91 91 34',1),(18931,NULL,NULL,'elodie76@blanchet.com','elodie76@blanchet.com','Clémence','Ferreira','1960-05-30 18:00:37','u','2019-10-12 14:49:53','2019-11-04 08:27:58','+33 (0)6 45 48 16 76',1),(18932,NULL,NULL,'susanne.weber@lejeune.com','susanne.weber@lejeune.com','Louise','Delattre','1984-08-31 17:29:21','u','2019-10-09 17:44:20','2019-11-04 08:27:58','02 67 76 88 53',0),(18933,NULL,NULL,'bguyot@brunel.com','bguyot@brunel.com','Jérôme','Bourgeois','1978-07-31 07:11:10','u','2019-11-09 21:23:25','2019-11-04 08:27:58','06 41 04 79 53',1),(18934,NULL,NULL,'alphonse49@fabre.com','alphonse49@fabre.com','Richard','Delattre','1977-09-23 05:27:03','u','2019-11-23 05:49:15','2019-11-04 08:27:58','+33 (0)9 64 59 89 21',0),(18935,NULL,NULL,'maillet.augustin@live.com','maillet.augustin@live.com','Benoît','Gaillard','1965-04-30 00:55:35','u','2019-10-18 04:12:32','2019-11-04 08:27:58','+33 6 65 00 57 58',1),(18936,NULL,NULL,'rey.simone@breton.fr','rey.simone@breton.fr','Nath','Besnard','1996-07-29 09:09:55','u','2019-10-22 00:24:21','2019-11-04 08:27:58','+33 (0)1 33 89 42 06',0),(18937,NULL,NULL,'charles.yves@pelletier.fr','charles.yves@pelletier.fr','Célina','Torres','1961-07-16 14:56:45','u','2019-11-14 13:29:19','2019-11-04 08:27:58','08 00 63 76 68',0),(18938,NULL,NULL,'plegros@wanadoo.fr','plegros@wanadoo.fr','Madeleine','Peltier','1962-06-29 10:58:23','u','2019-10-10 05:03:19','2019-11-04 08:27:58','+33 (0)1 04 98 36 65',1),(18939,NULL,NULL,'renaud.michelle@club-internet.fr','renaud.michelle@club-internet.fr','Suzanne','Wagner','1971-02-01 04:30:37','u','2019-10-16 19:30:08','2019-11-04 08:27:58','+33 (0)4 38 17 04 83',0),(18940,NULL,NULL,'maurice.daniel@bouygtel.fr','maurice.daniel@bouygtel.fr','Georges','Fournier','1980-12-26 22:56:59','u','2019-10-12 00:42:12','2019-11-04 08:27:58','04 85 75 75 80',0),(18941,NULL,NULL,'maggie.renard@fernandez.net','maggie.renard@fernandez.net','Simone','Jacquet','1961-01-28 15:31:26','u','2019-11-28 23:10:44','2019-11-04 08:27:58','+33 8 95 47 76 18',1),(18942,NULL,NULL,'wnavarro@joubert.fr','wnavarro@joubert.fr','Pauline','Hoareau','1964-04-29 15:33:12','u','2019-10-24 10:14:24','2019-11-04 08:27:58','0112313756',1),(18943,NULL,NULL,'thibault.bouvet@valette.net','thibault.bouvet@valette.net','Édith','Bazin','1997-07-12 23:26:55','u','2019-10-04 19:46:29','2019-11-04 08:27:58','+33 9 94 90 32 15',1),(18944,NULL,NULL,'camille.ribeiro@nguyen.net','camille.ribeiro@nguyen.net','Louis','Marin','1996-07-26 23:28:27','u','2019-11-22 01:20:45','2019-11-04 08:27:58','+33 (0)4 57 85 16 10',1),(18945,NULL,NULL,'alfred.dupont@pichon.fr','alfred.dupont@pichon.fr','Isaac','Allard','1974-09-29 09:33:54','u','2019-10-15 00:54:01','2019-11-04 08:27:58','+33 (0)1 02 83 02 74',0),(18946,NULL,NULL,'uparent@roux.fr','uparent@roux.fr','Aurore','Blot','1972-03-19 18:57:09','u','2019-10-11 17:43:15','2019-11-04 08:27:58','09 16 83 78 86',1),(18947,NULL,NULL,'mcoste@coulon.fr','mcoste@coulon.fr','Isaac','Mathieu','1996-12-29 17:22:38','u','2019-11-04 13:39:11','2019-11-04 08:27:58','+33 2 08 05 05 41',0),(18948,NULL,NULL,'denis.grenier@dbmail.com','denis.grenier@dbmail.com','Brigitte','Durand','1984-05-01 09:12:19','u','2019-11-26 00:30:41','2019-11-04 08:27:58','04 85 12 91 89',0),(18949,NULL,NULL,'ojacob@sfr.fr','ojacob@sfr.fr','Manon','Maury','1980-03-06 04:28:34','u','2019-10-06 14:57:08','2019-11-04 08:27:58','07 74 71 69 19',0),(18950,NULL,NULL,'gchauvin@ifrance.com','gchauvin@ifrance.com','Victor','Garcia','1992-08-24 06:29:53','u','2019-11-23 12:01:57','2019-11-04 08:27:58','07 30 64 71 80',1),(18951,NULL,NULL,'whamon@gmail.com','whamon@gmail.com','Michel','Courtois','1976-10-20 06:57:08','u','2019-10-31 09:51:02','2019-11-04 08:27:58','0669199825',1),(18952,NULL,NULL,'qrenard@turpin.com','qrenard@turpin.com','Anouk','Hardy','1983-12-18 15:06:08','u','2019-10-12 02:42:34','2019-11-04 08:27:58','03 08 40 90 83',1),(18953,NULL,NULL,'lhebert@sfr.fr','lhebert@sfr.fr','Jeannine','Lambert','1968-08-23 03:46:52','u','2019-10-30 07:01:48','2019-11-04 08:27:58','0161014068',0),(18954,NULL,NULL,'genevieve.peltier@hotmail.fr','genevieve.peltier@hotmail.fr','Élodie','Laine','1979-07-16 07:56:46','u','2019-10-05 05:59:08','2019-11-04 08:27:58','01 32 65 07 18',0),(18955,NULL,NULL,'charles.bertin@gallet.fr','charles.bertin@gallet.fr','Roland','Renaud','1990-12-20 10:47:10','u','2019-10-26 13:20:03','2019-11-04 08:27:58','08 14 18 42 53',0),(18956,NULL,NULL,'martine.leroux@voila.fr','martine.leroux@voila.fr','Pauline','Antoine','1992-02-20 14:35:52','u','2019-11-30 11:29:47','2019-11-04 08:27:58','+33 9 84 52 29 52',0),(18957,NULL,NULL,'laurence64@evrard.org','laurence64@evrard.org','Monique','Seguin','1960-06-16 13:24:57','u','2019-10-24 20:00:21','2019-11-04 08:27:58','09 17 05 86 09',1),(18958,NULL,NULL,'rene.lacombe@tele2.fr','rene.lacombe@tele2.fr','Renée','Jacquot','1991-07-22 00:41:30','u','2019-11-03 05:12:02','2019-11-04 08:27:58','0940825218',1),(18959,NULL,NULL,'courtois.louise@sfr.fr','courtois.louise@sfr.fr','Noël','Besson','1968-04-03 17:10:43','u','2019-11-20 04:08:32','2019-11-04 08:27:58','+33 4 30 75 60 94',0),(18960,NULL,NULL,'ncharrier@didier.com','ncharrier@didier.com','Margaret','Lucas','1986-12-03 22:43:30','u','2019-11-26 16:39:13','2019-11-04 08:27:58','+33 1 45 04 17 57',0),(18961,NULL,NULL,'olefebvre@club-internet.fr','olefebvre@club-internet.fr','Patrick','Mahe','1961-11-16 16:46:32','u','2019-10-08 13:03:36','2019-11-04 08:27:58','0931701742',1),(18962,NULL,NULL,'charles15@chevalier.fr','charles15@chevalier.fr','Robert','Riviere','1978-09-14 05:02:49','u','2019-10-13 13:01:44','2019-11-04 08:27:58','+33 (0)3 67 18 08 64',1),(18963,NULL,NULL,'elodie.chauvet@noos.fr','elodie.chauvet@noos.fr','Marie','Lebon','1983-10-04 08:03:18','u','2019-10-23 09:38:16','2019-11-04 08:27:58','+33 (0)1 72 39 52 78',1),(18964,NULL,NULL,'uarnaud@roger.fr','uarnaud@roger.fr','Michelle','Vincent','1973-10-03 13:08:13','u','2019-11-12 17:42:35','2019-11-04 08:27:58','0121806315',0),(18965,NULL,NULL,'samson.alex@live.com','samson.alex@live.com','Henri','Grenier','1971-01-29 17:45:47','u','2019-11-16 03:33:25','2019-11-04 08:27:58','0175606275',0),(18966,NULL,NULL,'berger.monique@richard.net','berger.monique@richard.net','Roland','Colin','1966-05-24 20:33:11','u','2019-10-30 22:54:10','2019-11-04 08:27:58','+33 6 99 34 27 13',0),(18967,NULL,NULL,'paulette.boutin@voila.fr','paulette.boutin@voila.fr','Augustin','Pierre','1990-08-05 04:26:16','u','2019-11-28 22:51:29','2019-11-04 08:27:58','04 17 29 50 01',0),(18968,NULL,NULL,'eleonore90@gaudin.fr','eleonore90@gaudin.fr','Martin','Brunel','1994-02-02 09:23:13','u','2019-11-15 19:17:09','2019-11-04 08:27:58','+33 (0)1 15 10 15 61',1),(18969,NULL,NULL,'letellier.franck@tele2.fr','letellier.franck@tele2.fr','Monique','Perret','1965-01-19 16:36:59','u','2019-10-10 05:09:18','2019-11-04 08:27:58','0655079592',0),(18970,NULL,NULL,'michele.grenier@guyot.com','michele.grenier@guyot.com','Suzanne','Schmitt','1966-12-24 11:36:17','u','2019-11-26 01:32:18','2019-11-04 08:27:58','+33 (0)1 55 89 96 62',0),(18971,NULL,NULL,'blanchet.stephanie@godard.com','blanchet.stephanie@godard.com','Élodie','Lucas','1973-10-31 07:20:17','u','2019-10-22 23:27:30','2019-11-04 08:27:58','+33 6 36 49 79 82',1),(18972,NULL,NULL,'margot.techer@joly.com','margot.techer@joly.com','Susan','Garcia','1992-07-01 12:17:45','u','2019-11-27 15:12:52','2019-11-04 08:27:58','04 17 83 59 36',0),(18973,NULL,NULL,'oleger@laposte.net','oleger@laposte.net','Marc','Levy','1985-10-01 12:56:33','u','2019-10-11 01:23:03','2019-11-04 08:27:58','0187846121',1),(18974,NULL,NULL,'texier.elisabeth@hernandez.net','texier.elisabeth@hernandez.net','Daniel','Teixeira','1991-10-21 20:45:36','u','2019-11-10 08:28:58','2019-11-04 08:27:58','0891331273',1),(18975,NULL,NULL,'remy09@couturier.com','remy09@couturier.com','Bernadette','Blanchet','1979-01-17 12:49:02','u','2019-11-25 00:21:10','2019-11-04 08:27:58','08 01 38 80 75',1),(18976,NULL,NULL,'thierry80@blot.net','thierry80@blot.net','Sophie','Bonnin','1963-09-26 05:47:22','u','2019-11-13 08:23:01','2019-11-04 08:27:58','+33 (0)3 59 43 88 13',0),(18977,NULL,NULL,'perrin.emmanuel@gmail.com','perrin.emmanuel@gmail.com','Margaud','Michaud','1974-10-27 07:08:20','u','2019-11-15 18:06:48','2019-11-04 08:27:58','06 25 98 00 29',1),(18978,NULL,NULL,'jacqueline.lefevre@bonneau.fr','jacqueline.lefevre@bonneau.fr','Marcelle','Denis','1967-03-04 06:35:19','u','2019-10-05 06:11:57','2019-11-04 08:27:58','+33 (0)2 92 64 58 56',0),(18979,NULL,NULL,'jean42@hotmail.fr','jean42@hotmail.fr','Michel','Poirier','1976-12-18 02:40:24','u','2019-10-17 19:45:58','2019-11-04 08:27:58','01 52 93 30 13',1),(18980,NULL,NULL,'paul.duhamel@wanadoo.fr','paul.duhamel@wanadoo.fr','Clémence','Baron','1966-05-16 05:31:33','u','2019-11-03 22:21:39','2019-11-04 08:27:58','+33 5 53 22 55 36',1),(18981,NULL,NULL,'fleury.edith@gros.com','fleury.edith@gros.com','Anne','Meyer','1975-11-20 20:13:22','u','2019-10-22 22:25:12','2019-11-04 08:27:58','0963418326',0),(18982,NULL,NULL,'llebreton@leduc.fr','llebreton@leduc.fr','Nicole','Fernandes','1992-07-29 08:59:00','u','2019-12-01 04:01:37','2019-11-04 08:27:58','+33 2 23 22 41 11',0),(18983,NULL,NULL,'alexandria74@roche.com','alexandria74@roche.com','Eugène','Labbe','1995-12-25 08:13:10','u','2019-10-22 09:35:26','2019-11-04 08:27:58','0652344928',0),(18984,NULL,NULL,'uandre@voila.fr','uandre@voila.fr','Capucine','Schmitt','1983-11-04 16:12:48','u','2019-11-20 07:59:06','2019-11-04 08:27:58','+33 (0)7 83 60 32 33',0),(18985,NULL,NULL,'gerard.alexandre@raynaud.fr','gerard.alexandre@raynaud.fr','Michelle','Martel','1984-05-13 02:44:28','u','2019-11-16 20:04:21','2019-11-04 08:27:58','0788666910',1),(18986,NULL,NULL,'francoise41@moreno.com','francoise41@moreno.com','Alex','Bonneau','1976-05-17 01:35:20','u','2019-11-30 07:41:00','2019-11-04 08:27:58','+33 (0)2 23 77 95 95',1),(18987,NULL,NULL,'bernadette38@noel.fr','bernadette38@noel.fr','Stéphanie','Valentin','1999-10-03 21:57:46','u','2019-11-04 12:36:38','2019-11-04 08:27:58','01 93 07 69 03',1),(18988,NULL,NULL,'eleclerc@tiscali.fr','eleclerc@tiscali.fr','Laurent','Gimenez','1983-03-18 16:15:47','u','2019-10-04 10:57:44','2019-11-04 08:27:58','09 97 15 23 03',1),(18989,NULL,NULL,'alejeune@guilbert.org','alejeune@guilbert.org','Charlotte','Potier','1994-05-21 05:12:47','u','2019-11-10 19:37:53','2019-11-04 08:27:58','09 70 56 86 74',1),(18990,NULL,NULL,'alves.gregoire@olivier.fr','alves.gregoire@olivier.fr','Rémy','Masson','1984-08-01 10:22:09','u','2019-11-08 08:14:46','2019-11-04 08:27:58','+33 (0)4 75 94 08 72',0),(18991,NULL,NULL,'remy.elisabeth@dbmail.com','remy.elisabeth@dbmail.com','Véronique','Fernandez','1987-11-30 01:35:13','u','2019-11-09 18:29:51','2019-11-04 08:27:58','+33 (0)5 31 97 36 51',1),(18992,NULL,NULL,'veronique07@remy.fr','veronique07@remy.fr','Lucy','Durand','1974-04-23 23:00:14','u','2019-11-12 16:02:05','2019-11-04 08:27:58','+33 1 20 37 99 78',1),(18993,NULL,NULL,'jlabbe@club-internet.fr','jlabbe@club-internet.fr','Aimé','Hamel','1987-04-15 09:14:46','u','2019-11-14 14:08:52','2019-11-04 08:27:58','+33 4 27 91 93 49',1),(18994,NULL,NULL,'dclerc@tele2.fr','dclerc@tele2.fr','Lucy','Herve','1967-03-03 23:08:22','u','2019-10-08 08:09:25','2019-11-04 08:27:58','01 02 55 13 05',0),(18995,NULL,NULL,'emillet@masse.net','emillet@masse.net','Benoît','Vallee','1986-09-20 19:44:19','u','2019-10-06 07:59:31','2019-11-04 08:27:58','07 99 78 72 33',1),(18996,NULL,NULL,'lemonnier.sophie@noos.fr','lemonnier.sophie@noos.fr','Constance','Vallet','1987-07-05 00:40:38','u','2019-10-06 03:18:15','2019-11-04 08:27:58','+33 4 11 06 48 02',1),(18997,NULL,NULL,'delaunay.catherine@ferrand.com','delaunay.catherine@ferrand.com','Margaud','Teixeira','1985-06-21 08:03:37','u','2019-11-06 13:06:50','2019-11-04 08:27:58','0654992055',0),(18998,NULL,NULL,'robin.robert@bouygtel.fr','robin.robert@bouygtel.fr','Xavier','Bouvet','1980-10-27 17:41:03','u','2019-10-07 10:08:17','2019-11-04 08:27:58','+33 9 77 15 48 53',0),(18999,NULL,NULL,'andre38@dbmail.com','andre38@dbmail.com','Rémy','Couturier','1960-03-07 19:47:32','u','2019-11-20 20:42:00','2019-11-04 08:27:58','01 89 56 08 28',1),(19000,NULL,NULL,'laure.delmas@bouygtel.fr','laure.delmas@bouygtel.fr','Laurent','Menard','1987-07-31 03:48:03','u','2019-11-21 04:46:25','2019-11-04 08:27:58','0493196758',0),(19001,NULL,NULL,'adrien.guillet@ifrance.com','adrien.guillet@ifrance.com','Diane','Pelletier','1995-12-11 23:53:42','u','2019-11-17 22:17:27','2019-11-04 08:27:58','02 43 83 07 50',0),(19002,NULL,NULL,'ocarlier@foucher.com','ocarlier@foucher.com','Zoé','Mendes','1995-07-02 10:34:45','u','2019-10-21 21:50:50','2019-11-04 08:27:58','+33 2 84 57 58 66',0),(19003,NULL,NULL,'vmasson@tele2.fr','vmasson@tele2.fr','Isabelle','Delahaye','1977-06-16 08:13:59','u','2019-10-31 22:04:49','2019-11-04 08:27:58','01 05 17 08 13',1),(19004,NULL,NULL,'helene57@mallet.org','helene57@mallet.org','Nicolas','Fernandez','1968-01-03 20:30:08','u','2019-12-03 18:27:27','2019-11-04 08:27:58','05 89 89 49 20',0),(19005,NULL,NULL,'rlaroche@henry.com','rlaroche@henry.com','Jeannine','Lamy','1983-12-12 06:49:34','u','2019-10-28 05:30:51','2019-11-04 08:27:58','+33 (0)7 85 82 71 10',1),(19006,NULL,NULL,'blot.yves@ifrance.com','blot.yves@ifrance.com','Antoine','Antoine','1998-11-08 12:53:36','u','2019-10-12 07:45:57','2019-11-04 08:27:58','+33 (0)2 05 38 58 29',0),(19007,NULL,NULL,'sbarre@humbert.fr','sbarre@humbert.fr','Agathe','Becker','1989-10-08 10:27:10','u','2019-10-25 08:52:21','2019-11-04 08:27:58','+33 2 09 06 11 50',1),(19008,NULL,NULL,'royer.constance@perrin.fr','royer.constance@perrin.fr','Michelle','Berthelot','1999-10-20 21:58:39','u','2019-11-12 13:38:49','2019-11-04 08:27:58','+33 7 92 68 37 07',0),(19009,NULL,NULL,'blin.arnaude@bouygtel.fr','blin.arnaude@bouygtel.fr','Alfred','Jacob','1968-09-13 19:38:44','u','2019-11-23 18:18:31','2019-11-04 08:27:58','+33 (0)5 55 41 96 67',1),(19010,NULL,NULL,'lucie.boulay@orange.fr','lucie.boulay@orange.fr','Marc','Fabre','1962-12-27 04:08:26','u','2019-10-08 16:28:32','2019-11-04 08:27:58','+33 3 81 19 00 68',0),(19011,NULL,NULL,'pleger@lejeune.fr','pleger@lejeune.fr','Laurent','Paul','1980-09-26 10:42:59','u','2019-11-13 12:22:03','2019-11-04 08:27:58','06 46 78 54 33',0),(19012,NULL,NULL,'bgauthier@dbmail.com','bgauthier@dbmail.com','Camille','Perez','1964-04-20 11:12:12','u','2019-10-27 11:19:41','2019-11-04 08:27:58','+33 1 38 16 09 24',0),(19013,NULL,NULL,'availlant@chauvin.fr','availlant@chauvin.fr','Amélie','Alexandre','1990-04-02 00:23:44','u','2019-11-11 08:52:23','2019-11-04 08:27:58','0168800116',0),(19014,NULL,NULL,'gabriel31@boulay.net','gabriel31@boulay.net','Benjamin','Fernandez','1989-02-09 15:36:28','u','2019-10-11 06:31:39','2019-11-04 08:27:58','+33 (0)7 46 28 91 17',1),(19015,NULL,NULL,'bailly.clemence@tele2.fr','bailly.clemence@tele2.fr','Auguste','Gilles','1980-07-29 02:17:36','u','2019-10-26 08:16:11','2019-11-04 08:27:58','0246800166',1),(19016,NULL,NULL,'anais.blanc@tele2.fr','anais.blanc@tele2.fr','Éléonore','Charrier','1977-08-06 14:18:09','u','2019-10-27 22:44:47','2019-11-04 08:27:58','+33 (0)5 11 98 76 72',1),(19017,NULL,NULL,'anouk.petitjean@voila.fr','anouk.petitjean@voila.fr','Antoine','Barbe','1962-08-04 22:08:02','u','2019-11-09 04:02:06','2019-11-04 08:27:58','03 76 79 89 59',1),(19018,NULL,NULL,'klein.leon@gmail.com','klein.leon@gmail.com','Véronique','Mendes','1991-02-24 15:50:45','u','2019-10-22 08:59:42','2019-11-04 08:27:58','0422616986',0),(19019,NULL,NULL,'victoire84@free.fr','victoire84@free.fr','Marguerite','Monnier','1984-07-03 10:13:35','u','2019-11-21 04:37:22','2019-11-04 08:27:58','+33 (0)1 75 54 24 89',0),(19020,NULL,NULL,'rousseau.luc@hoareau.net','rousseau.luc@hoareau.net','Rémy','Gimenez','1985-09-09 20:12:18','u','2019-11-20 13:02:20','2019-11-04 08:27:58','05 45 42 54 11',1),(19021,NULL,NULL,'ischneider@arnaud.org','ischneider@arnaud.org','Isabelle','Moulin','1961-08-10 15:15:40','u','2019-10-10 08:23:45','2019-11-04 08:27:58','+33 (0)2 77 04 79 67',0),(19022,NULL,NULL,'moreno.andre@sfr.fr','moreno.andre@sfr.fr','Nicolas','Duval','1968-10-19 05:38:37','u','2019-11-04 07:09:32','2019-11-04 08:27:58','03 64 65 27 26',0),(19023,NULL,NULL,'peron.genevieve@club-internet.fr','peron.genevieve@club-internet.fr','Paul','Maury','1976-01-03 20:21:30','u','2019-10-12 14:35:19','2019-11-04 08:27:58','+33 1 73 28 75 26',1),(19024,NULL,NULL,'klombard@hebert.fr','klombard@hebert.fr','Astrid','Gillet','1979-04-05 00:18:57','u','2019-11-19 20:49:00','2019-11-04 08:27:58','+33 (0)3 40 79 69 20',1),(19025,NULL,NULL,'marion.maryse@prevost.com','marion.maryse@prevost.com','Maurice','Becker','1985-09-09 23:00:51','u','2019-11-06 10:18:59','2019-11-04 08:27:58','04 35 24 20 82',0),(19026,NULL,NULL,'noemi51@teixeira.com','noemi51@teixeira.com','Emmanuel','Allain','1997-12-03 02:35:05','u','2019-11-14 14:54:07','2019-11-04 08:27:58','+33 8 95 90 63 64',1),(19027,NULL,NULL,'edith26@labbe.fr','edith26@labbe.fr','Richard','Henry','1971-07-27 15:47:46','u','2019-10-13 04:56:09','2019-11-04 08:27:58','+33 1 47 65 90 32',0),(19028,NULL,NULL,'oceane95@wanadoo.fr','oceane95@wanadoo.fr','Frédérique','Nguyen','1992-08-28 20:17:08','u','2019-11-30 01:42:47','2019-11-04 08:27:58','+33 (0)7 31 15 30 52',1),(19029,NULL,NULL,'benjamin00@ifrance.com','benjamin00@ifrance.com','Amélie','Imbert','1991-08-26 06:54:03','u','2019-10-28 22:43:10','2019-11-04 08:27:58','+33 (0)1 98 49 34 75',1),(19030,NULL,NULL,'pcaron@sfr.fr','pcaron@sfr.fr','Grégoire','Masse','1987-04-20 22:25:41','u','2019-11-22 03:12:21','2019-11-04 08:27:58','+33 9 83 80 32 85',1),(19031,NULL,NULL,'audrey91@hamel.fr','audrey91@hamel.fr','Jérôme','Daniel','1997-08-14 13:48:24','u','2019-11-17 10:02:31','2019-11-04 08:27:58','0936012225',1),(19032,NULL,NULL,'jmarie@ifrance.com','jmarie@ifrance.com','Xavier','Le Gall','1965-11-19 02:13:23','u','2019-11-24 07:29:06','2019-11-04 08:27:58','+33 8 09 09 38 55',0),(19033,NULL,NULL,'dnormand@ollivier.com','dnormand@ollivier.com','Aurélie','Meyer','1982-08-31 04:37:11','u','2019-10-08 07:48:42','2019-11-04 08:27:58','04 87 37 47 40',1),(19034,NULL,NULL,'henriette51@bailly.fr','henriette51@bailly.fr','Philippe','Weiss','1975-02-17 13:20:56','u','2019-11-18 00:44:42','2019-11-04 08:27:58','0144277385',1),(19035,NULL,NULL,'jean40@leleu.com','jean40@leleu.com','Françoise','Pages','1978-10-12 08:12:58','u','2019-11-27 12:34:50','2019-11-04 08:27:58','05 71 11 47 23',1),(19036,NULL,NULL,'anne.ruiz@dias.fr','anne.ruiz@dias.fr','Hortense','Chauveau','1962-10-04 09:57:33','u','2019-10-04 11:59:37','2019-11-04 08:27:58','0415443982',0),(19037,NULL,NULL,'victoire.cordier@aubert.fr','victoire.cordier@aubert.fr','Monique','Letellier','1984-02-20 04:26:25','u','2019-10-30 18:38:22','2019-11-04 08:27:58','0555503130',0),(19038,NULL,NULL,'auguste36@tele2.fr','auguste36@tele2.fr','Théophile','Picard','1978-12-29 04:50:37','u','2019-10-29 14:12:31','2019-11-04 08:27:58','0445161544',1),(19039,NULL,NULL,'thibault60@hotmail.fr','thibault60@hotmail.fr','Hortense','Masson','1982-02-05 13:37:43','u','2019-10-26 18:19:05','2019-11-04 08:27:58','0156573263',0),(19040,NULL,NULL,'alexandria.perrot@delattre.fr','alexandria.perrot@delattre.fr','Isaac','Wagner','1979-07-07 18:16:39','u','2019-10-22 22:07:04','2019-11-04 08:27:58','+33 8 99 31 98 92',0),(19041,NULL,NULL,'durand.margaud@orange.fr','durand.margaud@orange.fr','Luc','Guyot','1985-01-13 14:57:37','u','2019-12-02 08:04:24','2019-11-04 08:27:58','+33 (0)6 86 23 64 24',1),(19042,NULL,NULL,'nicolas.bonnet@gregoire.com','nicolas.bonnet@gregoire.com','Constance','Cordier','1987-11-13 15:32:21','u','2019-12-02 13:44:13','2019-11-04 08:27:58','+33 3 36 27 18 02',0),(19043,NULL,NULL,'ferrand.alphonse@berthelot.fr','ferrand.alphonse@berthelot.fr','Alphonse','Caron','1981-10-18 10:58:13','u','2019-11-10 10:34:36','2019-11-04 08:27:58','0152021156',0),(19044,NULL,NULL,'alain08@duhamel.com','alain08@duhamel.com','Édith','Lambert','1991-01-21 06:55:25','u','2019-10-13 22:29:19','2019-11-04 08:27:58','04 91 76 74 53',1),(19045,NULL,NULL,'alix.vidal@tiscali.fr','alix.vidal@tiscali.fr','Luce','Carpentier','1991-09-08 03:42:53','u','2019-11-14 02:29:27','2019-11-04 08:27:58','+33 8 18 54 19 94',1),(19046,NULL,NULL,'berger.elodie@auger.fr','berger.elodie@auger.fr','Gabrielle','Joseph','1963-08-21 11:29:02','u','2019-10-16 05:48:28','2019-11-04 08:27:58','0413281989',1),(19047,NULL,NULL,'renault.marthe@hubert.com','renault.marthe@hubert.com','Denise','Leleu','1997-05-21 11:00:49','u','2019-11-07 10:06:50','2019-11-04 08:27:58','+33 1 42 01 48 70',1),(19048,NULL,NULL,'bertrand50@lemaire.fr','bertrand50@lemaire.fr','Bernard','Arnaud','1990-07-10 15:59:46','u','2019-11-19 05:03:35','2019-11-04 08:27:58','03 15 81 76 11',0),(19049,NULL,NULL,'aetienne@vasseur.com','aetienne@vasseur.com','Mathilde','Breton','1965-12-02 11:26:18','u','2019-10-15 18:18:33','2019-11-04 08:27:58','09 03 65 68 16',0),(19050,NULL,NULL,'guichard.marine@bouygtel.fr','guichard.marine@bouygtel.fr','David','Fernandes','1977-11-15 08:44:00','u','2019-10-08 15:51:19','2019-11-04 08:27:58','0921551690',1),(19051,NULL,NULL,'sylvie.michel@brunel.net','sylvie.michel@brunel.net','Olivie','Coulon','1960-12-31 00:41:48','u','2019-11-01 19:15:00','2019-11-04 08:27:58','+33 (0)4 24 10 00 26',1),(19052,NULL,NULL,'alexandrie.boucher@legoff.fr','alexandrie.boucher@legoff.fr','Jean','Georges','1964-11-02 08:39:40','u','2019-10-04 14:07:25','2019-11-04 08:27:58','+33 (0)6 93 03 70 07',1),(19053,NULL,NULL,'wrey@live.com','wrey@live.com','Gilles','Thierry','1981-08-25 22:11:20','u','2019-11-29 22:49:23','2019-11-04 08:27:58','+33 8 98 82 12 35',1),(19054,NULL,NULL,'hoarau.vincent@sfr.fr','hoarau.vincent@sfr.fr','Claudine','Merle','1985-12-05 01:09:33','u','2019-12-03 02:39:25','2019-11-04 08:27:58','+33 1 59 90 31 76',0),(19055,NULL,NULL,'lombard.helene@lopes.com','lombard.helene@lopes.com','Alexandria','Lemaitre','1996-05-25 08:05:39','u','2019-10-26 01:03:10','2019-11-04 08:27:58','02 93 82 78 82',0),(19056,NULL,NULL,'georges.charrier@wanadoo.fr','georges.charrier@wanadoo.fr','Édith','Lamy','1982-10-17 23:03:08','u','2019-11-11 03:58:29','2019-11-04 08:27:58','+33 8 95 69 86 50',0),(19057,NULL,NULL,'marine88@orange.fr','marine88@orange.fr','Anne','Noel','1990-05-20 18:31:23','u','2019-12-02 17:12:31','2019-11-04 08:27:58','+33 (0)1 97 38 23 20',0),(19058,NULL,NULL,'dasilva.nathalie@richard.fr','dasilva.nathalie@richard.fr','Diane','Gros','1999-06-06 14:49:47','u','2019-10-28 00:45:23','2019-11-04 08:27:58','+33 (0)7 63 02 16 64',1),(19059,NULL,NULL,'ncoulon@tiscali.fr','ncoulon@tiscali.fr','Catherine','Bousquet','1974-04-26 04:20:01','u','2019-11-21 00:42:04','2019-11-04 08:27:58','+33 (0)5 57 26 00 14',0),(19060,NULL,NULL,'blegros@ifrance.com','blegros@ifrance.com','Camille','Pires','1966-07-26 11:51:14','u','2019-10-04 17:17:37','2019-11-04 08:27:58','0891834593',1),(19061,NULL,NULL,'olenoir@legros.fr','olenoir@legros.fr','Vincent','Munoz','1964-02-01 17:56:12','u','2019-10-09 03:12:24','2019-11-04 08:27:58','0438332630',0),(19062,NULL,NULL,'charrier.juliette@bouygtel.fr','charrier.juliette@bouygtel.fr','René','Lombard','1981-04-24 17:30:25','u','2019-10-20 12:23:52','2019-11-04 08:27:58','+33 4 75 42 25 87',1),(19063,NULL,NULL,'lejeune.patrick@wanadoo.fr','lejeune.patrick@wanadoo.fr','Pauline','Joly','1998-04-24 16:38:38','u','2019-10-15 07:11:29','2019-11-04 08:27:58','0824712685',0),(19064,NULL,NULL,'oguillot@yahoo.fr','oguillot@yahoo.fr','Christelle','Albert','1973-10-30 09:28:52','u','2019-11-01 20:37:24','2019-11-04 08:27:58','09 14 12 26 57',1),(19065,NULL,NULL,'gpichon@tele2.fr','gpichon@tele2.fr','Audrey','Olivier','1974-09-29 18:08:04','u','2019-10-12 01:49:07','2019-11-04 08:27:58','+33 3 59 22 95 93',0),(19066,NULL,NULL,'michelle.brun@dumas.com','michelle.brun@dumas.com','François','Verdier','1992-12-24 17:05:39','u','2019-12-03 02:36:57','2019-11-04 08:27:58','0643902490',0),(19067,NULL,NULL,'raymond.honore@yahoo.fr','raymond.honore@yahoo.fr','Frédérique','Blondel','1977-09-23 06:35:08','u','2019-11-14 18:15:52','2019-11-04 08:27:58','02 11 42 25 01',1),(19068,NULL,NULL,'zpoirier@perrier.net','zpoirier@perrier.net','Françoise','Allard','1974-06-03 15:14:08','u','2019-11-11 07:58:25','2019-11-04 08:27:58','+33 7 30 10 62 77',1),(19069,NULL,NULL,'proche@gilbert.com','proche@gilbert.com','Robert','Diaz','1968-07-17 12:47:51','u','2019-11-17 13:11:52','2019-11-04 08:27:58','+33 (0)3 88 42 22 23',0),(19070,NULL,NULL,'wduval@blot.com','wduval@blot.com','Frédéric','Noel','1964-04-22 15:51:42','u','2019-11-17 08:08:13','2019-11-04 08:27:58','+33 (0)6 34 38 02 46',0),(19071,NULL,NULL,'zperrin@sfr.fr','zperrin@sfr.fr','Denis','Thibault','1977-11-24 16:29:41','u','2019-11-09 01:45:38','2019-11-04 08:27:58','+33 (0)1 81 91 56 07',0),(19072,NULL,NULL,'augustin05@ifrance.com','augustin05@ifrance.com','Gabriel','Mallet','1979-03-25 15:09:31','u','2019-11-30 13:58:08','2019-11-04 08:27:58','+33 (0)9 89 04 96 42',0),(19073,NULL,NULL,'herve.juliette@yahoo.fr','herve.juliette@yahoo.fr','Matthieu','Le Gall','1964-03-03 15:30:46','u','2019-10-07 12:19:55','2019-11-04 08:27:58','+33 (0)5 98 86 41 44',0),(19074,NULL,NULL,'robert.regnier@lambert.fr','robert.regnier@lambert.fr','Théodore','Philippe','1965-03-18 18:50:06','u','2019-11-26 16:40:35','2019-11-04 08:27:58','09 15 67 49 28',0),(19075,NULL,NULL,'alexandria16@gmail.com','alexandria16@gmail.com','Dominique','Simon','1987-12-28 03:48:38','u','2019-10-28 15:45:01','2019-11-04 08:27:58','+33 (0)1 50 37 23 91',0),(19076,NULL,NULL,'roger.olivier@laposte.net','roger.olivier@laposte.net','Céline','Jacob','1963-02-23 15:12:53','u','2019-10-30 06:17:29','2019-11-04 08:27:58','06 31 92 94 54',0),(19077,NULL,NULL,'yves10@guichard.fr','yves10@guichard.fr','Guy','Philippe','1964-11-03 08:50:57','u','2019-10-09 04:58:32','2019-11-04 08:27:58','+33 4 02 07 81 80',0),(19078,NULL,NULL,'ines94@voila.fr','ines94@voila.fr','Thibault','Roche','1977-11-19 12:55:19','u','2019-10-23 00:15:39','2019-11-04 08:27:58','+33 4 00 26 82 17',1),(19079,NULL,NULL,'isabelle.jacquet@live.com','isabelle.jacquet@live.com','Maurice','Blondel','1989-12-16 13:06:41','u','2019-11-11 18:22:20','2019-11-04 08:27:58','+33 (0)3 40 29 63 07',0),(19080,NULL,NULL,'jeannine94@club-internet.fr','jeannine94@club-internet.fr','Roland','Leclerc','1972-05-24 14:32:36','u','2019-11-18 10:57:15','2019-11-04 08:27:58','+33 (0)4 22 47 52 35',0),(19081,NULL,NULL,'raymond69@tele2.fr','raymond69@tele2.fr','Capucine','Rolland','1974-01-25 03:36:57','u','2019-11-11 19:34:22','2019-11-04 08:27:58','0760840503',0),(19082,NULL,NULL,'anastasie85@levy.fr','anastasie85@levy.fr','Christine','Le Roux','1963-11-22 03:56:38','u','2019-11-19 15:07:01','2019-11-04 08:27:58','+33 9 76 84 93 09',0),(19083,NULL,NULL,'xlemaire@colin.fr','xlemaire@colin.fr','Pierre','Grenier','1999-01-12 15:54:03','u','2019-10-18 11:45:57','2019-11-04 08:27:58','0227552852',1),(19084,NULL,NULL,'pparent@martineau.com','pparent@martineau.com','Océane','Garnier','1995-03-01 20:58:39','u','2019-11-01 13:17:21','2019-11-04 08:27:58','+33 7 33 74 51 49',1),(19085,NULL,NULL,'ines.guillet@thomas.com','ines.guillet@thomas.com','Émile','Descamps','1991-01-01 13:18:25','u','2019-11-06 03:52:45','2019-11-04 08:27:58','+33 (0)7 74 83 41 16',0),(19086,NULL,NULL,'arthur53@noos.fr','arthur53@noos.fr','Zacharie','Renard','1987-12-01 22:37:38','u','2019-11-18 02:38:22','2019-11-04 08:27:58','09 82 66 26 32',1),(19087,NULL,NULL,'tthomas@ifrance.com','tthomas@ifrance.com','David','Breton','1980-01-24 02:12:18','u','2019-10-25 19:04:42','2019-11-04 08:27:58','+33 5 85 29 39 13',1),(19088,NULL,NULL,'efournier@camus.net','efournier@camus.net','Constance','Gilbert','1960-04-25 16:22:02','u','2019-11-24 10:02:42','2019-11-04 08:27:58','06 05 85 47 50',1),(19089,NULL,NULL,'andree23@martins.fr','andree23@martins.fr','Mathilde','Torres','1995-08-02 22:07:10','u','2019-11-08 17:25:47','2019-11-04 08:27:58','03 45 30 66 52',1),(19090,NULL,NULL,'hvaillant@morvan.fr','hvaillant@morvan.fr','Alexandre','Rolland','1960-10-06 18:08:24','u','2019-11-10 05:16:11','2019-11-04 08:27:58','08 97 56 49 24',0),(19091,NULL,NULL,'jgarnier@orange.fr','jgarnier@orange.fr','Denise','Lacroix','1990-09-01 05:56:30','u','2019-11-26 08:33:33','2019-11-04 08:27:58','0825856085',0),(19092,NULL,NULL,'rousseau.michel@club-internet.fr','rousseau.michel@club-internet.fr','Léon','Boutin','1970-11-18 16:00:55','u','2019-11-28 04:49:25','2019-11-04 08:27:58','0336559303',1),(19093,NULL,NULL,'allain.yves@bouygtel.fr','allain.yves@bouygtel.fr','Julien','Michel','1989-09-29 19:26:34','u','2019-11-15 17:11:53','2019-11-04 08:27:58','+33 (0)1 69 56 90 21',0),(19094,NULL,NULL,'adele35@weber.fr','adele35@weber.fr','Éléonore','Monnier','1974-05-13 01:16:25','u','2019-10-29 10:48:01','2019-11-04 08:27:58','0384952162',0),(19095,NULL,NULL,'claire.marechal@free.fr','claire.marechal@free.fr','Laure','Le Goff','1979-11-06 03:14:02','u','2019-11-15 19:50:34','2019-11-04 08:27:58','+33 1 55 14 19 81',1),(19096,NULL,NULL,'mollivier@besson.org','mollivier@besson.org','François','Bourgeois','1964-07-18 01:00:22','u','2019-11-07 13:02:04','2019-11-04 08:27:58','+33 (0)5 62 94 87 53',0),(19097,NULL,NULL,'thibaut76@raynaud.net','thibaut76@raynaud.net','Jeanne','Alexandre','1986-06-15 18:13:31','u','2019-11-16 11:25:26','2019-11-04 08:27:58','01 74 34 99 77',1),(19098,NULL,NULL,'therese.boyer@tiscali.fr','therese.boyer@tiscali.fr','Luce','Marion','1961-06-26 00:39:21','u','2019-11-17 08:38:59','2019-11-04 08:27:58','+33 (0)1 01 57 47 06',1),(19099,NULL,NULL,'honore.lemonnier@live.com','honore.lemonnier@live.com','Thibaut','Lambert','1998-05-27 13:58:45','u','2019-12-01 06:28:06','2019-11-04 08:27:58','+33 2 48 54 00 19',1),(19100,NULL,NULL,'lucas.aubry@dbmail.com','lucas.aubry@dbmail.com','Jules','Bourgeois','1976-08-02 20:07:29','u','2019-10-18 23:11:05','2019-11-04 08:27:58','0456814030',0),(19101,NULL,NULL,'morvan.honore@bourgeois.org','morvan.honore@bourgeois.org','Charles','Thierry','1962-04-29 21:57:47','u','2019-10-09 17:31:06','2019-11-04 08:27:58','0960440161',0),(19102,NULL,NULL,'renee39@bouygtel.fr','renee39@bouygtel.fr','Charles','Descamps','1969-04-21 06:05:09','u','2019-10-26 09:59:37','2019-11-04 08:27:58','+33 (0)2 85 99 44 46',1),(19103,NULL,NULL,'blaporte@club-internet.fr','blaporte@club-internet.fr','Victor','Marques','1967-08-03 03:57:34','u','2019-10-05 17:19:56','2019-11-04 08:27:58','+33 7 53 63 77 33',1),(19104,NULL,NULL,'blin.elodie@laposte.net','blin.elodie@laposte.net','Claude','Perez','1991-08-13 11:29:12','u','2019-10-05 15:40:52','2019-11-04 08:27:58','0782434453',0),(19105,NULL,NULL,'mallet.therese@brunel.com','mallet.therese@brunel.com','Anastasie','Barre','1979-10-01 09:58:38','u','2019-10-12 01:20:26','2019-11-04 08:27:58','+33 3 23 39 79 99',0),(19106,NULL,NULL,'wlebon@techer.fr','wlebon@techer.fr','Anaïs','Huet','1971-09-22 19:16:13','u','2019-11-25 08:44:30','2019-11-04 08:27:58','+33 (0)5 35 92 44 35',1),(19107,NULL,NULL,'hclerc@michaud.com','hclerc@michaud.com','Chantal','Rolland','1965-08-25 00:41:07','u','2019-11-10 06:05:32','2019-11-04 08:27:58','04 44 67 27 93',1),(19108,NULL,NULL,'fournier.xavier@leroux.fr','fournier.xavier@leroux.fr','Nathalie','Gay','1961-05-24 20:38:37','u','2019-11-16 02:38:22','2019-11-04 08:27:58','+33 (0)8 29 50 92 42',0),(19109,NULL,NULL,'denis32@daniel.com','denis32@daniel.com','Théophile','Colin','1982-09-22 18:48:45','u','2019-11-02 09:24:30','2019-11-04 08:27:58','07 89 00 44 45',1),(19110,NULL,NULL,'eleonore55@sfr.fr','eleonore55@sfr.fr','Michel','Rodrigues','1996-03-03 23:12:40','u','2019-10-29 11:15:19','2019-11-04 08:27:58','0666217189',1),(19111,NULL,NULL,'frederique.jacquot@gilbert.net','frederique.jacquot@gilbert.net','Adrien','Weiss','1990-07-14 17:57:19','u','2019-11-30 00:14:23','2019-11-04 08:27:58','+33 (0)7 59 48 64 56',0),(19112,NULL,NULL,'fmarin@wanadoo.fr','fmarin@wanadoo.fr','Antoinette','Boyer','1995-08-16 04:26:14','u','2019-11-08 22:28:01','2019-11-04 08:27:58','03 34 20 93 31',0),(19113,NULL,NULL,'odasilva@richard.fr','odasilva@richard.fr','Diane','Allard','1968-08-17 20:01:17','u','2019-11-17 11:48:28','2019-11-04 08:27:58','+33 (0)3 23 14 41 14',0),(19114,NULL,NULL,'roland.gosselin@pons.org','roland.gosselin@pons.org','Charles','Costa','1993-12-06 12:19:35','u','2019-10-28 09:10:22','2019-11-04 08:27:58','0810866983',1),(19115,NULL,NULL,'marie32@lopez.net','marie32@lopez.net','Astrid','Fouquet','1990-07-10 01:14:44','u','2019-10-26 16:40:12','2019-11-04 08:27:58','03 06 97 01 79',1),(19116,NULL,NULL,'margaret.didier@potier.fr','margaret.didier@potier.fr','Christophe','Garnier','1995-08-04 05:58:42','u','2019-10-27 11:30:43','2019-11-04 08:27:58','0818217005',1),(19117,NULL,NULL,'renee73@martel.fr','renee73@martel.fr','Françoise','Andre','1988-06-17 04:44:37','u','2019-11-19 03:44:32','2019-11-04 08:27:58','+33 1 94 05 18 72',1),(19118,NULL,NULL,'celina.guillet@tiscali.fr','celina.guillet@tiscali.fr','Simone','Couturier','1972-04-02 07:02:25','u','2019-10-15 09:05:25','2019-11-04 08:27:58','03 83 38 97 42',0),(19119,NULL,NULL,'julie.remy@sfr.fr','julie.remy@sfr.fr','Victoire','Colas','1984-10-24 06:47:24','u','2019-11-09 05:13:11','2019-11-04 08:27:58','+33 (0)3 31 09 13 32',1),(19120,NULL,NULL,'fernandez.frederique@hotmail.fr','fernandez.frederique@hotmail.fr','Bernadette','Toussaint','1986-08-23 14:06:33','u','2019-11-06 20:36:50','2019-11-04 08:27:58','+33 8 09 37 18 90',1),(19121,NULL,NULL,'delahaye.lucie@allard.com','delahaye.lucie@allard.com','Raymond','Foucher','1960-03-12 00:50:47','u','2019-10-08 01:36:26','2019-11-04 08:27:58','+33 (0)1 18 36 50 42',1),(19122,NULL,NULL,'torres.raymond@vidal.fr','torres.raymond@vidal.fr','Marc','Julien','1965-01-17 15:31:00','u','2019-11-18 20:42:05','2019-11-04 08:27:58','01 92 13 64 98',1),(19123,NULL,NULL,'vleclercq@hotmail.fr','vleclercq@hotmail.fr','Louis','Hoareau','1993-05-07 05:16:16','u','2019-11-12 08:55:55','2019-11-04 08:27:58','0817007318',1),(19124,NULL,NULL,'michaud.frederique@ifrance.com','michaud.frederique@ifrance.com','Charles','Morel','1993-08-25 14:56:57','u','2019-10-06 19:11:49','2019-11-04 08:27:58','+33 (0)9 38 62 40 09',1),(19125,NULL,NULL,'margot94@voila.fr','margot94@voila.fr','Timothée','Barbe','1991-12-14 10:49:21','u','2019-11-02 10:20:17','2019-11-04 08:27:58','+33 (0)8 99 03 59 77',0),(19126,NULL,NULL,'gdelannoy@merle.org','gdelannoy@merle.org','Julien','Dijoux','1999-03-21 18:12:27','u','2019-10-15 01:03:05','2019-11-04 08:27:58','01 67 37 10 97',1),(19127,NULL,NULL,'nicole59@tiscali.fr','nicole59@tiscali.fr','Olivier','Gerard','1959-12-02 13:55:49','u','2019-11-03 13:03:29','2019-11-04 08:27:58','0101811145',1),(19128,NULL,NULL,'lamy.olivie@noos.fr','lamy.olivie@noos.fr','Julie','Bouvet','1995-01-07 00:30:37','u','2019-10-04 22:36:37','2019-11-04 08:27:58','08 93 53 97 31',1),(19129,NULL,NULL,'morel.pierre@live.com','morel.pierre@live.com','Chantal','Leroy','1996-03-24 06:44:43','u','2019-11-13 07:10:39','2019-11-04 08:27:58','+33 1 56 58 46 96',0),(19130,NULL,NULL,'elise.voisin@dasilva.fr','elise.voisin@dasilva.fr','Alfred','Thibault','1961-08-22 07:05:23','u','2019-10-04 18:00:50','2019-11-04 08:27:58','+33 (0)1 70 37 79 62',1),(19131,NULL,NULL,'garnier.catherine@voila.fr','garnier.catherine@voila.fr','William','Colin','1964-10-16 05:38:32','u','2019-11-01 05:31:01','2019-11-04 08:27:58','+33 (0)5 86 00 46 20',0),(19132,NULL,NULL,'jeannine.blot@dbmail.com','jeannine.blot@dbmail.com','Olivier','Guillon','1968-01-15 03:57:25','u','2019-11-10 08:08:21','2019-11-04 08:27:58','+33 4 05 61 67 73',1),(19133,NULL,NULL,'ftanguy@wanadoo.fr','ftanguy@wanadoo.fr','Lucas','Dumas','1994-06-16 16:19:35','u','2019-11-27 16:10:55','2019-11-04 08:27:58','+33 (0)6 62 63 73 60',0),(19134,NULL,NULL,'simon.sabine@orange.fr','simon.sabine@orange.fr','Benjamin','Perez','1965-04-17 00:43:15','u','2019-11-29 10:45:39','2019-11-04 08:27:58','0893497243',0),(19135,NULL,NULL,'hugues.vidal@garnier.org','hugues.vidal@garnier.org','Michelle','Rossi','1984-11-24 22:58:11','u','2019-10-31 06:33:53','2019-11-04 08:27:58','+33 (0)2 68 38 24 34',1),(19136,NULL,NULL,'daniel97@ifrance.com','daniel97@ifrance.com','Gérard','Arnaud','1986-03-09 12:45:05','u','2019-10-25 10:22:49','2019-11-04 08:27:58','07 39 47 29 34',0),(19137,NULL,NULL,'louise.verdier@laposte.net','louise.verdier@laposte.net','Manon','Lejeune','1966-12-05 06:00:44','u','2019-10-27 17:28:11','2019-11-04 08:27:58','0976607593',1),(19138,NULL,NULL,'tpetit@peron.fr','tpetit@peron.fr','Alex','Da Costa','1961-09-15 19:32:29','u','2019-10-22 19:12:32','2019-11-04 08:27:58','+33 4 44 03 38 12',1),(19139,NULL,NULL,'julie36@delannoy.fr','julie36@delannoy.fr','Guillaume','Grondin','1971-09-26 17:25:21','u','2019-11-07 11:37:50','2019-11-04 08:27:58','02 77 14 86 50',1),(19140,NULL,NULL,'wguerin@hotmail.fr','wguerin@hotmail.fr','Nicolas','Poirier','1971-02-22 17:12:06','u','2019-11-16 23:06:02','2019-11-04 08:27:58','0433047943',0),(19141,NULL,NULL,'marechal.frederic@ifrance.com','marechal.frederic@ifrance.com','Sébastien','Vallee','1964-07-13 16:32:07','u','2019-10-05 18:15:35','2019-11-04 08:27:58','04 01 54 32 59',0),(19142,NULL,NULL,'udossantos@brunet.org','udossantos@brunet.org','Éléonore','Albert','1968-08-23 21:08:58','u','2019-10-20 03:45:04','2019-11-04 08:27:58','06 05 02 22 06',1),(19143,NULL,NULL,'eleroy@courtois.fr','eleroy@courtois.fr','Richard','Boyer','1975-08-14 20:46:44','u','2019-10-05 14:10:16','2019-11-04 08:27:58','+33 5 96 39 72 12',0),(19144,NULL,NULL,'simon.xavier@noos.fr','simon.xavier@noos.fr','Luce','Hamel','1960-07-12 02:10:33','u','2019-11-25 03:58:49','2019-11-04 08:27:58','0754572044',1),(19145,NULL,NULL,'thomas.godard@guyot.com','thomas.godard@guyot.com','Thomas','Nicolas','1972-08-16 05:38:13','u','2019-11-21 23:08:16','2019-11-04 08:27:58','0493540048',0),(19146,NULL,NULL,'ydevaux@bertin.org','ydevaux@bertin.org','Renée','Lefebvre','1973-03-12 21:13:50','u','2019-10-13 11:51:02','2019-11-04 08:27:58','05 40 27 68 50',0),(19147,NULL,NULL,'michele76@pinto.net','michele76@pinto.net','Martine','Gillet','1986-12-21 00:16:33','u','2019-11-25 05:36:42','2019-11-04 08:27:58','+33 8 99 99 94 79',0),(19148,NULL,NULL,'xlemoine@millet.org','xlemoine@millet.org','Valentine','Pons','1987-02-28 05:08:21','u','2019-11-24 05:56:27','2019-11-04 08:27:58','0803851156',0),(19149,NULL,NULL,'christophe.pons@voila.fr','christophe.pons@voila.fr','Inès','Pages','1997-10-11 07:11:31','u','2019-11-05 21:58:17','2019-11-04 08:27:58','01 80 51 92 59',1),(19150,NULL,NULL,'nmasson@regnier.com','nmasson@regnier.com','Colette','Dias','1979-06-28 14:06:19','u','2019-11-08 09:51:56','2019-11-04 08:27:58','+33 (0)3 27 00 25 98',0),(19151,NULL,NULL,'petit.david@mathieu.net','petit.david@mathieu.net','Dominique','Michel','1993-08-15 06:06:29','u','2019-11-15 05:30:06','2019-11-04 08:27:58','+33 (0)6 23 68 32 03',1),(19152,NULL,NULL,'bernard40@martel.net','bernard40@martel.net','Denis','Gilles','1977-08-16 10:18:24','u','2019-12-04 04:55:20','2019-11-04 08:27:58','0822047646',1),(19153,NULL,NULL,'charlotte36@tiscali.fr','charlotte36@tiscali.fr','Maryse','Brun','1989-05-19 03:14:39','u','2019-10-04 14:51:52','2019-11-04 08:27:58','0786696256',0),(19154,NULL,NULL,'thierry46@ifrance.com','thierry46@ifrance.com','Gabrielle','Weiss','1960-12-30 19:14:31','u','2019-11-05 02:58:33','2019-11-04 08:27:58','0338476585',1),(19155,NULL,NULL,'kweiss@laposte.net','kweiss@laposte.net','Luc','Lemonnier','1988-03-21 12:43:09','u','2019-10-10 03:47:34','2019-11-04 08:27:58','01 50 02 76 20',0),(19156,NULL,NULL,'catherine.besnard@club-internet.fr','catherine.besnard@club-internet.fr','Adélaïde','Rousset','1966-09-28 08:57:10','u','2019-10-27 12:36:48','2019-11-04 08:27:58','+33 7 72 51 65 58',0),(19157,NULL,NULL,'jpelletier@dbmail.com','jpelletier@dbmail.com','Julien','Boulanger','1972-03-31 15:13:15','u','2019-11-07 18:15:25','2019-11-04 08:27:58','0758715237',0),(19158,NULL,NULL,'anais.maurice@pons.fr','anais.maurice@pons.fr','Corinne','Rodriguez','1975-07-08 21:08:26','u','2019-11-26 05:52:43','2019-11-04 08:27:58','+33 3 81 53 32 71',0),(19159,NULL,NULL,'perrin.margaret@arnaud.fr','perrin.margaret@arnaud.fr','Lucie','Gerard','1995-02-24 22:17:10','u','2019-11-03 08:23:51','2019-11-04 08:27:58','+33 (0)5 04 76 70 73',1),(19160,NULL,NULL,'auguste96@bouygtel.fr','auguste96@bouygtel.fr','Susanne','Courtois','1992-10-29 18:23:04','u','2019-11-11 22:57:50','2019-11-04 08:27:58','0659637070',1),(19161,NULL,NULL,'aurelie.legrand@live.com','aurelie.legrand@live.com','Dominique','Adam','1973-04-02 01:14:55','u','2019-10-28 20:44:10','2019-11-04 08:27:58','0253218595',0),(19162,NULL,NULL,'pauline.michel@laposte.net','pauline.michel@laposte.net','Odette','Leconte','1968-06-02 07:25:19','u','2019-10-12 06:15:05','2019-11-04 08:27:58','0980014522',0),(19163,NULL,NULL,'muller.guy@joly.com','muller.guy@joly.com','Adrienne','Carlier','1967-11-22 06:27:48','u','2019-10-06 20:35:18','2019-11-04 08:27:58','0156197633',1),(19164,NULL,NULL,'pichon.valentine@tiscali.fr','pichon.valentine@tiscali.fr','Olivier','Ferreira','1969-10-23 05:11:38','u','2019-11-07 15:38:42','2019-11-04 08:27:58','+33 (0)1 20 11 96 56',1),(19165,NULL,NULL,'legall.jacques@tele2.fr','legall.jacques@tele2.fr','Joséphine','Lagarde','1974-11-22 06:29:50','u','2019-11-26 22:48:52','2019-11-04 08:27:58','+33 (0)2 24 52 31 19',1),(19166,NULL,NULL,'philippe33@tele2.fr','philippe33@tele2.fr','Augustin','Nicolas','1962-05-03 17:46:23','u','2019-11-20 03:40:27','2019-11-04 08:27:58','0649676260',0),(19167,NULL,NULL,'marie.diane@bernier.com','marie.diane@bernier.com','Thierry','Devaux','1994-11-23 19:53:45','u','2019-10-19 18:09:48','2019-11-04 08:27:58','+33 1 24 99 55 69',0),(19168,NULL,NULL,'kaubert@voila.fr','kaubert@voila.fr','Lucy','Brunel','1980-09-27 06:12:36','u','2019-11-05 06:57:53','2019-11-04 08:27:58','+33 (0)1 02 35 46 44',0),(19169,NULL,NULL,'xmorin@yahoo.fr','xmorin@yahoo.fr','Thomas','Gros','1965-12-12 23:51:55','u','2019-11-06 14:21:20','2019-11-04 08:27:58','09 03 84 07 56',0),(19170,NULL,NULL,'lnavarro@blot.com','lnavarro@blot.com','Aurore','Charpentier','1972-02-15 12:16:58','u','2019-10-07 06:47:27','2019-11-04 08:27:58','+33 2 10 48 97 37',1),(19171,NULL,NULL,'dpierre@dupuis.fr','dpierre@dupuis.fr','Aurélie','Barthelemy','1978-09-25 10:02:51','u','2019-10-06 08:52:42','2019-11-04 08:27:58','+33 6 14 61 39 28',0),(19172,NULL,NULL,'jcousin@hotmail.fr','jcousin@hotmail.fr','Paul','Masson','1994-04-02 12:58:02','u','2019-10-08 15:27:46','2019-11-04 08:27:58','01 57 93 39 33',0),(19173,NULL,NULL,'william65@chauvin.com','william65@chauvin.com','Paul','Valette','1960-04-26 05:46:58','u','2019-11-15 14:34:40','2019-11-04 08:27:58','+33 (0)5 82 74 99 84',1),(19174,NULL,NULL,'wgrenier@rousseau.net','wgrenier@rousseau.net','Manon','Lopez','1994-07-12 19:07:17','u','2019-11-05 03:10:20','2019-11-04 08:27:58','07 59 70 55 31',0),(19175,NULL,NULL,'enavarro@michaud.fr','enavarro@michaud.fr','Yves','Aubert','1972-07-09 01:04:35','u','2019-11-14 12:14:43','2019-11-04 08:27:58','0522347765',0),(19176,NULL,NULL,'michele.vidal@lambert.fr','michele.vidal@lambert.fr','Raymond','Olivier','1976-05-21 00:59:30','u','2019-11-29 17:50:03','2019-11-04 08:27:58','+33 2 52 24 25 83',1),(19177,NULL,NULL,'lucas.maurice@hotmail.fr','lucas.maurice@hotmail.fr','Madeleine','Legros','1974-06-12 05:12:00','u','2019-11-13 21:53:07','2019-11-04 08:27:58','0544579209',1),(19178,NULL,NULL,'amelie06@vincent.com','amelie06@vincent.com','Gilbert','Marechal','1974-04-06 19:20:18','u','2019-11-26 06:59:07','2019-11-04 08:27:58','04 70 03 90 19',1),(19179,NULL,NULL,'suzanne67@jean.org','suzanne67@jean.org','Vincent','Dupuis','1995-02-24 03:30:07','u','2019-10-17 02:23:53','2019-11-04 08:27:58','+33 (0)3 32 84 75 02',1),(19180,NULL,NULL,'noemi.duhamel@yahoo.fr','noemi.duhamel@yahoo.fr','Simone','Leroy','1972-06-19 15:59:51','u','2019-11-14 00:53:49','2019-11-04 08:27:58','+33 4 63 28 62 02',1),(19181,NULL,NULL,'therese42@bouygtel.fr','therese42@bouygtel.fr','Frédéric','Peltier','1970-05-25 12:48:12','u','2019-11-06 23:23:54','2019-11-04 08:27:58','+33 (0)4 58 72 58 03',1),(19182,NULL,NULL,'jourdan.remy@live.com','jourdan.remy@live.com','Théodore','Hernandez','1995-02-20 23:21:52','u','2019-10-28 03:13:48','2019-11-04 08:27:58','0643410102',1),(19183,NULL,NULL,'henri.hubert@hotmail.fr','henri.hubert@hotmail.fr','Émilie','Etienne','1974-04-27 15:55:45','u','2019-11-12 20:31:37','2019-11-04 08:27:58','+33 2 43 22 81 43',1),(19184,NULL,NULL,'alain50@pons.fr','alain50@pons.fr','Valérie','Bigot','1966-02-08 06:11:37','u','2019-10-13 16:31:34','2019-11-04 08:27:58','05 62 06 35 71',1),(19185,NULL,NULL,'eugene12@sfr.fr','eugene12@sfr.fr','Amélie','Fischer','1963-04-08 01:19:07','u','2019-11-23 03:55:49','2019-11-04 08:27:58','+33 9 42 24 68 72',0),(19186,NULL,NULL,'claude.andre@dias.com','claude.andre@dias.com','Martin','Cohen','1969-04-02 15:50:13','u','2019-10-20 11:56:11','2019-11-04 08:27:58','+33 (0)8 99 16 24 49',0),(19187,NULL,NULL,'luce.andre@noos.fr','luce.andre@noos.fr','Éric','Breton','1968-12-19 13:26:28','u','2019-10-28 23:42:15','2019-11-04 08:27:58','01 15 58 52 26',0),(19188,NULL,NULL,'pjacob@gilbert.com','pjacob@gilbert.com','Éléonore','Besnard','1967-09-05 09:15:36','u','2019-11-16 03:32:59','2019-11-04 08:27:58','0793918405',0),(19189,NULL,NULL,'georges62@thierry.net','georges62@thierry.net','Rémy','Meunier','1980-02-24 00:12:08','u','2019-10-31 19:15:31','2019-11-04 08:27:58','+33 (0)6 07 58 62 73',0),(19190,NULL,NULL,'ptecher@free.fr','ptecher@free.fr','Victoire','Martinez','1975-10-29 14:34:51','u','2019-11-13 06:44:10','2019-11-04 08:27:58','+33 1 35 25 19 18',0),(19191,NULL,NULL,'pottier.aime@hotmail.fr','pottier.aime@hotmail.fr','Christine','Humbert','1986-02-27 15:12:20','u','2019-11-24 09:27:41','2019-11-04 08:27:58','+33 (0)9 80 66 96 90',0),(19192,NULL,NULL,'gomes.marthe@dijoux.fr','gomes.marthe@dijoux.fr','Guillaume','Vidal','1983-07-19 06:53:22','u','2019-10-16 06:20:17','2019-11-04 08:27:58','0232738663',1),(19193,NULL,NULL,'sabine.gaudin@sfr.fr','sabine.gaudin@sfr.fr','Émilie','Brunel','1968-06-28 04:25:26','u','2019-10-25 02:30:07','2019-11-04 08:27:58','+33 (0)3 36 88 19 25',1),(19194,NULL,NULL,'hgerard@gmail.com','hgerard@gmail.com','Pierre','Fournier','1988-03-24 07:07:12','u','2019-10-08 22:41:43','2019-11-04 08:27:58','+33 5 82 16 43 84',1),(19195,NULL,NULL,'dlemaitre@voila.fr','dlemaitre@voila.fr','Henri','Rodrigues','1977-10-18 10:38:26','u','2019-11-11 14:58:43','2019-11-04 08:27:58','09 86 58 57 23',1),(19196,NULL,NULL,'vgrenier@sfr.fr','vgrenier@sfr.fr','Élise','Le Gall','1988-04-05 18:37:30','u','2019-10-04 22:37:22','2019-11-04 08:27:58','+33 (0)9 01 03 95 05',1),(19197,NULL,NULL,'dominique.lopes@yahoo.fr','dominique.lopes@yahoo.fr','Pauline','Le Roux','1972-10-18 01:00:19','u','2019-11-22 01:36:09','2019-11-04 08:27:58','+33 (0)6 01 50 95 90',0),(19198,NULL,NULL,'jgarnier@noos.fr','jgarnier@noos.fr','Émilie','Gilles','1996-09-06 14:43:54','u','2019-11-15 09:54:44','2019-11-04 08:27:58','0919448680',0),(19199,NULL,NULL,'pjulien@dupuy.net','pjulien@dupuy.net','Margot','Etienne','1989-04-29 09:33:53','u','2019-10-22 12:04:02','2019-11-04 08:27:58','+33 7 76 30 35 74',1),(19200,NULL,NULL,'benjamin09@voila.fr','benjamin09@voila.fr','Denis','Guichard','1989-11-03 19:04:44','u','2019-10-27 08:35:53','2019-11-04 08:27:58','+33 9 93 34 07 75',0),(19201,NULL,NULL,'alain.besson@blanchard.com','alain.besson@blanchard.com','Jean','Gaillard','1970-09-29 04:21:36','u','2019-10-14 22:25:39','2019-11-04 08:27:58','01 23 59 06 02',0),(19202,NULL,NULL,'antoinette.riou@sfr.fr','antoinette.riou@sfr.fr','Henri','Chevallier','1962-05-01 01:37:48','u','2019-11-11 15:22:26','2019-11-04 08:27:58','0173325689',1),(19203,NULL,NULL,'guy56@yahoo.fr','guy56@yahoo.fr','Zoé','Peltier','1989-10-25 20:17:21','u','2019-10-29 12:47:31','2019-11-04 08:27:58','09 76 01 23 84',0),(19204,NULL,NULL,'marie.dupont@ifrance.com','marie.dupont@ifrance.com','Michelle','Reynaud','1967-10-25 00:09:37','u','2019-10-14 10:12:35','2019-11-04 08:27:58','0826662051',0),(19205,NULL,NULL,'hgodard@dupuis.fr','hgodard@dupuis.fr','Bernadette','Gallet','1969-01-03 05:08:59','u','2019-11-19 18:30:00','2019-11-04 08:27:58','0956578242',1),(19206,NULL,NULL,'lecoq.suzanne@legoff.com','lecoq.suzanne@legoff.com','Diane','Perret','1963-05-02 04:30:41','u','2019-11-08 21:13:19','2019-11-04 08:27:58','+33 6 49 59 16 80',1),(19207,NULL,NULL,'jacques.chauvin@tele2.fr','jacques.chauvin@tele2.fr','Lucie','Joubert','1968-02-29 16:16:45','u','2019-11-18 09:30:24','2019-11-04 08:27:58','0118281231',0),(19208,NULL,NULL,'gtorres@mahe.com','gtorres@mahe.com','Thierry','Alves','1970-06-29 01:40:58','u','2019-11-06 05:53:54','2019-11-04 08:27:58','04 14 52 57 21',0),(19209,NULL,NULL,'ines32@ifrance.com','ines32@ifrance.com','Jean','Delahaye','1987-11-24 08:22:11','u','2019-12-02 20:24:27','2019-11-04 08:27:58','+33 3 00 07 23 77',0),(19210,NULL,NULL,'raymond07@benoit.fr','raymond07@benoit.fr','Marthe','Grondin','1982-08-27 16:43:22','u','2019-11-22 11:51:00','2019-11-04 08:27:58','+33 (0)8 98 88 90 45',0),(19211,NULL,NULL,'gbesson@hotmail.fr','gbesson@hotmail.fr','Georges','Roche','1991-01-02 11:40:36','u','2019-11-07 00:45:04','2019-11-04 08:27:58','07 43 25 31 19',0),(19212,NULL,NULL,'diane52@diaz.fr','diane52@diaz.fr','Olivier','Costa','1968-07-21 23:13:03','u','2019-10-14 03:10:44','2019-11-04 08:27:58','+33 (0)1 23 37 52 21',0),(19213,NULL,NULL,'lucie.poulain@tele2.fr','lucie.poulain@tele2.fr','Alex','Breton','1991-04-05 02:16:09','u','2019-10-20 05:11:28','2019-11-04 08:27:58','0203843105',0);
/*!40000 ALTER TABLE `sylius_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_customer_group`
--

LOCK TABLES `sylius_customer_group` WRITE;
/*!40000 ALTER TABLE `sylius_customer_group` DISABLE KEYS */;
INSERT INTO `sylius_customer_group` VALUES (19,'retail','Retail'),(20,'wholesale','Wholesale');
/*!40000 ALTER TABLE `sylius_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`),
  CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_exchange_rate`
--

LOCK TABLES `sylius_exchange_rate` WRITE;
/*!40000 ALTER TABLE `sylius_exchange_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_gateway_config`
--

LOCK TABLES `sylius_gateway_config` WRITE;
/*!40000 ALTER TABLE `sylius_gateway_config` DISABLE KEYS */;
INSERT INTO `sylius_gateway_config` VALUES (19,'Offline','offline','[]'),(20,'Offline','offline','[]');
/*!40000 ALTER TABLE `sylius_gateway_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_locale`
--

LOCK TABLES `sylius_locale` WRITE;
/*!40000 ALTER TABLE `sylius_locale` DISABLE KEYS */;
INSERT INTO `sylius_locale` VALUES (11,'en_US','2019-11-04 08:27:42','2019-11-04 08:27:42');
/*!40000 ALTER TABLE `sylius_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`),
  CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10264 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order`
--

LOCK TABLES `sylius_order` WRITE;
/*!40000 ALTER TABLE `sylius_order` DISABLE KEYS */;
INSERT INTO `sylius_order` VALUES (10244,635,636,10,NULL,18202,'000000001','Odio similique non quidem eum.','new','2018-11-11 23:17:14',22985,561,23546,'2019-11-04 08:27:50','2019-11-04 08:27:50','USD','en_US','completed','awaiting_payment','ready','hPr-38wWKX',NULL),(10245,638,639,10,NULL,18198,'000000002',NULL,'new','2018-11-30 01:36:32',2550,561,3111,'2019-11-04 08:27:50','2019-11-04 08:27:50','USD','en_US','completed','awaiting_payment','ready','JXTgan7FJi',NULL),(10246,641,642,10,NULL,18205,'000000003','Quia possimus voluptas ipsa id aut.','new','2018-12-17 18:24:28',63918,561,64479,'2019-11-04 08:27:50','2019-11-04 08:27:50','USD','en_US','completed','awaiting_payment','ready','ghf-FRN9BR',NULL),(10247,644,645,10,NULL,18206,'000000004',NULL,'new','2018-12-25 14:16:56',19823,781,20604,'2019-11-04 08:27:50','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','v170pobUpp',NULL),(10248,647,648,10,NULL,18202,'000000005','Provident fugit et qui dolorum ad inventore fugiat.','new','2019-01-10 00:47:47',27624,561,28185,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','fv_Uolw3~X',NULL),(10249,650,651,10,NULL,18207,'000000006',NULL,'new','2019-01-16 08:00:33',18707,561,19268,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','0_sKgDWFGG',NULL),(10250,653,654,10,NULL,18196,'000000007',NULL,'new','2019-01-23 19:52:03',17404,781,18185,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','9-LV3S8fod',NULL),(10251,656,657,10,NULL,18213,'000000008','Cum explicabo corporis quas qui.','new','2019-01-25 01:28:24',22560,561,23121,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','KD6MCR8rEB',NULL),(10252,659,660,10,NULL,18196,'000000009',NULL,'new','2019-01-28 21:51:39',8165,781,8946,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','N0Wu7zWcwV',NULL),(10253,662,663,10,NULL,18200,'000000010',NULL,'new','2019-02-03 04:37:12',19831,781,20612,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','osEDzcD-95',NULL),(10254,665,666,10,NULL,18197,'000000011',NULL,'new','2019-02-20 02:47:56',24396,561,24957,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','NuXXYU~ITR',NULL),(10255,668,669,10,NULL,18210,'000000012',NULL,'new','2019-03-30 10:06:44',6700,781,7481,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','GHogSG9Vlm',NULL),(10256,671,672,10,NULL,18206,'000000013',NULL,'new','2019-04-30 04:18:43',18593,781,19374,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','94XEMguPT6',NULL),(10257,674,675,10,NULL,18213,'000000014',NULL,'new','2019-05-12 09:26:20',41906,561,42467,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','PTakyDPjnf',NULL),(10258,677,678,10,NULL,18196,'000000015',NULL,'new','2019-06-13 14:19:53',19840,781,20621,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','SUlrjO1llY',NULL),(10259,680,681,10,NULL,18208,'000000016',NULL,'new','2019-07-17 11:04:21',39844,561,40405,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','~hxKiSIiIS',NULL),(10260,683,684,10,NULL,18204,'000000017',NULL,'new','2019-08-31 23:14:20',37253,561,37814,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','IlPlSBTHC9',NULL),(10261,686,687,10,NULL,18199,'000000018',NULL,'new','2019-09-10 03:42:18',18315,561,18876,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','--DNDaEuvl',NULL),(10262,689,690,10,NULL,18202,'000000019','Porro sunt unde vel porro magnam.','new','2019-10-03 18:37:38',28729,781,29510,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','vKsdk5g-Lg',NULL),(10263,692,693,10,NULL,18202,'000000020',NULL,'new','2019-10-29 07:10:03',7371,781,8152,'2019-11-04 08:27:51','2019-11-04 08:27:51','USD','en_US','completed','awaiting_payment','ready','KLdODKOwSN',NULL);
/*!40000 ALTER TABLE `sylius_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18231 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item`
--

LOCK TABLES `sylius_order_item` WRITE;
/*!40000 ALTER TABLE `sylius_order_item` DISABLE KEYS */;
INSERT INTO `sylius_order_item` VALUES (18179,10244,1186,3,8818,14462,0,14462,0,'New age regular','XXL'),(18180,10244,1158,2,2093,2288,0,2288,0,'Slim fit classic','M'),(18181,10244,1166,5,2281,6235,0,6235,0,'Regular Fit casual','XXL'),(18182,10245,1172,3,850,2550,0,2550,0,'Ultra slim','S'),(18183,10246,1176,5,5041,13993,0,13993,0,'Ultra slim','XXL'),(18184,10246,1171,5,5062,14050,0,14050,0,'Slim fit elegant','XXL'),(18185,10246,1107,5,8187,22724,0,22724,0,'Circle-skirt Dress','S Petite'),(18186,10246,1166,5,2281,6331,0,6331,0,'Regular Fit casual','XXL'),(18187,10246,1153,5,2457,6820,0,6820,0,'Basic regular','M'),(18188,10247,1153,5,2457,6690,0,6690,0,'Basic regular','M'),(18189,10247,1103,1,387,253,0,253,0,'Basic winter hot cap',''),(18190,10247,1173,2,7300,7951,0,7951,0,'Ultra slim','M'),(18191,10247,1188,3,3017,4929,0,4929,0,'Whole holes classic','M'),(18192,10248,1102,4,5643,12389,0,12389,0,'Slim fit V-neck men','XXL'),(18193,10248,1075,3,9184,15123,0,15123,0,'Basic regular woman','L'),(18194,10248,1100,2,102,112,0,112,0,'Slim fit V-neck men','L'),(18195,10249,1188,5,3017,8201,0,8201,0,'Whole holes classic','M'),(18196,10249,1090,2,9429,10253,0,10253,0,'Slim fit men','L'),(18197,10249,1103,1,387,253,0,253,0,'Basic winter hot cap',''),(18198,10250,1162,4,3702,8034,0,8034,0,'Regular Fit casual','S'),(18199,10250,1139,2,8635,9370,0,9370,0,'Summer tunic','S Tall'),(18200,10251,1154,5,8257,22560,0,22560,0,'Basic regular','L'),(18201,10252,1105,3,2268,8165,0,8165,0,'Regular cap with big pompon',''),(18202,10253,1086,2,7572,14417,0,14417,0,'Regular Fit V-neck woman','XL'),(18203,10253,1147,1,5687,5414,0,5414,0,'Summer tunic','XL Regular'),(18204,10254,1091,3,8670,14222,0,14222,0,'Slim fit men','XL'),(18205,10254,1119,3,456,748,0,748,0,'Circle-skirt Dress','XXL Petite'),(18206,10254,1190,3,1138,1866,0,1866,0,'Whole holes classic','XL'),(18207,10254,1104,2,5761,7560,0,7560,0,'Beautiful cap for woman',''),(18208,10255,1100,1,102,102,0,102,0,'Slim fit V-neck men','L'),(18209,10255,1106,1,5498,6598,0,6598,0,'Simple cap',''),(18210,10256,1106,3,5498,18593,0,18593,0,'Simple cap',''),(18211,10257,1174,1,9920,5556,0,5556,0,'Ultra slim','L'),(18212,10257,1168,4,9315,20865,0,20865,0,'Slim fit elegant','M'),(18213,10257,1104,4,5761,15485,0,15485,0,'Beautiful cap for woman',''),(18214,10258,1174,2,9920,19840,0,19840,0,'Ultra slim','L'),(18215,10259,1073,3,7353,12353,0,12353,0,'Basic regular woman','S'),(18216,10259,1170,4,4164,9327,0,9327,0,'Slim fit elegant','XL'),(18217,10259,1078,5,6487,18164,0,18164,0,'Slim fit woman','S'),(18218,10260,1105,1,2268,1525,0,1525,0,'Regular cap with big pompon',''),(18219,10260,1170,4,4164,9327,0,9327,0,'Slim fit elegant','XL'),(18220,10260,1090,5,9429,26401,0,26401,0,'Slim fit men','L'),(18221,10261,1115,3,1849,3106,0,3106,0,'Circle-skirt Dress','L Tall'),(18222,10261,1184,1,9540,5342,0,5342,0,'New age regular','L'),(18223,10261,1155,3,2257,3792,0,3792,0,'Basic regular','XL'),(18224,10261,1120,1,4569,2559,0,2559,0,'Circle-skirt Dress','XXL Regular'),(18225,10261,1158,3,2093,3516,0,3516,0,'Slim fit classic','M'),(18226,10262,1173,3,7300,12264,0,12264,0,'Ultra slim','M'),(18227,10262,1119,2,456,511,0,511,0,'Circle-skirt Dress','XXL Petite'),(18228,10262,1106,4,5498,14778,0,14778,0,'Simple cap',''),(18229,10262,1099,5,420,1176,0,1176,0,'Slim fit V-neck men','M'),(18230,10263,1153,3,2457,7371,0,7371,0,'Basic regular','M');
/*!40000 ALTER TABLE `sylius_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`),
  CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37254 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_item_unit`
--

LOCK TABLES `sylius_order_item_unit` WRITE;
/*!40000 ALTER TABLE `sylius_order_item_unit` DISABLE KEYS */;
INSERT INTO `sylius_order_item_unit` VALUES (37094,18179,7243,-3998,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37095,18179,7243,-3998,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37096,18179,7243,-3996,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37097,18180,7243,-949,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37098,18180,7243,-949,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37099,18181,7243,-1035,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37100,18181,7243,-1034,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37101,18181,7243,-1034,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37102,18181,7243,-1034,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37103,18181,7243,-1033,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37104,18182,7244,0,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37105,18182,7244,0,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37106,18182,7244,0,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37107,18183,7245,-2243,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37108,18183,7245,-2243,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37109,18183,7245,-2243,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37110,18183,7245,-2242,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37111,18183,7245,-2241,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37112,18184,7245,-2252,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37113,18184,7245,-2252,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37114,18184,7245,-2252,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37115,18184,7245,-2252,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37116,18184,7245,-2252,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37117,18185,7245,-3643,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37118,18185,7245,-3642,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37119,18185,7245,-3642,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37120,18185,7245,-3642,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37121,18185,7245,-3642,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37122,18186,7245,-1015,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37123,18186,7245,-1015,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37124,18186,7245,-1015,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37125,18186,7245,-1015,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37126,18186,7245,-1014,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37127,18187,7245,-1094,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37128,18187,7245,-1094,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37129,18187,7245,-1093,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37130,18187,7245,-1092,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37131,18187,7245,-1092,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(37132,18188,7246,-1120,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37133,18188,7246,-1120,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37134,18188,7246,-1119,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37135,18188,7246,-1118,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37136,18188,7246,-1118,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37137,18189,7246,-134,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37138,18190,7246,-3325,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37139,18190,7246,-3324,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37140,18191,7246,-1374,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37141,18191,7246,-1374,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37142,18191,7246,-1374,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(37143,18192,7247,-2547,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37144,18192,7247,-2546,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37145,18192,7247,-2545,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37146,18192,7247,-2545,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37147,18193,7247,-4144,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37148,18193,7247,-4143,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37149,18193,7247,-4142,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37150,18194,7247,-46,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37151,18194,7247,-46,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37152,18195,7248,-1377,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37153,18195,7248,-1377,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37154,18195,7248,-1377,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37155,18195,7248,-1377,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37156,18195,7248,-1376,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37157,18196,7248,-4303,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37158,18196,7248,-4302,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37159,18197,7248,-134,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37160,18198,7249,-1694,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37161,18198,7249,-1694,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37162,18198,7249,-1693,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37163,18198,7249,-1693,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37164,18199,7249,-3950,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37165,18199,7249,-3950,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37166,18200,7250,-3745,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37167,18200,7250,-3745,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37168,18200,7250,-3745,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37169,18200,7250,-3745,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37170,18200,7250,-3745,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37171,18201,7251,454,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37172,18201,7251,454,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37173,18201,7251,453,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37174,18202,7252,-364,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37175,18202,7252,-363,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37176,18203,7252,-273,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37177,18204,7253,-3930,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37178,18204,7253,-3929,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37179,18204,7253,-3929,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37180,18205,7253,-207,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37181,18205,7253,-207,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37182,18205,7253,-206,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37183,18206,7253,-516,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37184,18206,7253,-516,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37185,18206,7253,-516,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37186,18207,7253,-1981,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37187,18207,7253,-1981,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37188,18208,7254,0,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37189,18209,7254,1100,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37190,18210,7255,699,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37191,18210,7255,700,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37192,18210,7255,700,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37193,18211,7256,-4364,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37194,18212,7256,-4099,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37195,18212,7256,-4099,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37196,18212,7256,-4099,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37197,18212,7256,-4098,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37198,18213,7256,-1889,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37199,18213,7256,-1890,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37200,18213,7256,-1890,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37201,18213,7256,-1890,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37202,18214,7257,0,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37203,18214,7257,0,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37204,18215,7258,-3236,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37205,18215,7258,-3235,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37206,18215,7258,-3235,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37207,18216,7258,-1833,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37208,18216,7258,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37209,18216,7258,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37210,18216,7258,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37211,18217,7258,-2855,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37212,18217,7258,-2854,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37213,18217,7258,-2854,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37214,18217,7258,-2854,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37215,18217,7258,-2854,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37216,18218,7259,-743,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37217,18219,7259,-1833,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37218,18219,7259,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37219,18219,7259,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37220,18219,7259,-1832,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37221,18220,7259,-4149,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37222,18220,7259,-4149,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37223,18220,7259,-4149,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37224,18220,7259,-4149,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37225,18220,7259,-4148,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37226,18221,7260,-814,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37227,18221,7260,-814,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37228,18221,7260,-813,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37229,18222,7260,-4198,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37230,18223,7260,-993,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37231,18223,7260,-993,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37232,18223,7260,-993,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37233,18224,7260,-2010,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37234,18225,7260,-921,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37235,18225,7260,-921,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37236,18225,7260,-921,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37237,18226,7261,-3212,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37238,18226,7261,-3212,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37239,18226,7261,-3212,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37240,18227,7261,-201,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37241,18227,7261,-200,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37242,18228,7261,-1804,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37243,18228,7261,-1803,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37244,18228,7261,-1803,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37245,18228,7261,-1804,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37246,18229,7261,-185,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37247,18229,7261,-185,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37248,18229,7261,-185,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37249,18229,7261,-185,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37250,18229,7261,-184,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37251,18230,7262,0,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37252,18230,7262,0,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(37253,18230,7262,0,'2019-11-04 08:27:51','2019-11-04 08:27:51');
/*!40000 ALTER TABLE `sylius_order_item_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_order_sequence`
--

LOCK TABLES `sylius_order_sequence` WRITE;
/*!40000 ALTER TABLE `sylius_order_sequence` DISABLE KEYS */;
INSERT INTO `sylius_order_sequence` VALUES (10,20,2);
/*!40000 ALTER TABLE `sylius_order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`),
  CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7263 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment`
--

LOCK TABLES `sylius_payment` WRITE;
/*!40000 ALTER TABLE `sylius_payment` DISABLE KEYS */;
INSERT INTO `sylius_payment` VALUES (7243,19,10244,'USD',23546,'new','[]','2019-11-04 08:27:50','2019-11-04 08:27:50'),(7244,20,10245,'USD',3111,'new','[]','2019-11-04 08:27:50','2019-11-04 08:27:50'),(7245,20,10246,'USD',64479,'new','[]','2019-11-04 08:27:50','2019-11-04 08:27:50'),(7246,19,10247,'USD',20604,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7247,19,10248,'USD',28185,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7248,20,10249,'USD',19268,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7249,20,10250,'USD',18185,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7250,20,10251,'USD',23121,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7251,20,10252,'USD',8946,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7252,20,10253,'USD',20612,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7253,19,10254,'USD',24957,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7254,19,10255,'USD',7481,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7255,20,10256,'USD',19374,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7256,20,10257,'USD',42467,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7257,20,10258,'USD',20621,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7258,19,10259,'USD',40405,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7259,20,10260,'USD',37814,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7260,20,10261,'USD',18876,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7261,19,10262,'USD',29510,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51'),(7262,19,10263,'USD',8152,'new','[]','2019-11-04 08:27:51','2019-11-04 08:27:51');
/*!40000 ALTER TABLE `sylius_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`),
  CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method`
--

LOCK TABLES `sylius_payment_method` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method` DISABLE KEYS */;
INSERT INTO `sylius_payment_method` VALUES (19,19,'cash_on_delivery',NULL,1,0,'2019-11-04 08:27:43','2019-11-04 08:27:43'),(20,20,'bank_transfer',NULL,1,1,'2019-11-04 08:27:43','2019-11-04 08:27:43');
/*!40000 ALTER TABLE `sylius_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_channels`
--

LOCK TABLES `sylius_payment_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_channels` VALUES (19,10),(20,10);
/*!40000 ALTER TABLE `sylius_payment_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_method_translation`
--

LOCK TABLES `sylius_payment_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_payment_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_payment_method_translation` VALUES (19,19,'Cash on delivery','Qui facilis voluptatem sed.',NULL,'en_US'),(20,20,'Bank transfer','Necessitatibus enim nesciunt aliquam dicta.',NULL,'en_US');
/*!40000 ALTER TABLE `sylius_payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_payment_security_token`
--

LOCK TABLES `sylius_payment_security_token` WRITE;
/*!40000 ALTER TABLE `sylius_payment_security_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_payment_security_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product`
--

LOCK TABLES `sylius_product` WRITE;
/*!40000 ALTER TABLE `sylius_product` DISABLE KEYS */;
INSERT INTO `sylius_product` VALUES (191,103,'Basic_regular_woman','2019-11-01 15:51:29','2019-11-04 08:27:50',1,'match',4),(192,103,'Slim_fit_woman','2019-11-02 03:50:32','2019-11-04 08:27:50',1,'match',4),(193,103,'Regular_Fit_V_neck_woman','2019-11-02 02:29:02','2019-11-04 08:27:50',1,'match',2.5),(194,102,'Slim_fit_men','2019-10-29 04:23:00','2019-11-04 08:27:50',1,'match',3.5),(195,102,'Regular_fit_men','2019-10-31 11:08:02','2019-11-04 08:27:50',1,'match',4),(196,102,'Slim_fit_V_neck_men','2019-11-02 14:19:23','2019-11-04 08:27:49',1,'match',0),(197,106,'Basic_winter_hot_cap','2019-11-01 06:17:01','2019-11-04 08:27:49',1,'match',0),(198,105,'Beautiful_cap_for_woman','2019-11-03 14:44:55','2019-11-04 08:27:50',1,'match',5),(199,106,'Regular_cap_with_big_pompon','2019-10-29 16:49:15','2019-11-04 08:27:49',1,'match',0),(200,105,'Simple_cap','2019-11-02 19:34:22','2019-11-04 08:27:50',1,'match',4),(201,107,'Circle_skirt_Dress','2019-10-31 16:36:25','2019-11-04 08:27:49',1,'match',0),(202,107,'Sleeveless_Dress','2019-10-28 19:18:49','2019-11-04 08:27:49',1,'match',0),(203,107,'Summer_tunic','2019-10-31 04:19:42','2019-11-04 08:27:50',1,'match',3),(204,109,'Basic_regular','2019-10-29 01:54:20','2019-11-04 08:27:50',1,'match',0),(205,109,'Slim_fit_classic','2019-11-01 04:29:29','2019-11-04 08:27:50',1,'match',0),(206,109,'Regular_Fit_casual','2019-11-02 04:06:10','2019-11-04 08:27:50',1,'match',0),(207,109,'Slim_fit_elegant','2019-11-01 16:50:37','2019-11-04 08:27:50',1,'match',0),(208,110,'Ultra_slim','2019-10-28 09:49:30','2019-11-04 08:27:50',1,'match',2),(209,110,'Slim_fit','2019-10-29 18:09:24','2019-11-04 08:27:50',1,'match',0),(210,110,'New_age_regular','2019-11-03 07:14:44','2019-11-04 08:27:50',1,'match',0),(211,110,'Whole_holes_classic','2019-10-29 18:51:29','2019-11-04 08:27:50',1,'match',0);
/*!40000 ALTER TABLE `sylius_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`),
  CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association`
--

LOCK TABLES `sylius_product_association` WRITE;
/*!40000 ALTER TABLE `sylius_product_association` DISABLE KEYS */;
INSERT INTO `sylius_product_association` VALUES (29,10,200,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(30,10,203,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(31,10,208,'2019-11-04 08:27:50','2019-11-04 08:27:50');
/*!40000 ALTER TABLE `sylius_product_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`),
  CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_product`
--

LOCK TABLES `sylius_product_association_product` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_product` DISABLE KEYS */;
INSERT INTO `sylius_product_association_product` VALUES (29,198),(29,200),(30,201),(30,202),(31,208),(31,209);
/*!40000 ALTER TABLE `sylius_product_association_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type`
--

LOCK TABLES `sylius_product_association_type` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type` VALUES (10,'similar_products','2019-11-04 08:27:50','2019-11-04 08:27:50');
/*!40000 ALTER TABLE `sylius_product_association_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

LOCK TABLES `sylius_product_association_type_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_association_type_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_association_type_translation` VALUES (10,10,'Similar products','en_US');
/*!40000 ALTER TABLE `sylius_product_association_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute`
--

LOCK TABLES `sylius_product_attribute` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute` VALUES (109,'t_shirt_brand','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',0),(110,'t_shirt_collection','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',1),(111,'t_shirt_material','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',2),(112,'cap_brand','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',3),(113,'cap_collection','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',4),(114,'cap_material','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',5),(115,'dress_brand','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',6),(116,'dress_collection','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',7),(117,'dress_material','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',8),(118,'jeans_brand','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',9),(119,'jeans_collection','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',10),(120,'jeans_material','text','text','a:0:{}','2019-11-04 08:27:49','2019-11-04 08:27:49',11);
/*!40000 ALTER TABLE `sylius_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

LOCK TABLES `sylius_product_attribute_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_translation` VALUES (109,109,'T-shirt brand','en_US'),(110,110,'T-shirt collection','en_US'),(111,111,'T-shirt material','en_US'),(112,112,'Cap brand','en_US'),(113,113,'Cap collection','en_US'),(114,114,'Cap material','en_US'),(115,115,'Dress brand','en_US'),(116,116,'Dress collection','en_US'),(117,117,'Dress material','en_US'),(118,118,'Jeans brand','en_US'),(119,119,'Jeans collection','en_US'),(120,120,'Jeans material','en_US');
/*!40000 ALTER TABLE `sylius_product_attribute_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`),
  CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_attribute_value`
--

LOCK TABLES `sylius_product_attribute_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_attribute_value` DISABLE KEYS */;
INSERT INTO `sylius_product_attribute_value` VALUES (568,191,109,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(569,191,110,'en_US','Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(570,191,111,'en_US','100% viscose',NULL,NULL,NULL,NULL,NULL,NULL),(571,192,109,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(572,192,110,'en_US','Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(573,192,111,'en_US','100% cotton',NULL,NULL,NULL,NULL,NULL,NULL),(574,193,109,'en_US','Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL),(575,193,110,'en_US','Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(576,193,111,'en_US','100% viscose',NULL,NULL,NULL,NULL,NULL,NULL),(577,194,109,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(578,194,110,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(579,194,111,'en_US','100% nylon',NULL,NULL,NULL,NULL,NULL,NULL),(580,195,109,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(581,195,110,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(582,195,111,'en_US','100% linen',NULL,NULL,NULL,NULL,NULL,NULL),(583,196,109,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(584,196,110,'en_US','Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(585,196,111,'en_US','100% polyester',NULL,NULL,NULL,NULL,NULL,NULL),(586,197,112,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(587,197,113,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(588,197,114,'en_US','100% wool',NULL,NULL,NULL,NULL,NULL,NULL),(589,198,112,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(590,198,113,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(591,198,114,'en_US','100% wool',NULL,NULL,NULL,NULL,NULL,NULL),(592,199,112,'en_US','Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL),(593,199,113,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(594,199,114,'en_US','100% wool',NULL,NULL,NULL,NULL,NULL,NULL),(595,200,112,'en_US','Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL),(596,200,113,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(597,200,114,'en_US','100% wool',NULL,NULL,NULL,NULL,NULL,NULL),(598,201,115,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(599,201,116,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(600,201,117,'en_US','100% polyester',NULL,NULL,NULL,NULL,NULL,NULL),(601,202,115,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(602,202,116,'en_US','Sylius Summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(603,202,117,'en_US','100% wool',NULL,NULL,NULL,NULL,NULL,NULL),(604,203,115,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(605,203,116,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(606,203,117,'en_US','100% ',NULL,NULL,NULL,NULL,NULL,NULL),(607,204,118,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(608,204,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(609,204,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(610,205,118,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(611,205,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(612,205,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(613,206,118,'en_US','Celsius Small',NULL,NULL,NULL,NULL,NULL,NULL),(614,206,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(615,206,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(616,207,118,'en_US','Date & Banana',NULL,NULL,NULL,NULL,NULL,NULL),(617,207,119,'en_US','Sylius summer 2019',NULL,NULL,NULL,NULL,NULL,NULL),(618,207,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(619,208,118,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(620,208,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(621,208,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(622,209,118,'en_US','You are breathtaking',NULL,NULL,NULL,NULL,NULL,NULL),(623,209,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(624,209,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(625,210,118,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(626,210,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(627,210,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL),(628,211,118,'en_US','Modern Wear',NULL,NULL,NULL,NULL,NULL,NULL),(629,211,119,'en_US','Sylius Winter 2019',NULL,NULL,NULL,NULL,NULL,NULL),(630,211,120,'en_US','100% jeans',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sylius_product_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`),
  CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_channels`
--

LOCK TABLES `sylius_product_channels` WRITE;
/*!40000 ALTER TABLE `sylius_product_channels` DISABLE KEYS */;
INSERT INTO `sylius_product_channels` VALUES (191,10),(192,10),(193,10),(194,10),(195,10),(196,10),(197,10),(198,10),(199,10),(200,10),(201,10),(202,10),(203,10),(204,10),(205,10),(206,10),(207,10),(208,10),(209,10),(210,10),(211,10);
/*!40000 ALTER TABLE `sylius_product_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`),
  CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image`
--

LOCK TABLES `sylius_product_image` WRITE;
/*!40000 ALTER TABLE `sylius_product_image` DISABLE KEYS */;
INSERT INTO `sylius_product_image` VALUES (191,191,'main','f4/3a/4bd624dbe81a74f12688d9fdf05a.jpeg'),(192,192,'main','84/44/e462dcbf1b2ab26e44474016c299.jpeg'),(193,193,'main','9c/28/c2fd33558c0ebb74683273cdfd48.jpeg'),(194,194,'main','ba/9c/c0c3b37ed675098d09f7b43b28b6.jpeg'),(195,195,'main','9a/8c/1eec9970353491fd042713cbabe1.jpeg'),(196,196,'main','f9/91/b8ac9675e84b60a818362e8cba0f.jpeg'),(197,197,'main','64/2e/167caf01c1351faec35eb5efbae4.jpeg'),(198,198,'main','e4/23/621ca26eca71bd4ef0c95b3f9054.jpeg'),(199,199,'main','24/85/e91284ce0282a42e1f9782e02389.jpeg'),(200,200,'main','52/43/490e2dd8e9e5814ca7944b9cef00.jpeg'),(201,201,'main','aa/9b/333a75194c27d9d183c20bc73b04.jpeg'),(202,202,'main','2b/c0/e5b6f8ffdd37791d68bb33af1fc6.jpeg'),(203,203,'main','cc/a8/f910b8a202ab9c318956757188a2.jpeg'),(204,204,'main','8d/4e/5936ae4bc5b0f50ab8f0c22fdb29.jpeg'),(205,205,'main','c9/41/87cfa0d70433a03fc2576d76acd7.jpeg'),(206,206,'main','a2/2d/469cac3a16a82086d2c04586f13a.jpeg'),(207,207,'main','a4/84/ff3e022f1e83617458473f00bea5.jpeg'),(208,208,'main','0e/38/1ae06f44cbd407f9db2743950ee0.jpeg'),(209,209,'main','f9/58/308d473ec037b1de5d971e060803.jpeg'),(210,210,'main','a9/82/833faa82b0b5402a1d8b9f070788.jpeg'),(211,211,'main','96/ec/2b0cae0b83c6561f44fc71756df1.jpeg');
/*!40000 ALTER TABLE `sylius_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`),
  CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_image_product_variants`
--

LOCK TABLES `sylius_product_image_product_variants` WRITE;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_product_image_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option`
--

LOCK TABLES `sylius_product_option` WRITE;
/*!40000 ALTER TABLE `sylius_product_option` DISABLE KEYS */;
INSERT INTO `sylius_product_option` VALUES (37,'t_shirt_size',0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(38,'dress_size',1,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(39,'dress_height',2,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(40,'jeans_size',3,'2019-11-04 08:27:49','2019-11-04 08:27:49');
/*!40000 ALTER TABLE `sylius_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_translation`
--

LOCK TABLES `sylius_product_option_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_translation` VALUES (37,37,'T-shirt size','en_US'),(38,38,'Dress size','en_US'),(39,39,'Dress height','en_US'),(40,40,'Jeans size','en_US');
/*!40000 ALTER TABLE `sylius_product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`),
  CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value`
--

LOCK TABLES `sylius_product_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value` VALUES (163,37,'t_shirt_size_s'),(164,37,'t_shirt_size_m'),(165,37,'t_shirt_size_l'),(166,37,'t_shirt_size_xl'),(167,37,'t_shirt_size_xxl'),(168,38,'dress_s'),(169,38,'dress_m'),(170,38,'dress_l'),(171,38,'dress_xl'),(172,38,'dress_xxl'),(173,39,'dress_height_petite'),(174,39,'dress_height_regular'),(175,39,'dress_height_tall'),(176,40,'jeans_size_s'),(177,40,'jeans_size_m'),(178,40,'jeans_size_l'),(179,40,'jeans_size_xl'),(180,40,'jeans_size_xxl');
/*!40000 ALTER TABLE `sylius_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_option_value_translation`
--

LOCK TABLES `sylius_product_option_value_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_option_value_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_option_value_translation` VALUES (163,163,'S','en_US'),(164,164,'M','en_US'),(165,165,'L','en_US'),(166,166,'XL','en_US'),(167,167,'XXL','en_US'),(168,168,'S','en_US'),(169,169,'M','en_US'),(170,170,'L','en_US'),(171,171,'XL','en_US'),(172,172,'XXL','en_US'),(173,173,'Petite','en_US'),(174,174,'Regular','en_US'),(175,175,'Tall','en_US'),(176,176,'S','en_US'),(177,177,'M','en_US'),(178,178,'L','en_US'),(179,179,'XL','en_US'),(180,180,'XXL','en_US');
/*!40000 ALTER TABLE `sylius_product_option_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`),
  CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_options`
--

LOCK TABLES `sylius_product_options` WRITE;
/*!40000 ALTER TABLE `sylius_product_options` DISABLE KEYS */;
INSERT INTO `sylius_product_options` VALUES (191,37),(192,37),(193,37),(194,37),(195,37),(196,37),(201,38),(201,39),(202,38),(202,39),(203,38),(203,39),(204,40),(205,40),(206,40),(207,40),(208,40),(209,40),(210,40),(211,40);
/*!40000 ALTER TABLE `sylius_product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`),
  CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_review`
--

LOCK TABLES `sylius_product_review` WRITE;
/*!40000 ALTER TABLE `sylius_product_review` DISABLE KEYS */;
INSERT INTO `sylius_product_review` VALUES (361,203,18199,'fugit et consequuntur',4,'Fugit dolores cum ratione alias hic. Necessitatibus pariatur repellat accusamus repellat. Et sed accusantium voluptates ut distinctio optio.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(362,198,18199,'blanditiis laboriosam ullam',5,'Ea dolor quibusdam autem corrupti et. Suscipit voluptatibus harum dicta perspiciatis sapiente. Esse qui quos recusandae ut voluptatem incidunt fuga.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(363,200,18212,'eos dolorum dolor',4,'Doloribus vitae voluptatem molestias. Provident doloremque quis saepe deserunt. Voluptatum nam esse est perspiciatis est ipsa ut.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(364,208,18205,'maiores sit qui',2,'Enim ipsum voluptatem dolor repudiandae dolorem molestiae. Impedit voluptatem ea eos provident. Et magnam nostrum non odit reprehenderit.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(365,200,18209,'delectus qui qui',4,'Facere consequuntur qui eum maxime odio sapiente amet hic. Alias corporis commodi laborum nostrum sed. Tenetur veniam qui ipsa veritatis voluptatem eaque.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(366,203,18213,'nihil dolorem aut',1,'Soluta laborum error neque quia qui. Ducimus itaque ullam cupiditate enim. Adipisci qui ea quas quisquam voluptates quidem tenetur hic.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(367,206,18193,'dicta quo qui',5,'Temporibus quis repudiandae voluptatem architecto. Libero et est enim dolorum. Qui et error sint reiciendis.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(368,193,18194,'voluptas neque quis',3,'Sit officia magnam in non reprehenderit corrupti consequatur. Id odio placeat cumque enim sunt eum provident. Eius quasi id est.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(369,208,18205,'dolorem non facilis',2,'Qui sapiente dignissimos atque. Aut ratione est omnis et occaecati distinctio eos. Aliquid repellat iste cupiditate est.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(370,200,18207,'est eaque debitis',1,'Cumque provident ut soluta qui minus provident. Aut et ut voluptate molestiae. Quis quibusdam pariatur doloribus.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(371,203,18201,'autem maxime doloremque',1,'Esse dolore id excepturi. Praesentium hic ducimus et veniam. Et animi et aperiam enim.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(372,191,18212,'ad temporibus sit',3,'Velit in modi consequuntur enim recusandae exercitationem soluta autem. Qui libero eos tempora eligendi. Dolorum recusandae voluptatem aperiam vitae explicabo.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(373,196,18213,'id blanditiis delectus',1,'Inventore est iure et eum necessitatibus eum. Natus in aut corrupti numquam. Ut itaque corporis blanditiis ipsum commodi.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(374,195,18205,'facilis accusantium ad',1,'Facilis omnis voluptatum iusto ad odio. Repellat sit similique rerum perferendis et totam unde facilis. Voluptas sunt architecto perferendis consectetur.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(375,207,18209,'minima reprehenderit beatae',5,'Est sed sed et vero eligendi voluptatem quia. Animi veniam rerum quasi ipsa est dignissimos. Totam et nisi aut consequatur saepe.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(376,192,18213,'perspiciatis necessitatibus repellendus',4,'Cum facilis cum enim aliquam. Dolor in accusamus ut deserunt. Deleniti debitis ducimus occaecati.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(377,193,18206,'amet exercitationem quod',1,'Eum sed ipsum consectetur ullam eum et. A unde amet unde tempore autem. Doloribus quos voluptatem dolor quisquam et fugiat.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(378,208,18210,'in quo ipsam',4,'Omnis dolorem iste architecto a fugiat est voluptas. Porro iste autem qui fuga culpa odit. Commodi accusamus magni est nobis aut non.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(379,199,18208,'enim vero nesciunt',1,'Id molestiae corporis quis doloremque cupiditate repudiandae. Voluptatem nobis esse facilis labore esse autem. Ut eos est quod voluptate.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(380,191,18200,'ex saepe excepturi',4,'Sed est voluptatem accusamus sit nesciunt nisi velit veniam. Est amet aliquam totam repellat asperiores et quibusdam. Possimus impedit veniam voluptas quis.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(381,203,18206,'qui doloremque itaque',4,'Porro et nesciunt voluptatem est. Minus non sequi quae atque ipsa quis. Et dolor non fugit ea debitis exercitationem.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(382,193,18199,'minima itaque quis',5,'Vero ut vitae minus fugit dolorem. Exercitationem quod laboriosam rerum aut. Fuga sed cumque nam non aut.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(383,193,18198,'et omnis et',3,'Voluptatem ad repudiandae quisquam quia est. Rerum consequuntur quia aut eveniet eius est expedita. Maiores cupiditate sed perferendis velit ut sint molestiae.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(384,198,18196,'quae voluptas aut',4,'Vero perspiciatis quo esse dicta ratione. Et possimus est est ducimus quos ut aliquam qui. Et quo voluptas quis ut in repellendus quaerat.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(385,199,18204,'dolores est eaque',4,'Est sunt magnam id sequi nostrum. Voluptatum accusantium officia officia eius doloremque aut ex. Voluptatibus dolorem accusamus saepe dolorem.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(386,193,18200,'ut dicta harum',1,'Deleniti neque magnam cum ducimus dolorum iusto. Harum vitae explicabo vero aut. Consectetur dolorem sed porro.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(387,194,18207,'occaecati qui laborum',5,'Expedita culpa quia mollitia quia. Quia ut sit nulla in. Iusto deleniti dolor soluta magni.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(388,194,18210,'sit eius asperiores',3,'Et autem doloribus ut facere provident saepe sit. Explicabo incidunt et omnis. Illum quae labore quia eius.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(389,209,18205,'rem et occaecati',1,'Cupiditate qui consectetur maiores vitae sit et. Aut eligendi quo quo sit rerum. Dolore natus debitis ipsa alias et voluptatum.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(390,191,18205,'et facilis est',5,'Unde eligendi rerum enim voluptatem rerum. Sed dolorum doloribus enim aut ut labore. Ipsam iure sequi adipisci assumenda.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(391,211,18201,'quos molestiae accusantium',3,'Beatae quo iusto magni harum voluptates quam consequatur. Corrupti est rerum molestiae quibusdam placeat sit incidunt. Est qui maiores odit repellendus placeat.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(392,196,18201,'veritatis ex accusantium',5,'Nihil et rerum alias aut voluptas repellat totam. A occaecati animi velit ad sunt praesentium odit. Voluptates eveniet est velit consequuntur corrupti illo.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(393,194,18207,'sapiente tenetur modi',4,'Dolores saepe et rerum nihil alias et dolor modi. Ut ab expedita similique minus facilis non facilis omnis. Cum voluptas id omnis ipsum maiores voluptatem corrupti.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(394,199,18197,'eius nam ullam',2,'Excepturi quos sed rerum nobis. In qui dignissimos voluptas eaque ut nesciunt. Veritatis sed ut quos ratione alias corrupti.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(395,195,18211,'qui harum et',4,'Dolorem est rerum aperiam. Ut vero ut praesentium aut ullam. Laborum voluptate rem et laborum.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(396,208,18198,'numquam recusandae voluptatem',5,'Soluta voluptatum et mollitia quis nam eum eius. Doloribus et ut hic aut atque excepturi laboriosam. Sunt repellat et id molestias tempora voluptates consectetur.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(397,193,18202,'modi consequatur at',4,'Accusantium aspernatur aspernatur vitae in dolorum possimus adipisci. Non voluptas magnam laborum qui dolores sunt hic. Voluptates neque cumque deserunt ut temporibus voluptatem quam aliquid.','accepted','2019-11-04 08:27:50','2019-11-04 08:27:50'),(398,198,18195,'facere totam a',5,'Saepe vitae consequatur officiis et qui vel. Mollitia labore quae quasi nihil laudantium debitis omnis. Et tempora vel aut ut omnis culpa.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50'),(399,204,18196,'atque delectus blanditiis',1,'Assumenda sit sunt aut qui. Maxime nihil ipsum molestias quo. Praesentium corporis laboriosam hic et.','new','2019-11-04 08:27:50','2019-11-04 08:27:50'),(400,204,18204,'error qui quia',5,'Veritatis earum est maxime porro occaecati. Occaecati voluptatem aut numquam et quis. Repellat sit et vel.','rejected','2019-11-04 08:27:50','2019-11-04 08:27:50');
/*!40000 ALTER TABLE `sylius_product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`),
  CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_taxon`
--

LOCK TABLES `sylius_product_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_product_taxon` DISABLE KEYS */;
INSERT INTO `sylius_product_taxon` VALUES (354,191,101,0),(355,191,103,0),(356,192,101,1),(357,192,103,1),(358,193,101,2),(359,193,103,2),(360,194,101,3),(361,194,102,0),(362,195,101,4),(363,195,102,1),(364,196,101,5),(365,196,102,2),(366,197,104,0),(367,197,106,0),(368,198,104,1),(369,198,105,0),(370,199,104,2),(371,199,106,1),(372,200,104,3),(373,200,105,1),(374,201,107,0),(375,202,107,1),(376,203,107,2),(377,204,108,0),(378,204,109,0),(379,205,108,1),(380,205,109,1),(381,206,108,2),(382,206,109,2),(383,207,108,3),(384,207,109,3),(385,208,108,4),(386,208,110,0),(387,209,108,5),(388,209,110,1),(389,210,108,6),(390,210,110,2),(391,211,108,7),(392,211,110,3);
/*!40000 ALTER TABLE `sylius_product_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_translation`
--

LOCK TABLES `sylius_product_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_translation` VALUES (192,191,'Basic regular woman','basic-regular-woman','Quidem quo earum voluptatem doloribus eius. Laboriosam amet velit temporibus non.\n\nItaque sint distinctio a. In in sint eos est quis ut. Debitis ea sint dolore aut animi in. Ut tenetur vel accusamus voluptatibus esse. Pariatur iure consequatur voluptas et hic dolor est.\n\nItaque est sapiente quia asperiores fuga. Facere aut dolor aut omnis illo illo blanditiis. Voluptatum animi odio vero et. Aliquid nihil nesciunt nemo atque.',NULL,NULL,'Eaque impedit est voluptates sit labore. Excepturi quae nostrum optio ad. Sed tempore repudiandae et voluptatem. Deleniti sapiente aut dolorem ut laudantium.','en_US'),(193,192,'Slim fit woman','slim-fit-woman','Laboriosam quidem deleniti dolorem nostrum totam ea ut. Quia eligendi at in culpa enim ut. Quasi veritatis quidem quo aut illum temporibus.\n\nMinus minus corporis sunt. Veritatis accusantium quia laudantium qui. Eum inventore incidunt praesentium eligendi dolore consequatur quos sit.\n\nAd eos consequatur dolorem vel doloremque rem numquam enim. Autem quis excepturi dolor et. Corporis impedit dolore excepturi neque perspiciatis doloremque fuga.',NULL,NULL,'Ipsam enim corporis consequatur vero blanditiis labore. Ut eius dolore qui libero iste voluptates. Sint mollitia saepe aut corporis autem sunt unde quia. Magnam quis voluptate eum dolore voluptates et ducimus.','en_US'),(194,193,'Regular Fit V-neck woman','regular-fit-v-neck-woman','Sunt incidunt assumenda unde ipsa. Architecto qui ut doloribus ratione reiciendis eligendi et. Ea est occaecati velit saepe debitis.\n\nSaepe sit ut ipsam magnam deleniti natus voluptas. Dolorem soluta facilis nulla sint asperiores accusamus. In in voluptas voluptate nisi magni.\n\nFacere voluptatum eveniet delectus impedit quo maiores aliquid. Velit vitae perferendis non id sint eum cumque aut. Dolor error illum commodi non.',NULL,NULL,'Asperiores quidem sint alias et consequatur. Unde perspiciatis non impedit earum modi suscipit at. Vero nostrum iusto debitis iure nam.','en_US'),(195,194,'Slim fit men','slim-fit-men','Ut aliquid amet ut vel. Pariatur perferendis qui amet doloribus voluptas adipisci. Ducimus harum molestiae nisi quae labore. Consequatur non temporibus sit doloremque explicabo qui molestiae laboriosam.\n\nDolores mollitia dolor et et enim amet. Est reiciendis excepturi ea recusandae quos earum. Voluptatem ab temporibus quas modi necessitatibus porro. Ea sint rerum dolorem repudiandae ducimus qui.\n\nOccaecati commodi eveniet non ut a. Harum voluptatem consequuntur dolorum sit. Cum sed voluptatem voluptatem voluptas perferendis illo debitis. Dolor nobis reiciendis vero est adipisci sunt. Est repellendus quia velit praesentium beatae dicta fugiat.',NULL,NULL,'Est qui laudantium nulla totam ad sint. Possimus aut sit voluptatem debitis. Nam eum dolores et rerum quisquam nostrum fuga. Non saepe hic magnam non.','en_US'),(196,195,'Regular fit men','regular-fit-men','Ut rem quo voluptatem. Rerum at soluta voluptates.\n\nQui excepturi quos et ratione iure aperiam. Corporis numquam a eum. Veritatis quod sint hic nobis voluptates rem autem. Sint et voluptatem ratione vitae.\n\nOmnis quasi eum sapiente vel. Consequatur odit nihil totam rerum explicabo et quia. Cupiditate id rerum quia sed. Esse et aut non quia.',NULL,NULL,'Possimus nam repellat distinctio id. Quibusdam hic illum similique ut corrupti molestiae. Inventore necessitatibus hic soluta harum eos praesentium.','en_US'),(197,196,'Slim fit V-neck men','slim-fit-v-neck-men','Assumenda repellendus laborum quo vel. Inventore optio doloribus officiis rem sequi aut sequi. Quaerat sunt inventore quaerat animi libero.\n\nMollitia repellat quas dolor qui atque. Consequuntur architecto illum est aspernatur. Sed magni explicabo dolorum numquam expedita ratione voluptatem ut. Enim est repellat sunt.\n\nSuscipit non adipisci aut molestias. Ducimus non sed iure dolor atque et ratione. Debitis rerum provident aut. Autem nam accusamus neque ex.',NULL,NULL,'Sed voluptates et magnam unde recusandae. Sint non necessitatibus molestias dolor facilis. Est voluptatibus dignissimos illo quae.','en_US'),(198,197,'Basic winter hot cap','basic-winter-hot-cap','Neque ipsam est accusantium ab corporis vel. Voluptas magnam vitae exercitationem dolores tempore. Debitis ab at modi blanditiis quia deleniti. Numquam minus vel quo et rem velit.\n\nCommodi commodi illo ipsam facere commodi cupiditate. Vero illo enim blanditiis voluptate voluptatibus rerum aut. Ut illo aut commodi molestias omnis saepe reprehenderit accusamus. Et commodi vel vero tenetur.\n\nDoloremque laboriosam tenetur qui at molestiae. Aperiam similique vel alias repellat quibusdam maxime odio. Delectus rerum dolores voluptas tenetur inventore incidunt sapiente.',NULL,NULL,'Quia aspernatur inventore consequatur dolor nam nesciunt. Maiores ex numquam nostrum culpa amet. Delectus minima consequuntur doloribus voluptas sint dolorem earum. Ut placeat voluptatem exercitationem consequatur ut soluta delectus.','en_US'),(199,198,'Beautiful cap for woman','beautiful-cap-for-woman','Sint similique molestiae maxime aut modi non. Nihil iusto eos et modi est asperiores. Repudiandae voluptatem ut iure similique magnam suscipit. Nulla numquam aut expedita delectus dolores.\n\nEst recusandae amet quam beatae hic. Voluptatem nulla harum vel laboriosam labore a. Animi itaque officia facere.\n\nDeserunt quia nemo et velit. Officiis accusamus aperiam esse qui et quam. Reiciendis pariatur quas nulla architecto.',NULL,NULL,'Esse distinctio optio et accusamus expedita provident placeat. Nam inventore quibusdam consequatur. Impedit sunt omnis cupiditate ea fuga repellat. Voluptas ut dolor consectetur.','en_US'),(200,199,'Regular cap with big pompon','regular-cap-with-big-pompon','Quia rerum perspiciatis aperiam iste. In nihil assumenda harum illo. Error vel modi ut minus.\n\nUt consequuntur optio natus beatae. Ut ea culpa asperiores quia eum voluptatibus. Pariatur debitis aut minima sint accusantium. Consequatur aperiam non ut in.\n\nMaiores mollitia tempore totam labore. Modi quo iusto asperiores aut qui quidem ullam. Voluptatem ipsam beatae et laudantium cumque qui esse.',NULL,NULL,'Aut omnis rerum laboriosam cum quia. Velit quidem ducimus minus et quis. Nulla non odit ipsa ab.','en_US'),(201,200,'Simple cap','simple-cap','Non illo quod ducimus non quam amet aut. Cum voluptates sequi doloribus accusantium voluptatum iusto eveniet. Est repudiandae aut non dolorem ab quia. Vel maxime quasi optio odio.\n\nAspernatur illum eum velit exercitationem accusamus distinctio beatae. Dignissimos a corporis corrupti laborum perferendis est qui. Enim quis eum impedit dolorem nemo ut. Accusamus et fugiat repellendus explicabo aut et.\n\nQuam et illo ut sapiente nihil delectus. Cum autem in omnis. Dolores rerum accusantium in voluptatum.',NULL,NULL,'Libero aliquam architecto quas maiores ut consequuntur dolor. Minus quod qui eveniet. Autem blanditiis quam nemo ut corrupti cum. Qui quibusdam amet iure qui.','en_US'),(202,201,'Circle-skirt Dress','circle-skirt-dress','Consequuntur consequatur quo beatae rerum et facere. Veniam facilis magnam nihil sit error et. Ut et hic assumenda voluptatem ducimus. Dolorem labore nemo ea et.\n\nQuis incidunt autem voluptatem autem libero blanditiis dolores. Ut ut aut ex itaque. Amet itaque dolor vero sed eveniet deleniti dolorem aspernatur.\n\nRatione temporibus cupiditate qui nihil omnis. Est minima sunt sit vel. Voluptatem porro veritatis adipisci ipsa.',NULL,NULL,'Ex eos quisquam aut sapiente aperiam dolore autem. Ea dolores possimus temporibus quos quas. Eveniet ipsam ipsum est accusamus velit qui iste. Est veritatis in sint ut ipsum.','en_US'),(203,202,'Sleeveless Dress','sleeveless-dress','Deserunt ut nulla velit omnis omnis rem. Ea omnis voluptatem voluptas non est voluptatem iure perferendis. Ad rerum sit deleniti laudantium.\n\nFugiat quam officiis quia at incidunt. Voluptatum aut assumenda aut tempore.\n\nDolor doloremque vero cupiditate ut veritatis nobis. Et nulla rerum et sequi qui itaque. Doloribus veniam enim dolor et quos ut saepe.',NULL,NULL,'Veritatis asperiores quasi tempore maxime est ipsa fugit. Exercitationem nulla deserunt nisi ipsam fugit consequatur porro. Possimus aliquam beatae similique ut.','en_US'),(204,203,'Summer tunic','summer-tunic','Nobis aut cumque debitis recusandae ut omnis iste. Sit quo quis distinctio dolores vel ea omnis voluptas. Rerum laborum et voluptas esse dolore nihil. Voluptatibus omnis repellendus alias ad est dolorem dolore.\n\nQui veniam perspiciatis maxime enim omnis quam quo. Magnam nobis et ad et consequatur voluptates ut. Facere est et laboriosam repudiandae vel labore. Dolorum quo deleniti cumque similique aut dolores iusto. A deleniti placeat sint provident ab unde amet.\n\nUt et id saepe enim. Culpa molestiae est iure quia quis. Aut ut error est alias consequuntur tenetur.',NULL,NULL,'Vitae est rerum fuga deleniti. Animi placeat exercitationem labore sit. Alias et ut earum eaque et consectetur voluptas et. Est omnis quo laboriosam maiores hic.','en_US'),(205,204,'Basic regular','basic-regular','Maxime recusandae rerum error alias provident quia quidem. Dolorum ad nobis nam recusandae est qui aspernatur. Ut nulla sed aut qui eos. Pariatur explicabo reprehenderit aut dolores vel.\n\nAnimi beatae autem eaque voluptates dolorum culpa. Cum omnis praesentium vel cupiditate consectetur iste expedita. Dolore quia repellat repudiandae praesentium dolores. Eum illo corrupti minus temporibus ea quos.\n\nQuo est quaerat neque provident. Perspiciatis ullam quis dolorum molestiae magni sit. Qui praesentium consequuntur non iure. Facere eius ut ut ratione voluptatem. Aut sit quidem consequatur harum.',NULL,NULL,'Est quia quia distinctio et nostrum molestias. Et iure earum qui nihil consequatur consequatur nihil. Maiores voluptatem est consequatur sit qui vel illo. Officia architecto delectus ut vitae nihil a. Voluptas omnis quis voluptatem voluptatem.','en_US'),(206,205,'Slim fit classic','slim-fit-classic','Et voluptates aut voluptatem est. Debitis et iusto qui soluta aut tempore et molestiae. Minus blanditiis quis minus et impedit. Qui hic non aut sit nostrum aut omnis. Esse ab quod nostrum molestias.\n\nPorro aperiam voluptas inventore voluptatem tenetur quia aut. Dolores tempora assumenda quidem pariatur tempore. Saepe iure alias fuga quis. Odit recusandae voluptas exercitationem beatae.\n\nVitae eaque sapiente sit aliquam doloremque deleniti repellat. Quas non quis dolorem. Ut amet quo quasi et voluptate. Beatae dolor ut qui aperiam sapiente.',NULL,NULL,'Ut rerum quis numquam aut accusantium. Rerum porro aut quo. Aut quibusdam explicabo unde.','en_US'),(207,206,'Regular Fit casual','regular-fit-casual','Aut eveniet ipsam animi aut ut expedita illo expedita. Sunt beatae ut eaque quia alias dolorum iusto. Iusto tempora qui dolor beatae enim ea. Libero autem nobis nostrum atque omnis aperiam laudantium. Tempora inventore aut quo quas porro enim aliquid.\n\nQuos et exercitationem dolorum aut. Temporibus voluptas sint beatae dolor quia voluptatum.\n\nRerum illo vero eos eveniet quod voluptates dolores. Delectus quis quaerat quae commodi cupiditate iste.',NULL,NULL,'Accusantium ab tempore et officiis eum aut. Placeat amet et quibusdam. Repellendus numquam perspiciatis velit expedita et deleniti incidunt. Similique ipsum repellat in esse esse facilis sequi quia.','en_US'),(208,207,'Slim fit elegant','slim-fit-elegant','Autem sint perspiciatis dolorum neque aspernatur vel culpa nam. Natus aut qui enim mollitia dolorem aut dolorum nobis. Placeat nesciunt fugit tempore exercitationem et. Nam accusamus ad quisquam in.\n\nPraesentium officia sed eaque numquam. Est voluptas voluptate aut eaque amet possimus maiores. Saepe voluptatem impedit veniam blanditiis atque totam voluptas magnam.\n\nFacere autem cupiditate dolorem sed voluptatem enim. Non porro repellendus labore ab eum eligendi. Corporis et modi laudantium. Ratione rerum qui facere explicabo assumenda culpa.',NULL,NULL,'Numquam aliquam incidunt ab ut inventore animi corporis. Et magni voluptates deleniti quos. Dolore deleniti et minima omnis suscipit eaque. Quae et quo qui dignissimos dolorem vitae est tempora. Laudantium ad quae quo unde molestias et.','en_US'),(209,208,'Ultra slim','ultra-slim','Quis praesentium corporis odio et reprehenderit. Voluptatum reiciendis tempora minima provident quia ut labore. Et voluptas et debitis quia accusantium sit. Quibusdam ducimus molestiae accusantium quia quibusdam quam.\n\nAccusamus maxime et eum illo. Aut aspernatur cumque placeat saepe reprehenderit magni nemo. Modi et quo consequuntur qui. Saepe quaerat libero repudiandae ut explicabo similique neque.\n\nAut a sint et nemo officia. Qui dignissimos itaque tempore dolor at nam vel.',NULL,NULL,'Numquam blanditiis adipisci fugit alias et. Debitis non et error suscipit ut blanditiis illum architecto. A ut odio cupiditate molestiae earum consequatur.','en_US'),(210,209,'Slim fit','slim-fit','Repellat qui ea expedita ut. Corporis nemo eius eos aut exercitationem. Doloremque sapiente quae eveniet ex quod et omnis.\n\nConsectetur modi minus iste totam expedita. Rerum hic asperiores sunt inventore est consequatur ut. Necessitatibus error qui in molestiae. Laboriosam non illum praesentium reiciendis molestiae.\n\nIllum culpa soluta ea aut optio molestias voluptatem quod. Nisi doloremque esse cumque impedit nihil fugiat. At tempora error dolores. Totam ad recusandae excepturi deserunt cum quae aut explicabo.',NULL,NULL,'Nihil in occaecati cumque sed quod odio odio illum. Ut ducimus velit eum id. Beatae maxime quia illum ipsum dolore est ut. Quae dolores molestiae officia commodi.','en_US'),(211,210,'New age regular','new-age-regular','Consectetur velit odit consectetur possimus deserunt est inventore. Similique eos excepturi doloremque illum quia ut aut. Ut ducimus nobis dolores maxime.\n\nVoluptatibus quidem aut id quaerat temporibus. Officia et expedita optio ut at magni dolorum labore. Praesentium qui mollitia et qui.\n\nQui ut ut rerum doloremque omnis dolorem. In explicabo eos nihil architecto. Velit id magni magnam ut.',NULL,NULL,'Et eius accusantium est ut aut. Placeat expedita vel sit. Rerum sint eum velit vel consectetur non at et. Impedit voluptas tempora incidunt eum itaque similique. Adipisci eveniet explicabo consectetur temporibus.','en_US'),(212,211,'Whole holes classic','whole-holes-classic','Neque veniam qui eaque odit porro perferendis cupiditate. Corrupti quisquam sequi exercitationem dolores repudiandae. Ex quaerat similique aliquam molestiae quisquam facilis. Et reprehenderit officia in non beatae. Vero numquam reiciendis hic qui ut in vitae totam.\n\nMinima illum quo tenetur voluptatem doloremque. Temporibus dolores qui soluta similique ipsam qui. Ad non et magnam voluptatem explicabo. Quisquam quisquam modi ut ut voluptates eum laborum quasi.\n\nQui non aut laboriosam impedit voluptatibus deserunt ipsam. Quod hic dolorem doloribus occaecati deleniti sint. Ut quod accusamus aut sint asperiores.',NULL,NULL,'Rerum sint labore accusantium quo fugiat magnam est. Numquam non voluptatem ratione nam sit qui. Voluptas quod ratione sed animi. Quia quas doloribus et ut cupiditate qui.','en_US');
/*!40000 ALTER TABLE `sylius_product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`),
  CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant`
--

LOCK TABLES `sylius_product_variant` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant` DISABLE KEYS */;
INSERT INTO `sylius_product_variant` VALUES (1073,191,19,NULL,'Basic_regular_woman-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,8,0,NULL,NULL,NULL,NULL,1),(1074,191,19,NULL,'Basic_regular_woman-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,0,0,NULL,NULL,NULL,NULL,1),(1075,191,19,NULL,'Basic_regular_woman-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,2,0,NULL,NULL,NULL,NULL,1),(1076,191,19,NULL,'Basic_regular_woman-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,8,0,NULL,NULL,NULL,NULL,1),(1077,191,19,NULL,'Basic_regular_woman-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,0,0,NULL,NULL,NULL,NULL,1),(1078,192,19,NULL,'Slim_fit_woman-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,5,0,NULL,NULL,NULL,NULL,1),(1079,192,19,NULL,'Slim_fit_woman-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,4,0,NULL,NULL,NULL,NULL,1),(1080,192,19,NULL,'Slim_fit_woman-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,1,0,NULL,NULL,NULL,NULL,1),(1081,192,19,NULL,'Slim_fit_woman-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,7,0,NULL,NULL,NULL,NULL,1),(1082,192,19,NULL,'Slim_fit_woman-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,2,0,NULL,NULL,NULL,NULL,1),(1083,193,19,NULL,'Regular_Fit_V_neck_woman-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,2,0,NULL,NULL,NULL,NULL,1),(1084,193,19,NULL,'Regular_Fit_V_neck_woman-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,7,0,NULL,NULL,NULL,NULL,1),(1085,193,19,NULL,'Regular_Fit_V_neck_woman-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,1,0,NULL,NULL,NULL,NULL,1),(1086,193,19,NULL,'Regular_Fit_V_neck_woman-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,9,0,NULL,NULL,NULL,NULL,1),(1087,193,19,NULL,'Regular_Fit_V_neck_woman-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,2,0,NULL,NULL,NULL,NULL,1),(1088,194,19,NULL,'Slim_fit_men-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,2,0,NULL,NULL,NULL,NULL,1),(1089,194,19,NULL,'Slim_fit_men-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,1,0,NULL,NULL,NULL,NULL,1),(1090,194,19,NULL,'Slim_fit_men-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,0,0,NULL,NULL,NULL,NULL,1),(1091,194,19,NULL,'Slim_fit_men-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,7,0,NULL,NULL,NULL,NULL,1),(1092,194,19,NULL,'Slim_fit_men-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,6,0,NULL,NULL,NULL,NULL,1),(1093,195,19,NULL,'Regular_fit_men-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,7,0,NULL,NULL,NULL,NULL,1),(1094,195,19,NULL,'Regular_fit_men-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,5,0,NULL,NULL,NULL,NULL,1),(1095,195,19,NULL,'Regular_fit_men-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,1,0,NULL,NULL,NULL,NULL,1),(1096,195,19,NULL,'Regular_fit_men-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,7,0,NULL,NULL,NULL,NULL,1),(1097,195,19,NULL,'Regular_fit_men-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,3,0,NULL,NULL,NULL,NULL,1),(1098,196,19,NULL,'Slim_fit_V_neck_men-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,1,0,NULL,NULL,NULL,NULL,1),(1099,196,19,NULL,'Slim_fit_V_neck_men-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,0,0,NULL,NULL,NULL,NULL,1),(1100,196,19,NULL,'Slim_fit_V_neck_men-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,9,0,NULL,NULL,NULL,NULL,1),(1101,196,19,NULL,'Slim_fit_V_neck_men-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,9,0,NULL,NULL,NULL,NULL,1),(1102,196,19,NULL,'Slim_fit_V_neck_men-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,1,0,NULL,NULL,NULL,NULL,1),(1103,197,20,NULL,'Basic_winter_hot_cap-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,6,0,NULL,NULL,NULL,NULL,1),(1104,198,20,NULL,'Beautiful_cap_for_woman-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,6,0,NULL,NULL,NULL,NULL,1),(1105,199,20,NULL,'Regular_cap_with_big_pompon-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,4,0,NULL,NULL,NULL,NULL,1),(1106,200,20,NULL,'Simple_cap-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,1,0,NULL,NULL,NULL,NULL,1),(1107,201,19,NULL,'Circle_skirt_Dress-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,0,0,NULL,NULL,NULL,NULL,1),(1108,201,19,NULL,'Circle_skirt_Dress-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,3,0,NULL,NULL,NULL,NULL,1),(1109,201,19,NULL,'Circle_skirt_Dress-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,7,0,NULL,NULL,NULL,NULL,1),(1110,201,19,NULL,'Circle_skirt_Dress-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,6,0,NULL,NULL,NULL,NULL,1),(1111,201,19,NULL,'Circle_skirt_Dress-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,4,0,NULL,NULL,NULL,NULL,1),(1112,201,19,NULL,'Circle_skirt_Dress-variant-5','2019-11-04 08:27:49','2019-11-04 08:27:49',5,1,0,3,0,NULL,NULL,NULL,NULL,1),(1113,201,19,NULL,'Circle_skirt_Dress-variant-6','2019-11-04 08:27:49','2019-11-04 08:27:49',6,1,0,5,0,NULL,NULL,NULL,NULL,1),(1114,201,19,NULL,'Circle_skirt_Dress-variant-7','2019-11-04 08:27:49','2019-11-04 08:27:49',7,1,0,6,0,NULL,NULL,NULL,NULL,1),(1115,201,19,NULL,'Circle_skirt_Dress-variant-8','2019-11-04 08:27:49','2019-11-04 08:27:49',8,1,0,5,0,NULL,NULL,NULL,NULL,1),(1116,201,19,NULL,'Circle_skirt_Dress-variant-9','2019-11-04 08:27:49','2019-11-04 08:27:49',9,1,0,9,0,NULL,NULL,NULL,NULL,1),(1117,201,19,NULL,'Circle_skirt_Dress-variant-10','2019-11-04 08:27:49','2019-11-04 08:27:49',10,1,0,1,0,NULL,NULL,NULL,NULL,1),(1118,201,19,NULL,'Circle_skirt_Dress-variant-11','2019-11-04 08:27:49','2019-11-04 08:27:49',11,1,0,8,0,NULL,NULL,NULL,NULL,1),(1119,201,19,NULL,'Circle_skirt_Dress-variant-12','2019-11-04 08:27:49','2019-11-04 08:27:49',12,1,0,0,0,NULL,NULL,NULL,NULL,1),(1120,201,19,NULL,'Circle_skirt_Dress-variant-13','2019-11-04 08:27:49','2019-11-04 08:27:49',13,1,0,6,0,NULL,NULL,NULL,NULL,1),(1121,201,19,NULL,'Circle_skirt_Dress-variant-14','2019-11-04 08:27:49','2019-11-04 08:27:49',14,1,0,9,0,NULL,NULL,NULL,NULL,1),(1122,202,19,NULL,'Sleeveless_Dress-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,5,0,NULL,NULL,NULL,NULL,1),(1123,202,19,NULL,'Sleeveless_Dress-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,5,0,NULL,NULL,NULL,NULL,1),(1124,202,19,NULL,'Sleeveless_Dress-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,6,0,NULL,NULL,NULL,NULL,1),(1125,202,19,NULL,'Sleeveless_Dress-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,9,0,NULL,NULL,NULL,NULL,1),(1126,202,19,NULL,'Sleeveless_Dress-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,9,0,NULL,NULL,NULL,NULL,1),(1127,202,19,NULL,'Sleeveless_Dress-variant-5','2019-11-04 08:27:49','2019-11-04 08:27:49',5,1,0,3,0,NULL,NULL,NULL,NULL,1),(1128,202,19,NULL,'Sleeveless_Dress-variant-6','2019-11-04 08:27:49','2019-11-04 08:27:49',6,1,0,4,0,NULL,NULL,NULL,NULL,1),(1129,202,19,NULL,'Sleeveless_Dress-variant-7','2019-11-04 08:27:49','2019-11-04 08:27:49',7,1,0,9,0,NULL,NULL,NULL,NULL,1),(1130,202,19,NULL,'Sleeveless_Dress-variant-8','2019-11-04 08:27:49','2019-11-04 08:27:49',8,1,0,9,0,NULL,NULL,NULL,NULL,1),(1131,202,19,NULL,'Sleeveless_Dress-variant-9','2019-11-04 08:27:49','2019-11-04 08:27:49',9,1,0,2,0,NULL,NULL,NULL,NULL,1),(1132,202,19,NULL,'Sleeveless_Dress-variant-10','2019-11-04 08:27:49','2019-11-04 08:27:49',10,1,0,4,0,NULL,NULL,NULL,NULL,1),(1133,202,19,NULL,'Sleeveless_Dress-variant-11','2019-11-04 08:27:49','2019-11-04 08:27:49',11,1,0,3,0,NULL,NULL,NULL,NULL,1),(1134,202,19,NULL,'Sleeveless_Dress-variant-12','2019-11-04 08:27:49','2019-11-04 08:27:49',12,1,0,8,0,NULL,NULL,NULL,NULL,1),(1135,202,19,NULL,'Sleeveless_Dress-variant-13','2019-11-04 08:27:49','2019-11-04 08:27:49',13,1,0,0,0,NULL,NULL,NULL,NULL,1),(1136,202,19,NULL,'Sleeveless_Dress-variant-14','2019-11-04 08:27:49','2019-11-04 08:27:49',14,1,0,4,0,NULL,NULL,NULL,NULL,1),(1137,203,19,NULL,'Summer_tunic-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:49',0,1,0,3,0,NULL,NULL,NULL,NULL,1),(1138,203,19,NULL,'Summer_tunic-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:49',1,1,0,5,0,NULL,NULL,NULL,NULL,1),(1139,203,19,NULL,'Summer_tunic-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:49',2,1,0,5,0,NULL,NULL,NULL,NULL,1),(1140,203,19,NULL,'Summer_tunic-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:49',3,1,0,9,0,NULL,NULL,NULL,NULL,1),(1141,203,19,NULL,'Summer_tunic-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:49',4,1,0,3,0,NULL,NULL,NULL,NULL,1),(1142,203,19,NULL,'Summer_tunic-variant-5','2019-11-04 08:27:49','2019-11-04 08:27:49',5,1,0,1,0,NULL,NULL,NULL,NULL,1),(1143,203,19,NULL,'Summer_tunic-variant-6','2019-11-04 08:27:49','2019-11-04 08:27:49',6,1,0,7,0,NULL,NULL,NULL,NULL,1),(1144,203,19,NULL,'Summer_tunic-variant-7','2019-11-04 08:27:49','2019-11-04 08:27:49',7,1,0,9,0,NULL,NULL,NULL,NULL,1),(1145,203,19,NULL,'Summer_tunic-variant-8','2019-11-04 08:27:49','2019-11-04 08:27:49',8,1,0,9,0,NULL,NULL,NULL,NULL,1),(1146,203,19,NULL,'Summer_tunic-variant-9','2019-11-04 08:27:49','2019-11-04 08:27:49',9,1,0,8,0,NULL,NULL,NULL,NULL,1),(1147,203,19,NULL,'Summer_tunic-variant-10','2019-11-04 08:27:49','2019-11-04 08:27:49',10,1,0,4,0,NULL,NULL,NULL,NULL,1),(1148,203,19,NULL,'Summer_tunic-variant-11','2019-11-04 08:27:49','2019-11-04 08:27:49',11,1,0,6,0,NULL,NULL,NULL,NULL,1),(1149,203,19,NULL,'Summer_tunic-variant-12','2019-11-04 08:27:49','2019-11-04 08:27:49',12,1,0,8,0,NULL,NULL,NULL,NULL,1),(1150,203,19,NULL,'Summer_tunic-variant-13','2019-11-04 08:27:49','2019-11-04 08:27:49',13,1,0,1,0,NULL,NULL,NULL,NULL,1),(1151,203,19,NULL,'Summer_tunic-variant-14','2019-11-04 08:27:49','2019-11-04 08:27:49',14,1,0,5,0,NULL,NULL,NULL,NULL,1),(1152,204,19,NULL,'Basic_regular-variant-0','2019-11-04 08:27:49','2019-11-04 08:27:50',0,1,0,0,0,NULL,NULL,NULL,NULL,1),(1153,204,19,NULL,'Basic_regular-variant-1','2019-11-04 08:27:49','2019-11-04 08:27:50',1,1,0,4,0,NULL,NULL,NULL,NULL,1),(1154,204,19,NULL,'Basic_regular-variant-2','2019-11-04 08:27:49','2019-11-04 08:27:50',2,1,0,0,0,NULL,NULL,NULL,NULL,1),(1155,204,19,NULL,'Basic_regular-variant-3','2019-11-04 08:27:49','2019-11-04 08:27:50',3,1,0,5,0,NULL,NULL,NULL,NULL,1),(1156,204,19,NULL,'Basic_regular-variant-4','2019-11-04 08:27:49','2019-11-04 08:27:50',4,1,0,6,0,NULL,NULL,NULL,NULL,1),(1157,205,19,NULL,'Slim_fit_classic-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,6,0,NULL,NULL,NULL,NULL,1),(1158,205,19,NULL,'Slim_fit_classic-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,3,0,NULL,NULL,NULL,NULL,1),(1159,205,19,NULL,'Slim_fit_classic-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,9,0,NULL,NULL,NULL,NULL,1),(1160,205,19,NULL,'Slim_fit_classic-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,8,0,NULL,NULL,NULL,NULL,1),(1161,205,19,NULL,'Slim_fit_classic-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,8,0,NULL,NULL,NULL,NULL,1),(1162,206,19,NULL,'Regular_Fit_casual-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,9,0,NULL,NULL,NULL,NULL,1),(1163,206,19,NULL,'Regular_Fit_casual-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,0,0,NULL,NULL,NULL,NULL,1),(1164,206,19,NULL,'Regular_Fit_casual-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,3,0,NULL,NULL,NULL,NULL,1),(1165,206,19,NULL,'Regular_Fit_casual-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,7,0,NULL,NULL,NULL,NULL,1),(1166,206,19,NULL,'Regular_Fit_casual-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,4,0,NULL,NULL,NULL,NULL,1),(1167,207,19,NULL,'Slim_fit_elegant-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,3,0,NULL,NULL,NULL,NULL,1),(1168,207,19,NULL,'Slim_fit_elegant-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,0,0,NULL,NULL,NULL,NULL,1),(1169,207,19,NULL,'Slim_fit_elegant-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,1,0,NULL,NULL,NULL,NULL,1),(1170,207,19,NULL,'Slim_fit_elegant-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,3,0,NULL,NULL,NULL,NULL,1),(1171,207,19,NULL,'Slim_fit_elegant-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,2,0,NULL,NULL,NULL,NULL,1),(1172,208,19,NULL,'Ultra_slim-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,5,0,NULL,NULL,NULL,NULL,1),(1173,208,19,NULL,'Ultra_slim-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,2,0,NULL,NULL,NULL,NULL,1),(1174,208,19,NULL,'Ultra_slim-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,8,0,NULL,NULL,NULL,NULL,1),(1175,208,19,NULL,'Ultra_slim-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,5,0,NULL,NULL,NULL,NULL,1),(1176,208,19,NULL,'Ultra_slim-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,1,0,NULL,NULL,NULL,NULL,1),(1177,209,19,NULL,'Slim_fit-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,9,0,NULL,NULL,NULL,NULL,1),(1178,209,19,NULL,'Slim_fit-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,2,0,NULL,NULL,NULL,NULL,1),(1179,209,19,NULL,'Slim_fit-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,3,0,NULL,NULL,NULL,NULL,1),(1180,209,19,NULL,'Slim_fit-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,8,0,NULL,NULL,NULL,NULL,1),(1181,209,19,NULL,'Slim_fit-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,2,0,NULL,NULL,NULL,NULL,1),(1182,210,19,NULL,'New_age_regular-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,0,0,NULL,NULL,NULL,NULL,1),(1183,210,19,NULL,'New_age_regular-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,2,0,NULL,NULL,NULL,NULL,1),(1184,210,19,NULL,'New_age_regular-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,3,0,NULL,NULL,NULL,NULL,1),(1185,210,19,NULL,'New_age_regular-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,5,0,NULL,NULL,NULL,NULL,1),(1186,210,19,NULL,'New_age_regular-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,0,0,NULL,NULL,NULL,NULL,1),(1187,211,19,NULL,'Whole_holes_classic-variant-0','2019-11-04 08:27:50','2019-11-04 08:27:50',0,1,0,8,0,NULL,NULL,NULL,NULL,1),(1188,211,19,NULL,'Whole_holes_classic-variant-1','2019-11-04 08:27:50','2019-11-04 08:27:50',1,1,0,6,0,NULL,NULL,NULL,NULL,1),(1189,211,19,NULL,'Whole_holes_classic-variant-2','2019-11-04 08:27:50','2019-11-04 08:27:50',2,1,0,9,0,NULL,NULL,NULL,NULL,1),(1190,211,19,NULL,'Whole_holes_classic-variant-3','2019-11-04 08:27:50','2019-11-04 08:27:50',3,1,0,4,0,NULL,NULL,NULL,NULL,1),(1191,211,19,NULL,'Whole_holes_classic-variant-4','2019-11-04 08:27:50','2019-11-04 08:27:50',4,1,0,4,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `sylius_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`),
  CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_option_value`
--

LOCK TABLES `sylius_product_variant_option_value` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_option_value` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_option_value` VALUES (1073,163),(1074,164),(1075,165),(1076,166),(1077,167),(1078,163),(1079,164),(1080,165),(1081,166),(1082,167),(1083,163),(1084,164),(1085,165),(1086,166),(1087,167),(1088,163),(1089,164),(1090,165),(1091,166),(1092,167),(1093,163),(1094,164),(1095,165),(1096,166),(1097,167),(1098,163),(1099,164),(1100,165),(1101,166),(1102,167),(1107,168),(1107,173),(1108,168),(1108,174),(1109,168),(1109,175),(1110,169),(1110,173),(1111,169),(1111,174),(1112,169),(1112,175),(1113,170),(1113,173),(1114,170),(1114,174),(1115,170),(1115,175),(1116,171),(1116,173),(1117,171),(1117,174),(1118,171),(1118,175),(1119,172),(1119,173),(1120,172),(1120,174),(1121,172),(1121,175),(1122,168),(1122,173),(1123,168),(1123,174),(1124,168),(1124,175),(1125,169),(1125,173),(1126,169),(1126,174),(1127,169),(1127,175),(1128,170),(1128,173),(1129,170),(1129,174),(1130,170),(1130,175),(1131,171),(1131,173),(1132,171),(1132,174),(1133,171),(1133,175),(1134,172),(1134,173),(1135,172),(1135,174),(1136,172),(1136,175),(1137,168),(1137,173),(1138,168),(1138,174),(1139,168),(1139,175),(1140,169),(1140,173),(1141,169),(1141,174),(1142,169),(1142,175),(1143,170),(1143,173),(1144,170),(1144,174),(1145,170),(1145,175),(1146,171),(1146,173),(1147,171),(1147,174),(1148,171),(1148,175),(1149,172),(1149,173),(1150,172),(1150,174),(1151,172),(1151,175),(1152,176),(1153,177),(1154,178),(1155,179),(1156,180),(1157,176),(1158,177),(1159,178),(1160,179),(1161,180),(1162,176),(1163,177),(1164,178),(1165,179),(1166,180),(1167,176),(1168,177),(1169,178),(1170,179),(1171,180),(1172,176),(1173,177),(1174,178),(1175,179),(1176,180),(1177,176),(1178,177),(1179,178),(1180,179),(1181,180),(1182,176),(1183,177),(1184,178),(1185,179),(1186,180),(1187,176),(1188,177),(1189,178),(1190,179),(1191,180);
/*!40000 ALTER TABLE `sylius_product_variant_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_product_variant_translation`
--

LOCK TABLES `sylius_product_variant_translation` WRITE;
/*!40000 ALTER TABLE `sylius_product_variant_translation` DISABLE KEYS */;
INSERT INTO `sylius_product_variant_translation` VALUES (1073,1073,'S','en_US'),(1074,1074,'M','en_US'),(1075,1075,'L','en_US'),(1076,1076,'XL','en_US'),(1077,1077,'XXL','en_US'),(1078,1078,'S','en_US'),(1079,1079,'M','en_US'),(1080,1080,'L','en_US'),(1081,1081,'XL','en_US'),(1082,1082,'XXL','en_US'),(1083,1083,'S','en_US'),(1084,1084,'M','en_US'),(1085,1085,'L','en_US'),(1086,1086,'XL','en_US'),(1087,1087,'XXL','en_US'),(1088,1088,'S','en_US'),(1089,1089,'M','en_US'),(1090,1090,'L','en_US'),(1091,1091,'XL','en_US'),(1092,1092,'XXL','en_US'),(1093,1093,'S','en_US'),(1094,1094,'M','en_US'),(1095,1095,'L','en_US'),(1096,1096,'XL','en_US'),(1097,1097,'XXL','en_US'),(1098,1098,'S','en_US'),(1099,1099,'M','en_US'),(1100,1100,'L','en_US'),(1101,1101,'XL','en_US'),(1102,1102,'XXL','en_US'),(1103,1103,'','en_US'),(1104,1104,'','en_US'),(1105,1105,'','en_US'),(1106,1106,'','en_US'),(1107,1107,'S Petite','en_US'),(1108,1108,'S Regular','en_US'),(1109,1109,'S Tall','en_US'),(1110,1110,'M Petite','en_US'),(1111,1111,'M Regular','en_US'),(1112,1112,'M Tall','en_US'),(1113,1113,'L Petite','en_US'),(1114,1114,'L Regular','en_US'),(1115,1115,'L Tall','en_US'),(1116,1116,'XL Petite','en_US'),(1117,1117,'XL Regular','en_US'),(1118,1118,'XL Tall','en_US'),(1119,1119,'XXL Petite','en_US'),(1120,1120,'XXL Regular','en_US'),(1121,1121,'XXL Tall','en_US'),(1122,1122,'S Petite','en_US'),(1123,1123,'S Regular','en_US'),(1124,1124,'S Tall','en_US'),(1125,1125,'M Petite','en_US'),(1126,1126,'M Regular','en_US'),(1127,1127,'M Tall','en_US'),(1128,1128,'L Petite','en_US'),(1129,1129,'L Regular','en_US'),(1130,1130,'L Tall','en_US'),(1131,1131,'XL Petite','en_US'),(1132,1132,'XL Regular','en_US'),(1133,1133,'XL Tall','en_US'),(1134,1134,'XXL Petite','en_US'),(1135,1135,'XXL Regular','en_US'),(1136,1136,'XXL Tall','en_US'),(1137,1137,'S Petite','en_US'),(1138,1138,'S Regular','en_US'),(1139,1139,'S Tall','en_US'),(1140,1140,'M Petite','en_US'),(1141,1141,'M Regular','en_US'),(1142,1142,'M Tall','en_US'),(1143,1143,'L Petite','en_US'),(1144,1144,'L Regular','en_US'),(1145,1145,'L Tall','en_US'),(1146,1146,'XL Petite','en_US'),(1147,1147,'XL Regular','en_US'),(1148,1148,'XL Tall','en_US'),(1149,1149,'XXL Petite','en_US'),(1150,1150,'XXL Regular','en_US'),(1151,1151,'XXL Tall','en_US'),(1152,1152,'S','en_US'),(1153,1153,'M','en_US'),(1154,1154,'L','en_US'),(1155,1155,'XL','en_US'),(1156,1156,'XXL','en_US'),(1157,1157,'S','en_US'),(1158,1158,'M','en_US'),(1159,1159,'L','en_US'),(1160,1160,'XL','en_US'),(1161,1161,'XXL','en_US'),(1162,1162,'S','en_US'),(1163,1163,'M','en_US'),(1164,1164,'L','en_US'),(1165,1165,'XL','en_US'),(1166,1166,'XXL','en_US'),(1167,1167,'S','en_US'),(1168,1168,'M','en_US'),(1169,1169,'L','en_US'),(1170,1170,'XL','en_US'),(1171,1171,'XXL','en_US'),(1172,1172,'S','en_US'),(1173,1173,'M','en_US'),(1174,1174,'L','en_US'),(1175,1175,'XL','en_US'),(1176,1176,'XXL','en_US'),(1177,1177,'S','en_US'),(1178,1178,'M','en_US'),(1179,1179,'L','en_US'),(1180,1180,'XL','en_US'),(1181,1181,'XXL','en_US'),(1182,1182,'S','en_US'),(1183,1183,'M','en_US'),(1184,1184,'L','en_US'),(1185,1185,'XL','en_US'),(1186,1186,'XXL','en_US'),(1187,1187,'S','en_US'),(1188,1188,'M','en_US'),(1189,1189,'L','en_US'),(1190,1190,'XL','en_US'),(1191,1191,'XXL','en_US');
/*!40000 ALTER TABLE `sylius_product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion`
--

LOCK TABLES `sylius_promotion` WRITE;
/*!40000 ALTER TABLE `sylius_promotion` DISABLE KEYS */;
INSERT INTO `sylius_promotion` VALUES (19,'christmas','Christmas','Sit aliquam ad possimus esse.',0,0,NULL,13,0,NULL,NULL,'2019-11-04 08:27:49','2019-11-04 08:27:51'),(20,'new_year','New Year','Sit aliquam ad possimus esse.',2,0,10,10,0,'2019-10-28 08:27:49','2019-11-11 08:27:49','2019-11-04 08:27:49','2019-11-04 08:27:51');
/*!40000 ALTER TABLE `sylius_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`),
  CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_action`
--

LOCK TABLES `sylius_promotion_action` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_action` DISABLE KEYS */;
INSERT INTO `sylius_promotion_action` VALUES (19,19,'order_percentage_discount','a:1:{s:10:\"percentage\";d:0.44;}'),(20,20,'order_fixed_discount','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:1000;}}');
/*!40000 ALTER TABLE `sylius_promotion_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`),
  CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_channels`
--

LOCK TABLES `sylius_promotion_channels` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_channels` DISABLE KEYS */;
INSERT INTO `sylius_promotion_channels` VALUES (19,10),(20,10);
/*!40000 ALTER TABLE `sylius_promotion_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`),
  CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_coupon`
--

LOCK TABLES `sylius_promotion_coupon` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_promotion_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`),
  CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_order`
--

LOCK TABLES `sylius_promotion_order` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_order` DISABLE KEYS */;
INSERT INTO `sylius_promotion_order` VALUES (10244,19),(10244,20),(10246,19),(10246,20),(10247,19),(10247,20),(10248,19),(10248,20),(10249,19),(10249,20),(10250,19),(10250,20),(10251,19),(10251,20),(10253,20),(10254,19),(10254,20),(10256,20),(10257,19),(10259,19),(10260,19),(10261,19),(10262,19);
/*!40000 ALTER TABLE `sylius_promotion_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`),
  CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_promotion_rule`
--

LOCK TABLES `sylius_promotion_rule` WRITE;
/*!40000 ALTER TABLE `sylius_promotion_rule` DISABLE KEYS */;
INSERT INTO `sylius_promotion_rule` VALUES (19,19,'cart_quantity','a:1:{s:5:\"count\";i:5;}'),(20,20,'item_total','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:10000;}}');
/*!40000 ALTER TABLE `sylius_promotion_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`),
  CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_province`
--

LOCK TABLES `sylius_province` WRITE;
/*!40000 ALTER TABLE `sylius_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`),
  CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7263 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipment`
--

LOCK TABLES `sylius_shipment` WRITE;
/*!40000 ALTER TABLE `sylius_shipment` DISABLE KEYS */;
INSERT INTO `sylius_shipment` VALUES (7243,28,10244,'ready',NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(7244,28,10245,'ready',NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(7245,28,10246,'ready',NULL,'2019-11-04 08:27:50','2019-11-04 08:27:50'),(7246,29,10247,'ready',NULL,'2019-11-04 08:27:50','2019-11-04 08:27:51'),(7247,28,10248,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7248,28,10249,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7249,29,10250,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7250,28,10251,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7251,29,10252,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7252,29,10253,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7253,28,10254,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7254,29,10255,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7255,29,10256,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7256,28,10257,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7257,29,10258,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7258,28,10259,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7259,28,10260,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7260,28,10261,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7261,29,10262,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51'),(7262,29,10263,'ready',NULL,'2019-11-04 08:27:51','2019-11-04 08:27:51');
/*!40000 ALTER TABLE `sylius_shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_category`
--

LOCK TABLES `sylius_shipping_category` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_shipping_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`),
  CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method`
--

LOCK TABLES `sylius_shipping_method` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method` VALUES (28,NULL,11,NULL,'ups','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:561;}}',1,'flat_rate',1,0,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43'),(29,NULL,11,NULL,'dhl_express','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:781;}}',1,'flat_rate',1,1,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43'),(30,NULL,11,NULL,'fedex','a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:679;}}',1,'flat_rate',0,2,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43');
/*!40000 ALTER TABLE `sylius_shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`),
  CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

LOCK TABLES `sylius_shipping_method_channels` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_channels` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_channels` VALUES (28,10),(29,10),(30,10);
/*!40000 ALTER TABLE `sylius_shipping_method_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

LOCK TABLES `sylius_shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `sylius_shipping_method_translation` DISABLE KEYS */;
INSERT INTO `sylius_shipping_method_translation` VALUES (28,28,'UPS','Debitis voluptatem autem aperiam ut nostrum et.','en_US'),(29,29,'DHL Express','Aut eum ut voluptatem.','en_US'),(30,30,'FedEx','Nulla asperiores laboriosam voluptas a.','en_US');
/*!40000 ALTER TABLE `sylius_shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_billing_data`
--

LOCK TABLES `sylius_shop_billing_data` WRITE;
/*!40000 ALTER TABLE `sylius_shop_billing_data` DISABLE KEYS */;
INSERT INTO `sylius_shop_billing_data` VALUES (10,'Sylius','0001112222','US','Test St. 15','eCommerce Town','00 33 22');
/*!40000 ALTER TABLE `sylius_shop_billing_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`),
  CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_shop_user`
--

LOCK TABLES `sylius_shop_user` WRITE;
/*!40000 ALTER TABLE `sylius_shop_user` DISABLE KEYS */;
INSERT INTO `sylius_shop_user` VALUES (191,18193,'shop@example.com','shop@example.com',1,'6nwtjzxfosws8s4s4s848gggocw8gg4','$argon2i$v=19$m=65536,t=4,p=1$V1RKMWlFeXBnbkk2REF6UQ$9eSlPFA5TPhW/qmcBhQbtW6QqXDhQzhSK7pNVi4g+G8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43','argon2i'),(192,18194,'cordie.toy@yahoo.com','cordie.toy@yahoo.com',1,'he003sjojogkg0wg0gk880oc4cs8go8','$argon2i$v=19$m=65536,t=4,p=1$N1lVaEFOR2JJQXRSWnhURg$mJzsIfi1K8tVx0G5J9mBXQQ4OOooCmW7Bn5sksSCM1Y',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43','argon2i'),(193,18195,'ckassulke@bailey.com','ckassulke@bailey.com',1,'1ign74sz4eroo4sggk4kgkkgckkwcsc','$argon2i$v=19$m=65536,t=4,p=1$bk02OVlkRDhFUjNwWGNOaw$cUnhy5j2ltdLomQeWJiPNMWjxThsjxqMqQ26az2eaoA',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43','argon2i'),(194,18196,'ben.kohler@rice.info','ben.kohler@rice.info',1,'ly9x9544ofkokc4cwswcw4c8004s0ko','$argon2i$v=19$m=65536,t=4,p=1$ejJvbDZRSndQVGhTaUd2ZQ$MNueSx8Wy6D/i5gj5lcSFkGg5r9Nir+agwautTSawBw',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:43','2019-11-04 08:27:43','argon2i'),(195,18197,'stiedemann.marian@windler.com','stiedemann.marian@windler.com',1,'l7xtce3tfz4gg4cogc88wc0w8ockokk','$argon2i$v=19$m=65536,t=4,p=1$QmdCalNXQVJzSnVDZjE1Qw$ZFwHK0Z/tMFInUoe6x8tNxpdfJr9sngfpPcUS4jJ7gU',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:44','2019-11-04 08:27:44','argon2i'),(196,18198,'terry97@yahoo.com','terry97@yahoo.com',1,'qlii3xwl69wkksg48s0c0wk8co4k80g','$argon2i$v=19$m=65536,t=4,p=1$bHZBOUY1RnB0V2RTMC9QVg$EdvnVeniPQ1u30tkoxNwYWk6eOHFF8UntsXkStkwYZw',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:44','2019-11-04 08:27:44','argon2i'),(197,18199,'mdurgan@hotmail.com','mdurgan@hotmail.com',1,'4w5nhm8pu9kwko8gggss4k8sggwokco','$argon2i$v=19$m=65536,t=4,p=1$RE5tTjA2elUxM3NjVTExNw$0YS3+3DRfCLfzseZ3SODPiSgEP3gHYAl3HgvHEbqGw0',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:44','2019-11-04 08:27:44','argon2i'),(198,18200,'roob.prince@gmail.com','roob.prince@gmail.com',1,'b3zzd3rjxrco08csk4kg8k444w0wgs4','$argon2i$v=19$m=65536,t=4,p=1$S2hOU1pJSlpaOGhtaVlGaQ$icp92dOP8BYNDEqpyv11ygCg+D1uTLHIxZ2kOY5CLYY',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:45','2019-11-04 08:27:45','argon2i'),(199,18201,'vincenza.turcotte@swift.com','vincenza.turcotte@swift.com',1,'pdmmxu62abkw440g8owc0o0cokkcc88','$argon2i$v=19$m=65536,t=4,p=1$bjQ0RmRTbS5sdVZkZ1JOOQ$iwlfSDrKjbQ8qJdGT1Cqq4JKI3L3Rayrw7LsIJSL0sE',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:45','2019-11-04 08:27:45','argon2i'),(200,18202,'hazle16@collier.com','hazle16@collier.com',1,'82x6tih12wowggwc4k0kwssswwk84w8','$argon2i$v=19$m=65536,t=4,p=1$OC9ETUZIL0hwaGxGdmdMQQ$/VLgPPxt9OZ7xd0I4znPKO/4sH3vsldqBO60jQ2V2zU',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:45','2019-11-04 08:27:45','argon2i'),(201,18203,'walter.russ@yahoo.com','walter.russ@yahoo.com',1,'apcya381494408gkowowk8cs0004o0w','$argon2i$v=19$m=65536,t=4,p=1$NVFZSkJibTlvNGtRV3lMSQ$kFFZc08Iex2trgjDKHc0LQJzR+IUcWfSJjN3E3W4xa0',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:45','2019-11-04 08:27:45','argon2i'),(202,18204,'loyce83@yahoo.com','loyce83@yahoo.com',1,'lqu4c9n6wkgk4ckkkggs0cwcw080ogg','$argon2i$v=19$m=65536,t=4,p=1$cHlMNUE4VnUzRWdvZWRoeA$9s7CgjCep9ikoNwtZVhTnhkkrWQcQrD7ZzfcvXM5QKc',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:46','2019-11-04 08:27:46','argon2i'),(203,18205,'kuphal.dora@yahoo.com','kuphal.dora@yahoo.com',1,'fymssecollw0coc8sww4ksw8w8gw8sg','$argon2i$v=19$m=65536,t=4,p=1$MTVaLkd2UzgyWUs4bTdBMA$fgQPtuD/Mor18Hwp0FsVj4IJevDLEIFwL8kLW9gnb+g',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:46','2019-11-04 08:27:46','argon2i'),(204,18206,'maryam47@yahoo.com','maryam47@yahoo.com',1,'j3mru7xf1lskgwkcc40ss04gw00kksw','$argon2i$v=19$m=65536,t=4,p=1$cnFwcGxGSW01cy4vUWhtcw$yUsl5axKw2avxonQ2yTbKZ9Pk6fYFZxmuWCsr/o5Zkw',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:46','2019-11-04 08:27:46','argon2i'),(205,18207,'noelia31@bergstrom.info','noelia31@bergstrom.info',1,'imp5irhipnkko048g8cw48s4w080k8w','$argon2i$v=19$m=65536,t=4,p=1$am00bGtUZWJBMVRCSTBlaA$/2W5CzOw81VlxOxW51OpIqiBQVGkQlWhmA1B7/w16rE',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:46','2019-11-04 08:27:46','argon2i'),(206,18208,'rachael01@veum.org','rachael01@veum.org',1,'1to8c2mkqcsgw8cgc44os8o8c0skscc','$argon2i$v=19$m=65536,t=4,p=1$d3R3NjlBMUpjcTR4QURPMw$Yr63UBciHGzv/gycGxbV0MOvguh/G0m65OyN+BWyrrc',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:47','2019-11-04 08:27:47','argon2i'),(207,18209,'rickey.fadel@rempel.org','rickey.fadel@rempel.org',1,'8votew6spoo4co8cg004gowswsokkg4','$argon2i$v=19$m=65536,t=4,p=1$bUdDandSM28zQ2VuOGMzaQ$YGlXkplQMvkpfLsupFjePFJrpo+3/bMVaZ7sLeD+RUc',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:47','2019-11-04 08:27:47','argon2i'),(208,18210,'bayer.clifford@wintheiser.net','bayer.clifford@wintheiser.net',1,'aud662bvdvcwowsko40c840wgcw0o08','$argon2i$v=19$m=65536,t=4,p=1$L2JXQXJ5YU5RSHROd3pCSg$xZq6RZTOfM83XmrSm/qbZf16EVhcKQZzM/Fvnlp87Eo',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:47','2019-11-04 08:27:47','argon2i'),(209,18211,'pschowalter@gmail.com','pschowalter@gmail.com',1,'iw2mk7ief1w8googcok4scc804s080c','$argon2i$v=19$m=65536,t=4,p=1$VlBwb2ZkL3BKOEtxTnEvcA$Omz8KjyxxG3zI/2LWUSQvc2ncUzsfa7QTX9q9BG6Vjk',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:47','2019-11-04 08:27:47','argon2i'),(210,18212,'adolph.marks@yahoo.com','adolph.marks@yahoo.com',1,'oya862b8jz4gscwg8ccsg0wggkw400k','$argon2i$v=19$m=65536,t=4,p=1$RUJuWGk5VW9Zbmhpbm5HdA$ogjF9wR9eqDKbC/5AClB89EhOBCxh5bprpRtAOGXYu8',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:48','2019-11-04 08:27:48','argon2i'),(211,18213,'austyn26@simonis.com','austyn26@simonis.com',1,'8lp391yj6h44gw00w8ss80w40w8gow0','$argon2i$v=19$m=65536,t=4,p=1$U2o1QkJ5YXpya25Fb1pydQ$cQacLystCAB6LVjU7EG3xBSEGQdPnyLO8yHa/0OMdDk',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'a:1:{i:0;s:9:\"ROLE_USER\";}',NULL,NULL,'2019-11-04 08:27:48','2019-11-04 08:27:48','argon2i');
/*!40000 ALTER TABLE `sylius_shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_category`
--

LOCK TABLES `sylius_tax_category` WRITE;
/*!40000 ALTER TABLE `sylius_tax_category` DISABLE KEYS */;
INSERT INTO `sylius_tax_category` VALUES (19,'clothing','Clothing','Nisi in et libero nihil accusamus numquam reiciendis. Odio accusamus qui quibusdam nobis sed nihil minima. Aut et sit dicta qui voluptatem ipsa autem atque. Placeat et inventore sapiente autem.','2019-11-04 08:27:49','2019-11-04 08:27:49'),(20,'other','Other','Et repellat sed recusandae quaerat inventore possimus nisi. Et mollitia sit adipisci suscipit. Amet blanditiis rerum qui molestias qui. Natus laudantium sint debitis quia illo qui eveniet.','2019-11-04 08:27:49','2019-11-04 08:27:49');
/*!40000 ALTER TABLE `sylius_tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`),
  CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_tax_rate`
--

LOCK TABLES `sylius_tax_rate` WRITE;
/*!40000 ALTER TABLE `sylius_tax_rate` DISABLE KEYS */;
INSERT INTO `sylius_tax_rate` VALUES (19,19,11,'clothing_sales_tax_7','Clothing Sales Tax 7%',0.07000,1,'default','2019-11-04 08:27:49','2019-11-04 08:27:49'),(20,20,11,'sales_tax_20','Sales Tax 20%',0.20000,0,'default','2019-11-04 08:27:49','2019-11-04 08:27:49');
/*!40000 ALTER TABLE `sylius_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`),
  CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon`
--

LOCK TABLES `sylius_taxon` WRITE;
/*!40000 ALTER TABLE `sylius_taxon` DISABLE KEYS */;
INSERT INTO `sylius_taxon` VALUES (100,100,NULL,'category',1,22,0,0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(101,100,100,'t_shirts',2,7,1,0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(102,100,101,'mens_t_shirts',3,4,2,0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(103,100,101,'womens_t_shirts',5,6,2,1,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(104,100,100,'caps',8,13,1,1,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(105,100,104,'simple_caps',9,10,2,0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(106,100,104,'caps_with_pompons',11,12,2,1,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(107,100,100,'dresses',14,15,1,2,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(108,100,100,'jeans',16,21,1,3,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(109,100,108,'mens_jeans',17,18,2,0,'2019-11-04 08:27:49','2019-11-04 08:27:49'),(110,100,108,'womens_jeans',19,20,2,1,'2019-11-04 08:27:49','2019-11-04 08:27:49');
/*!40000 ALTER TABLE `sylius_taxon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`),
  CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_image`
--

LOCK TABLES `sylius_taxon_image` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_taxon_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`),
  CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_taxon_translation`
--

LOCK TABLES `sylius_taxon_translation` WRITE;
/*!40000 ALTER TABLE `sylius_taxon_translation` DISABLE KEYS */;
INSERT INTO `sylius_taxon_translation` VALUES (199,100,'Category','category','Omnis deleniti aliquam optio temporibus quasi. Eos fugiat commodi saepe iusto voluptate sequi. Voluptas molestiae corrupti numquam consequatur.','en_US'),(200,100,'Categorie','categorie','Soluta et sunt occaecati sit. Iusto error excepturi rem quasi omnis. Sint explicabo autem voluptas eos error est necessitatibus odio.','fr_FR'),(201,101,'T-shirts','category/t-shirts','Eum sint sed sequi. Et rerum voluptas quidem distinctio sint ipsam aut. Aut dolor esse repudiandae explicabo.','en_US'),(202,101,'T-shirts','categorie/t-shirts','Laudantium ratione asperiores sit laborum est excepturi cupiditate. Aut dolores enim qui ea. Odit est animi aperiam voluptas ea tempora. Quas consequatur aliquid et quisquam placeat.','fr_FR'),(203,102,'Men','t-shirts/men','Hic ipsum est et placeat dolorem enim deserunt. Tenetur culpa et numquam possimus. Fuga aut minima unde cumque illum consequatur. Beatae tenetur est voluptas unde recusandae error sit. Qui et at voluptatibus assumenda culpa porro.','en_US'),(204,102,'Hommes','t-shirts/hommes','Minima distinctio ratione voluptatem eaque. At quaerat et nisi impedit deleniti debitis. Ea in consequatur excepturi id nostrum dolor aspernatur odit.','fr_FR'),(205,103,'Women','t-shirts/women','Quis ad velit est odio nihil cum. Aut eum alias vel. Animi amet voluptas qui voluptatem rerum molestias perspiciatis amet.','en_US'),(206,103,'Femme','t-shirts/femmes','Est officia neque ut et a. Ipsa id enim molestiae voluptate debitis vel. Commodi est temporibus praesentium hic voluptatem ratione ex. Magni facere non est officiis architecto.','fr_FR'),(207,104,'Caps','category/caps','Dicta ea quia commodi perspiciatis nesciunt eos. Et et repellendus eaque tempore magnam et. Quia eos soluta enim.','en_US'),(208,104,'Casquestte','categorie/casquestte','Modi et magni quam dolores qui vero deleniti est. Molestiae quas sed molestiae distinctio quaerat dolor quae. Doloremque excepturi ut minima repellendus.','fr_FR'),(209,105,'Simple','caps/simple','Praesentium distinctio ducimus reiciendis aliquid eum. Consequuntur quibusdam ut omnis facere blanditiis nobis qui voluptates. Sed non ab ad fugiat quia alias. Corrupti iure et ipsum ut eligendi numquam velit.','en_US'),(210,105,'simple','casquette/simple','Distinctio saepe ipsum sapiente consequuntur. Exercitationem aut architecto autem in.','fr_FR'),(211,106,'With pompons','caps/with-pompons','Laboriosam quasi nobis minima voluptas dolorem. Atque quia dolorum earum ipsum saepe. Accusantium dolore est rerum aut eum. Explicabo natus placeat qui aperiam nobis. Et vel nihil earum cumque neque magni.','en_US'),(212,106,'A pompon','casquette/a-pompon','Officiis quia quia consequatur delectus sed in suscipit sunt. Dolores atque et delectus. Vel doloremque animi eius sit sit nemo autem eum. Eum autem sed placeat et autem ipsum velit.','fr_FR'),(213,107,'Dresses','category/dresses','Voluptas quod distinctio tempore minima laborum corrupti hic reiciendis. Labore non reprehenderit ut voluptatem sit. Sint provident quia inventore ut reprehenderit et dolorum. Ratione beatae dolore et soluta dolores est et. Laborum et ipsum explicabo dolor possimus.','en_US'),(214,107,'Robes','categorie/robes','Debitis soluta id ut magnam molestiae sunt sint. Numquam mollitia incidunt architecto culpa porro est vel.','fr_FR'),(215,108,'Jeans','category/jeans','Itaque sunt est ab qui rerum atque ea. Modi aut et minus nulla. Corporis eum sapiente excepturi doloribus eum minus voluptas.','en_US'),(216,108,'Jeans','categorie/jeans','Doloremque et minima minima molestias est. Vero exercitationem quo magnam quo optio et. Est in quibusdam velit ad facere molestias velit. Nulla harum animi nemo ut aliquam. Nesciunt qui officia explicabo minus hic ad.','fr_FR'),(217,109,'Men','jeans/men','Vero quam maiores amet ab. Totam sint nulla modi corrupti excepturi ut quam mollitia. Cum repudiandae delectus quo nesciunt. Illo provident et commodi sed nobis repudiandae.','en_US'),(218,109,'Hommes','jeans/hommes','Et ut et facilis illum veritatis cumque. Iure vero esse id id tempore saepe eligendi. Maxime est molestiae pariatur inventore in eligendi neque reiciendis.','fr_FR'),(219,110,'Women','jeans/women','Et nemo fugit praesentium itaque minus voluptatum possimus. Ipsum deleniti magnam accusantium est ad eum. Quaerat totam pariatur dolor et ullam. Deleniti expedita saepe recusandae accusantium.','en_US'),(220,110,'Femme','jeans/femme','Sunt quisquam assumenda ab aliquid officia eaque molestiae. Sint pariatur neque minus ratione qui et consequatur. Exercitationem et blanditiis quos enim debitis voluptatibus. Possimus culpa officia numquam.','fr_FR');
/*!40000 ALTER TABLE `sylius_taxon_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`),
  CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_user_oauth`
--

LOCK TABLES `sylius_user_oauth` WRITE;
/*!40000 ALTER TABLE `sylius_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `sylius_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone`
--

LOCK TABLES `sylius_zone` WRITE;
/*!40000 ALTER TABLE `sylius_zone` DISABLE KEYS */;
INSERT INTO `sylius_zone` VALUES (11,'US','United States of America','country','all');
/*!40000 ALTER TABLE `sylius_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`),
  CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sylius_zone_member`
--

LOCK TABLES `sylius_zone_member` WRITE;
/*!40000 ALTER TABLE `sylius_zone_member` DISABLE KEYS */;
INSERT INTO `sylius_zone_member` VALUES (11,11,'US');
/*!40000 ALTER TABLE `sylius_zone_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-04  7:30:36
