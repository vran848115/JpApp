-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: jp_dev
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin_users` (
  `admin_id` bigint(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'123456','admin1',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(2,'123457','admin2',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(3,'123458','admin3',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(4,'123459','admin4',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(5,'123460','admin5',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(6,'123461','admin6',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(7,'123462','admin7',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(8,'123463','admin8',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0),(9,'123464','admin9',NULL,NULL,'2019-07-30 18:46:07','2019-07-30 18:46:07','2019-07-30 18:46:07',0);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_chef_ratings`
--

DROP TABLE IF EXISTS `all_chef_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_chef_ratings` (
  `rating_id` bigint(20) NOT NULL,
  `bookig_id` bigint(20) DEFAULT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `rating_value` decimal(16,2) DEFAULT NULL,
  `short_comment` varchar(50) DEFAULT NULL,
  `long_comment` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`rating_id`),
  KEY `all_chef_ratings_bookig_id_fkey` (`bookig_id`),
  KEY `all_chef_ratings_dish_id_fkey` (`chef_id`),
  CONSTRAINT `all_chef_ratings_bookig_id_fkey` FOREIGN KEY (`bookig_id`) REFERENCES `booking_details` (`booking_id`),
  CONSTRAINT `all_chef_ratings_dish_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_chef_ratings`
--

LOCK TABLES `all_chef_ratings` WRITE;
/*!40000 ALTER TABLE `all_chef_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_chef_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_coupons`
--

DROP TABLE IF EXISTS `all_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_coupons` (
  `coupon_id` bigint(20) NOT NULL,
  `coupon_string` varchar(10) DEFAULT NULL,
  `coupon_value` decimal(16,2) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_group_id` bigint(20) DEFAULT NULL,
  `total_count` decimal(16,2) DEFAULT NULL,
  `remaining_count` decimal(16,2) DEFAULT NULL,
  `max_discount` decimal(16,2) DEFAULT NULL,
  `min_order_value` decimal(16,2) DEFAULT NULL,
  `discount_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `can_be_clubbed_flag` tinyint(1) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`coupon_id`),
  KEY `all_coupons_user_group_id_fkey` (`user_group_id`),
  CONSTRAINT `all_coupons_user_group_id_fkey` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_coupons`
--

LOCK TABLES `all_coupons` WRITE;
/*!40000 ALTER TABLE `all_coupons` DISABLE KEYS */;
INSERT INTO `all_coupons` VALUES (1,'APPLY1',25.00,NULL,NULL,1,1.00,0.00,100.00,350.00,1,1,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(2,'APPLY2',26.00,NULL,NULL,2,1.00,0.00,100.00,350.00,1,1,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(3,'APPLY3',27.00,NULL,NULL,3,1.00,0.00,100.00,350.00,1,1,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(4,'APPLY4',28.00,NULL,NULL,4,1.00,0.00,100.00,350.00,1,1,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(5,'APPLY5',29.00,NULL,NULL,5,1.00,0.00,100.00,350.00,1,2,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(6,'APPLY6',30.00,NULL,NULL,6,1.00,0.00,100.00,350.00,1,2,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(7,'APPLY7',31.00,NULL,NULL,7,1.00,0.00,100.00,350.00,1,2,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(8,'APPLY8',32.00,NULL,NULL,8,1.00,0.00,100.00,350.00,1,2,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0),(9,'APPLY9',33.00,NULL,NULL,9,1.00,0.00,100.00,350.00,1,2,1,NULL,NULL,'2019-07-30 21:17:28','2019-07-30 21:17:28','2019-07-30 21:17:28',0);
/*!40000 ALTER TABLE `all_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_cuisines`
--

DROP TABLE IF EXISTS `all_cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_cuisines` (
  `cusine_id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cusine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_cuisines`
--

LOCK TABLES `all_cuisines` WRITE;
/*!40000 ALTER TABLE `all_cuisines` DISABLE KEYS */;
INSERT INTO `all_cuisines` VALUES (1,'Chinese','awesome\n',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(2,'Continental','sawsome',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(3,'thai','less spicy ',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(4,'North India','All kinds',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(5,'South Indian','Spicy andhra',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(6,'Iyengar Prasadam\n','Pure Iyenger food ',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(7,'Arabian','Delicacies of arabia',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(8,'Afghani','From shawarma to kuboos',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0),(9,'Afghani2','From shawarma to kuboos',NULL,NULL,'2019-07-30 21:11:49','2019-07-30 21:11:49','2019-07-30 21:11:49',0);
/*!40000 ALTER TABLE `all_cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_dishes`
--

DROP TABLE IF EXISTS `all_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_dishes` (
  `dish_id` bigint(20) NOT NULL,
  `dish_name` varchar(50) DEFAULT NULL,
  `dish_image` varchar(100) DEFAULT NULL,
  `dish_video` varchar(100) DEFAULT NULL,
  `cuisine_id` bigint(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dish_type` int(11) DEFAULT NULL,
  `dish_category` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dish_id`),
  KEY `all_dishes_cuisine_id_fkey` (`cuisine_id`),
  CONSTRAINT `all_dishes_cuisine_id_fkey` FOREIGN KEY (`cuisine_id`) REFERENCES `all_cuisines` (`cusine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_dishes`
--

LOCK TABLES `all_dishes` WRITE;
/*!40000 ALTER TABLE `all_dishes` DISABLE KEYS */;
INSERT INTO `all_dishes` VALUES (1,'pasta','','',2,'Continental',2,2,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(2,'Veg Manchurian','','',1,'South Asian spicy dish',2,1,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(3,'xoxo',NULL,NULL,3,'NA',1,2,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(4,'pizza',NULL,NULL,2,'Continental',1,2,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(5,'Veg Manchurian',NULL,NULL,1,'South Asian spicy dish',1,1,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(6,'Chicken Manchurian',NULL,NULL,1,'South Asian spicy dish',2,1,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(7,'Keema',NULL,NULL,7,'Arabian',2,3,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(8,'kheer',NULL,NULL,4,'North Indian',1,3,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0),(9,'Roti',NULL,NULL,4,'North Indian',1,4,NULL,NULL,'2019-07-30 21:12:20','2019-07-30 21:12:20','2019-07-30 21:12:20',0);
/*!40000 ALTER TABLE `all_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_ingredients`
--

DROP TABLE IF EXISTS `all_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_ingredients` (
  `ingredient_id` bigint(20) NOT NULL,
  `ingredient_name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `average_cost_per_unit` decimal(16,2) DEFAULT NULL,
  `per_person_amount` decimal(16,2) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `needsmicrowaveflag` bit(1) DEFAULT NULL,
  `needsrefrigeratorflag` bit(1) DEFAULT NULL,
  `needsnonstickcookwareflag` bit(1) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_ingredients`
--

LOCK TABLES `all_ingredients` WRITE;
/*!40000 ALTER TABLE `all_ingredients` DISABLE KEYS */;
INSERT INTO `all_ingredients` VALUES (1,'Chicken','Chicken cut and cleaned meat',200.00,50.00,'KG',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(2,'Corn Flour','Corn Flour for manchurian',70.00,17.50,'KG',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(3,'Wheat Flour','Aata',50.00,10.00,'KG',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(4,'noodles','',100.00,25.00,'bundle',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(5,'Olive Oil','',800.00,80.00,'litres',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(6,'Basmati rice','',100.00,20.00,'KG',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(7,'Soya Sauce','',80.00,10.00,'1 bottle',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(8,'Chicken Masala','',80.00,10.00,'Packet',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0),(9,'Red chilly','Lal Mirch - non powder',100.00,10.00,'KG',_binary '\0',_binary '\0',_binary '\0',NULL,NULL,'2019-07-30 21:11:17','2019-07-30 21:11:17','2019-07-30 21:11:17',0);
/*!40000 ALTER TABLE `all_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `all_payments`
--

DROP TABLE IF EXISTS `all_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `all_payments` (
  `payment_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `total_amount_paid` double DEFAULT NULL,
  `transaction_comment` varchar(20) DEFAULT NULL,
  `payment_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_status` int(11) DEFAULT NULL,
  `payment_mode` int(11) DEFAULT NULL,
  `third_party_provider` int(11) DEFAULT NULL,
  `refund_request_ref_key` bigint(20) DEFAULT NULL,
  `attempt` decimal(10,0) DEFAULT NULL,
  `trans_ref_key` bigint(20) DEFAULT NULL,
  `tras_ref_key` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_id`),
  KEY `all_payments_booking_id_fkey` (`booking_id`),
  CONSTRAINT `all_payments_booking_id_fkey` FOREIGN KEY (`booking_id`) REFERENCES `booking_details` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_payments`
--

LOCK TABLES `all_payments` WRITE;
/*!40000 ALTER TABLE `all_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `all_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bank_details` (
  `bank_record_key` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `ifsc_code` varchar(10) DEFAULT NULL,
  `bank_address` varchar(50) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bank_record_key`),
  KEY `bank_details_chef_id_fkey` (`chef_id`),
  CONSTRAINT `bank_details_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_details`
--

LOCK TABLES `bank_details` WRITE;
/*!40000 ALTER TABLE `bank_details` DISABLE KEYS */;
INSERT INTO `bank_details` VALUES (1,1,'ACN10000','IFSC1','BANGZ1',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(2,2,'ACN10001','IFSC2','BANGZ2',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(3,3,'ACN10002','IFSC3','BANGZ3',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(4,4,'ACN10003','IFSC4','BANGZ1',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(5,5,'ACN10004','IFSC5','BANGZ1',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(6,6,'ACN10005','IFSC6','BANGZ5',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(7,7,'ACN10006','IFSC7','BANGZ2',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(8,8,'ACN10007','IFSC8','BANGZ7',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0),(9,9,'ACN10008','IFSC9','BANGZ3',NULL,NULL,'2019-07-30 21:18:00','2019-07-30 21:18:00','2019-07-30 21:18:00',0);
/*!40000 ALTER TABLE `bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_details` (
  `booking_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `base_cost` decimal(16,2) DEFAULT NULL,
  `extra_person_cost` decimal(16,2) DEFAULT NULL,
  `extra_starter_cost` decimal(16,2) DEFAULT NULL,
  `extra_main_course_cost` decimal(16,2) DEFAULT NULL,
  `extra_dessert_cost` decimal(16,2) DEFAULT NULL,
  `extra_accompaniment_cost` decimal(16,2) DEFAULT NULL,
  `offset_costs` decimal(16,2) DEFAULT NULL,
  `discounts` decimal(16,2) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `booking_location` point DEFAULT NULL,
  `extra_person_count` decimal(10,0) DEFAULT NULL,
  `extra_starter_count` decimal(10,0) DEFAULT NULL,
  `extra_main_course_count` decimal(10,0) DEFAULT NULL,
  `extra_dessert_count` decimal(10,0) DEFAULT NULL,
  `extra_accompaniment_count` decimal(10,0) DEFAULT NULL,
  `discount_ref_key` bigint(20) DEFAULT NULL,
  `booking_status` int(11) DEFAULT NULL,
  `selected_accompaniment` bigint(20) DEFAULT NULL,
  `selected_dessert` bigint(20) DEFAULT NULL,
  `selected_main_course` bigint(20) DEFAULT NULL,
  `selected_starter` bigint(20) DEFAULT NULL,
  `booking_address` varchar(500) DEFAULT NULL,
  `booking_cost` double DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`booking_id`),
  KEY `booking_details_chef_id_fkey` (`chef_id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `booking_details_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (1,1,1,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'Vekhiya',NULL,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(2,2,2,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'Vekhiya main',NULL,1,1,1,1,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(3,3,3,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(4,4,4,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(5,5,5,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(6,6,6,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,6,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(7,7,7,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,7,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(8,8,8,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,8,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:27','2019-07-30 21:20:27','2019-07-30 21:20:27',0),(9,9,9,NULL,NULL,350.00,50.00,50.00,50.00,50.00,50.00,50.00,50.00,'',NULL,1,1,1,1,1,9,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-07-30 21:20:28','2019-07-30 21:20:28','2019-07-30 21:20:28',0);
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_extra_details`
--

DROP TABLE IF EXISTS `booking_extra_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_extra_details` (
  `booking_extra_detail_id` bigint(20) NOT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `dish_id` bigint(20) DEFAULT NULL,
  `dish_type` int(11) DEFAULT NULL,
  `dish_category` int(11) DEFAULT NULL,
  `dish_name` varchar(100) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`booking_extra_detail_id`),
  KEY `booking_extra_details_booking_id_fkey` (`booking_id`),
  KEY `booking_extra_details_dish_id_fkey` (`dish_id`),
  CONSTRAINT `booking_extra_details_booking_id_fkey` FOREIGN KEY (`booking_id`) REFERENCES `booking_details` (`booking_id`),
  CONSTRAINT `booking_extra_details_dish_id_fkey` FOREIGN KEY (`dish_id`) REFERENCES `all_dishes` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_extra_details`
--

LOCK TABLES `booking_extra_details` WRITE;
/*!40000 ALTER TABLE `booking_extra_details` DISABLE KEYS */;
INSERT INTO `booking_extra_details` VALUES (1,1,1,1,1,'pasta                                                                                               ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(2,2,2,2,1,'Veg Manchurian                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(3,3,5,2,2,'butter chicken                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(4,4,1,1,1,'pasta                                                                                               ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(5,5,2,2,1,'Veg Manchurian                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(6,6,5,2,2,'butter chicken                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(7,7,1,1,1,'pasta                                                                                               ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(8,8,2,2,1,'Veg Manchurian                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0),(9,9,5,2,2,'butter chicken                                                                                      ',NULL,NULL,'2019-07-30 21:27:32','2019-07-30 21:27:32','2019-07-30 21:27:32',0);
/*!40000 ALTER TABLE `booking_extra_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tariff`
--

DROP TABLE IF EXISTS `category_tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_tariff` (
  `category_tariff_id` bigint(20) NOT NULL,
  `chef_category` int(11) DEFAULT NULL,
  `base_tariff` double DEFAULT NULL,
  `extra_person_tariff` double DEFAULT NULL,
  `extra_starter_tariff` double DEFAULT NULL,
  `extra_main_course_tariff` double DEFAULT NULL,
  `extra_accompaniments_tariff` double DEFAULT NULL,
  `extra_dessert_tariff` double DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`category_tariff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tariff`
--

LOCK TABLES `category_tariff` WRITE;
/*!40000 ALTER TABLE `category_tariff` DISABLE KEYS */;
INSERT INTO `category_tariff` VALUES (101,1,1000,150,100,100,100,100,NULL,NULL,'2019-07-30 21:31:21','2019-07-30 21:31:21','2019-07-30 21:31:21',0),(102,2,500,75,75,75,75,75,NULL,NULL,'2019-07-30 21:31:21','2019-07-30 21:31:21','2019-07-30 21:31:21',0),(103,3,400,75,75,75,75,75,NULL,NULL,'2019-07-30 21:31:21','2019-07-30 21:31:21','2019-07-30 21:31:21',0),(104,4,350,50,50,50,50,50,NULL,NULL,'2019-07-30 21:31:21','2019-07-30 21:31:21','2019-07-30 21:31:21',0),(105,5,300,50,50,50,50,50,NULL,NULL,'2019-07-30 21:31:21','2019-07-30 21:31:21','2019-07-30 21:31:21',0);
/*!40000 ALTER TABLE `category_tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_availability_tracker`
--

DROP TABLE IF EXISTS `chef_availability_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_availability_tracker` (
  `record_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`record_id`),
  KEY `chef_availibility_tracker_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_availibility_tracker_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_availability_tracker`
--

LOCK TABLES `chef_availability_tracker` WRITE;
/*!40000 ALTER TABLE `chef_availability_tracker` DISABLE KEYS */;
INSERT INTO `chef_availability_tracker` VALUES (1,1,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(2,2,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(3,3,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(4,4,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(5,5,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(6,6,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(7,7,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(8,8,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0),(9,9,'2019-04-04 02:31:00','2019-04-04 12:30:00',NULL,NULL,'2019-07-30 21:33:58','2019-07-30 21:33:58','2019-07-30 21:33:58',0);
/*!40000 ALTER TABLE `chef_availability_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_commissions`
--

DROP TABLE IF EXISTS `chef_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_commissions` (
  `comm_mapping_key` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `base_cost` decimal(16,2) DEFAULT NULL,
  `per_extra_person_cost` decimal(16,2) DEFAULT NULL,
  `per_extra_starter_cost` decimal(16,2) DEFAULT NULL,
  `per_extra_main_course_cost` decimal(16,2) DEFAULT NULL,
  `per_extra_dessert_cost` decimal(16,2) DEFAULT NULL,
  `per_extra_accompaniment` decimal(16,2) DEFAULT NULL,
  `extra_time_per_extra_dish` decimal(16,2) DEFAULT NULL,
  `rating_offset` decimal(16,2) DEFAULT NULL,
  `other_offset` decimal(16,2) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`comm_mapping_key`),
  KEY `chef_commission_mapings_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_commission_mapings_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_commissions`
--

LOCK TABLES `chef_commissions` WRITE;
/*!40000 ALTER TABLE `chef_commissions` DISABLE KEYS */;
INSERT INTO `chef_commissions` VALUES (1,1,350.00,50.00,50.00,50.00,50.00,50.00,30.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:32','2019-07-30 21:34:32','2019-07-30 21:34:32',0),(2,2,350.00,50.00,50.00,50.00,50.00,50.00,31.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:32','2019-07-30 21:34:32','2019-07-30 21:34:32',0),(3,3,350.00,50.00,50.00,50.00,50.00,50.00,32.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:32','2019-07-30 21:34:32','2019-07-30 21:34:32',0),(4,4,350.00,50.00,50.00,50.00,50.00,50.00,33.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:32','2019-07-30 21:34:32','2019-07-30 21:34:32',0),(5,5,350.00,50.00,50.00,50.00,50.00,50.00,34.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:33','2019-07-30 21:34:33','2019-07-30 21:34:33',0),(6,6,350.00,50.00,50.00,50.00,50.00,50.00,35.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:33','2019-07-30 21:34:33','2019-07-30 21:34:33',0),(7,7,350.00,50.00,50.00,50.00,50.00,50.00,36.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:33','2019-07-30 21:34:33','2019-07-30 21:34:33',0),(8,8,350.00,50.00,50.00,50.00,50.00,50.00,37.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:33','2019-07-30 21:34:33','2019-07-30 21:34:33',0),(9,9,350.00,50.00,50.00,50.00,50.00,50.00,38.00,0.10,0.00,NULL,NULL,'2019-07-30 21:34:33','2019-07-30 21:34:33','2019-07-30 21:34:33',0);
/*!40000 ALTER TABLE `chef_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_details`
--

DROP TABLE IF EXISTS `chef_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_details` (
  `chef_id` bigint(20) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `chef_category` int(11) DEFAULT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `specialization` varchar(20) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `chef_type` int(11) DEFAULT NULL,
  `chef_location` point DEFAULT NULL,
  `chef_image` blob,
  `phone_number` bigint(20) DEFAULT NULL,
  `availability_flag` tinyint(1) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_details`
--

LOCK TABLES `chef_details` WRITE;
/*!40000 ALTER TABLE `chef_details` DISABLE KEYS */;
INSERT INTO `chef_details` VALUES (1,'VR1',1,'Graduate','Mexican','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423451,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(2,'VR2',1,'Graduate2','Indian','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423452,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(3,'VR3',1,'Graduate3','South Indian','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423453,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(4,'VR4',1,'Graduate4','Continental','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423454,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(5,'VR5',1,'Graduate5','Chinese','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423455,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(6,'VR6',1,'Graduate11','Mexican','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423456,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(7,'VR7',1,'Graduate12','Afghani','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423457,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(8,'VR8',1,'Graduate13','Italian','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423458,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(9,'VR9',1,'Graduate21','Pizza','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423459,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(10,'VR10',1,'HSC','Mexican','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423450,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0),(11,'VR11',1,'Graduate','Mexican','Good Communicator',1,_binary '\0\0\0\0\0\0\0¢]…”Ÿ€EÀ¥iP4žE@',NULL,7321423451,0,'User',NULL,'2019-07-30 20:19:18','2019-07-30 20:19:18','2019-07-30 20:19:18',0);
/*!40000 ALTER TABLE `chef_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_dish_mappings`
--

DROP TABLE IF EXISTS `chef_dish_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_dish_mappings` (
  `dish_mapping_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `dish_id` bigint(20) DEFAULT NULL,
  `preparation_score` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`dish_mapping_id`),
  KEY `chef_dish_mappings_chef_id_fkey` (`chef_id`),
  KEY `fk_dish_id` (`dish_id`),
  CONSTRAINT `chef_dish_mappings_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`),
  CONSTRAINT `fk_dish_id` FOREIGN KEY (`dish_id`) REFERENCES `all_dishes` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_dish_mappings`
--

LOCK TABLES `chef_dish_mappings` WRITE;
/*!40000 ALTER TABLE `chef_dish_mappings` DISABLE KEYS */;
INSERT INTO `chef_dish_mappings` VALUES (1,1,1,3,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(2,2,2,4,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(3,3,3,5,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(4,4,4,6,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(5,5,5,7,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(6,6,6,8,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(7,7,7,9,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(8,8,8,10,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0),(9,9,2,6,NULL,NULL,'2019-07-30 21:35:55','2019-07-30 21:35:55','2019-07-30 21:35:55',0);
/*!40000 ALTER TABLE `chef_dish_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_earnings`
--

DROP TABLE IF EXISTS `chef_earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_earnings` (
  `chef_earnings_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `chef_earnings` decimal(16,2) DEFAULT NULL,
  `tax_component` decimal(16,2) DEFAULT NULL,
  `offset_value` decimal(16,2) DEFAULT NULL,
  `offset_reason` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_earnings_id`),
  KEY `chef_earnings_booking_id_fkey` (`booking_id`),
  KEY `chef_earnings_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_earnings_booking_id_fkey` FOREIGN KEY (`booking_id`) REFERENCES `booking_details` (`booking_id`),
  CONSTRAINT `chef_earnings_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_earnings`
--

LOCK TABLES `chef_earnings` WRITE;
/*!40000 ALTER TABLE `chef_earnings` DISABLE KEYS */;
INSERT INTO `chef_earnings` VALUES (1,1,1,734.00,199.00,48.00,2,NULL,NULL,'2019-07-30 21:38:19','2019-07-30 21:38:19','2019-07-30 21:38:19',0),(2,2,2,342.00,34.00,56.00,2,NULL,NULL,'2019-07-30 21:38:19','2019-07-30 21:38:19','2019-07-30 21:38:19',0),(3,3,3,734.00,199.00,48.00,3,NULL,NULL,'2019-07-30 21:38:19','2019-07-30 21:38:19','2019-07-30 21:38:19',0),(4,4,4,342.00,34.00,56.00,4,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0),(5,5,5,734.00,199.00,48.00,1,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0),(6,6,6,342.00,34.00,56.00,2,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0),(7,7,7,734.00,199.00,48.00,3,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0),(8,8,8,342.00,34.00,56.00,4,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0),(9,9,9,734.00,199.00,48.00,2,NULL,NULL,'2019-07-30 21:38:20','2019-07-30 21:38:20','2019-07-30 21:38:20',0);
/*!40000 ALTER TABLE `chef_earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_earnings_payouts_total`
--

DROP TABLE IF EXISTS `chef_earnings_payouts_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_earnings_payouts_total` (
  `chef_earnings_payout_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `total_payouts` decimal(10,0) DEFAULT NULL,
  `total_amount_since_last_payout` decimal(10,0) DEFAULT NULL,
  `last_payout` decimal(10,0) DEFAULT NULL,
  `last_payout_date` date DEFAULT NULL,
  `last_payout_ref_key` bigint(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_earnings_payout_id`),
  KEY `chef_earnings_payouts_total_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_earnings_payouts_total_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_earnings_payouts_total`
--

LOCK TABLES `chef_earnings_payouts_total` WRITE;
/*!40000 ALTER TABLE `chef_earnings_payouts_total` DISABLE KEYS */;
INSERT INTO `chef_earnings_payouts_total` VALUES (1,1,3450,350,225,'2019-04-04',1,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(2,2,3451,351,226,'2019-04-05',2,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(3,3,3452,352,227,'2019-04-06',3,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(4,4,3453,353,228,'2019-04-07',4,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(5,5,3454,354,229,'2019-04-08',5,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(6,6,3455,355,230,'2019-04-09',6,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(7,7,3456,356,231,'2019-04-10',7,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(8,8,3457,357,232,'2019-04-11',8,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0),(9,9,3458,358,233,'2019-04-12',9,NULL,NULL,'2019-07-30 21:45:07','2019-07-30 21:45:07','2019-07-30 21:45:07',0);
/*!40000 ALTER TABLE `chef_earnings_payouts_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_extra_details`
--

DROP TABLE IF EXISTS `chef_extra_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_extra_details` (
  `chef_extra_detail_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `verification_status` int(11) DEFAULT NULL,
  `alt_phn_number` varchar(15) DEFAULT NULL,
  `aadhar_number` varchar(15) DEFAULT NULL,
  `pan` varchar(10) DEFAULT NULL,
  `address_line_one` varchar(100) DEFAULT NULL,
  `address_line_two` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `zone` varchar(10) DEFAULT NULL,
  `pref_travel_distance` decimal(10,0) DEFAULT NULL,
  `max_travel_distance` decimal(10,0) DEFAULT NULL,
  `per_km_travel_cost` decimal(10,0) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_extra_detail_id`),
  KEY `chef_extra_details_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_extra_details_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_extra_details`
--

LOCK TABLES `chef_extra_details` WRITE;
/*!40000 ALTER TABLE `chef_extra_details` DISABLE KEYS */;
INSERT INTO `chef_extra_details` VALUES (1,1,1,'13344444','BPQPR06YC','BPWPR984','BPWPR984','BPWPR984','BPWPR984','BPWPR984','BPWPR984','ING',2,3,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(2,2,2,'13344444','BPQPR06saC1','BPWPR984','BPWPR984','BPWPR984','BPWPR984','BPWPR984','BPWPR984','BRB1',3,4,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(3,3,1,'13344445','BPQPR06saC2','BPWPR985','BPWPR985','BPWPR985','BPWPR984','BPWPR984','BPWPR984','BRB2',4,5,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(4,4,2,'13344446','BPQPR06saC3','BPWPR986','BPWPR986','BPWPR986','BPWPR984','BPWPR984','BPWPR984','BRB3',5,6,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(5,5,1,'13344447','BPQPR06saC4','BPWPR987','BPWPR987','BPWPR987','BPWPR984','BPWPR984','BPWPR984','BRB4',6,7,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(6,6,2,'13344448','BPQPR06saC5','BPWPR988','BPWPR988','BPWPR988','BPWPR984','BPWPR984','BPWPR984','BRB5',7,8,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(7,7,1,'13344449','BPQPR06saC6','BPWPR989','BPWPR989','BPWPR989','BPWPR984','BPWPR984','BPWPR984','BRB6',8,9,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(8,8,2,'13344450','BPQPR06saC7','BPWPR990','BPWPR990','BPWPR990','BPWPR984','BPWPR984','BPWPR984','BRB7',9,10,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0),(9,9,1,'13344451','BPQPR06saC8','BPWPR991','BPWPR991','BPWPR991','BPWPR984','BPWPR984','BPWPR984','BRB8',10,11,3,NULL,NULL,'2019-07-30 20:24:04','2019-07-30 20:24:04','2019-07-30 20:24:04',0);
/*!40000 ALTER TABLE `chef_extra_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_languages`
--

DROP TABLE IF EXISTS `chef_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_languages` (
  `chef_language_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `language_known` varchar(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_language_id`),
  KEY `chef_languages_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_languages_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_languages`
--

LOCK TABLES `chef_languages` WRITE;
/*!40000 ALTER TABLE `chef_languages` DISABLE KEYS */;
INSERT INTO `chef_languages` VALUES (1,1,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(2,1,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(3,1,'Kanada',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(4,2,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(5,2,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(6,2,'Bengali',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(7,3,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(8,4,'Kanada',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(9,4,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(10,5,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(11,5,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(12,5,'Kanada',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(13,6,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(14,6,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(15,7,'Bengali',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(16,7,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(17,8,'Kanada',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(18,8,'English',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0),(19,9,'Hindi',NULL,NULL,'2019-07-30 21:46:16','2019-07-30 21:46:16','2019-07-30 21:46:16',0);
/*!40000 ALTER TABLE `chef_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_login_details`
--

DROP TABLE IF EXISTS `chef_login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_login_details` (
  `chef_login_details_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `chef_user_name` varchar(20) DEFAULT NULL,
  `chef_password` varchar(15) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `chef_account_status` int(11) DEFAULT NULL,
  `login_type` int(11) DEFAULT NULL,
  `auth_ref_key` bigint(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_login_details_id`),
  KEY `chef_login_details_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_login_details_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_login_details`
--

LOCK TABLES `chef_login_details` WRITE;
/*!40000 ALTER TABLE `chef_login_details` DISABLE KEYS */;
INSERT INTO `chef_login_details` VALUES (1,1,1,'Welcome1',NULL,1,1,1,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(2,2,2,'Welcome2',NULL,1,2,2,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(3,3,3,'Welcome3',NULL,1,1,3,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(4,4,4,'Welcome4',NULL,1,2,4,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(5,5,5,'Welcome5',NULL,2,1,5,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(6,6,6,'Welcome6',NULL,1,2,6,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(7,7,7,'Welcome7',NULL,1,1,7,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(8,8,8,'Welcome8',NULL,2,2,8,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0),(9,9,9,'Welcome9',NULL,1,1,9,NULL,NULL,'2019-07-30 21:52:16','2019-07-30 21:52:16','2019-07-30 21:52:16',0);
/*!40000 ALTER TABLE `chef_login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_payouts`
--

DROP TABLE IF EXISTS `chef_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chef_payouts` (
  `chef_payout_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `refernce_id` varchar(50) DEFAULT NULL,
  `chef_payout_amount` decimal(16,2) DEFAULT NULL,
  `transaction_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comments` varchar(100) DEFAULT NULL,
  `extra_info1` varchar(100) DEFAULT NULL,
  `extra_info2` varchar(100) DEFAULT NULL,
  `extra_info3` varchar(100) DEFAULT NULL,
  `transfer_mode` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`chef_payout_id`),
  KEY `chef_payouts_chef_id_fkey` (`chef_id`),
  CONSTRAINT `chef_payouts_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_payouts`
--

LOCK TABLES `chef_payouts` WRITE;
/*!40000 ALTER TABLE `chef_payouts` DISABLE KEYS */;
INSERT INTO `chef_payouts` VALUES (1,1,'1',500.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(2,2,'2',501.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(3,3,'3',502.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(4,1,'4',503.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(5,2,'5',504.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(6,3,'6',505.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(7,4,'7',506.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(8,5,'8',507.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0),(9,6,'9',508.00,NULL,'weekly','','','',1,NULL,NULL,'2019-07-30 21:53:45','2019-07-30 21:53:45','2019-07-30 21:53:45',0);
/*!40000 ALTER TABLE `chef_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish_ingredient_mapping`
--

DROP TABLE IF EXISTS `dish_ingredient_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dish_ingredient_mapping` (
  `ingredient_mapping_id` bigint(20) NOT NULL,
  `dish_id` bigint(20) DEFAULT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ingredient_mapping_id`),
  KEY `dish_ingredient_mapping_dish_id_fkey` (`dish_id`),
  KEY `dish_ingredient_mapping_ingredient_id_fkey` (`ingredient_id`),
  CONSTRAINT `dish_ingredient_mapping_dish_id_fkey` FOREIGN KEY (`dish_id`) REFERENCES `all_dishes` (`dish_id`),
  CONSTRAINT `dish_ingredient_mapping_ingredient_id_fkey` FOREIGN KEY (`ingredient_id`) REFERENCES `all_ingredients` (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish_ingredient_mapping`
--

LOCK TABLES `dish_ingredient_mapping` WRITE;
/*!40000 ALTER TABLE `dish_ingredient_mapping` DISABLE KEYS */;
INSERT INTO `dish_ingredient_mapping` VALUES (1,1,1,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(2,2,2,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(3,2,5,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(5,5,5,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(6,6,3,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(7,6,5,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(8,7,3,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(9,7,5,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(10,8,3,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0),(11,8,5,NULL,NULL,'2019-07-30 21:54:09','2019-07-30 21:54:09','2019-07-30 21:54:09',0);
/*!40000 ALTER TABLE `dish_ingredient_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_chef_ratings`
--

DROP TABLE IF EXISTS `general_chef_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `general_chef_ratings` (
  `general_ratings_id` bigint(20) NOT NULL,
  `chef_id` bigint(20) DEFAULT NULL,
  `average_rating_value` varchar(100) DEFAULT NULL,
  `number_of_ratings` int(11) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`general_ratings_id`),
  KEY `general_chef_ratings_chef_id_fkey` (`chef_id`),
  CONSTRAINT `general_chef_ratings_chef_id_fkey` FOREIGN KEY (`chef_id`) REFERENCES `chef_details` (`chef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_chef_ratings`
--

LOCK TABLES `general_chef_ratings` WRITE;
/*!40000 ALTER TABLE `general_chef_ratings` DISABLE KEYS */;
INSERT INTO `general_chef_ratings` VALUES (1,1,'4',12,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(2,2,'4.1',22,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(3,3,'2.9',33,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(4,4,'3.8',5,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(5,5,'0',0,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(6,6,'4.5',11,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(7,7,'3.6',55,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(8,8,'4.2',32,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0),(9,9,'4.7',3,NULL,NULL,'2019-07-30 21:54:33','2019-07-30 21:54:33','2019-07-30 21:54:33',0);
/*!40000 ALTER TABLE `general_chef_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_appliance_mappings`
--

DROP TABLE IF EXISTS `ingredient_appliance_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ingredient_appliance_mappings` (
  `app_mapping_id` bigint(20) NOT NULL,
  `ingredient_id` bigint(20) DEFAULT NULL,
  `sp_app_id` bigint(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`app_mapping_id`),
  KEY `ingredient_applaince_mappings_ingredient_id_fkey` (`ingredient_id`),
  KEY `ingredient_applaince_mappings_sp_app_id_fkey` (`sp_app_id`),
  CONSTRAINT `ingredient_applaince_mappings_ingredient_id_fkey` FOREIGN KEY (`ingredient_id`) REFERENCES `all_ingredients` (`ingredient_id`),
  CONSTRAINT `ingredient_applaince_mappings_sp_app_id_fkey` FOREIGN KEY (`sp_app_id`) REFERENCES `special_appliances` (`sp_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_appliance_mappings`
--

LOCK TABLES `ingredient_appliance_mappings` WRITE;
/*!40000 ALTER TABLE `ingredient_appliance_mappings` DISABLE KEYS */;
INSERT INTO `ingredient_appliance_mappings` VALUES (1,1,1,NULL,NULL,'2019-07-30 22:00:14','2019-07-30 22:00:14','2019-07-30 22:00:14',0),(2,1,2,NULL,NULL,'2019-07-30 22:00:14','2019-07-30 22:00:14','2019-07-30 22:00:14',0);
/*!40000 ALTER TABLE `ingredient_appliance_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_breakdown`
--

DROP TABLE IF EXISTS `payment_breakdown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment_breakdown` (
  `payment_breakdown_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `third_party_commision` double DEFAULT NULL,
  `jp_earnings` double DEFAULT NULL,
  `chef_commision` double DEFAULT NULL,
  `tax_component_one` double DEFAULT NULL,
  `tax_component_two` double DEFAULT NULL,
  `tax_component_three` double DEFAULT NULL,
  `tax_component_four` double DEFAULT NULL,
  `chef_tip` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `other_one` double DEFAULT NULL,
  `other_two` double DEFAULT NULL,
  `other_three` double DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`payment_breakdown_id`),
  KEY `payment_breakdown_payment_id_fkey` (`payment_id`),
  CONSTRAINT `payment_breakdown_payment_id_fkey` FOREIGN KEY (`payment_id`) REFERENCES `all_payments` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_breakdown`
--

LOCK TABLES `payment_breakdown` WRITE;
/*!40000 ALTER TABLE `payment_breakdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_breakdown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_appliances`
--

DROP TABLE IF EXISTS `special_appliances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `special_appliances` (
  `sp_app_id` bigint(20) NOT NULL,
  `appliance_name` varchar(20) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`sp_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_appliances`
--

LOCK TABLES `special_appliances` WRITE;
/*!40000 ALTER TABLE `special_appliances` DISABLE KEYS */;
INSERT INTO `special_appliances` VALUES (1,'Cooking Pan',NULL,NULL,'2019-07-30 20:59:32','2019-07-30 20:59:32','2019-07-30 20:59:32',0),(2,'Pressure cooker',NULL,NULL,'2019-07-30 20:59:32','2019-07-30 20:59:32','2019-07-30 20:59:32',0),(3,'Scarppers',NULL,NULL,'2019-07-30 20:59:32','2019-07-30 20:59:32','2019-07-30 20:59:32',0),(4,'Kitchen knife',NULL,NULL,'2019-07-30 20:59:32','2019-07-30 20:59:32','2019-07-30 20:59:32',0),(5,'Cutting board',NULL,NULL,'2019-07-30 20:59:32','2019-07-30 20:59:32','2019-07-30 20:59:32',0);
/*!40000 ALTER TABLE `special_appliances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `used_coupons`
--

DROP TABLE IF EXISTS `used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `used_coupons` (
  `used_coupon_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `discount_amount` decimal(16,2) DEFAULT NULL,
  `used_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`used_coupon_id`),
  KEY `used_coupons_booking_id_fkey` (`booking_id`),
  KEY `used_coupons_user_id_fkey` (`user_id`),
  CONSTRAINT `used_coupons_booking_id_fkey` FOREIGN KEY (`booking_id`) REFERENCES `booking_details` (`booking_id`),
  CONSTRAINT `used_coupons_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `used_coupons`
--

LOCK TABLES `used_coupons` WRITE;
/*!40000 ALTER TABLE `used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_mappings`
--

DROP TABLE IF EXISTS `user_group_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_group_mappings` (
  `user_group_mapping_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `soft_delete_flag` bit(1) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_group_mapping_id`),
  KEY `user_group_mappings_user_group_id_fkey` (`user_group_id`),
  KEY `user_group_mappings_user_id_fkey` (`user_id`),
  CONSTRAINT `user_group_mappings_user_group_id_fkey` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`),
  CONSTRAINT `user_group_mappings_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_mappings`
--

LOCK TABLES `user_group_mappings` WRITE;
/*!40000 ALTER TABLE `user_group_mappings` DISABLE KEYS */;
INSERT INTO `user_group_mappings` VALUES (1,1,1,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(2,2,2,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(3,3,3,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(4,4,4,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(5,5,5,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(6,6,6,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(7,7,7,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(8,8,8,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0),(9,9,9,_binary '\0',NULL,NULL,'2019-07-30 20:58:11','2019-07-30 20:58:11','2019-07-30 20:58:11',0);
/*!40000 ALTER TABLE `user_group_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_group_name` varchar(10) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,'Regular',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(2,'Seldom',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(3,'Occasional',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(4,'Active',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(5,'Dormant',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(6,'Deactive',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(7,'Frequent',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(8,'AB1',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0),(9,'XY2',_binary '\0',NULL,NULL,NULL,NULL,'2019-07-30 20:51:03','2019-07-30 20:51:03','2019-07-30 20:51:03',0);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_profiles` (
  `user_id` bigint(20) NOT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `full_name` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `login_mode` int(11) DEFAULT NULL,
  `email_verification_status` tinyint(1) DEFAULT NULL,
  `phone_number_verification_status` tinyint(1) DEFAULT NULL,
  `profile_image` blob,
  `login_auth_token` varchar(20) DEFAULT NULL,
  `mail_id` varchar(255) DEFAULT NULL,
  `mail_verification_staus` tinyint(1) DEFAULT NULL,
  `phone_number_verification_staus` tinyint(1) DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (1,7032501553,'Vishwa Ranjan','vishwa@jeerapowder.com',1,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(2,7337367761,'Skr','shekhar@jeerapowder.com',2,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(3,7032501553,'Ehtesham','ehteshamazhar7@gmail.com',1,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(4,7093852403,'Vranjan1','vishwa.ranjan@gmail.com',2,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(5,7032501553,'Vranjan2','vishwa@jeerapowder.com',1,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(6,7337367761,'Vranjan3','shekhar@jeerapowder.com',2,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(7,7032501553,'Vranjan4','ehteshamazhar7@gmail.com',1,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(8,7337367761,'Vranjan5','vishwa.ranjan@gmail.com',2,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0),(9,7032501553,'Vranjan6','',1,1,1,'','',NULL,NULL,NULL,NULL,NULL,'2019-07-30 20:33:02','2019-07-30 20:33:02','2019-07-30 20:33:02',0);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_saved_addresses`
--

DROP TABLE IF EXISTS `user_saved_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_saved_addresses` (
  `saved_address_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `address_name` varchar(100) DEFAULT NULL,
  `address_line_one` varchar(100) DEFAULT NULL,
  `address_line_two` varchar(100) DEFAULT NULL,
  `address_line_three` varchar(100) DEFAULT NULL,
  `user_location` point DEFAULT NULL,
  `createdby` varchar(50) DEFAULT NULL,
  `modifiedby` varchar(50) DEFAULT NULL,
  `createdts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodifiedts` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `synctimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `softdeleteflag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`saved_address_id`),
  KEY `user_saved_addresses_user_id_fkey` (`user_id`),
  CONSTRAINT `user_saved_addresses_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user_profiles` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_saved_addresses`
--

LOCK TABLES `user_saved_addresses` WRITE;
/*!40000 ALTER TABLE `user_saved_addresses` DISABLE KEYS */;
INSERT INTO `user_saved_addresses` VALUES (1,1,'Anda','301 flat sri vinayaka','301 flat sri vinayaka','301 flat sri vinayaka',NULL,NULL,NULL,'2019-07-30 20:42:29','2019-07-30 20:42:29','2019-07-30 20:42:29',0),(2,2,'Banda','301 flat sri vinayaka','301 flat sri vinayaka','301 flat sri vinayaka',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(3,3,'CH1BR2','502, SVSS1','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(4,4,'CH1BR3','502, SVSS2','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(5,5,'CH1BR4','502, SVSS3','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(6,6,'CH1BR5','502, SVSS4','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(7,7,'CH1BR6','502, SVSS5','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(8,8,'CH1BR7','502, SVSS6','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0),(9,9,'CH1BR8','502, SVSS7','Kondapur','Hyderabad',NULL,NULL,NULL,'2019-07-30 20:43:41','2019-07-30 20:43:41','2019-07-30 20:43:41',0);
/*!40000 ALTER TABLE `user_saved_addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-31  3:33:01
