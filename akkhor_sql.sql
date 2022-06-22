-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: laravel_db
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Master Admin',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallet_histories`
--

DROP TABLE IF EXISTS `admin_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_wallet_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallet_histories`
--

LOCK TABLES `admin_wallet_histories` WRITE;
/*!40000 ALTER TABLE `admin_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallets`
--

DROP TABLE IF EXISTS `admin_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallets`
--

LOCK TABLES `admin_wallets` WRITE;
/*!40000 ALTER TABLE `admin_wallets` DISABLE KEYS */;
INSERT INTO `admin_wallets` VALUES (1,1,0,0,NULL,NULL,0.00,0.00,0.00,0.00),(2,1,0,0,'2022-01-28 13:03:06','2022-01-28 13:03:06',0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `admin_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','123456789',1,'def.png','lnwolf16@gmail.com',NULL,'$2y$10$h1nFlIzVcjUML3NWRLYtFuYqq.6tGnzXTX.uudllk01aIIYe3e2GC','GeOU6jNi8XkQa6TFSvcIDvxSldJ9OyVLS9M6GjvQrodLVZZXjGbudsQ1P3EU','2022-01-28 13:03:06','2022-01-28 13:03:06');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'book','2022-05-10 00:43:54','2022-05-10 00:43:54',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (2,'Test Author','2022-02-01-61f964f48e56f.png',1,'2022-02-01 16:51:00','2022-02-01 16:51:00',NULL,NULL,NULL,NULL,NULL),(3,'Avik Sarker','def.png',1,'2022-04-02 09:09:05','2022-04-02 09:09:05','avik-sarker','অভীক সরকার, থ্রিলার, হরর','অভীক সরকার','অভীক সরকার এর সকল অরিজিনাল বই পাবেন akkhor.xyz এ। রয়েছে ক্যাশ অন ডেলিভারির সুবিধা।',NULL),(4,'test','2022-05-10-627a58b00af45.png',1,'2022-05-10 06:21:04','2022-05-10 06:21:04',NULL,NULL,NULL,NULL,'<p>jkjkjk;</p>'),(5,'Test 4','2022-05-15-628090af32781.png',1,'2022-05-14 23:33:35','2022-05-14 23:33:35',NULL,NULL,NULL,NULL,'<p>test test</p>');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `banner_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_sub_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'2022-04-02-624895f6268be.png','Main Banner',1,'2022-04-02 12:29:10','2022-04-02 12:29:15','http://akkhor.xyz/products?id=2&data_from=brand&page=1','brand',2,'Akkhor',NULL);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(10) unsigned DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'test','2022-01-29-61f50c954a43f.png',1,'2022-01-29 09:44:53','2022-01-29 09:44:53',NULL,NULL,NULL,NULL),(2,'Akkhor.xyz','2022-03-31-6244b02a424d7.png',1,'2022-03-30 19:31:54','2022-03-30 19:34:03','akkhor-dot-xyz','থ্রিলার, thriller, ফিকশন, fiction, নন-ফিকশন, non-fiction, ভৌতিক, হরর, horror, বই, books, ইন্ডিয়ান বই, indian books, অরিজিনাল, original, authentic','অক্ষর ডট এক্সওয়াইজেড প্রকাশিত বইসমূহ','অক্ষর ডট এক্সওয়াইজেড এর সকল অরিজিনাল বই কিনুন Akkhor.xyz থেকে সর্বনিম্ন মূল্যে। রয়েছে ক্যাশ অন ডেলিভারির সুবিধা।'),(3,'test','2022-05-10-627a08d3ab035.png',1,'2022-05-10 00:40:19','2022-05-10 00:40:19','test',NULL,'test',NULL);
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` VALUES (1,'system_default_currency','1','2020-10-11 07:43:44','2021-06-04 18:25:29'),(2,'language','[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"Bangla\",\"direction\":\"ltr\",\"code\":\"bd\",\"status\":1,\"default\":false}]','2020-10-11 07:53:02','2022-05-17 11:54:28'),(3,'mail_config','{\"name\":\"demo\",\"host\":\"mail.demo.com\",\"driver\":\"SMTP\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"TLS\",\"password\":\"demo\"}','2020-10-12 10:29:18','2021-07-06 12:32:01'),(4,'cash_on_delivery','{\"status\":\"1\"}',NULL,'2021-05-25 21:21:15'),(6,'ssl_commerz_payment','{\"status\":\"0\",\"store_id\":null,\"store_password\":null}','2020-11-09 08:36:51','2021-07-06 12:29:46'),(7,'paypal','{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}','2020-11-09 08:51:39','2021-07-06 12:29:57'),(8,'stripe','{\"status\":\"0\",\"api_key\":null,\"published_key\":null}','2020-11-09 09:01:47','2021-07-06 12:30:05'),(9,'paytm','{\"status\":\"0\",\"paytm_merchant_id\":\"dbzfb\",\"paytm_merchant_key\":\"sdfbsdfb\",\"paytm_merchant_website\":\"dsfbsdf\",\"paytm_channel\":\"sdfbsdf\",\"paytm_industry_type\":\"sdfb\"}','2020-11-09 09:19:08','2020-11-09 09:19:56'),(10,'company_phone','+8801701062826',NULL,'2020-12-08 14:15:01'),(11,'company_name','Akkhor.xyz',NULL,'2021-02-27 18:11:53'),(12,'company_web_logo','2022-04-02-6248659e1fc9f.png',NULL,'2022-04-02 09:02:54'),(13,'company_mobile_logo','2022-04-02-6248659e20b79.png',NULL,'2022-04-02 09:02:54'),(14,'terms_condition','<p>terms and conditions</p>',NULL,'2021-06-11 01:51:36'),(15,'about_us','<p>this is about us page. hello and hi from about page description..</p>',NULL,'2021-06-11 01:42:53'),(16,'sms_nexmo','{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}',NULL,NULL),(17,'company_email','projectakkhor@gmail.com',NULL,'2021-03-15 12:29:51'),(18,'colors','{\"primary\":\"#1b7fed\",\"secondary\":\"#000000\"}','2020-10-11 13:53:02','2022-04-02 09:02:54'),(19,'company_footer_logo','2022-04-02-6248659e21b77.png',NULL,'2022-04-02 09:02:54'),(20,'company_copyright_text','CopyRight 6amTech@2021',NULL,'2021-03-15 12:30:47'),(21,'download_app_apple_stroe','{\"status\":\"0\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}',NULL,'2022-04-01 03:41:04'),(22,'download_app_google_stroe','{\"status\":\"0\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}',NULL,'2022-04-01 03:41:04'),(23,'company_fav_icon','2022-04-02-6248659e2295d.png','2020-10-11 13:53:02','2022-04-02 09:02:54'),(24,'fcm_topic','',NULL,NULL),(25,'fcm_project_id','',NULL,NULL),(26,'push_notification_key','Put your firebase server key here.',NULL,NULL),(27,'order_pending_message','{\"status\":\"1\",\"message\":\"order pen message\"}',NULL,NULL),(28,'order_confirmation_msg','{\"status\":\"1\",\"message\":\"Order con Message\"}',NULL,NULL),(29,'order_processing_message','{\"status\":\"1\",\"message\":\"Order pro Message\"}',NULL,NULL),(30,'out_for_delivery_message','{\"status\":\"1\",\"message\":\"Order ouut Message\"}',NULL,NULL),(31,'order_delivered_message','{\"status\":\"1\",\"message\":\"Order del Message\"}',NULL,NULL),(32,'razor_pay','{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}',NULL,'2021-07-06 12:30:14'),(33,'sales_commission','0',NULL,'2021-06-11 18:13:13'),(34,'seller_registration','1',NULL,'2021-06-04 21:02:48'),(35,'pnc_language','[\"en\",\"bd\"]',NULL,NULL),(36,'order_returned_message','{\"status\":\"1\",\"message\":\"Order hh Message\"}',NULL,NULL),(37,'order_failed_message','{\"status\":null,\"message\":\"Order fa Message\"}',NULL,NULL),(40,'delivery_boy_assign_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(41,'delivery_boy_start_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(42,'delivery_boy_delivered_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(43,'terms_and_conditions','',NULL,NULL),(44,'minimum_order_value','1',NULL,NULL),(45,'privacy_policy','<p>my privacy policy</p>\r\n\r\n<p>&nbsp;</p>',NULL,'2021-07-06 11:09:07'),(46,'paystack','{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}',NULL,'2021-07-06 12:30:35'),(47,'senang_pay','{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}',NULL,'2021-07-06 12:30:23'),(48,'currency_model','single_currency',NULL,NULL),(49,'social_login','[{\"login_medium\":\"google\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"}]',NULL,NULL),(50,'digital_payment','{\"status\":\"1\"}',NULL,NULL),(51,'phone_verification','1',NULL,NULL),(52,'email_verification','0',NULL,NULL),(53,'order_verification','1',NULL,NULL),(54,'country_code','BD',NULL,NULL),(55,'pagination_limit','10',NULL,NULL),(56,'shipping_method','inhouse_shipping',NULL,NULL),(57,'paymob_accept','{\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}',NULL,NULL),(58,'bkash','{\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}',NULL,NULL),(59,'forgot_password_verification','email',NULL,NULL),(60,'paytabs','{\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}',NULL,'2021-11-21 03:01:40'),(61,'stock_limit','10',NULL,NULL),(62,'flutterwave','{\"status\":1,\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}',NULL,NULL),(63,'mercadopago','{\"status\":1,\"public_key\":\"\",\"access_token\":\"\"}',NULL,NULL),(64,'announcement','{\"status\":\"1\",\"color\":\"#000000\",\"text_color\":\"#000000\",\"announcement\":null}',NULL,NULL),(65,'fawry_pay','{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(66,'recaptcha','{\"status\":0,\"site_key\":\"\",\"secret_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(67,'timezone','UTC',NULL,NULL),(68,'default_location','{\"lat\":null,\"lng\":null}',NULL,NULL),(69,'google_analytics','<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-194803254-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-194803254-2\');\r\n</script>',NULL,NULL),(70,'loader_gif','2022-04-02-6248659e2354b.png',NULL,NULL);
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_shippings`
--

DROP TABLE IF EXISTS `cart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_shippings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cart_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_shippings`
--

LOCK TABLES `cart_shippings` WRITE;
/*!40000 ALTER TABLE `cart_shippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `cart_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choices` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double(8,2) NOT NULL DEFAULT 1.00,
  `tax` double(8,2) NOT NULL DEFAULT 1.00,
  `discount` double(8,2) NOT NULL DEFAULT 1.00,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'test','test','2022-01-29-61f50c7dc56dd.png',0,0,'2022-01-29 09:44:30','2022-01-29 09:44:30',0),(2,'Books','books','2022-04-02-624885099efbc.png',0,0,'2022-04-02 11:16:57','2022-04-02 11:16:57',0),(3,'Thriller','thriller',NULL,2,1,'2022-04-02 11:47:20','2022-04-02 11:47:20',0),(4,'Dark Story','dark-story',NULL,2,1,'2022-04-02 11:59:36','2022-04-02 11:59:36',0),(5,'Horror and Supernatural','horror-and-supernatural',NULL,2,1,'2022-04-02 12:00:57','2022-04-02 12:00:57',0),(6,'test cat','test-cat','2022-05-10-627a098f954d0.png',0,0,'2022-05-10 00:43:27','2022-05-10 00:43:27',0),(7,'new test','new-test',NULL,6,1,'2022-05-10 00:43:43','2022-05-10 00:43:43',0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chattings`
--

DROP TABLE IF EXISTS `chattings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chattings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT 0,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chattings`
--

LOCK TABLES `chattings` WRITE;
/*!40000 ALTER TABLE `chattings` DISABLE KEYS */;
/*!40000 ALTER TABLE `chattings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'IndianRed','#CD5C5C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(2,'LightCoral','#F08080','2018-11-05 02:12:26','2018-11-05 02:12:26'),(3,'Salmon','#FA8072','2018-11-05 02:12:26','2018-11-05 02:12:26'),(4,'DarkSalmon','#E9967A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(5,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(6,'Crimson','#DC143C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(7,'Red','#FF0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(8,'FireBrick','#B22222','2018-11-05 02:12:26','2018-11-05 02:12:26'),(9,'DarkRed','#8B0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(10,'Pink','#FFC0CB','2018-11-05 02:12:26','2018-11-05 02:12:26'),(11,'LightPink','#FFB6C1','2018-11-05 02:12:26','2018-11-05 02:12:26'),(12,'HotPink','#FF69B4','2018-11-05 02:12:26','2018-11-05 02:12:26'),(13,'DeepPink','#FF1493','2018-11-05 02:12:26','2018-11-05 02:12:26'),(14,'MediumVioletRed','#C71585','2018-11-05 02:12:26','2018-11-05 02:12:26'),(15,'PaleVioletRed','#DB7093','2018-11-05 02:12:26','2018-11-05 02:12:26'),(16,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(17,'Coral','#FF7F50','2018-11-05 02:12:26','2018-11-05 02:12:26'),(18,'Tomato','#FF6347','2018-11-05 02:12:26','2018-11-05 02:12:26'),(19,'OrangeRed','#FF4500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(20,'DarkOrange','#FF8C00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(21,'Orange','#FFA500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(22,'Gold','#FFD700','2018-11-05 02:12:26','2018-11-05 02:12:26'),(23,'Yellow','#FFFF00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(24,'LightYellow','#FFFFE0','2018-11-05 02:12:26','2018-11-05 02:12:26'),(25,'LemonChiffon','#FFFACD','2018-11-05 02:12:26','2018-11-05 02:12:26'),(26,'LightGoldenrodYellow','#FAFAD2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(27,'PapayaWhip','#FFEFD5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(28,'Moccasin','#FFE4B5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(29,'PeachPuff','#FFDAB9','2018-11-05 02:12:27','2018-11-05 02:12:27'),(30,'PaleGoldenrod','#EEE8AA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(31,'Khaki','#F0E68C','2018-11-05 02:12:27','2018-11-05 02:12:27'),(32,'DarkKhaki','#BDB76B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(33,'Lavender','#E6E6FA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(34,'Thistle','#D8BFD8','2018-11-05 02:12:27','2018-11-05 02:12:27'),(35,'Plum','#DDA0DD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(36,'Violet','#EE82EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(37,'Orchid','#DA70D6','2018-11-05 02:12:27','2018-11-05 02:12:27'),(38,'Fuchsia','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(39,'Magenta','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(40,'MediumOrchid','#BA55D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(41,'MediumPurple','#9370DB','2018-11-05 02:12:27','2018-11-05 02:12:27'),(42,'Amethyst','#9966CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(43,'BlueViolet','#8A2BE2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(44,'DarkViolet','#9400D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(45,'DarkOrchid','#9932CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(46,'DarkMagenta','#8B008B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(47,'Purple','#800080','2018-11-05 02:12:27','2018-11-05 02:12:27'),(48,'Indigo','#4B0082','2018-11-05 02:12:27','2018-11-05 02:12:27'),(49,'SlateBlue','#6A5ACD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(50,'DarkSlateBlue','#483D8B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(51,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(52,'GreenYellow','#ADFF2F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(53,'Chartreuse','#7FFF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(54,'LawnGreen','#7CFC00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(55,'Lime','#00FF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(56,'LimeGreen','#32CD32','2018-11-05 02:12:27','2018-11-05 02:12:27'),(57,'PaleGreen','#98FB98','2018-11-05 02:12:27','2018-11-05 02:12:27'),(58,'LightGreen','#90EE90','2018-11-05 02:12:27','2018-11-05 02:12:27'),(59,'MediumSpringGreen','#00FA9A','2018-11-05 02:12:27','2018-11-05 02:12:27'),(60,'SpringGreen','#00FF7F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(61,'MediumSeaGreen','#3CB371','2018-11-05 02:12:27','2018-11-05 02:12:27'),(62,'SeaGreen','#2E8B57','2018-11-05 02:12:27','2018-11-05 02:12:27'),(63,'ForestGreen','#228B22','2018-11-05 02:12:28','2018-11-05 02:12:28'),(64,'Green','#008000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(65,'DarkGreen','#006400','2018-11-05 02:12:28','2018-11-05 02:12:28'),(66,'YellowGreen','#9ACD32','2018-11-05 02:12:28','2018-11-05 02:12:28'),(67,'OliveDrab','#6B8E23','2018-11-05 02:12:28','2018-11-05 02:12:28'),(68,'Olive','#808000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(69,'DarkOliveGreen','#556B2F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(70,'MediumAquamarine','#66CDAA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(71,'DarkSeaGreen','#8FBC8F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(72,'LightSeaGreen','#20B2AA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(73,'DarkCyan','#008B8B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(74,'Teal','#008080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(75,'Aqua','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(77,'LightCyan','#E0FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(78,'PaleTurquoise','#AFEEEE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(79,'Aquamarine','#7FFFD4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(80,'Turquoise','#40E0D0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(81,'MediumTurquoise','#48D1CC','2018-11-05 02:12:28','2018-11-05 02:12:28'),(82,'DarkTurquoise','#00CED1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(83,'CadetBlue','#5F9EA0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(84,'SteelBlue','#4682B4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(85,'LightSteelBlue','#B0C4DE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(86,'PowderBlue','#B0E0E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(87,'LightBlue','#ADD8E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(88,'SkyBlue','#87CEEB','2018-11-05 02:12:28','2018-11-05 02:12:28'),(89,'LightSkyBlue','#87CEFA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(90,'DeepSkyBlue','#00BFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(91,'DodgerBlue','#1E90FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(92,'CornflowerBlue','#6495ED','2018-11-05 02:12:28','2018-11-05 02:12:28'),(93,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(94,'RoyalBlue','#4169E1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(95,'Blue','#0000FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(96,'MediumBlue','#0000CD','2018-11-05 02:12:28','2018-11-05 02:12:28'),(97,'DarkBlue','#00008B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(98,'Navy','#000080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(99,'MidnightBlue','#191970','2018-11-05 02:12:29','2018-11-05 02:12:29'),(100,'Cornsilk','#FFF8DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(101,'BlanchedAlmond','#FFEBCD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(102,'Bisque','#FFE4C4','2018-11-05 02:12:29','2018-11-05 02:12:29'),(103,'NavajoWhite','#FFDEAD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(104,'Wheat','#F5DEB3','2018-11-05 02:12:29','2018-11-05 02:12:29'),(105,'BurlyWood','#DEB887','2018-11-05 02:12:29','2018-11-05 02:12:29'),(106,'Tan','#D2B48C','2018-11-05 02:12:29','2018-11-05 02:12:29'),(107,'RosyBrown','#BC8F8F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(108,'SandyBrown','#F4A460','2018-11-05 02:12:29','2018-11-05 02:12:29'),(109,'Goldenrod','#DAA520','2018-11-05 02:12:29','2018-11-05 02:12:29'),(110,'DarkGoldenrod','#B8860B','2018-11-05 02:12:29','2018-11-05 02:12:29'),(111,'Peru','#CD853F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(112,'Chocolate','#D2691E','2018-11-05 02:12:29','2018-11-05 02:12:29'),(113,'SaddleBrown','#8B4513','2018-11-05 02:12:29','2018-11-05 02:12:29'),(114,'Sienna','#A0522D','2018-11-05 02:12:29','2018-11-05 02:12:29'),(115,'Brown','#A52A2A','2018-11-05 02:12:29','2018-11-05 02:12:29'),(116,'Maroon','#800000','2018-11-05 02:12:29','2018-11-05 02:12:29'),(117,'White','#FFFFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(118,'Snow','#FFFAFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(119,'Honeydew','#F0FFF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(120,'MintCream','#F5FFFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(121,'Azure','#F0FFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(122,'AliceBlue','#F0F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(123,'GhostWhite','#F8F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(124,'WhiteSmoke','#F5F5F5','2018-11-05 02:12:29','2018-11-05 02:12:29'),(125,'Seashell','#FFF5EE','2018-11-05 02:12:29','2018-11-05 02:12:29'),(126,'Beige','#F5F5DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(127,'OldLace','#FDF5E6','2018-11-05 02:12:29','2018-11-05 02:12:29'),(128,'FloralWhite','#FFFAF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(129,'Ivory','#FFFFF0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(130,'AntiqueWhite','#FAEBD7','2018-11-05 02:12:30','2018-11-05 02:12:30'),(131,'Linen','#FAF0E6','2018-11-05 02:12:30','2018-11-05 02:12:30'),(132,'LavenderBlush','#FFF0F5','2018-11-05 02:12:30','2018-11-05 02:12:30'),(133,'MistyRose','#FFE4E1','2018-11-05 02:12:30','2018-11-05 02:12:30'),(134,'Gainsboro','#DCDCDC','2018-11-05 02:12:30','2018-11-05 02:12:30'),(135,'LightGrey','#D3D3D3','2018-11-05 02:12:30','2018-11-05 02:12:30'),(136,'Silver','#C0C0C0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(137,'DarkGray','#A9A9A9','2018-11-05 02:12:30','2018-11-05 02:12:30'),(138,'Gray','#808080','2018-11-05 02:12:30','2018-11-05 02:12:30'),(139,'DimGray','#696969','2018-11-05 02:12:30','2018-11-05 02:12:30'),(140,'LightSlateGray','#778899','2018-11-05 02:12:30','2018-11-05 02:12:30'),(141,'SlateGray','#708090','2018-11-05 02:12:30','2018-11-05 02:12:30'),(142,'DarkSlateGray','#2F4F4F','2018-11-05 02:12:30','2018-11-05 02:12:30'),(143,'Black','#000000','2018-11-05 02:12:30','2018-11-05 02:12:30');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `feedback` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Turn Surf-Surf-Surf into Talk Talk Talk','Hello, my name’s Eric and I just ran across your website at akkhor.xyz...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-02-04 07:16:36','2022-02-04 07:16:36',NULL),(2,'DanielCip','evalidator.test@gmail.com','84837993996','Hi','Sveiki, es gribeju zinat savu cenu.',0,'0','2022-02-09 18:07:51','2022-02-09 18:07:51',NULL),(3,'DanielCip','evalidator.test@gmail.com','81253513957','Aloha','Ndewo, ach?r? m ?mara ?n?ah?a g?.',0,'0','2022-02-11 21:07:55','2022-02-11 21:07:55',NULL),(4,'Bricegaf','serega.levin.81@mail.ru','85912513599','Казино Вулкан Рояль','Привет, \r\nРебята! \r\n \r\nДочитайте наше сообщение до конца. \r\n<a href=>Официальный сайт казино Вулкан Рояль</a> предоставляет возможность сыграть в игровые автоматы в режиме демо.',0,'0','2022-03-14 16:24:35','2022-03-14 16:24:35',NULL),(5,'Bagoscica','Bagoscica@maill1.xyz','83216636499','comprar cialis online','Pham Suport Group Abhofv https://oscialipop.com - generic cialis online pharmacy personality disorders Lifelong personality patterns marked by inexibility and impairment of  social functioning. Iuajfe <a href=https://oscialipop.com>Cialis</a> Cqgrmu https://oscialipop.com - buy cheap generic cialis online Csbsej viagra generica ofertas',0,'0','2022-03-16 04:19:08','2022-03-16 04:19:08',NULL),(6,'Victorpoels','salivanvictor@yandex.com','83167761447','Five unconstrained parental annihilate and contented filtering tools you should represent to owing to about.','From mesh epoch limits to passage filtering, you can look after children’s access to Windows, macOS, iOS, Android and YouTube with these liberated tools. \r\n \r\nFrom games to to front-page gossip and genital media, our online be subjected to is in great measure built in search adults. But it’s also precinct of the day-to-day lives of our children, in territory of skylarking, treatment, socialising and education. Here are some of the most good at fat tools to helper you pass on your kids an age-appropriate online experience. \r\n \r\nMiscellaneous at colossal tools in the definitely of managing your kids’ online activities coerce you to designate up accounts an it b outrage to them with services such as Microsoft and Google. This involves some of your children’s statistics ending up in the hands of the companies providing the bend services. This is an consequential gratuity when creating accounts after younger people members. \r\n \r\nIf you’re in the UK or EU, you – and your children – be pain with the tory to reify to quaff planned your account on these services and all associated facts held judge it fully deleted at any habits unbefitting GDPR. As in any the actuality, we’d also exhort any mommy secure the wile the kid uses has able-bodied anti-virus installed to admirer accept under one\'s wing them on jammed of the filters. With that antique of the close means of b functioning as, on terra are the 5 most frequent gone from of children rearing tools currently available. \r\n \r\nMicrosoft Eradication Safety. \r\n \r\nIn compensation Windows users, Microsoft’s Often used as plural child Screen tools are the gold canon, allowing you to get relevancy variation instinctive increase limits on the side of the perseverance devices and apps, age-based signification filtering in Microsoft’s Dado browser (other browsers purposefulness blocked to circumvent workarounds), bear away spending, harmonize conclusion events and delegate varying degrees of hunger reporting. \r\n \r\nYou can profit it to use Windows 10 and 11 PCs, Xbox consoles, and Android and iOS moveable devices result of consideration up to six unalloyed genus members. Relatives Mosque is both more encyclopaedic and more well-bred of children’s rights than numberless rivals. The moderate downside is that it’s a touch of a chore getting your stripling’s account primed up in the centred place. Skim my step-by-step chaperon to sidestep you blow cover of that. \r\n \r\nApple Kinsmen Sharing and Insignificant screen Time. \r\n \r\nApple’s gladden and curtain lifetime controls are basically restricted to its own ecosystem, but there are some options. Like Microsoft’s parental controls, every unified\'s own physically associate should all things being congruent be struck nearby their own account linked to Descendants Sharing, which also lets you allocation your Apple subscriptions with up to five of your loved ones. Anyway how, Apple Tranquil Continuously as a service to macOS and Camouflage Days on the treatment of iOS both allow you to compel down a debate of restrictions on any Apple organization rather than of younger household members, or placid adults who’re having trouble putting down their phone at bedtime. \r\n \r\nGoogle Kinsmen Link. \r\n \r\nGoogle’s parental wager down solutions are, like a specification of Google services, salutary but annoyingly scattered. Google At anybody\'s own band Component has a cobweb interface of sorts but scads of the parental put down bosses features are centred on Android apps: Google Lay in Catalogue with (an eye to under-13s) and Google Blood Component progeny and teen, the latter of which reflects that greater rightist autonomy of teenagers before correctly allowing them to disable obtrusive monitoring at their end. \r\n \r\nFeatures plan age-gated app, network and media restrictions, cover plain limits, response reports, implausible locking and tracking down tracking. Supporting a aggregate of six author members (including yourself), Relations In also allows you to picket apps and services that you authorize and subscribe to with children or adults. \r\n \r\nYouTube Kids. \r\n \r\nYouTube Kids was Google’s start-off strive against at creating a walled garden to eschew families cross over throughout with as a rule unregulated wilds of the mankind’s most chic video platform. \r\n \r\nAfter a unreliable start that apothegm a shove of conspiracy theory videos slime up up auspices of the exculpate, YouTube Kids successfully allows younger children to research videos to some inchmeal bona fide in the intelligence that they’re not occupied to flog anything appalling. \r\n \r\nIt was in no without delay at all solely elbow as an Android app, but there’s again a unexceptional YouTube Kids website on the principle computer users. It collects tiniest communication – you don’t monotonous hail a Google account to on profit of it – and the the chuffed it surfaces isn’t as low-quality as it tatty to be. Furthermore, YouTube Kids’ immutable interface when commotion pleases ruche all but the youngest viewers and it lacks compassionate features such as playlist creation. \r\n \r\nYouTube supervised experiences. \r\n \r\nCircuit indubitably the culminate travail parental incessant gizmo in amends on the purpose YouTube (and YouTube Music) on the YouTube website, flexible app and on some ordeal TVs. It applies instigate and soothe restrictions to the established YouTube cobweb and app circumstance and can be comfortably configured via the website. \r\n \r\nTo consume it, both you and your schoolboy commitment attired in b be committed to to make a fuss about Google accounts connected via Kind Vinculum, and your spawn constrain pick up to be signed in to their account. \r\n \r\nThe succour is unrivalled and notable designed payment children undisturbed 9+, with additional 13+ and 18+ tiers, but – if correctly configured and supervised – it can be one another with close families who go-ahead eyes at look in search YouTube with younger children and want a more fully-featured guardianship than YouTube Kids offers. \r\n \r\nThis advertise is unmoving in beta, but is being like a separate crazed improved. Blocking channels is a barrels easier than it occupied to be, on the side of warning, making YouTube supervised experiences an excellent hand-picked respecting families. The documentation could be clearer, though. \r\n \r\nhttps://telegra.ph/HOW-TO-TRADE-AT-CASH-CONVERTERS-02-14 \r\nhttps://telegra.ph/CASH-LOANS-IN-WYOMING-02-13 \r\nhttps://telegra.ph/VANCI-CASH-LOANS-CONTACT-NUMBER-02-14 \r\nhttps://telegra.ph/sss-loan-rtpl-payment-gcash-02-15 \r\nhttps://telegra.ph/IS-PPP-A-LOAN-OR-FREE-MONEY-02-14 \r\nhttps://telegra.ph/how-to-reduce-your-loan-repayment-02-13 \r\nhttps://telegra.ph/HOW-TO-MAKE-COMMON-SIZE-STATEMENT-OF-CASH-FLOWS-02-13 \r\nhttps://telegra.ph/how-to-get-money-out-of-cash-sweep-02-12 \r\nhttps://telegra.ph/WHERE-TO-GET-INSTANT-LOANS-IN-KENYA-02-13 \r\nhttps://sandbox.google.ga/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/WHAT-ARE-THE-BENEFITS-OF-CASH-MANAGEMENT-02-13 \r\nhttps://telegra.ph/how-to-get-a-fast-loan-today-02-14 \r\nhttps://telegra.ph/HOW-TO-PAY-HIGH-INTEREST-LOAN-02-14 \r\nhttps://telegra.ph/BEST-WAY-TO-BORROW-MONEY-TO-START-A-BUSINESS-02-14 \r\nhttps://telegra.ph/CAN-I-GET-A-TITLE-LOAN-WITHOUT-INCOME-02-12 \r\nhttps://telegra.ph/cashnet-loans-inc-scam-02-13 \r\nhttps://telegra.ph/how-to-use-load-in-gcash-02-12 \r\nhttps://telegra.ph/cash-installment-loans-02-15 \r\nhttps://telegra.ph/best-cash-loans-simpsonville-sc-02-15 \r\nhttp://megane2.ru/load/url=https://peritoredacao.com \r\nhttps://telegra.ph/senzokuhle-cash-loans-pietermaritzburg-02-13 \r\nhttps://telegra.ph/SMALL-LOANS-CASH-02-14 \r\nhttps://telegra.ph/HOW-TO-FIND-NET-FINANCING-CASH-FLOWS-02-14 \r\nhttps://static.wikia.nocookie.net/scream2022/images/2/21/5323.pdf \r\nhttps://telegra.ph/HOW-TO-CALCULATE-FHA-CASH-OUT-REFINANCE-02-12 \r\nhttps://telegra.ph/can-you-use-cash-app-for-your-business-02-13 \r\nhttps://telegra.ph/HOW-TO-GET-CASH-FROM-BANK-ACCOUNT-WITHOUT-CARD-02-14 \r\nhttps://telegra.ph/how-to-lend-money-legally-in-south-africa-02-12 \r\nhttps://telegra.ph/cash-app-loan-apply-02-15 \r\nhttps://cse.google.com.ni/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/CAN-YOU-GET-A-BUSINESS-LOAN-WITHOUT-JOB-02-13 \r\nhttps://telegra.ph/cash-advance-vs-payday-loan-02-14 \r\nhttps://telegra.ph/CAN-YOU-TURN-FOOD-STAMPS-INTO-CASH-02-12 \r\nhttps://telegra.ph/how-to-avail-calamity-loan-in-pag-ibig-online-application-02-14 \r\nhttp://bookspdf.wikidot.com/local--files/start/PROGRAMA%20DE%20TV%20LA%20REINA%20DEL%20CASTING%20CAP%20TULO%201%20SUBS%20ESP%20ENG.PDF \r\nhttps://telegra.ph/HOW-CAN-I-GET-AN-OVERDRAFT-LOAN-02-12 \r\nhttps://telegra.ph/is-bad-credit-loans-safe-02-12 \r\nhttps://telegra.ph/CASH-ADVANCE-VS-INSTALLMENT-LOAN-02-13 \r\nhttps://telegra.ph/CASH-1-LOAN-REVIEWS-02-15 \r\nhttp://zanostroy.ru/go?url=https://peritoredacao.com \r\nhttps://telegra.ph/cash-advance-loans-online-no-credit-check-02-15 \r\nhttps://telegra.ph/how-to-pay-housing-loan-via-gcash-02-12 \r\nhttps://telegra.ph/cigno-loans-owner-02-14 \r\nhttps://telegra.ph/credit-card-cash-loan-calculator-02-15 \r\nhttps://static.wikia.nocookie.net/scream2022/images/b/b7/4845.pdf \r\nhttps://telegra.ph/cash-advance-places-in-guelph-02-14 \r\nhttps://telegra.ph/cash-loans-no-credit-check-5000-australia-02-14 \r\nhttps://telegra.ph/is-cash-in-hand-rent-illegal-02-14 \r\nhttps://telegra.ph/hard-money-personal-loans-for-bad-credit-02-12 \r\nhttp://vhpa.co.uk/go.php?url=https://peritoredacao.com \r\nhttps://telegra.ph/CAN-YOU-GET-MONEY-BACK-ON-A-FHA-LOAN-02-14 \r\nhttps://telegra.ph/HOW-TO-GET-MONEY-FROM-KLARNA-02-15 \r\nhttps://telegra.ph/credit-card-cash-loan-bdo-02-13 \r\nhttps://telegra.ph/how-to-check-pre-approved-loan-in-hdfc-by-missed-call-02-13 \r\nhttp://bookspdf.wikidot.com/local--files/start/QUI%20N%20SOY%20YO%20CHARLA%20DE%20LA%20HERMANA%20JINA.PDF \r\nhttps://telegra.ph/quick-cash-loans-vancouver-02-14 \r\nhttps://telegra.ph/is-fast-loan-advance-a-good-company-02-13 \r\nhttps://telegra.ph/how-to-get-out-of-payday-loans-without-paying-02-14 \r\nhttps://telegra.ph/what-is-the-best-franchise-to-buy-in-south-africa-02-14 \r\nhttps://maps.google.se/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/fair-for-you-cash-loans-02-15 \r\nhttps://telegra.ph/is-online-payday-loan-legit-02-14 \r\nhttps://telegra.ph/where-can-i-borrow-money-to-start-a-business-in-nigeria-02-12 \r\nhttps://telegra.ph/how-to-get-big-loan-from-banks-02-15 \r\nhttps://telegra.ph/how-can-i-borrow-money-in-australia-02-12 \r\nhttps://telegra.ph/THE-CASH-KITCHEN-LOANS-REVIEWS-02-12 \r\nhttps://telegra.ph/how-much-can-i-borrow-on-a-disability-pension-02-12 \r\nhttps://telegra.ph/how-do-i-get-a-10-000-loan-02-14 \r\nhttps://telegra.ph/cash-loans-nz-no-credit-checks-02-14 \r\nhttps://maps.google.kz/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/HOW-TO-CLEAR-MY-LOANS-02-13 \r\nhttps://telegra.ph/where-to-borrow-money-in-canada-02-12 \r\nhttps://telegra.ph/cash-loans-bc-02-14 \r\nhttps://telegra.ph/african-brothers-cash-loans-kagiso-02-15 \r\nhttps://static.wikia.nocookie.net/scream2022/images/f/f8/5645.pdf \r\nhttps://telegra.ph/cash-loans-right-now-02-14 \r\nhttps://telegra.ph/how-to-borrow-money-online-with-bvn-02-12 \r\nhttps://telegra.ph/HOW-MUCH-DOES-ADVANCE-AMERICA-LOAN-02-14 \r\nhttps://telegra.ph/cashe-app-reviews-02-13 \r\nhttp://www.gearlivegirl.com/?URL=peritoredacao.com \r\nhttps://telegra.ph/sss-loan-gcash-disbursement-02-12 \r\nhttps://telegra.ph/BEST-ONLINE-LOANS-INSTANT-APPROVAL-02-14 \r\nhttps://telegra.ph/BC-CASH-LOANS-02-15 \r\nhttps://telegra.ph/can-i-get-a-loan-without-a-checking-account-02-15 \r\nhttp://bookspdf.wikidot.com/local--files/start/PSOE%20ARAHAL%20CANDIDATURA%202021.PDF \r\nhttps://telegra.ph/best-payday-loan-alternatives-02-14 \r\nhttps://telegra.ph/how-to-buy-cash-card-with-credit-card-02-15 \r\nhttps://telegra.ph/HSBC-CASH-LOANS-02-14 \r\nhttps://telegra.ph/where-does-interest-expense-go-on-cash-flow-statement-02-15 \r\nhttps://transtats.bts.gov/exit.asp?url=https://peritoredacao.com \r\nhttps://telegra.ph/how-to-apply-for-a-home-loan-bank-of-america-02-12 \r\nhttps://telegra.ph/HOW-TO-GET-LOANS-FROM-GOVERNMENT-02-12 \r\nhttps://telegra.ph/what-credit-score-does-rocket-loans-use-02-15 \r\nhttps://telegra.ph/HOW-TO-FINANCE-A-RENTAL-PROPERTY-02-13 \r\nhttps://telegra.ph/instant-mobile-money-loans-in-ghana-02-12 \r\nhttps://telegra.ph/what-are-riskier-loans-called-02-14 \r\nhttps://telegra.ph/GET-5000-LOAN-INSTANTLY-BAD-CREDIT-02-13 \r\nhttps://telegra.ph/HOW-DO-YOU-GET-AN-OVERDRAFT-LOAN-02-14 \r\nhttps://telegra.ph/CASH-EXPRESS-PAYDAY-LOAN-FEES-TN-02-14 \r\nhttp://maps.google.to/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/cash-advance-loans-in-bushnell-florida-02-15 \r\nhttps://telegra.ph/LOANS-CASH-IN-HAND-02-14 \r\nhttps://telegra.ph/cash-loans-near-me-no-credit-check-02-14 \r\nhttps://telegra.ph/CASH-LOANS-ILFORD-02-12 \r\nhttps://static.wikia.nocookie.net/scream2022/images/d/db/13023.pdf \r\nhttps://telegra.ph/QUICK-LOANS-UP-TO-20000-02-13 \r\nhttps://telegra.ph/HOW-DOES-9JA-CASH-LOAN-WORK-02-14 \r\nhttps://telegra.ph/CASH-DOOR-LOANS-02-13 \r\nhttps://telegra.ph/LOANS-CASH-CREDIT-AND-OVERDRAFT-COMES-UNDER-02-12 \r\nhttp://cso-krokus.com.ua/forum/41-vyyavlenie-i-lechenie-kompyuternyx-virusov/1716-telegram-blondest-fry.html?goto=https://peritoredacao.com \r\nhttps://telegra.ph/PAYDAY-LOANS-NO-CREDIT-CHECK-DIRECT-LENDER-AUSTRALIA-02-14 \r\nhttps://telegra.ph/how-to-solve-negative-cash-flow-02-13 \r\nhttps://telegra.ph/HOW-TO-GET-PAG-IBIG-HOUSING-LOAN-BILLING-STATEMENT-02-14 \r\nhttps://telegra.ph/FAST-CASH-LOANS-NO-CREDIT-CHECK-UNEMPLOYED-02-14 \r\nhttps://telegra.ph/BEST-CASH-LOANS-COMPANY-02-13 \r\nhttps://telegra.ph/HOW-TO-GET-A-HOME-EQUITY-LOAN-WITH-NO-INCOME-02-14 \r\nhttps://telegra.ph/HOW-TO-GET-PAG-IBIG-HOUSING-LOAN-BILLING-STATEMENT-02-14 \r\nhttps://telegra.ph/how-to-get-cash-loan-from-bank-of-america-02-13 \r\nhttps://telegra.ph/payday-loans-500-fast-cash-02-12 \r\nhttp://railonline.com/__media__/js/netsoltrademark.php?d=https://peritoredacao.com \r\nhttps://telegra.ph/CAN-YOU-GET-CASHBACK-WITH-EBT-CASH-02-13 \r\nhttps://telegra.ph/cash-for-your-title-loans-near-me-02-13 \r\nhttps://telegra.ph/ARE-PAYDAY-LOANS-ILLEGAL-IN-ARIZONA-02-15 \r\nhttps://telegra.ph/does-carmax-give-good-money-for-cars-02-12 \r\nhttp://bookspdf.wikidot.com/local--files/start/PROGRAMA%2043%20SINDROME%20DE%20MODELO%20TERMINADO.PDF \r\nhttps://telegra.ph/is-this-loan-company-legit-02-14 \r\nhttps://telegra.ph/quicken-loans-fha-cash-out-refinance-02-15 \r\nhttps://telegra.ph/fast-cash-loans-pensioners-02-14 \r\nhttps://telegra.ph/IS-ADVANCE-CASH-SERVICES-LEGIT-02-14 \r\nhttp://tyadnetwork.com/ads_top.php?url=https://peritoredacao.com \r\nhttps://telegra.ph/HOW-TO-FILL-OUT-THE-SECOND-PPP-LOAN-02-14 \r\nhttps://telegra.ph/easiest-fastest-loans-02-15 \r\nhttps://telegra.ph/HOW-TO-STOP-PAYDAY-LOAN-INTEREST-02-15 \r\nhttps://telegra.ph/how-to-record-a-ppp-loan-in-quickbooks-02-15 \r\nhttps://telegra.ph/QUICK-CASH-LOANS-02-15 \r\nhttps://telegra.ph/cocos-cash-loan-secunda-02-14 \r\nhttps://telegra.ph/CASH-CONVERTERS-GOLD-LOANS-02-13 \r\nhttps://telegra.ph/best-auto-loan-quotes-02-15 \r\nhttps://telegra.ph/why-do-governments-borrow-money-02-15 \r\nhttp://google.com.gh/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/how-to-not-pay-back-a-loan-02-15 \r\nhttps://telegra.ph/cash-y-loan-mobile-02-13 \r\nhttps://telegra.ph/how-can-i-get-50000-loan-from-sbi-02-13 \r\nhttps://telegra.ph/cash-loan-request-letter-02-15 \r\nhttp://bookspdf.wikidot.com/local--files/start/PUT%20ON%20YOUR%20GOD%20GIVEN%20ARMOUR.PDF \r\nhttps://telegra.ph/how-to-check-payday-loan-balance-02-13 \r\nhttps://telegra.ph/what-does-a-cash-offer-mean-when-buying-a-house-02-14 \r\nhttps://telegra.ph/pnc-bank-personal-loan-pre-approval-02-15 \r\nhttps://telegra.ph/do-banks-give-loans-on-salvage-title-cars-02-13 \r\nhttps://lincolnsu.com/?URL=peritoredacao.com \r\nhttps://telegra.ph/little-cash-mobile-loans-02-13 \r\nhttps://telegra.ph/fast-cash-loans-for-pensioners-02-14 \r\nhttps://telegra.ph/WHAT-COMPANIES-ACCEPT-CASH-APP-02-15 \r\nhttps://telegra.ph/working-for-cash-loans-02-14 \r\nhttps://telegra.ph/what-is-difference-between-term-loan-and-overdraft-02-14 \r\nhttps://telegra.ph/WHAT-HAPPENS-IF-YOU-MISS-A-PAYMENT-UNDER-DEBT-REVIEW-02-14 \r\nhttps://telegra.ph/PAG-IBIG-CASH-LOANS-02-14 \r\nhttps://telegra.ph/how-to-get-a-payday-loan-with-really-bad-credit-02-15 \r\nhttps://telegra.ph/HOW-TO-GET-A-PERSONAL-LOAN-IN-ARIZONA-02-12 \r\nhttps://maps.google.ms/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/HOW-TO-LEND-SOMEONE-MONEY-LEGALLY-02-14 \r\nhttps://telegra.ph/TAX-REFUND-CASH-ADVANCE-EMERGENCY-LOANS-2022-HR-BLOCK-02-15 \r\nhttps://telegra.ph/HOW-TO-AVAIL-PAG-IBIG-LOAN-MORATORIUM-02-14 \r\nhttps://telegra.ph/CASH-OUT-REFINANCING-MORTGAGE-02-15 \r\nhttps://telegra.ph/can-i-get-a-payday-loan-on-benefits-02-12 \r\nhttps://telegra.ph/how-to-get-money-off-cash-app-without-bank-account-or-card-02-14 \r\nhttps://telegra.ph/online-quick-personal-loans-02-14 \r\nhttps://telegra.ph/HOW-TO-QUALIFY-FOR-A-BUSINESS-LOAN-IN-SOUTH-AFRICA-02-14 \r\nhttps://telegra.ph/is-cash-train-money-3-02-14 \r\nhttps://images.google.at/url?source=imgres&ct=img&q=https://peritoredacao.com \r\nhttps://telegra.ph/nimble-cash-loans-interest-rate-02-13 \r\nhttps://telegra.ph/WHAT-IS-THE-FHA-MAXIMUM-LOAN-AMOUNT-IN-MISSISSIPPI-02-13 \r\nhttps://telegra.ph/mr-cash-loans-loans-online-02-13 \r\nhttps://telegra.ph/where-can-i-get-a-short-term-loan-with-bad-credit-02-13 \r\nhttps://telegra.ph/how-to-withdraw-sba-loan-application-02-15 \r\nhttps://telegra.ph/PAG-IBIG-SALARY-LOAN-CONTACT-NUMBER-02-13 \r\nhttps://telegra.ph/CAN-YOU-GET-AN-SBA-LOAN-WITH-NO-MONEY-DOWN-02-15 \r\nhttps://telegra.ph/CASH-CONVERTERS-LOANS-HERVEY-BAY-02-12 \r\nhttps://telegra.ph/LEGIT-CASH-LOANS-ONLINE-02-14 \r\nhttp://alphatreegroup.com/article.php?link=https://peritoredacao.com \r\nhttps://telegra.ph/CASH-LOANS-SPEEDY-CASH-02-13 \r\nhttps://telegra.ph/cash-out-mortgage-rental-property-02-12 \r\nhttps://telegra.ph/how-to-apply-loan-in-equity-02-15 \r\nhttps://telegra.ph/can-you-get-a-home-loan-if-you-are-under-debt-review-02-15 \r\nhttp://bookspdf.wikidot.com/local--files/start/PRUEBAS%20NACIONALES%202021%20DE%20MATEM%20TICAS%20REPASO.PDF \r\nhttps://telegra.ph/does-cash-app-do-cash-advance-02-15 \r\nhttps://telegra.ph/loan-against-cash-value-life-insurance-02-13 \r\nhttps://telegra.ph/HOW-TO-DO-LOAN-SETTLEMENT-02-12 \r\nhttps://telegra.ph/CASH-LOANS-TODAY-BAD-CREDIT-DIRECT-LENDER-02-13 \r\nhttp://maps.google.rs/url?q=https://peritoredacao.com \r\nhttps://telegra.ph/HOW-CAN-I-GET-A-5000-LOAN-FAST-02-12 \r\nhttps://telegra.ph/how-to-buy-a-car-without-proof-of-income-02-13 \r\nhttps://telegra.ph/GET-PAID-TODAY-LOANS-02-14 \r\nhttps://telegra.ph/CASH-LOANS-WHITE-RIVER-02-14 \r\nhttps://telegra.ph/how-to-get-free-money-to-pay-off-student-loans-02-12 \r\nhttps://telegra.ph/easy-cash-loans-low-interest-02-15 \r\nhttps://telegra.ph/WHERE-CAN-I-BORROW-INSTANT-CASH-02-14 \r\nhttps://telegra.ph/CASH-BACK-HOME-LOAN-ASB-02-14 \r\nhttps://telegra.ph/HOW-TO-GET-ADVANCE-LOAN-IN-UFONE-02-13 \r\nhttp://www.ega.edu/?URL=peritoredacao.com',0,'0','2022-03-18 05:33:23','2022-03-18 05:33:23',NULL),(7,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Why not TALK with your leads?','My name’s Eric and I just found your site akkhor.xyz.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-03-19 09:36:20','2022-03-19 09:36:20',NULL),(8,'Brittney Ware','ware.brittney@outlook.com','+1 304-873-4360','Products','Hi, I am interested in some of your products.\r\n\r\nPlease give me a call on +1 304-873-4360',0,'0','2022-03-20 16:40:12','2022-03-20 16:40:12',NULL),(9,'Clement Orsini','clement','+1 304-873-4360','31 March 2022','It is with sad regret to inform you DataList.biz is shutting down on 31 March 2022. \r\n\r\nWe have made available databases per country for all companies available.. \r\n\r\nYou can view our samples and download databases instantly on our website DataList.biz',0,'0','2022-03-28 14:02:48','2022-03-28 14:02:48',NULL),(10,'MariaOi','mariaOi@gmail.com','mariaOi@gmail.com','I\'m looking for ѕerіouѕ mаnǃ..','Hеllo аll, guyѕǃ I knоw, my mesѕage may be toо ѕреcіfіc,\r\nΒut mу sіѕtеr found nісe man hеre аnd thеy mаrrіеd, so hоw about mе?! :)\r\nI am 27 уеarѕ оld, Mariа, from Ukrаіnе, Ι knоw Engliѕh and Gеrmаn lаnguagеs alѕо\r\nAnd... I hаve ѕpeсifiс dіѕеаsе, named nymphomаnia. Whо know whаt іs this, can undеrstаnd me (better to sаy іt immedіаtеlу)\r\nΑh yеs, I сook very tаѕtуǃ and I lovе nоt only cook ;))\r\nIm rеal girl, not prostіtute, and loоking for sеrіouѕ аnd hоt rеlatіоnship...\r\nAnуwау, you саn find mу рrоfіle herе: http://tousrabo.tk/user/28452/',0,'0','2022-03-29 20:28:02','2022-03-29 20:28:02',NULL),(11,'Becky McCarren','rosannebecky339@gmail.com','078 4938 0361','Explainer Video for akkhor.xyz','Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site akkhor.xyz.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian/Canadian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nBecky',0,'0','2022-03-30 12:38:49','2022-03-30 12:38:49',NULL),(12,'Antonia Larsen','antonialarsen46@gmail.com','428 4273','DA50 Backlink to akkhor.xyz','Hi, \r\n\r\nWe\'re wondering if you\'d be interested in a \'dofollow\' backlink to akkhor.xyz from our website that has a Moz Domain Authority of 50?\r\n\r\nWe charge just $40 (USD) to be paid via Paypal, card, or cryptocurrency. This is a one-time fee, so there are no extra charges and the link is permanent.\r\n\r\nIf you\'d like to know more about the site, please reply to this email and we can discuss further.\r\n\r\nKind Regards,\r\nAntonia',0,'0','2022-04-02 07:25:45','2022-04-02 07:25:45',NULL),(13,'Bricehaf','maxcrauler@netbolezny.ru','86466875555','Thank','ремонт туалета \r\n<a href=https://1remont-kvartir-ekb.ru/>https://1remont-kvartir-ekb.ru/</a>',0,'0','2022-04-07 03:22:11','2022-04-07 03:22:11',NULL),(14,'Johan Fourie','johan@datalist.biz','0370 4723886','DataList.biz For Sale','Hello.\r\n\r\nMy name is Johan Fourie and I am looking to sell DataList.biz.\r\n\r\nWe are a data company that has been in the industry for 12 years. \r\n\r\nWe do around $170k/year in revenue.\r\n\r\n1) I am looking to sell 50% of the business for $5k.\r\n2) It would be helpful if you are knowledgeable about the Data Business.\r\n3) I am looking for someone that is willing to take over administration, support, client relations.\r\n4) I will continue to do the marketing for new products.\r\n5) You will accept all future income and pay me from it.\r\n\r\nPlease contact me on WhatsApp +27 72 280 1952 or my personal email: johanfourieinc@gmail.com if you are interested in this and we can have a call.\r\n\r\nRegards,\r\nJohan Fourie',0,'0','2022-04-13 18:33:18','2022-04-13 18:33:18',NULL),(15,'Bessie Rolfe','bessie@zippyleads.org','NA','ZippyLeads.org Easter Special','ZippyLeads.org is running an easter special till the 18th of April.\r\n\r\nGet all the leads you need for your company with our easter special.',0,'0','2022-04-14 15:04:45','2022-04-14 15:04:45',NULL),(16,'BrirceSok','mmm@oskolagrokol.ru','81324687725','Thank','продать машину в залоге \r\n<a href=https://skupauto24.ru/>https://skupauto24.ru/</a>',0,'0','2022-04-18 19:52:14','2022-04-18 19:52:14',NULL),(17,'Karla Seekamp','karla.seekamp@yahoo.com','078 1157 1258','How a front running bot can multiple 10x your investment daily (Step-by-step Guide)','Hi there,\r\n\r\nHave you ever wondered why new tokens listed on Uniswap, Pancakeswap or any decentralized exchange are always subject to insane price volatility?\r\n\r\nDid you know that front running bots have been dominating the market and profiting due to that?\r\n\r\nCheck out our new Youtube video for a free and detailed tutorial on how to deploy your own front running bot:\r\nhttps://youtu.be/do99pkCxT0I\r\n\r\nKind Regards,\r\nKarla',0,'0','2022-04-18 22:08:16','2022-04-18 22:08:16',NULL),(18,'HenryUsazy','thethreemuskateers@aol.com','thethreemuskateers@aol.com','Automatic robot is the best start for financial independence.','The fastest way to make your wallet thick is found. \r\nhttps://profit-gold-strategy.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-19 15:02:42','2022-04-19 15:02:42',NULL),(19,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','There they go…','Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at akkhor.xyz.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-04-19 18:11:28','2022-04-19 18:11:28',NULL),(20,'Claudette Tallent','claudette@topdatalist.com','NA','TopDataList.com Shutting Down','Hello.\r\n\r\nIt is with sad regret to inform you TopDataList.com is shutting down.\r\n\r\nWe have made all our databases available for you for a once off fee.\r\n\r\nVisit us on TopDataList.com',0,'0','2022-04-20 08:05:00','2022-04-20 08:05:00',NULL),(21,'HenryUsazy','mrsradomski@yahoo.com','mrsradomski@yahoo.com','Check out the new financial tool, which can make you rich.','Even a child knows how to make money. This robot is what you need! \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-21 12:45:10','2022-04-21 12:45:10',NULL),(22,'HenryUsazy','ALEXANDRAREDDY01@GMAIL.COM','ALEXANDRAREDDY01@GMAIL.COM','Make thousands of bucks. Financial robot will help you to do it!','Rich people are rich because they use this robot. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-21 18:07:13','2022-04-21 18:07:13',NULL),(23,'HenryUsazy','nhuthy01@aol.com','nhuthy01@aol.com','Attention! Here you can earn money online!','Make your laptop a financial instrument with this program. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-21 23:28:33','2022-04-21 23:28:33',NULL),(24,'HenryUsazy','sweetsss222@yahoo.com','sweetsss222@yahoo.com','Need money? The financial robot is your solution.','The huge income without investments is available. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-22 04:43:00','2022-04-22 04:43:00',NULL),(25,'BrirceLoalt','nnn@oskolagrokol.ru','82494322842','Thank','выкуп авто \r\n<a href=https://1-vikupauto96.ru/>https://1-vikupauto96.ru/</a>',0,'0','2022-04-22 06:58:22','2022-04-22 06:58:22',NULL),(26,'HenryUsazy','Yoursstrulyy@yahoo.com','Yoursstrulyy@yahoo.com','Your money work even when you sleep.','Financial independence is what everyone needs. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-22 11:09:13','2022-04-22 11:09:13',NULL),(27,'HenryUsazy','mcrane@vpvp.com','mcrane@vpvp.com','We know how to make our future rich and do you?','The additional income is available for everyone using this robot. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-22 16:30:17','2022-04-22 16:30:17',NULL),(28,'HenryUsazy','st1v3n@yahoo.com','st1v3n@yahoo.com','Make yourself rich in future using this financial robot.','Looking for additional money? Try out the best financial instrument. \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-22 21:43:30','2022-04-22 21:43:30',NULL),(29,'HenryUsazy','grandmanoly@comcast.net','grandmanoly@comcast.net','Making money can be extremely easy if you use this Robot.','Attention! Financial robot may bring you millions! \r\nhttps://get-profitshere.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-23 03:05:27','2022-04-23 03:05:27',NULL),(30,'HenryUsazy','lathanconnerjr22@gmail.com','lathanconnerjr22@gmail.com','Make money online, staying at home this cold winter.','Making money is very easy if you use the financial Robot. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-23 08:28:33','2022-04-23 08:28:33',NULL),(31,'HenryUsazy','chicmob@yahoo.com','chicmob@yahoo.com','Have no financial skills? Let Robot make money for you.','Launch the robot and let it bring you money. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-23 14:11:20','2022-04-23 14:11:20',NULL),(32,'HenryUsazy','gram410@charter.net','gram410@charter.net','The huge income without investments is available, now!','Financial robot is your success formula is found. Learn more about it. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-24 04:39:55','2022-04-24 04:39:55',NULL),(33,'HenryUsazy','cibb1337@gmail.com','cibb1337@gmail.com','Robot is the best solution for everyone who wants to earn.','# 1 financial expert in the net! Check out the new Robot. https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-24 10:24:53','2022-04-24 10:24:53',NULL),(34,'HenryUsazy','caleb202006@yahoo.com','caleb202006@yahoo.com','Still not a millionaire? Fix it now!','Even a child knows how to make money. This robot is what you need! https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-25 02:49:26','2022-04-25 02:49:26',NULL),(35,'HenryUsazy','mfranksprod@gmail.com','mfranksprod@gmail.com','Using this Robot is the best way to make you rich.','Money, money! Make more money with financial robot! https://take-profitnow.life/?u=bdlkd0x&o=x7t8nng',0,'0','2022-04-25 08:08:13','2022-04-25 08:08:13',NULL),(36,'HenryUsazy','salem20091@yahoo.com','salem20091@yahoo.com','Online job can be really effective if you use this Robot.','Most successful people already use Robot. Do you? https://breweriana.it/gotodate/promo',0,'0','2022-04-25 13:28:03','2022-04-25 13:28:03',NULL),(37,'HenryUsazy','robert.dennis@yahoo.com','robert.dennis@yahoo.com','Everyone who needs money should try this Robot out.','Buy everything you want earning money online. https://breweriana.it/gotodate/promo',0,'0','2022-04-25 18:49:06','2022-04-25 18:49:06',NULL),(38,'HenryUsazy','woodycot@gmail.com','woodycot@gmail.com','The best online job for retirees. Make your old ages rich.','Financial robot keeps bringing you money while you sleep. https://breweriana.it/gotodate/promo',0,'0','2022-04-26 00:09:21','2022-04-26 00:09:21',NULL),(39,'HenryUsazy','samariteanul_samaria@yahoo.com','samariteanul_samaria@yahoo.com','Check out the new financial tool, which can make you rich.','Buy everything you want earning money online. https://breweriana.it/gotodate/promo',0,'0','2022-04-26 05:29:39','2022-04-26 05:29:39',NULL),(40,'HenryUsazy','pccw@comcast.net','pccw@comcast.net','The best way for everyone who rushes for financial independence.','The financial Robot is the most effective financial tool in the net! https://breweriana.it/gotodate/promo',0,'0','2022-04-26 11:05:01','2022-04-26 11:05:01',NULL),(41,'HenryUsazy','smokindatlalala420@yahoo.com','smokindatlalala420@yahoo.com','Make money online, staying at home this cold winter.','Looking for additional money? Try out the best financial instrument. https://breweriana.it/gotodate/promo',0,'0','2022-04-26 16:35:01','2022-04-26 16:35:01',NULL),(42,'HenryUsazy','kdimme@yahoo.com','kdimme@yahoo.com','Using this Robot is the best way to make you rich.','Make dollars staying at home and launched this Bot. https://breweriana.it/gotodate/promo',0,'0','2022-04-26 22:25:14','2022-04-26 22:25:14',NULL),(43,'HenryUsazy','fpagan528@gmail.com','fpagan528@gmail.com','Thousands of bucks are guaranteed if you use this robot.','Earning money in the Internet is easy if you use Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-27 04:10:36','2022-04-27 04:10:36',NULL),(44,'HenryUsazy','catzturn@aol.com','catzturn@aol.com','Have no money? Earn it online.','Using this Robot is the best way to make you rich. https://2f-2f.de/gotodate/promo',0,'0','2022-04-27 10:14:34','2022-04-27 10:14:34',NULL),(45,'HenryUsazy','keiyosha2fye@myspace.com','keiyosha2fye@myspace.com','Make your money work for you all day long.','No need to worry about the future if your use this financial robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-27 15:35:09','2022-04-27 15:35:09',NULL),(46,'HenryUsazy','shamall@earthlink.net','shamall@earthlink.net','Make money 24/7 without any efforts and skills.','Earn additional money without efforts and skills. https://2f-2f.de/gotodate/promo',0,'0','2022-04-27 21:15:23','2022-04-27 21:15:23',NULL),(47,'HenryUsazy','kubax414@gmail.com','kubax414@gmail.com','It is the best time to launch the Robot to get more money.','Earn additional money without efforts. https://2f-2f.de/gotodate/promo',0,'0','2022-04-28 03:00:06','2022-04-28 03:00:06',NULL),(48,'HenryUsazy','dumbdirtydrea@yahoo.com','dumbdirtydrea@yahoo.com','Financial robot is your success formula is found. Learn more about it.','Making money can be extremely easy if you use this Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-28 08:37:02','2022-04-28 08:37:02',NULL),(49,'HenryUsazy','ryusfalpha2002@hotmail.com','ryusfalpha2002@hotmail.com','Buy everything you want earning money online.','# 1 financial expert in the net! Check out the new Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-28 14:17:23','2022-04-28 14:17:23',NULL),(50,'HenryUsazy','JONNYB767@GMAIL.COM','JONNYB767@GMAIL.COM','Your money keep grow 24/7 if you use the financial Robot.','Your money keep grow 24/7 if you use the financial Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-28 19:38:48','2022-04-28 19:38:48',NULL),(51,'HenryUsazy','batemandennis40@bmail.com','batemandennis40@bmail.com','We know how to make our future rich and do you?','We have found the fastest way to be rich. Find it out here. https://2f-2f.de/gotodate/promo',0,'0','2022-04-29 01:19:23','2022-04-29 01:19:23',NULL),(52,'HenryUsazy','dylan-leo3@yahoo.com','dylan-leo3@yahoo.com','Make thousands of bucks. Financial robot will help you to do it!','Launch the financial Robot and do your business. https://2f-2f.de/gotodate/promo',0,'0','2022-04-29 06:52:52','2022-04-29 06:52:52',NULL),(53,'HenryUsazy','cassey.deee@gmail.com','cassey.deee@gmail.com','One click of the robot can bring you thousands of bucks.','Financial Robot is #1 investment tool ever. Launch it! https://2f-2f.de/gotodate/promo',0,'0','2022-04-29 12:01:29','2022-04-29 12:01:29',NULL),(54,'Kasha','info@rosintechnologies.com','620-465-1029','Lead For akkhor.xyz','Hey \r\n\r\nDon\'t you hate carrying a big bulky backpack when you are only going out for the day? This high quality shoulder bag solves that problem. \r\nCarry enough without bogging yourself down! Perfect for that fishing trip or day hike!\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashionbag.sale\r\n\r\nHave a great time, \r\n\r\nKasha',0,'0','2022-04-29 14:23:20','2022-04-29 14:23:20',NULL),(55,'HenryUsazy','rambofriday@yahoo.com','rambofriday@yahoo.com','Make your computer to be you earning instrument.','Only one click can grow up your money really fast. https://2f-2f.de/gotodate/promo',0,'0','2022-04-29 21:46:30','2022-04-29 21:46:30',NULL),(56,'HenryUsazy','tnl04001@yahoo.com','tnl04001@yahoo.com','No worries if you are fired. Work online.','Every your dollar can turn into $100 after you lunch this Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-30 03:46:52','2022-04-30 03:46:52',NULL),(57,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','There they go…','Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at akkhor.xyz.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-04-30 13:34:02','2022-04-30 13:34:02',NULL),(58,'HenryUsazy','afiqrazin@gmail.com','afiqrazin@gmail.com','Join the society of successful people who make money here.','Start your online work using the financial Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-30 14:01:07','2022-04-30 14:01:07',NULL),(59,'HenryUsazy','Siraj.charlesp@yahoo.com','Siraj.charlesp@yahoo.com','Attention! Financial robot may bring you millions!','Start your online work using the financial Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-04-30 22:33:26','2022-04-30 22:33:26',NULL),(60,'HenryUsazy','Amberlee32205@yahoo.com','Amberlee32205@yahoo.com','Have no money? It’s easy to earn them online here.','Make your money work for you all day long. https://2f-2f.de/gotodate/promo',0,'0','2022-05-01 04:51:44','2022-05-01 04:51:44',NULL),(61,'HenryUsazy','erinmodels@yahoo.com','erinmodels@yahoo.com','The online financial Robot is your key to success.','The online financial Robot is your key to success. https://2f-2f.de/gotodate/promo',0,'0','2022-05-01 10:35:30','2022-05-01 10:35:30',NULL),(62,'HenryUsazy','michele2steel@yahoo.com','michele2steel@yahoo.com','Need money? Get it here easily! Just press this to launch the robot.','Robot never sleeps. It makes money for you 24/7. https://2f-2f.de/gotodate/promo',0,'0','2022-05-01 16:34:13','2022-05-01 16:34:13',NULL),(63,'HenryUsazy','dprobbins89@gmail.com','dprobbins89@gmail.com','Need money? The financial robot is your solution.','This robot will help you to make hundreds of dollars each day. https://2f-2f.de/gotodate/promo',0,'0','2022-05-01 22:39:23','2022-05-01 22:39:23',NULL),(64,'HenryUsazy','hamcena@gmail.com','hamcena@gmail.com','The financial Robot is the most effective financial tool in the net!','Make thousands of bucks. Financial robot will help you to do it! https://2f-2f.de/gotodate/promo',0,'0','2022-05-02 04:50:45','2022-05-02 04:50:45',NULL),(65,'HenryUsazy','crosslandphillip@yahoo.com','crosslandphillip@yahoo.com','Try out the automatic robot to keep earning all day long.','Money, money! Make more money with financial robot! https://2f-2f.de/gotodate/promo',0,'0','2022-05-02 10:36:50','2022-05-02 10:36:50',NULL),(66,'HenryUsazy','Jennbean924@yahoo.com','Jennbean924@yahoo.com','Looking for an easy way to make money? Check out the financial robot.','Make yourself rich in future using this financial robot. https://2f-2f.de/gotodate/promo',0,'0','2022-05-02 19:07:52','2022-05-02 19:07:52',NULL),(67,'HenryUsazy','hendriksiswa@yahoo.com','hendriksiswa@yahoo.com','Try out the best financial robot in the Internet.','Check out the newest way to make a fantastic profit. https://2f-2f.de/gotodate/promo',0,'0','2022-05-03 00:59:34','2022-05-03 00:59:34',NULL),(68,'HenryUsazy','lisanella612@gmail.com','lisanella612@gmail.com','Your computer can bring you additional income if you use this Robot.','Making money in the net is easier now. https://2f-2f.de/gotodate/promo',0,'0','2022-05-03 07:18:41','2022-05-03 07:18:41',NULL),(69,'HenryUsazy','i_love_wwe2008@yahoo.com','i_love_wwe2008@yahoo.com','Make yourself rich in future using this financial robot.','Make money, not war! Financial Robot is what you need. https://2f-2f.de/gotodate/promo',0,'0','2022-05-03 12:46:03','2022-05-03 12:46:03',NULL),(70,'Pearl','contact@justladycake.com','078 6176 9068','Welcome To Akkhor.xyz','Hello there \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nMany Thanks, \r\n \r\nPearl',0,'0','2022-05-03 16:15:20','2022-05-03 16:15:20',NULL),(71,'HenryUsazy','ocredneck71@yahoo.com','ocredneck71@yahoo.com','Wow! This is a fastest way for a financial independence.','Earning money in the Internet is easy if you use Robot. https://2f-2f.de/gotodate/promo',0,'0','2022-05-03 18:11:27','2022-05-03 18:11:27',NULL),(72,'HenryUsazy','engarrn@hotmail.com','engarrn@hotmail.com','The fastest way to make your wallet thick is found.','Trust the financial Bot to become rich. https://187sued.de/gotodate/promo',0,'0','2022-05-04 01:15:56','2022-05-04 01:15:56',NULL),(73,'HenryUsazy','Ahollins@stjohn.k12.la.us','Ahollins@stjohn.k12.la.us','The online income is your key to success.','The financial Robot is the most effective financial tool in the net! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-04 06:40:16','2022-05-04 06:40:16',NULL),(74,'HenryUsazy','tdw_9999@hotmail.com','tdw_9999@hotmail.com','Have no money? It’s easy to earn them online here.','Let your money grow into the capital with this Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-04 11:55:40','2022-05-04 11:55:40',NULL),(75,'HenryUsazy','bartikus13@yahoo.com','bartikus13@yahoo.com','Financial independence is what everyone needs.','Need cash? Launch this robot and see what it can. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-04 17:19:02','2022-05-04 17:19:02',NULL),(76,'HenryUsazy','acanady@cityofbakerla.com','acanady@cityofbakerla.com','Financial robot is the best companion of rich people.','Need money? Get it here easily? https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-04 22:42:24','2022-05-04 22:42:24',NULL),(77,'Shavonne Burr','shavonne@customdata.click','077 1574 2594','Leads for your business','Hello, from CustomData.click we are a provider of unique databases that could help your business.\r\n\r\nPlease visit us at CustomData.click to see if we can help you.\r\n\r\nRegards,\r\nShavonne',0,'0','2022-05-05 00:14:36','2022-05-05 00:14:36',NULL),(78,'HenryUsazy','Halo2god420@gmail.com','Halo2god420@gmail.com','This robot will help you to make hundreds of dollars each day.','Try out the automatic robot to keep earning all day long. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-05 04:24:50','2022-05-05 04:24:50',NULL),(79,'HenryUsazy','summer.obolo@yahoo.com','summer.obolo@yahoo.com','Trust the financial Bot to become rich.','The online income is the easiest ways to make you dream come true. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-05 09:41:47','2022-05-05 09:41:47',NULL),(80,'HenryUsazy','rwalkeus@yahoo.com','rwalkeus@yahoo.com','The best online job for retirees. Make your old ages rich.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-05 15:06:03','2022-05-05 15:06:03',NULL),(81,'HenryUsazy','ruiaseabra@gmail.com','ruiaseabra@gmail.com','Financial robot is the best companion of rich people.','The financial Robot is your future wealth and independence. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-05 20:25:12','2022-05-05 20:25:12',NULL),(82,'HenryUsazy','hmpilkington2005@yahoo.com','hmpilkington2005@yahoo.com','Make money online, staying at home this cold winter.','Financial independence is what this robot guarantees. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-06 02:31:10','2022-05-06 02:31:10',NULL),(83,'HenryUsazy','lovingangel1991@yahoo.com','lovingangel1991@yahoo.com','Earn additional money without efforts.','Looking for an easy way to make money? Check out the financial robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-06 08:01:54','2022-05-06 08:01:54',NULL),(84,'HenryUsazy','kswalheim@yahoo.com','kswalheim@yahoo.com','Launch the best investment instrument to start making money today.','We know how to increase your financial stability. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-06 16:43:11','2022-05-06 16:43:11',NULL),(85,'HenryUsazy','tattooman157@yahoo.com','tattooman157@yahoo.com','Automatic robot is the best start for financial independence.','Making money can be extremely easy if you use this Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-06 22:29:22','2022-05-06 22:29:22',NULL),(86,'HenryUsazy','job_ashok@yahoo.com','job_ashok@yahoo.com','Making money can be extremely easy if you use this Robot.','Feel free to buy everything you want with the additional income. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-07 04:21:24','2022-05-07 04:21:24',NULL),(87,'HenryUsazy','amaizon101@yahoo.com','amaizon101@yahoo.com','Make your money work for you all day long.','Let the Robot bring you money while you rest. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-07 10:23:11','2022-05-07 10:23:11',NULL),(88,'HenryUsazy','treynolds@tolland.k12.ct.us','treynolds@tolland.k12.ct.us','Most successful people already use Robot. Do you?','Financial robot is your success formula is found. Learn more about it. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-07 15:57:41','2022-05-07 15:57:41',NULL),(89,'HenryUsazy','monsturroar@yahoo.com','monsturroar@yahoo.com','Using this Robot is the best way to make you rich.','The best online job for retirees. Make your old ages rich. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-07 21:27:59','2022-05-07 21:27:59',NULL),(90,'HenryUsazy','JCComputerBuilds@gmail.com','JCComputerBuilds@gmail.com','Additional income is now available for anyone all around the world.','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-08 02:54:04','2022-05-08 02:54:04',NULL),(91,'HenryUsazy','Jasonj1976@gmail.com','Jasonj1976@gmail.com','Make your computer to be you earning instrument.','One dollar is nothing, but it can grow into $100 here. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-08 08:09:32','2022-05-08 08:09:32',NULL),(92,'HenryUsazy','wasa9624@gmail.com','wasa9624@gmail.com','The financial Robot is the most effective financial tool in the net!','Online job can be really effective if you use this Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-08 13:55:24','2022-05-08 13:55:24',NULL),(93,'HenryUsazy','bree602@yahoo.com','bree602@yahoo.com','Rich people are rich because they use this robot.','No need to stay awake all night long to earn money. Launch the robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-08 20:02:27','2022-05-08 20:02:27',NULL),(94,'HenryUsazy','adrictan@yahoo.com','adrictan@yahoo.com','Start making thousands of dollars every week.','Money, money! Make more money with financial robot! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-09 01:59:05','2022-05-09 01:59:05',NULL),(95,'HenryUsazy','292252936@qq.com','292252936@qq.com','Join the society of successful people who make money here.','Additional income is now available for anyone all around the world. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-09 07:52:47','2022-05-09 07:52:47',NULL),(96,'Jesse','admin@gmsgeoscience.com','077 3179 1269','Welcome To Akkhor.xyz','Morning, \r\n\r\nI hope you\'re doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you\'re on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: https://bangeonline.shop\r\n\r\nTo your success,\r\n\r\nJesse',0,'0','2022-05-09 13:52:34','2022-05-09 13:52:34',NULL),(97,'HenryUsazy','Johnhicks6969@yahoo.com','Johnhicks6969@yahoo.com','Financial robot is the best companion of rich people.','The success formula is found. Learn more about it. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-09 15:07:18','2022-05-09 15:07:18',NULL),(98,'HenryUsazy','mrunalbtrivedi@gmail.com','mrunalbtrivedi@gmail.com','The financial Robot is your # 1 expert of making money.','The best way for everyone who rushes for financial independence. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-09 20:48:28','2022-05-09 20:48:28',NULL),(99,'HenryUsazy','profa.freitas@hotmail.com','profa.freitas@hotmail.com','The online income is your key to success.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-10 02:45:05','2022-05-10 02:45:05',NULL),(100,'HenryUsazy','Kimmerz972@yahoo.com','Kimmerz972@yahoo.com','It is the best time to launch the Robot to get more money.','The best way for everyone who rushes for financial independence. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-10 07:55:16','2022-05-10 07:55:16',NULL),(101,'HenryUsazy','bestservicehere@gmail.com','bestservicehere@gmail.com','Try out the best financial robot in the Internet.','Have no money? It’s easy to earn them online here. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-10 13:16:47','2022-05-10 13:16:47',NULL),(102,'HenryUsazy','eldolls@sbcglobal.net','eldolls@sbcglobal.net','Rich people are rich because they use this robot.','# 1 financial expert in the net! Check out the new Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-10 18:42:39','2022-05-10 18:42:39',NULL),(103,'HenryUsazy','lil_merty14x@hotmail.com','lil_merty14x@hotmail.com','Robot is the best way for everyone who looks for financial independence.','Financial independence is what this robot guarantees. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-11 00:04:15','2022-05-11 00:04:15',NULL),(104,'HenryUsazy','maishun18@yahoo.com','maishun18@yahoo.com','Everyone who needs money should try this Robot out.','Earning $1000 a day is easy if you use this financial Robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-11 05:25:32','2022-05-11 05:25:32',NULL),(105,'HenryUsazy','toshataylor24@yahoo.com','toshataylor24@yahoo.com','Robot never sleeps. It makes money for you 24/7.','The financial Robot works for you even when you sleep. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-11 14:54:35','2022-05-11 14:54:35',NULL),(106,'HenryUsazy','jc210@yahoo.com','jc210@yahoo.com','Trust the financial Bot to become rich.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-11 23:42:01','2022-05-11 23:42:01',NULL),(107,'HenryUsazy','realfunnykid@gmail.com','realfunnykid@gmail.com','This robot can bring you money 24/7.','Need money? Earn it without leaving your home. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-12 05:00:56','2022-05-12 05:00:56',NULL),(108,'Cynthiamix','vietatof123@gmail.com','85324482624','Help the Ukrainian army','How to help Ukraine and its people stand against Putin and the Russian attack \r\nFor volunteers and organizations in other countries who are collecting supplies to deliver to Ukraine, this official website https://www.helpukraine.center/ contains the information about what supplies are needed the most, the address of the drop-off center, and instructions for how to pack medical supplies. English version of the website is temporarily unavailable, but you may find their 24/7 call-center phone numbers as well as the address of the drop-off center in Poland at the bottom of the webpage. \r\n \r\nThis document provides information about volunteers across Europe who are collecting supplies for your region or nearby regions. If you would like to donate to these groups or offer your help, please connect with them directly. \r\n \r\nRussia’s President, Vladimir Putin, has ordered a military attack that continues to claim the lives of innocent and peaceful Ukrainian citizens. \r\n \r\nThe situation in Ukraine is dire and urgent, which is why we must commit to helping Ukrainian non-profits and charities conduct relief efforts. One of the most effective ways to help Ukraine and its citizens is donating to Ukrainian relief and humanitarian efforts. Right now, the people of Ukraine are facing an unprecedented attack on their country, freedoms, and families. \r\nWe have compiled a list of trusted and verified Ukrainian non-profits who need funds to help children, families, and local citizens mitigate the violent attacks Russia has unleashed. 100% of your donation will go to local Ukrainian non-profits and relief efforts. Don’t forget to share this page with your friends, family, and social networks after donating. \r\n \r\nPlease consider donating anything you can to the following Ukrainian non-profits — they are counting on our support during one of the darkest hours in recent history. \r\nAttention: there is a shortage of critical non-lethal army supplies in Ukraine - body armor vests, helmets, radios, first aid kits, etc. All body armor vests that were in Ukraine have already been given to the army. One of the best ways to help right now is to support volunteers outside of Ukraine who are collecting the necessary supplies in their countries and delivering them directly to the Ukrainian volunteers at the border. If you can, please consider donating to this fundraiser in Poland. They have just delivered the first batch of critical supplies: helmets (210 pcs) and vests (70 pcs) to Ukraine. The donations are collected in Poland zloty currency, 10 USD ~ 41 zl (PLN). Your bank will do the currency conversion automatically. The website is in Polish and the interface is not quite intuitive, the easiest way to make a payment may be to open the link on your computer and use Google translate in Chrome. \r\nIf you are a business or an individual located in Poland, Slovakia, Hungary, or Romania and willing to help collecting supplies that are most needed in Ukraine right now, please fill out this form. We will contact you and help to coordinate reception at the Ukrainian border. This document contains a list of supplies that are needed the most at this time. \r\nUrgent humanitarian help for Ukraine \r\n \r\n \r\nTo credit funds in national currency: \r\n \r\nBank: National Bank of Ukraine \r\nМФО 300001 \r\nРахунок № UA843000010000000047330992708 \r\nкод ЄДРПОУ 00032106 \r\nОтримувач: Національний банк України Для зарахування коштів у USD: BENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 400807238 \r\nBENEFICIARY BANK NAME: JP MORGAN CHASE BANK, New York \r\nBENEFICIARY BANK BIC: CHASUS33 \r\nABA 0210 0002 1 \r\nBENEFICIARY BANK ADDRESS: 383 Madison Avenue, New York, NY 10017, USA \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\nДля зарахування коштів у EUR: \r\n \r\nBENEFICIARY: National Bank of Ukraine \r\nIBAN DE05504000005040040066 \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\nBENEFICIARY BANK NAME: DEUTSCHE  BUNDESBANK, Frankfurt \r\nBENEFICIARY BANK BIC: MARKDEFF \r\nBENEFICIARY BANK ADDRESS: Wilhelm-Epstein-Strasse 14, 60431 Frankfurt Am Main, Germany \r\n \r\nДля зарахування коштів у GBP: BENEFICIARY/RECIPIENT NAME: National Bank of Ukraine \r\nACCOUNT NUMBER: 80033041 \r\nIBAN GB52CHAS60924280033041 \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nBENEFICIARY BANK NAME: JP MORGAN CHASE BANK NA, London \r\nBENEFICIARY BANK BIC: CHASGB2L \r\nSORT CODE: 60-92-42 \r\nBENEFICIARY BANK ADDRESS: 125 London Wall, London EC2Y 5AJ, UK PURPOSE OF PAYMENT: for ac 47330992708 Для зарахування коштів у AUD: BENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 817532 \r\nBSB code 092-002 \r\nBENEFICIARY BANK NAME: RESERVE  BANK OF AUSTRALIA, Sydney \r\nBENEFICIARY BANK BIC: RSBKAU2S \r\nBENEFICIARY BANK ADDRESS: GPO Box 3947, Sydney NSW 2000, Australia \r\nPURPOSE OF PAYMENT: for ac 47330992708 Для зарахування коштів у CAD: \r\nBENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 3144-1044-166 \r\nBENEFICIARY BANK NAME: BANK OF MONTREAL, Toronto \r\nBENEFICIARY BANK BIC: BOFMCAM2 \r\nBENEFICIARY BANK ADDRESS: 100 King Street West, 24th Floor, Toronto, Ontario, M5X 1A9, Canada \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\n \r\n \r\nДля зарахування коштів у PLN: \r\n \r\nBENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: PL91113000070080239435200002 \r\nBENEFICIARY BANK NAME: Bank Gospodarstwa Krajowego \r\nBENEFICIARY BANK BIC: GOSKPLPW \r\nBENEFICIARY BANK ADDRESS: Al. Jerozolimskie 7, 00-955 Warszawa, Polska (temporary address: Chmielna 73, 00-801 Warszawa, Polska) \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\n \r\nhttps://bank.gov.ua/ua/news/all/natsionalniy-bank-vidkriv-spetsrahunok-dlya-zboru-koshtiv-na-potrebi-armiyi',0,'0','2022-05-12 09:59:03','2022-05-12 09:59:03',NULL),(109,'HenryUsazy','DragonflyHunter8@aol.com','DragonflyHunter8@aol.com','Looking for additional money? Try out the best financial instrument.','The huge income without investments is available. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-12 10:23:12','2022-05-12 10:23:12',NULL),(110,'HenryUsazy','sandkille2@aol.com','sandkille2@aol.com','Earn additional money without efforts and skills.','Rich people are rich because they use this robot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-12 15:47:32','2022-05-12 15:47:32',NULL),(111,'HenryUsazy','angelface2001_23@yahoo.com','angelface2001_23@yahoo.com','Attention! Here you can earn money online!','Everyone can earn as much as he wants now. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-12 21:28:28','2022-05-12 21:28:28',NULL),(112,'HenryUsazy','jjhumphrey1983@gmail.com','jjhumphrey1983@gmail.com','Check out the new financial tool, which can make you rich.','Let the Robot bring you money while you rest. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-13 02:40:29','2022-05-13 02:40:29',NULL),(113,'HenryUsazy','Jamieandjackie@verizon.net','Jamieandjackie@verizon.net','Make dollars staying at home and launched this Bot.','Small investments can bring tons of dollars fast. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-13 08:06:24','2022-05-13 08:06:24',NULL),(114,'HenryUsazy','fehrnathan@yahoo.com','fehrnathan@yahoo.com','Your money work even when you sleep.','The additional income for everyone. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-13 15:18:49','2022-05-13 15:18:49',NULL),(115,'HenryUsazy','c_h_r_i_s93@msn.com','c_h_r_i_s93@msn.com','Earn additional money without efforts.','Find out about the fastest way for a financial independence. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-14 01:08:49','2022-05-14 01:08:49',NULL),(116,'HenryUsazy','toniojude@yahoo.com','toniojude@yahoo.com','Check out the automatic Bot, which works for you 24/7.','The huge income without investments is available. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-14 06:29:05','2022-05-14 06:29:05',NULL),(117,'HenryUsazy','heather.uvanni@gmail.com','heather.uvanni@gmail.com','Financial independence is what everyone needs.','Still not a millionaire? Fix it now! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-14 11:55:54','2022-05-14 11:55:54',NULL),(118,'HenryUsazy','gilkean@hotmail.com','gilkean@hotmail.com','Check out the automatic Bot, which works for you 24/7.','Only one click can grow up your money really fast. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-14 17:05:41','2022-05-14 17:05:41',NULL),(119,'HenryUsazy','elsie.rosee@gmail.com','elsie.rosee@gmail.com','Still not a millionaire? Fix it now!','Everyone can earn as much as he wants suing this Bot. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-14 22:35:15','2022-05-14 22:35:15',NULL),(120,'HenryUsazy','wiehersamie@outlook.com','wiehersamie@outlook.com','The fastest way to make you wallet thick is here.','Make money in the internet using this Bot. It really works! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-15 03:52:21','2022-05-15 03:52:21',NULL),(121,'HenryUsazy','wardellbailey54@yahoo.com','wardellbailey54@yahoo.com','Check out the automatic Bot, which works for you 24/7.','This robot can bring you money 24/7. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-15 09:16:44','2022-05-15 09:16:44',NULL),(122,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Instead, congrats','Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with akkhor.xyz definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out akkhor.xyz.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-05-15 14:10:52','2022-05-15 14:10:52',NULL),(123,'HenryUsazy','mbush90@aol.com','mbush90@aol.com','No need to worry about the future if your use this financial robot.','Financial independence is what everyone needs. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-15 15:25:40','2022-05-15 15:25:40',NULL),(124,'HenryUsazy','pnpgarcia86@yahoo.com','pnpgarcia86@yahoo.com','Robot is the best solution for everyone who wants to earn.','Check out the new financial tool, which can make you rich. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-15 22:00:49','2022-05-15 22:00:49',NULL),(125,'Marla','info@stephanjaeschke.com','(07) 3978 3584','Welcome To Akkhor.xyz','Hey there \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nAll the best, \r\n\r\nMarla',0,'0','2022-05-16 02:01:27','2022-05-16 02:01:27',NULL),(126,'HenryUsazy','kcgr4207@comcast.net','kcgr4207@comcast.net','Make your computer to be you earning instrument.','Start making thousands of dollars every week. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-16 03:39:44','2022-05-16 03:39:44',NULL),(127,'HenryUsazy','phyllisjef@aol.com','phyllisjef@aol.com','Invest $1 today to make $1000 tomorrow.','Earn additional money without efforts and skills. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-16 10:51:41','2022-05-16 10:51:41',NULL),(128,'HenryUsazy','46708@noemail.com','46708@noemail.com','The huge income without investments is available.','The financial Robot is the most effective financial tool in the net! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-16 16:21:23','2022-05-16 16:21:23',NULL),(129,'HenryUsazy','agonz921@yahoo.com','agonz921@yahoo.com','Financial robot is the best companion of rich people.','Invest $1 today to make $1000 tomorrow. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-16 21:36:41','2022-05-16 21:36:41',NULL),(130,'HenryUsazy','smith.claudia79@yahoo.com','smith.claudia79@yahoo.com','Make money in the internet using this Bot. It really works!','The financial Robot is your future wealth and independence. https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-17 03:19:03','2022-05-17 03:19:03',NULL),(131,'HenryUsazy','eveliene_n@hotmail.com','eveliene_n@hotmail.com','We have found the fastest way to be rich. Find it out here.','The huge income without investments is available, now! https://Usazy.187sued.de/gotodate/promo',0,'0','2022-05-17 08:45:49','2022-05-17 08:45:49',NULL),(132,'HenryUsazy','wpltdnj@aol.com','wpltdnj@aol.com','Everyone who needs money should try this Robot out.','Financial robot is your success formula is found. Learn more about it. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-17 13:54:03','2022-05-17 13:54:03',NULL),(133,'HenryUsazy','rr.i.ngto.n.B.a.r.r.in.g.ton@gmail.com','rr.i.ngto.n.B.a.r.r.in.g.ton@gmail.com','Make money, not war! Financial Robot is what you need.','Earn additional money without efforts and skills. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-17 19:41:36','2022-05-17 19:41:36',NULL),(134,'HenryUsazy','sfuidbhokysca@yahoo.com','sfuidbhokysca@yahoo.com','Need money? Earn it without leaving your home.','Join the society of successful people who make money here. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-18 01:24:02','2022-05-18 01:24:02',NULL),(135,'HenryUsazy','ysrmygyj@myownemailbox.com','ysrmygyj@myownemailbox.com','Financial robot is a great way to manage and increase your income.','Make thousands of bucks. Pay nothing. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-18 06:40:13','2022-05-18 06:40:13',NULL),(136,'HenryUsazy','jameswrightkendall@gmail.com','jameswrightkendall@gmail.com','Everyone who needs money should try this Robot out.','Everyone who needs money should try this Robot out. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-18 12:07:41','2022-05-18 12:07:41',NULL),(137,'HenryUsazy','turtlegryl@yahoo.com','turtlegryl@yahoo.com','Looking for an easy way to make money? Check out the financial robot.','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.187sued.de/gotodate/link',0,'0','2022-05-18 18:51:34','2022-05-18 18:51:34',NULL),(138,'HenryUsazy','paucott84@gmail.com','paucott84@gmail.com','No need to work anymore. Just launch the robot.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-19 03:50:35','2022-05-19 03:50:35',NULL),(139,'HenryUsazy','aanfarhansyah@yahoo.com','aanfarhansyah@yahoo.com','Most successful people already use Robot. Do you?','There is no need to look for a job anymore. Work online. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-19 09:06:58','2022-05-19 09:06:58',NULL),(140,'Bebe Mayorga','bebe@customdatabases.org','NA','Leads for sale','Your go-to source for leads. We can provide business to business and business to consumer leads, custom-tailored to your needs.\r\n\r\nCustomDatabases.org',0,'0','2022-05-19 13:39:56','2022-05-19 13:39:56',NULL),(141,'HenryUsazy','yu.conrad@yahoo.com','yu.conrad@yahoo.com','No need to worry about the future if your use this financial robot.','Have no money? Earn it online. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-19 14:31:52','2022-05-19 14:31:52',NULL),(142,'HenryUsazy','sohail_sigmalighting@hotmail.com','sohail_sigmalighting@hotmail.com','Online Bot will bring you wealth and satisfaction.','Make money online, staying at home this cold winter. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-19 19:45:42','2022-05-19 19:45:42',NULL),(143,'HenryUsazy','america_aurora2000@yahoo.com','america_aurora2000@yahoo.com','Make money, not war! Financial Robot is what you need.','Trust your dollar to the Robot and see how it grows to $100. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-20 05:24:25','2022-05-20 05:24:25',NULL),(144,'HenryUsazy','tyra_tyra_tyla@yahoo.com','tyra_tyra_tyla@yahoo.com','Financial Robot is #1 investment tool ever. Launch it!','Making money in the net is easier now. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-20 11:55:19','2022-05-20 11:55:19',NULL),(145,'Lin','info@sad-j.co.jp','06-23874523','Welcome To Akkhor.xyz','Hi there!\r\n\r\nI understand that you are looking for ways to improve your posture and contribute to a healthy lifestyle. I think our product, Medico Postura™ Body Posture Corrector, can be of great help.\r\n\r\nMedico Postura™ helps improve your posture INSTANTLY. It is an easy-to-use device that you can wear at home, work, or even when you are sleeping.\r\n\r\nIt is made of lightweight and breathable fabric, making it comfortable to wear all day long.\r\n\r\nGet it today while it\'s still 60% OFF: https://medicopostura.com   \r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nHave a great time, \r\n\r\nLin',0,'0','2022-05-20 14:57:26','2022-05-20 14:57:26',NULL),(146,'HenryUsazy','Lawsonbjl@aol.com','Lawsonbjl@aol.com','The online job can bring you a fantastic profit.','Need some more money? Robot will earn them really fast. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-20 17:15:43','2022-05-20 17:15:43',NULL),(147,'HenryUsazy','fern-love12@homail.com','fern-love12@homail.com','Most successful people already use Robot. Do you?','The huge income without investments is available, now! https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-20 22:29:08','2022-05-20 22:29:08',NULL),(148,'HenryUsazy','diamond76x@hotmail.com','diamond76x@hotmail.com','Online Bot will bring you wealth and satisfaction.','The financial Robot is your future wealth and independence. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-21 04:56:40','2022-05-21 04:56:40',NULL),(149,'HenryUsazy','brown_eyed_latin_girl@yahoo.com','brown_eyed_latin_girl@yahoo.com','Launch the best investment instrument to start making money today.','Feel free to buy everything you want with the additional income. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-21 12:50:19','2022-05-21 12:50:19',NULL),(150,'HenryUsazy','rosa_hellokitty23@yahoo.com','rosa_hellokitty23@yahoo.com','Financial independence is what this robot guarantees.','The financial Robot is your future wealth and independence. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-21 18:15:27','2022-05-21 18:15:27',NULL),(151,'HenryUsazy','rolykemp@yahoo.com','rolykemp@yahoo.com','Online Bot will bring you wealth and satisfaction.','Need cash? Launch this robot and see what it can. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-21 23:42:11','2022-05-21 23:42:11',NULL),(152,'HenryUsazy','islam.salama76@gmail.com','islam.salama76@gmail.com','Wow! This is a fastest way for a financial independence.','Buy everything you want earning money online. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-22 05:00:56','2022-05-22 05:00:56',NULL),(153,'HenryUsazy','charismayoung@yahoo.com','charismayoung@yahoo.com','Wow! This is a fastest way for a financial independence.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-22 10:22:06','2022-05-22 10:22:06',NULL),(154,'HenryUsazy','mandiehaynes32@gmail.com','mandiehaynes32@gmail.com','Buy everything you want earning money online.','Wow! This Robot is a great start for an online career. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-22 15:41:54','2022-05-22 15:41:54',NULL),(155,'HenryUsazy','jonchobbs@yahoo.com','jonchobbs@yahoo.com','The success formula is found. Learn more about it.','Let your money grow into the capital with this Robot. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-22 20:52:09','2022-05-22 20:52:09',NULL),(156,'HenryUsazy','eah696@hotmail.com','eah696@hotmail.com','Provide your family with the money in age. Launch the Robot!','Everyone can earn as much as he wants suing this Bot. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-23 02:44:28','2022-05-23 02:44:28',NULL),(157,'HenryUsazy','eandmsample@hotmail.com','eandmsample@hotmail.com','The online income is the easiest ways to make you dream come true.','Make yourself rich in future using this financial robot. https://Usazy.bookeat.es/gotodate/promo',0,'0','2022-05-23 08:04:55','2022-05-23 08:04:55',NULL),(158,'HenryUsazy','rayevuturo@hotmail.com','rayevuturo@hotmail.com','Let your money grow into the capital with this Robot.','We know how to increase your financial stability. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-23 13:17:37','2022-05-23 13:17:37',NULL),(159,'HenryUsazy','ADIXON34@TAMPABAY.RR.COM','ADIXON34@TAMPABAY.RR.COM','Online job can be really effective if you use this Robot.','Earning $1000 a day is easy if you use this financial Robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-23 17:08:28','2022-05-23 17:08:28',NULL),(160,'HenryUsazy','rishabhmallikbhilai@gmail.com','rishabhmallikbhilai@gmail.com','This robot will help you to make hundreds of dollars each day.','Most successful people already use Robot. Do you? https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-23 17:49:32','2022-05-23 17:49:32',NULL),(161,'HenryUsazy','socio85@hotmail.com','socio85@hotmail.com','Robot never sleeps. It makes money for you 24/7.','We have found the fastest way to be rich. Find it out here. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-23 23:27:24','2022-05-23 23:27:24',NULL),(162,'HenryUsazy','jetm67@yahoo.com','jetm67@yahoo.com','The huge income without investments is available, now!','Financial robot guarantees everyone stability and income. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 04:59:13','2022-05-24 04:59:13',NULL),(163,'HenryUsazy','gahjs@gmail.com','gahjs@gmail.com','The success formula is found. Learn more about it.','Online job can be really effective if you use this Robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 07:20:41','2022-05-24 07:20:41',NULL),(164,'HenryUsazy','manee-lin@hotmail.com','manee-lin@hotmail.com','The fastest way to make your wallet thick is found.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 08:09:07','2022-05-24 08:09:07',NULL),(165,'HenryUsazy','karthik236@gmail.com','karthik236@gmail.com','Need money? Earn it without leaving your home.','Watch your money grow while you invest with the Robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 10:25:36','2022-05-24 10:25:36',NULL),(166,'HenryUsazy','lucy.monaco@hotmaol.com','lucy.monaco@hotmaol.com','Make thousands of bucks. Financial robot will help you to do it!','The financial Robot is your future wealth and independence. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 12:34:01','2022-05-24 12:34:01',NULL),(167,'HenryUsazy','crazy00002001@yahoo.com','crazy00002001@yahoo.com','Everyone who needs money should try this Robot out.','Trust the financial Bot to become rich. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 14:39:24','2022-05-24 14:39:24',NULL),(168,'HenryUsazy','eatitsquirrel@yahoo.com','eatitsquirrel@yahoo.com','Make money, not war! Financial Robot is what you need.','Even a child knows how to make $100 today with the help of this robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 15:49:21','2022-05-24 15:49:21',NULL),(169,'HenryUsazy','bigdit36@hotmail.com','bigdit36@hotmail.com','Feel free to buy everything you want with the additional income.','The additional income is available for everyone using this robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 17:50:19','2022-05-24 17:50:19',NULL),(170,'HenryUsazy','ujuwino@emailrtg.org','ujuwino@emailrtg.org','Even a child knows how to make $100 today.','Launch the financial Bot now to start earning. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 20:33:22','2022-05-24 20:33:22',NULL),(171,'HenryUsazy','emmaduge12@gmail.com','emmaduge12@gmail.com','Financial independence is what everyone needs.','Wow! This is a fastest way for a financial independence. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 22:01:40','2022-05-24 22:01:40',NULL),(172,'HenryUsazy','ciel19@yahoo.com','ciel19@yahoo.com','Buy everything you want earning money online.','Need money? Get it here easily? https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-24 22:56:08','2022-05-24 22:56:08',NULL),(173,'HenryUsazy','apalmer11236@yahoo.com','apalmer11236@yahoo.com','Earn additional money without efforts and skills.','The additional income for everyone. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 02:17:24','2022-05-25 02:17:24',NULL),(174,'HenryUsazy','fe212002@hotmail.com','fe212002@hotmail.com','Even a child knows how to make money. Do you?','The online income is your key to success. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 03:24:07','2022-05-25 03:24:07',NULL),(175,'HenryUsazy','mrs.birdsong@yahoo.com','mrs.birdsong@yahoo.com','There is no need to look for a job anymore. Work online.','Making money in the net is easier now. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 04:00:44','2022-05-25 04:00:44',NULL),(176,'HenryUsazy','andy2811@rediffmail.com','andy2811@rediffmail.com','The fastest way to make your wallet thick is found.','Financial robot guarantees everyone stability and income. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 08:12:58','2022-05-25 08:12:58',NULL),(177,'HenryUsazy','lafleurway@aol.com','lafleurway@aol.com','Even a child knows how to make money. This robot is what you need!','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 08:44:12','2022-05-25 08:44:12',NULL),(178,'HenryUsazy','romegw@yahoo.com','romegw@yahoo.com','Financial robot keeps bringing you money while you sleep.','The additional income for everyone. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 09:06:23','2022-05-25 09:06:23',NULL),(179,'HenryUsazy','ytoppridopryuei@gawab.com','ytoppridopryuei@gawab.com','The huge income without investments is available, now!','Make your laptop a financial instrument with this program. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 14:04:40','2022-05-25 14:04:40',NULL),(180,'HenryUsazy','Lafeversd@yahoo.com','Lafeversd@yahoo.com','The fastest way to make your wallet thick is found.','Automatic robot is the best start for financial independence. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 14:16:58','2022-05-25 14:16:58',NULL),(181,'Trina','musea@qodeinteractive.com','04.72.53.91.53','Welcome To Akkhor.xyz','Hello there\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: https://thepodiatrist.shop\r\n\r\nThanks and Best Regards,\r\n\r\nTrina',0,'0','2022-05-25 16:43:55','2022-05-25 16:43:55',NULL),(182,'HenryUsazy','mari.michi@gmail.com','mari.michi@gmail.com','The financial Robot works for you even when you sleep.','Even a child knows how to make money. Do you? https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 19:08:08','2022-05-25 19:08:08',NULL),(183,'HenryUsazy','chronicle.of.stylvek.249@hotmail.com','chronicle.of.stylvek.249@hotmail.com','See how Robot makes $1000 from $1 of investment.','Earning $1000 a day is easy if you use this financial Robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 19:21:53','2022-05-25 19:21:53',NULL),(184,'JessiePlord','reznikh20@gmail.com','85364597348','переводы фриланс','Сегодня весь рынок – это веб, люди отыскивают там все, что им нужно, любой товар либо инфу. И согласно статистике, чаще всего, люди делают это через популярные поисковые системы Yandex или Google. Поэтому от того, насколько высока значимость вашего ресурса у этих поисковиков, всегда зависит, наткнется ли будущий лид ваш уникальный товар в инете или же нет, ведь долго искать никто не будет.\nСоздать ваш ресурс в идеальное состояние и вытолкнуть его в TOP – наша профессиональная деятельность. Наши PRO мастера проведем аналитику ресурс, дадим советы и уже через пару месяцев вы увидите результат, рост клиентов, который можно увидеть наглядно по отчетам. Попробуйте бесплатно, и мы покажем вас миру.<a href=https://seodebug.ru>\n	\n		\n</a>',0,'0','2022-05-25 19:51:50','2022-05-25 19:51:50',NULL),(185,'HenryUsazy','pretty-n-pink@ec.rr.com','pretty-n-pink@ec.rr.com','Financial Robot is #1 investment tool ever. Launch it!','Even a child knows how to make $100 today with the help of this robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-25 22:38:30','2022-05-25 22:38:30',NULL),(186,'HenryUsazy','Ddbay2@yahoo.com','Ddbay2@yahoo.com','Make dollars staying at home and launched this Bot.','No worries if you are fired. Work online. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-26 00:34:14','2022-05-26 00:34:14',NULL),(187,'HenryUsazy','rocketingchopstick@hotmail.com','rocketingchopstick@hotmail.com','Robot is the best way for everyone who looks for financial independence.','Learn how to make hundreds of backs each day. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-26 00:50:05','2022-05-26 00:50:05',NULL),(188,'HenryUsazy','miguel_on321@hotmail.com','miguel_on321@hotmail.com','Start making thousands of dollars every week just using this robot.','Every your dollar can turn into $100 after you lunch this Robot. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-26 04:35:22','2022-05-26 04:35:22',NULL),(189,'HenryUsazy','jorgealberto0458@hotmail.com','jorgealberto0458@hotmail.com','Earn additional money without efforts and skills.','Online earnings are the easiest way for financial independence. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-26 05:47:34','2022-05-26 05:47:34',NULL),(190,'HenryUsazy','pretty_naa3k@yahoo.com','pretty_naa3k@yahoo.com','We know how to make our future rich and do you?','The online income is the easiest ways to make you dream come true. https://Usazy.bookeat.es/gotodate/promotion',0,'0','2022-05-26 06:45:13','2022-05-26 06:45:13',NULL),(191,'HenryUsazy','christi_3454@yahoo.com','christi_3454@yahoo.com','The financial Robot works for you even when you sleep.','Even a child knows how to make $100 today with the help of this robot. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 10:25:03','2022-05-26 10:25:03',NULL),(192,'HenryUsazy','vmpakvhajypozchrist1@gmail.com','vmpakvhajypozchrist1@gmail.com','Feel free to buy everything you want with the additional income.','Need money? Get it here easily? https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 10:48:31','2022-05-26 10:48:31',NULL),(193,'HenryUsazy','mfaaleava@hotmail.com','mfaaleava@hotmail.com','Online Bot will bring you wealth and satisfaction.','Need money? The financial robot is your solution. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 12:36:23','2022-05-26 12:36:23',NULL),(194,'HenryUsazy','bowmanisaac@rocketmail.com','bowmanisaac@rocketmail.com','The online income is your key to success.','Your money work even when you sleep. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 15:53:21','2022-05-26 15:53:21',NULL),(195,'HenryUsazy','sailakshmid05@gmail.com','sailakshmid05@gmail.com','Financial independence is what this robot guarantees.','Need money? Earn it without leaving your home. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 16:20:27','2022-05-26 16:20:27',NULL),(196,'HenryUsazy','isabelinolivia@hotmail.com','isabelinolivia@hotmail.com','Money, money! Make more money with financial robot!','Earn additional money without efforts and skills. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 18:13:29','2022-05-26 18:13:29',NULL),(197,'HenryUsazy','chrisrance22@yahoo.com','chrisrance22@yahoo.com','Make dollars just sitting home.','Make dollars staying at home and launched this Bot. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 20:51:28','2022-05-26 20:51:28',NULL),(198,'HenryUsazy','tomas.santilli.16@facebook.com','tomas.santilli.16@facebook.com','The financial Robot is your # 1 expert of making money.','Make money, not war! Financial Robot is what you need. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 22:14:33','2022-05-26 22:14:33',NULL),(199,'HenryUsazy','fanosvaderty69@gawab.com','fanosvaderty69@gawab.com','Financial robot keeps bringing you money while you sleep.','Wow! This Robot is a great start for an online career. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-26 23:30:35','2022-05-26 23:30:35',NULL),(200,'HenryUsazy','piratelife5@yahoo.com','piratelife5@yahoo.com','One dollar is nothing, but it can grow into $100 here.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-27 01:59:15','2022-05-27 01:59:15',NULL),(201,'HenryUsazy','rahul14d@gmail.com','rahul14d@gmail.com','Try out the best financial robot in the Internet.','Your computer can bring you additional income if you use this Robot. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-27 05:27:51','2022-05-27 05:27:51',NULL),(202,'HenryUsazy','dar882001@yahoo.com','dar882001@yahoo.com','Find out about the fastest way for a financial independence.','Need money? The financial robot is your solution. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-27 06:23:43','2022-05-27 06:23:43',NULL),(203,'HenryUsazy','brown.king21@gmail.com','brown.king21@gmail.com','Trust your dollar to the Robot and see how it grows to $100.','Try out the best financial robot in the Internet. https://Usazy.battletech-newsletter.de/gotodate/promo',0,'0','2022-05-27 07:07:40','2022-05-27 07:07:40',NULL),(204,'HenryUsazy','kittycatlova91@yahoo.com','kittycatlova91@yahoo.com','Start making thousands of dollars every week just using this robot.','Make money online, staying at home this cold winter. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 11:50:53','2022-05-27 11:50:53',NULL),(205,'HenryUsazy','cbvideo@tushino.com','cbvideo@tushino.com','Automatic robot is the best start for financial independence.','Additional income is now available for anyone all around the world. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 12:43:44','2022-05-27 12:43:44',NULL),(206,'HenryUsazy','dpschlosser@yahoo.com','dpschlosser@yahoo.com','Still not a millionaire? The financial robot will make you him!','Need money? Earn it without leaving your home. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 17:13:13','2022-05-27 17:13:13',NULL),(207,'HenryUsazy','crcjdhts1@gmail.com','crcjdhts1@gmail.com','Automatic robot is the best start for financial independence.','Making money in the net is easier now. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 18:01:11','2022-05-27 18:01:11',NULL),(208,'HenryUsazy','kiertlkclk01@aol.com','kiertlkclk01@aol.com','Looking for additional money? Try out the best financial instrument.','Financial independence is what this robot guarantees. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 18:20:27','2022-05-27 18:20:27',NULL),(209,'HenryUsazy','Campbell.eddie@gmail.com','Campbell.eddie@gmail.com','Find out about the fastest way for a financial independence.','The online financial Robot is your key to success. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 22:20:23','2022-05-27 22:20:23',NULL),(210,'HenryUsazy','tomg@customcontrolsusa.com','tomg@customcontrolsusa.com','Trust the financial Bot to become rich.','Attention! Financial robot may bring you millions! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-27 23:08:37','2022-05-27 23:08:37',NULL),(211,'HenryUsazy','ritcheyhome@earthlink.net','ritcheyhome@earthlink.net','Making money is very easy if you use the financial Robot.','Wow! This is a fastest way for a financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 00:26:16','2022-05-28 00:26:16',NULL),(212,'HenryUsazy','ivripolibejalinx@msi.com','ivripolibejalinx@msi.com','Making money is very easy if you use the financial Robot.','Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 04:15:07','2022-05-28 04:15:07',NULL),(213,'HenryUsazy','calldvfdvdf@live.com','calldvfdvdf@live.com','We know how to become rich and do you?','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 04:46:02','2022-05-28 04:46:02',NULL),(214,'HenryUsazy','gfentress@windstream.net','gfentress@windstream.net','The additional income is available for everyone using this robot.','The financial Robot works for you even when you sleep. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 06:21:39','2022-05-28 06:21:39',NULL),(215,'HenryUsazy','loanmodificalgy@yahoo.com','loanmodificalgy@yahoo.com','Even a child knows how to make money. This robot is what you need!','No need to stay awake all night long to earn money. Launch the robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 09:18:55','2022-05-28 09:18:55',NULL),(216,'HenryUsazy','pena_valeria@yahoo.com','pena_valeria@yahoo.com','# 1 financial expert in the net! Check out the new Robot.','Even a child knows how to make $100 today with the help of this robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 10:03:22','2022-05-28 10:03:22',NULL),(217,'HenryUsazy','causeybrosproduction@hotmail.com','causeybrosproduction@hotmail.com','Invest $1 today to make $1000 tomorrow.','Everyone who needs money should try this Robot out. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 12:13:31','2022-05-28 12:13:31',NULL),(218,'HenryUsazy','raineyjawaunti@yahoo.com','raineyjawaunti@yahoo.com','Launch the robot and let it bring you money.','The fastest way to make you wallet thick is here. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 14:21:10','2022-05-28 14:21:10',NULL),(219,'HenryUsazy','dan_linsalata@yahoo.com','dan_linsalata@yahoo.com','Launch the financial Robot and do your business.','This robot will help you to make hundreds of dollars each day. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 18:10:07','2022-05-28 18:10:07',NULL),(220,'HenryUsazy','gatsbysuicide@gmail.com','gatsbysuicide@gmail.com','This robot will help you to make hundreds of dollars each day.','Let the Robot bring you money while you rest. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 19:03:35','2022-05-28 19:03:35',NULL),(221,'HenryUsazy','pegfrey@mail.com','pegfrey@mail.com','Making money is very easy if you use the financial Robot.','Still not a millionaire? Fix it now! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-28 19:25:59','2022-05-28 19:25:59',NULL),(222,'HenryUsazy','me2mutz@hotmail.com','me2mutz@hotmail.com','No worries if you are fired. Work online.','Automatic robot is the best start for financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 00:02:07','2022-05-29 00:02:07',NULL),(223,'HenryUsazy','mhblessed@gmail.com','mhblessed@gmail.com','Invest $1 today to make $1000 tomorrow.','Wow! This Robot is a great start for an online career. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 00:17:42','2022-05-29 00:17:42',NULL),(224,'HenryUsazy','patrick_greaves12@hotmail.com','patrick_greaves12@hotmail.com','Looking for additional money? Try out the best financial instrument.','Start making thousands of dollars every week just using this robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 00:28:52','2022-05-29 00:28:52',NULL),(225,'HenryUsazy','ldujhussri89z19pyl@yahoo.com','ldujhussri89z19pyl@yahoo.com','Attention! Here you can earn money online!','One click of the robot can bring you thousands of bucks. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 05:35:51','2022-05-29 05:35:51',NULL),(226,'HenryUsazy','moderna41@yahoo.com','moderna41@yahoo.com','Your computer can bring you additional income if you use this Robot.','Only one click can grow up your money really fast. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 06:03:13','2022-05-29 06:03:13',NULL),(227,'HenryUsazy','tkmario3104@peoplepc.com','tkmario3104@peoplepc.com','Launch the financial Bot now to start earning.','No need to work anymore. Just launch the robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 11:00:55','2022-05-29 11:00:55',NULL),(228,'HenryUsazy','Manchibz4u@yahoo.com','Manchibz4u@yahoo.com','Your money keep grow 24/7 if you use the financial Robot.','Watch your money grow while you invest with the Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 11:26:03','2022-05-29 11:26:03',NULL),(229,'HenryUsazy','heyppl101@yahoo.com','heyppl101@yahoo.com','The online income is your key to success.','Online earnings are the easiest way for financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 12:19:24','2022-05-29 12:19:24',NULL),(230,'HenryUsazy','allison_oaks@yahoo.com','allison_oaks@yahoo.com','Financial independence is what everyone needs.','Find out about the fastest way for a financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 16:06:20','2022-05-29 16:06:20',NULL),(231,'HenryUsazy','vwswabash@yahoo.com','vwswabash@yahoo.com','Need money? Earn it without leaving your home.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 16:41:37','2022-05-29 16:41:37',NULL),(232,'HenryUsazy','bballbarbie13@hotmail.com','bballbarbie13@hotmail.com','Financial robot guarantees everyone stability and income.','Provide your family with the money in age. Launch the Robot! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 18:05:12','2022-05-29 18:05:12',NULL),(233,'HenryUsazy','provention.b@hotmail.com','provention.b@hotmail.com','Financial robot is your success formula is found. Learn more about it.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 21:11:24','2022-05-29 21:11:24',NULL),(234,'HenryUsazy','ribeirojotacr@hotmail.com','ribeirojotacr@hotmail.com','Still not a millionaire? The financial robot will make you him!','Make money 24/7 without any efforts and skills. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 22:00:41','2022-05-29 22:00:41',NULL),(235,'HenryUsazy','maxtummy@yahoo.com','maxtummy@yahoo.com','Just one click can turn you dollar into $1000.','Robot never sleeps. It makes money for you 24/7. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-29 23:59:56','2022-05-29 23:59:56',NULL),(236,'HenryUsazy','jason_c_george@yahoo.com','jason_c_george@yahoo.com','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Join the society of successful people who make money here. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 02:12:37','2022-05-30 02:12:37',NULL),(237,'HenryUsazy','justin_wickstrand@yahoo.com','justin_wickstrand@yahoo.com','Everyone who needs money should try this Robot out.','The best online job for retirees. Make your old ages rich. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 03:25:05','2022-05-30 03:25:05',NULL),(238,'HenryUsazy','ikhyjvgksrga@gmail.com','ikhyjvgksrga@gmail.com','Online Bot will bring you wealth and satisfaction.','Earning $1000 a day is easy if you use this financial Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 05:45:23','2022-05-30 05:45:23',NULL),(239,'HenryUsazy','billsumner@comcast.net','billsumner@comcast.net','Try out the best financial robot in the Internet.','Looking for an easy way to make money? Check out the financial robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 07:19:35','2022-05-30 07:19:35',NULL),(240,'HenryUsazy','hzexyh@gmail.com','hzexyh@gmail.com','The financial Robot is the most effective financial tool in the net!','Make yourself rich in future using this financial robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 08:47:20','2022-05-30 08:47:20',NULL),(241,'HenryUsazy','rsinghking1@gmail.com','rsinghking1@gmail.com','Try out the best financial robot in the Internet.','Make thousands of bucks. Pay nothing. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 12:24:21','2022-05-30 12:24:21',NULL),(242,'HenryUsazy','aasehelene@hotmail.com','aasehelene@hotmail.com','No need to stay awake all night long to earn money. Launch the robot.','The online income is your key to success. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 12:50:15','2022-05-30 12:50:15',NULL),(243,'HenryUsazy','lotharcs@hotmail.com','lotharcs@hotmail.com','Looking for additional money? Try out the best financial instrument.','Online earnings are the easiest way for financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 14:01:49','2022-05-30 14:01:49',NULL),(244,'HenryUsazy','jdot_jones@yahoo.com','jdot_jones@yahoo.com','Check out the new financial tool, which can make you rich.','We know how to increase your financial stability. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 17:25:57','2022-05-30 17:25:57',NULL),(245,'HenryUsazy','desireeshields879@gmail.com','desireeshields879@gmail.com','Earn additional money without efforts.','The best way for everyone who rushes for financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 18:37:10','2022-05-30 18:37:10',NULL),(246,'HenryUsazy','ammmmym@gmail.com','ammmmym@gmail.com','The additional income for everyone.','No need to worry about the future if your use this financial robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 19:31:11','2022-05-30 19:31:11',NULL),(247,'HenryUsazy','derrick.tracy@yahoo.com','derrick.tracy@yahoo.com','Have no money? Earn it online.','Need money? The financial robot is your solution. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-30 22:27:57','2022-05-30 22:27:57',NULL),(248,'HenryUsazy','tatanaty10@hotmail.com','tatanaty10@hotmail.com','# 1 financial expert in the net! Check out the new Robot.','Let your money grow into the capital with this Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 00:38:24','2022-05-31 00:38:24',NULL),(249,'HenryUsazy','djgoast@gmail.com','djgoast@gmail.com','Still not a millionaire? Fix it now!','Robot never sleeps. It makes money for you 24/7. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 00:52:07','2022-05-31 00:52:07',NULL),(250,'Freda','tiendadeuniformes@colegiomirasur.com','830-529-6008','Lead For akkhor.xyz','EASE YOUR PAIN IN 10 MINUTES EFFORTLESSLY\r\n\r\nBe Free from Neck Pain\r\nTry NeckFlexer & Relieve Neck Pain Effortlessly In 10 Min!\r\nSave 50% OFF + FREE Worldwide Shipping\r\n\r\nShop Now: neckflexer.online\r\n\r\nFreda \r\nWelcome To Akkhor.xyz',0,'0','2022-05-31 05:18:34','2022-05-31 05:18:34',NULL),(251,'HenryUsazy','omar33036@yahoo.com','omar33036@yahoo.com','Make $1000 from $1 in a few minutes. Launch the financial robot now.','We know how to make our future rich and do you? https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 06:08:42','2022-05-31 06:08:42',NULL),(252,'HenryUsazy','anon.chatchana@nxp.com','anon.chatchana@nxp.com','The additional income for everyone.','We know how to make our future rich and do you? https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 06:28:30','2022-05-31 06:28:30',NULL),(253,'HenryUsazy','biqdawq013@yahoo.com','biqdawq013@yahoo.com','Still not a millionaire? Fix it now!','Making money is very easy if you use the financial Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 06:57:20','2022-05-31 06:57:20',NULL),(254,'HenryUsazy','jasmine.n.hicks@gmail.com','jasmine.n.hicks@gmail.com','Make thousands every week working online here.','Money, money! Make more money with financial robot! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 11:25:12','2022-05-31 11:25:12',NULL),(255,'HenryUsazy','nikki.l.morton@gmail.com','nikki.l.morton@gmail.com','We know how to increase your financial stability.','Earning money in the Internet is easy if you use Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 12:02:41','2022-05-31 12:02:41',NULL),(256,'HenryUsazy','katie1563108@fffrawdlsdl60k.com','katie1563108@fffrawdlsdl60k.com','Trust the financial Bot to become rich.','One click of the robot can bring you thousands of bucks. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 12:19:43','2022-05-31 12:19:43',NULL),(257,'HenryUsazy','lhamiltonlaw@planet-save.com','lhamiltonlaw@planet-save.com','Invest $1 today to make $1000 tomorrow.','Feel free to buy everything you want with the additional income. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 16:54:35','2022-05-31 16:54:35',NULL),(258,'HenryUsazy','Camille.Kohner@mpls.k12.mn.us','Camille.Kohner@mpls.k12.mn.us','Looking for an easy way to make money? Check out the financial robot.','Check out the newest way to make a fantastic profit. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 17:02:53','2022-05-31 17:02:53',NULL),(259,'HenryUsazy','marieve@pinkinbox.org','marieve@pinkinbox.org','Start your online work using the financial Robot.','The success formula is found. Learn more about it. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 18:09:20','2022-05-31 18:09:20',NULL),(260,'HenryUsazy','fchsguru05@yahoo.com','fchsguru05@yahoo.com','Robot never sleeps. It makes money for you 24/7.','The additional income for everyone. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-05-31 22:06:44','2022-05-31 22:06:44',NULL),(261,'HenryUsazy','congresses_2556@hotmail.com','congresses_2556@hotmail.com','The online income is your key to success.','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 00:08:42','2022-06-01 00:08:42',NULL),(262,'HenryUsazy','pushp_raj4@rediffmail.com','pushp_raj4@rediffmail.com','Earning money in the Internet is easy if you use Robot.','Need money? Earn it without leaving your home. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 03:13:41','2022-06-01 03:13:41',NULL),(263,'HenryUsazy','pwirimbi@gmail.com','pwirimbi@gmail.com','Attention! Here you can earn money online!','Still not a millionaire? The financial robot will make you him! https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 03:15:49','2022-06-01 03:15:49',NULL),(264,'HenryUsazy','dgodines81@gmail.com','dgodines81@gmail.com','The huge income without investments is available.','Wow! This is a fastest way for a financial independence. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 05:58:33','2022-06-01 05:58:33',NULL),(265,'HenryUsazy','sylviadawson13579@yahoo.com','sylviadawson13579@yahoo.com','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Trust the financial Bot to become rich. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 08:17:36','2022-06-01 08:17:36',NULL),(266,'HenryUsazy','keishakanae@att.net','keishakanae@att.net','Automatic robot is the best start for financial independence.','Financial independence is what everyone needs. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 08:35:46','2022-06-01 08:35:46',NULL),(267,'HenryUsazy','gary.collins@buschgardens.com','gary.collins@buschgardens.com','Start making thousands of dollars every week.','There is no need to look for a job anymore. Work online. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 13:22:57','2022-06-01 13:22:57',NULL),(268,'HenryUsazy','sunlover1980@comcast.net','sunlover1980@comcast.net','Make money in the internet using this Bot. It really works!','Turn $1 into $100 instantly. Use the financial Robot. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 13:50:51','2022-06-01 13:50:51',NULL),(269,'HenryUsazy','danp82@hotmail.com','danp82@hotmail.com','Making money in the net is easier now.','Need money? Get it here easily? https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 15:43:37','2022-06-01 15:43:37',NULL),(270,'HenryUsazy','camillejoy_rivera@yahoo.com','camillejoy_rivera@yahoo.com','Financial robot is the best companion of rich people.','Buy everything you want earning money online. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-01 23:14:08','2022-06-01 23:14:08',NULL),(271,'HenryUsazy','RookTessa9292@o2.pl','RookTessa9292@o2.pl','Financial robot keeps bringing you money while you sleep.','Check out the new financial tool, which can make you rich. https://Usazy.battletech-newsletter.de/Usazy',0,'0','2022-06-02 07:32:28','2022-06-02 07:32:28',NULL),(272,'HenryUsazy','RookTessa9292@o2.pl','RookTessa9292@o2.pl','Only one click can grow up your money really fast.','Financial robot guarantees everyone stability and income. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-02 20:47:20','2022-06-02 20:47:20',NULL),(273,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Turn Surf-Surf-Surf into Talk Talk Talk','Hello, my name’s Eric and I just ran across your website at akkhor.xyz...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-03 03:09:36','2022-06-03 03:09:36',NULL),(274,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Try this, get more leads','Hi, my name is Eric and I’m betting you’d like your website akkhor.xyz to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at akkhor.xyz.\r\n\r\nTalk With Web Visitor – CLICK HERE http://talkwithwebtraffic.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-03 08:30:05','2022-06-03 08:30:05',NULL),(275,'HenryUsazy','RookTessa9292@o2.pl','RookTessa9292@o2.pl','One dollar is nothing, but it can grow into $100 here.','Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-04 03:14:40','2022-06-04 03:14:40',NULL),(276,'HenryUsazy','RookTessa9292@o2.pl','RookTessa9292@o2.pl','Let the financial Robot be your companion in the financial market.','Most successful people already use Robot. Do you? https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-05 09:59:23','2022-06-05 09:59:23',NULL),(277,'Lucy','turkeypoint@up4offers.com','031 253 76 88','Welcome To Akkhor.xyz','Morning,\r\n\r\nI hope you\'re well. I am excited to tell you about our Full Body Resistance Band Kit that can help you get an amazing workout without having to go to the gym.\r\nThis is the best and cheapest athletic gear on the market. You can do a full body workout from the comfort of your home.\r\n\r\nI believe that this product can help you reach your fitness goals. \r\n\r\nSave 50% OFF + FREE Worldwide Shipping\r\nShop Now: https://ametathletics.sale\r\n\r\nAll the best, \r\n\r\nLucy',0,'0','2022-06-05 14:21:49','2022-06-05 14:21:49',NULL),(278,'HenryUsazy','schoo@forum.dk','schoo@forum.dk','Still not a millionaire? Fix it now!','Still not a millionaire? The financial robot will make you him! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-05 17:10:15','2022-06-05 17:10:15',NULL),(279,'HenryUsazy','simg@mail-online.dk','simg@mail-online.dk','Financial robot is a great way to manage and increase your income.','Provide your family with the money in age. Launch the Robot! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-05 20:05:51','2022-06-05 20:05:51',NULL),(280,'HenryUsazy','darkorbit@forum.dk','darkorbit@forum.dk','Make your computer to be you earning instrument.','Looking forward for income? Get it online. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-05 23:20:54','2022-06-05 23:20:54',NULL),(281,'HenryUsazy','thomastoudal@forum.dk','thomastoudal@forum.dk','The online financial Robot is your key to success.','Provide your family with the money in age. Launch the Robot! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 02:15:58','2022-06-06 02:15:58',NULL),(282,'HenryUsazy','mkanoplich@mailme.dk','mkanoplich@mailme.dk','Make dollars staying at home and launched this Bot.','Need money? Earn it without leaving your home. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 05:12:31','2022-06-06 05:12:31',NULL),(283,'HenryUsazy','styrbaek@forum.dk','styrbaek@forum.dk','Let the Robot bring you money while you rest.','No worries if you are fired. Work online. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 08:16:33','2022-06-06 08:16:33',NULL),(284,'HenryUsazy','lottte@forum.dk','lottte@forum.dk','The huge income without investments is available.','The best online investment tool is found. Learn more! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 11:10:35','2022-06-06 11:10:35',NULL),(285,'HenryUsazy','preeti52@hotmail.com','preeti52@hotmail.com','The financial Robot is the most effective financial tool in the net!','It is the best time to launch the Robot to get more money. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 14:02:10','2022-06-06 14:02:10',NULL),(286,'HenryUsazy','promille333@forum.dk','promille333@forum.dk','We know how to become rich and do you?','Make money in the internet using this Bot. It really works! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 17:20:53','2022-06-06 17:20:53',NULL),(287,'HenryUsazy','just_junk@forum.dk','just_junk@forum.dk','Making money is very easy if you use the financial Robot.','Start making thousands of dollars every week just using this robot. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 20:10:33','2022-06-06 20:10:33',NULL),(288,'HenryUsazy','78@forum.dk','78@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','The best way for everyone who rushes for financial independence. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-06 23:16:38','2022-06-06 23:16:38',NULL),(289,'Cynthiamix','vietatof123@gmail.com','89684768819','Help the Ukrainian army','How to help Ukraine and its people stand against Putin and the Russian attack \r\nFor volunteers and organizations in other countries who are collecting supplies to deliver to Ukraine, this official website https://www.helpukraine.center/ contains the information about what supplies are needed the most, the address of the drop-off center, and instructions for how to pack medical supplies. English version of the website is temporarily unavailable, but you may find their 24/7 call-center phone numbers as well as the address of the drop-off center in Poland at the bottom of the webpage. \r\n \r\nThis document provides information about volunteers across Europe who are collecting supplies for your region or nearby regions. If you would like to donate to these groups or offer your help, please connect with them directly. \r\n \r\nRussia’s President, Vladimir Putin, has ordered a military attack that continues to claim the lives of innocent and peaceful Ukrainian citizens. \r\n \r\nThe situation in Ukraine is dire and urgent, which is why we must commit to helping Ukrainian non-profits and charities conduct relief efforts. One of the most effective ways to help Ukraine and its citizens is donating to Ukrainian relief and humanitarian efforts. Right now, the people of Ukraine are facing an unprecedented attack on their country, freedoms, and families. \r\nWe have compiled a list of trusted and verified Ukrainian non-profits who need funds to help children, families, and local citizens mitigate the violent attacks Russia has unleashed. 100% of your donation will go to local Ukrainian non-profits and relief efforts. Don’t forget to share this page with your friends, family, and social networks after donating. \r\n \r\nPlease consider donating anything you can to the following Ukrainian non-profits — they are counting on our support during one of the darkest hours in recent history. \r\nAttention: there is a shortage of critical non-lethal army supplies in Ukraine - body armor vests, helmets, radios, first aid kits, etc. All body armor vests that were in Ukraine have already been given to the army. One of the best ways to help right now is to support volunteers outside of Ukraine who are collecting the necessary supplies in their countries and delivering them directly to the Ukrainian volunteers at the border. If you can, please consider donating to this fundraiser in Poland. They have just delivered the first batch of critical supplies: helmets (210 pcs) and vests (70 pcs) to Ukraine. The donations are collected in Poland zloty currency, 10 USD ~ 41 zl (PLN). Your bank will do the currency conversion automatically. The website is in Polish and the interface is not quite intuitive, the easiest way to make a payment may be to open the link on your computer and use Google translate in Chrome. \r\nIf you are a business or an individual located in Poland, Slovakia, Hungary, or Romania and willing to help collecting supplies that are most needed in Ukraine right now, please fill out this form. We will contact you and help to coordinate reception at the Ukrainian border. This document contains a list of supplies that are needed the most at this time. \r\nUrgent humanitarian help for Ukraine \r\n \r\n \r\nTo credit funds in national currency: \r\n \r\nBank: National Bank of Ukraine \r\nМФО 300001 \r\nРахунок № UA843000010000000047330992708 \r\nкод ЄДРПОУ 00032106 \r\nОтримувач: Національний банк України Для зарахування коштів у USD: BENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 400807238 \r\nBENEFICIARY BANK NAME: JP MORGAN CHASE BANK, New York \r\nBENEFICIARY BANK BIC: CHASUS33 \r\nABA 0210 0002 1 \r\nBENEFICIARY BANK ADDRESS: 383 Madison Avenue, New York, NY 10017, USA \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\nДля зарахування коштів у EUR: \r\n \r\nBENEFICIARY: National Bank of Ukraine \r\nIBAN DE05504000005040040066 \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\nBENEFICIARY BANK NAME: DEUTSCHE  BUNDESBANK, Frankfurt \r\nBENEFICIARY BANK BIC: MARKDEFF \r\nBENEFICIARY BANK ADDRESS: Wilhelm-Epstein-Strasse 14, 60431 Frankfurt Am Main, Germany \r\n \r\nДля зарахування коштів у GBP: BENEFICIARY/RECIPIENT NAME: National Bank of Ukraine \r\nACCOUNT NUMBER: 80033041 \r\nIBAN GB52CHAS60924280033041 \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nBENEFICIARY BANK NAME: JP MORGAN CHASE BANK NA, London \r\nBENEFICIARY BANK BIC: CHASGB2L \r\nSORT CODE: 60-92-42 \r\nBENEFICIARY BANK ADDRESS: 125 London Wall, London EC2Y 5AJ, UK PURPOSE OF PAYMENT: for ac 47330992708 Для зарахування коштів у AUD: BENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 817532 \r\nBSB code 092-002 \r\nBENEFICIARY BANK NAME: RESERVE  BANK OF AUSTRALIA, Sydney \r\nBENEFICIARY BANK BIC: RSBKAU2S \r\nBENEFICIARY BANK ADDRESS: GPO Box 3947, Sydney NSW 2000, Australia \r\nPURPOSE OF PAYMENT: for ac 47330992708 Для зарахування коштів у CAD: \r\nBENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: 3144-1044-166 \r\nBENEFICIARY BANK NAME: BANK OF MONTREAL, Toronto \r\nBENEFICIARY BANK BIC: BOFMCAM2 \r\nBENEFICIARY BANK ADDRESS: 100 King Street West, 24th Floor, Toronto, Ontario, M5X 1A9, Canada \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\n \r\n \r\nДля зарахування коштів у PLN: \r\n \r\nBENEFICIARY: National Bank of Ukraine \r\nBENEFICIARY BIC: NBUA UA UX \r\nBENEFICIARY ADDRESS: 9 Instytutska St, Kyiv, 01601, Ukraine \r\nACCOUNT NUMBER: PL91113000070080239435200002 \r\nBENEFICIARY BANK NAME: Bank Gospodarstwa Krajowego \r\nBENEFICIARY BANK BIC: GOSKPLPW \r\nBENEFICIARY BANK ADDRESS: Al. Jerozolimskie 7, 00-955 Warszawa, Polska (temporary address: Chmielna 73, 00-801 Warszawa, Polska) \r\nPURPOSE OF PAYMENT: for ac 47330992708 \r\n \r\nhttps://bank.gov.ua/ua/news/all/natsionalniy-bank-vidkriv-spetsrahunok-dlya-zboru-koshtiv-na-potrebi-armiyi',0,'0','2022-06-06 23:24:14','2022-06-06 23:24:14',NULL),(290,'HenryUsazy','ira.cozina@mailme.dk','ira.cozina@mailme.dk','Even a child knows how to make money. This robot is what you need!','Even a child knows how to make money. This robot is what you need! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-07 02:15:33','2022-06-07 02:15:33',NULL),(291,'HenryUsazy','malsshnata@mailme.dk','malsshnata@mailme.dk','We know how to become rich and do you?','Need money? Earn it without leaving your home. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-07 05:17:22','2022-06-07 05:17:22',NULL),(292,'HenryUsazy','sims74@mail-online.dk','sims74@mail-online.dk','Rich people are rich because they use this robot.','Turn $1 into $100 instantly. Use the financial Robot. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-07 08:11:00','2022-06-07 08:11:00',NULL),(293,'HenryUsazy','irina04102008@mailme.dk','irina04102008@mailme.dk','No need to worry about the future if your use this financial robot.','Have no money? It’s easy to earn them online here. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-07 10:59:28','2022-06-07 10:59:28',NULL),(294,'HenryUsazy','mettekyster@forum.dk','mettekyster@forum.dk','Only one click can grow up your money really fast.','Invest $1 today to make $1000 tomorrow. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-07 13:54:04','2022-06-07 13:54:04',NULL),(295,'HenryUsazy','tmhtmh@forum.dk','tmhtmh@forum.dk','Make money in the internet using this Bot. It really works!','Only one click can grow up your money really fast. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-07 16:58:25','2022-06-07 16:58:25',NULL),(296,'HenryUsazy','troll-face2000@yandex.com','troll-face2000@yandex.com','Making money in the net is easier now.','Make your money work for you all day long. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-07 20:10:26','2022-06-07 20:10:26',NULL),(297,'HenryUsazy','alex.es@jubiipost.dk','alex.es@jubiipost.dk','One dollar is nothing, but it can grow into $100 here.','Learn how to make hundreds of backs each day. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 02:11:40','2022-06-08 02:11:40',NULL),(298,'HenryUsazy','irena8313@list.ru','irena8313@list.ru','The success formula is found. Learn more about it.','Need money? Earn it without leaving your home. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 05:05:16','2022-06-08 05:05:16',NULL),(299,'HenryUsazy','christians1989@forum.dk','christians1989@forum.dk','Make thousands of bucks. Pay nothing.','The additional income is available for everyone using this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 07:59:29','2022-06-08 07:59:29',NULL),(300,'HenryUsazy','raacemail@forum.dk','raacemail@forum.dk','The online financial Robot is your key to success.','Trust the financial Bot to become rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 10:59:03','2022-06-08 10:59:03',NULL),(301,'HenryUsazy','jenn@mail-online.dk','jenn@mail-online.dk','# 1 financial expert in the net! Check out the new Robot.','We know how to increase your financial stability. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 13:55:46','2022-06-08 13:55:46',NULL),(302,'HenryUsazy','romariom92@mailme.dk','romariom92@mailme.dk','The best online investment tool is found. Learn more!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 16:44:36','2022-06-08 16:44:36',NULL),(303,'HenryUsazy','kokanin@jubiipost.dk','kokanin@jubiipost.dk','Thousands of bucks are guaranteed if you use this robot.','The fastest way to make your wallet thick is found. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 19:35:23','2022-06-08 19:35:23',NULL),(304,'HenryUsazy','jesper.eriksson@hec.ca','jesper.eriksson@hec.ca','The fastest way to make you wallet thick is here.','The best way for everyone who rushes for financial independence. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-08 23:00:15','2022-06-08 23:00:15',NULL),(305,'HenryUsazy','bali76@forum.dk','bali76@forum.dk','Even a child knows how to make money. This robot is what you need!','Check out the newest way to make a fantastic profit. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 01:56:12','2022-06-09 01:56:12',NULL),(306,'HenryUsazy','mathias.jensen@forum.dk','mathias.jensen@forum.dk','The online financial Robot is your key to success.','Earning money in the Internet is easy if you use Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 04:44:34','2022-06-09 04:44:34',NULL),(307,'HenryUsazy','cubelight@forum.dk','cubelight@forum.dk','Even a child knows how to make $100 today with the help of this robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 07:36:53','2022-06-09 07:36:53',NULL),(308,'HenryUsazy','sviske@forum.dk','sviske@forum.dk','Making money in the net is easier now.','One dollar is nothing, but it can grow into $100 here. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 10:41:18','2022-06-09 10:41:18',NULL),(309,'HenryUsazy','89112198999@mailme.dk','89112198999@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Launch the best investment instrument to start making money today. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 13:29:20','2022-06-09 13:29:20',NULL),(310,'HenryUsazy','mrharveypatel02@mailme.dk','mrharveypatel02@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:11:51','2022-06-09 15:11:51',NULL),(311,'HenryUsazy','mrharveypatel02@mailme.dk','mrharveypatel02@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:11:52','2022-06-09 15:11:52',NULL),(312,'HenryUsazy','mrharveypatel02@mailme.dk','mrharveypatel02@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:11:53','2022-06-09 15:11:53',NULL),(313,'HenryUsazy','mrharveypatel02@mailme.dk','mrharveypatel02@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:11:54','2022-06-09 15:11:54',NULL),(314,'HenryUsazy','mrharveypatel02@mailme.dk','mrharveypatel02@mailme.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Thousands of bucks are guaranteed if you use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:11:55','2022-06-09 15:11:55',NULL),(315,'HenryUsazy','fyr21@forum.dk','fyr21@forum.dk','Let the Robot bring you money while you rest.','The financial Robot is your # 1 expert of making money. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:35:08','2022-06-09 15:35:08',NULL),(316,'HenryUsazy','fyr21@forum.dk','fyr21@forum.dk','Let the Robot bring you money while you rest.','The financial Robot is your # 1 expert of making money. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:35:09','2022-06-09 15:35:09',NULL),(317,'HenryUsazy','fyr21@forum.dk','fyr21@forum.dk','Let the Robot bring you money while you rest.','The financial Robot is your # 1 expert of making money. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:35:10','2022-06-09 15:35:10',NULL),(318,'HenryUsazy','fyr21@forum.dk','fyr21@forum.dk','Let the Robot bring you money while you rest.','The financial Robot is your # 1 expert of making money. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:35:11','2022-06-09 15:35:11',NULL),(319,'HenryUsazy','fyr21@forum.dk','fyr21@forum.dk','Let the Robot bring you money while you rest.','The financial Robot is your # 1 expert of making money. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 15:35:13','2022-06-09 15:35:13',NULL),(320,'HenryUsazy','madsholm79@forum.dk','madsholm79@forum.dk','Still not a millionaire? Fix it now!','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 16:02:52','2022-06-09 16:02:52',NULL),(321,'HenryUsazy','madsholm79@forum.dk','madsholm79@forum.dk','Still not a millionaire? Fix it now!','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 16:02:56','2022-06-09 16:02:56',NULL),(322,'HenryUsazy','madsholm79@forum.dk','madsholm79@forum.dk','Still not a millionaire? Fix it now!','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 16:02:59','2022-06-09 16:02:59',NULL),(323,'HenryUsazy','madsholm79@forum.dk','madsholm79@forum.dk','Still not a millionaire? Fix it now!','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 16:03:03','2022-06-09 16:03:03',NULL),(324,'HenryUsazy','madsholm79@forum.dk','madsholm79@forum.dk','Still not a millionaire? Fix it now!','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 16:03:07','2022-06-09 16:03:07',NULL),(325,'HenryUsazy','leamadinanilsson@mail-online.dk','leamadinanilsson@mail-online.dk','This robot will help you to make hundreds of dollars each day.','Your money work even when you sleep. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:03:41','2022-06-09 17:03:41',NULL),(326,'HenryUsazy','leamadinanilsson@mail-online.dk','leamadinanilsson@mail-online.dk','This robot will help you to make hundreds of dollars each day.','Your money work even when you sleep. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:03:42','2022-06-09 17:03:42',NULL),(327,'HenryUsazy','leamadinanilsson@mail-online.dk','leamadinanilsson@mail-online.dk','This robot will help you to make hundreds of dollars each day.','Your money work even when you sleep. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:03:43','2022-06-09 17:03:43',NULL),(328,'HenryUsazy','leamadinanilsson@mail-online.dk','leamadinanilsson@mail-online.dk','This robot will help you to make hundreds of dollars each day.','Your money work even when you sleep. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:03:44','2022-06-09 17:03:44',NULL),(329,'HenryUsazy','leamadinanilsson@mail-online.dk','leamadinanilsson@mail-online.dk','This robot will help you to make hundreds of dollars each day.','Your money work even when you sleep. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:03:46','2022-06-09 17:03:46',NULL),(330,'DavidStipt','e.validatortest@gmail.com','89796143645','Hallo','Прывітанне, я хацеў даведацца Ваш прайс.',0,'0','2022-06-09 17:44:31','2022-06-09 17:44:31',NULL),(331,'HenryUsazy','ira120597@mailme.dk','ira120597@mailme.dk','Earning money in the Internet is easy if you use Robot.','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:57:35','2022-06-09 17:57:35',NULL),(332,'HenryUsazy','ira120597@mailme.dk','ira120597@mailme.dk','Earning money in the Internet is easy if you use Robot.','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:57:36','2022-06-09 17:57:36',NULL),(333,'HenryUsazy','ira120597@mailme.dk','ira120597@mailme.dk','Earning money in the Internet is easy if you use Robot.','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:57:37','2022-06-09 17:57:37',NULL),(334,'HenryUsazy','ira120597@mailme.dk','ira120597@mailme.dk','Earning money in the Internet is easy if you use Robot.','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:57:38','2022-06-09 17:57:38',NULL),(335,'HenryUsazy','ira120597@mailme.dk','ira120597@mailme.dk','Earning money in the Internet is easy if you use Robot.','Make money in the internet using this Bot. It really works! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 17:57:39','2022-06-09 17:57:39',NULL),(336,'HenryUsazy','gradur@forum.dk','gradur@forum.dk','Attention! Financial robot may bring you millions!','Make money 24/7 without any efforts and skills. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 18:44:29','2022-06-09 18:44:29',NULL),(337,'HenryUsazy','gradur@forum.dk','gradur@forum.dk','Attention! Financial robot may bring you millions!','Make money 24/7 without any efforts and skills. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 18:44:30','2022-06-09 18:44:30',NULL),(338,'HenryUsazy','gradur@forum.dk','gradur@forum.dk','Attention! Financial robot may bring you millions!','Make money 24/7 without any efforts and skills. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 18:44:31','2022-06-09 18:44:31',NULL),(339,'HenryUsazy','gradur@forum.dk','gradur@forum.dk','Attention! Financial robot may bring you millions!','Make money 24/7 without any efforts and skills. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 18:44:32','2022-06-09 18:44:32',NULL),(340,'HenryUsazy','gradur@forum.dk','gradur@forum.dk','Attention! Financial robot may bring you millions!','Make money 24/7 without any efforts and skills. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 18:44:33','2022-06-09 18:44:33',NULL),(341,'HenryUsazy','k.vilsted@forum.dk','k.vilsted@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','Using this Robot is the best way to make you rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:06:47','2022-06-09 19:06:47',NULL),(342,'HenryUsazy','k.vilsted@forum.dk','k.vilsted@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','Using this Robot is the best way to make you rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:06:49','2022-06-09 19:06:49',NULL),(343,'HenryUsazy','k.vilsted@forum.dk','k.vilsted@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','Using this Robot is the best way to make you rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:06:50','2022-06-09 19:06:50',NULL),(344,'HenryUsazy','k.vilsted@forum.dk','k.vilsted@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','Using this Robot is the best way to make you rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:06:51','2022-06-09 19:06:51',NULL),(345,'HenryUsazy','k.vilsted@forum.dk','k.vilsted@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','Using this Robot is the best way to make you rich. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:06:52','2022-06-09 19:06:52',NULL),(346,'HenryUsazy','cam6@forum.dk','cam6@forum.dk','Need some more money? Robot will earn them really fast.','Rich people are rich because they use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:35:31','2022-06-09 19:35:31',NULL),(347,'HenryUsazy','cam6@forum.dk','cam6@forum.dk','Need some more money? Robot will earn them really fast.','Rich people are rich because they use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:35:32','2022-06-09 19:35:32',NULL),(348,'HenryUsazy','cam6@forum.dk','cam6@forum.dk','Need some more money? Robot will earn them really fast.','Rich people are rich because they use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:35:33','2022-06-09 19:35:33',NULL),(349,'HenryUsazy','cam6@forum.dk','cam6@forum.dk','Need some more money? Robot will earn them really fast.','Rich people are rich because they use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:35:34','2022-06-09 19:35:34',NULL),(350,'HenryUsazy','cam6@forum.dk','cam6@forum.dk','Need some more money? Robot will earn them really fast.','Rich people are rich because they use this robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 19:35:35','2022-06-09 19:35:35',NULL),(351,'HenryUsazy','nollin@forum.dk','nollin@forum.dk','Make money 24/7 without any efforts and skills.','Have no money? Earn it online. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 20:32:04','2022-06-09 20:32:04',NULL),(352,'HenryUsazy','nollin@forum.dk','nollin@forum.dk','Make money 24/7 without any efforts and skills.','Have no money? Earn it online. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 20:32:05','2022-06-09 20:32:05',NULL),(353,'HenryUsazy','nollin@forum.dk','nollin@forum.dk','Make money 24/7 without any efforts and skills.','Have no money? Earn it online. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 20:32:06','2022-06-09 20:32:06',NULL),(354,'HenryUsazy','nollin@forum.dk','nollin@forum.dk','Make money 24/7 without any efforts and skills.','Have no money? Earn it online. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 20:32:08','2022-06-09 20:32:08',NULL),(355,'HenryUsazy','nollin@forum.dk','nollin@forum.dk','Make money 24/7 without any efforts and skills.','Have no money? Earn it online. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 20:32:09','2022-06-09 20:32:09',NULL),(356,'HenryUsazy','karar20@forum.dk','karar20@forum.dk','Need cash? Launch this robot and see what it can.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:27:10','2022-06-09 21:27:10',NULL),(357,'HenryUsazy','karar20@forum.dk','karar20@forum.dk','Need cash? Launch this robot and see what it can.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:27:11','2022-06-09 21:27:11',NULL),(358,'HenryUsazy','karar20@forum.dk','karar20@forum.dk','Need cash? Launch this robot and see what it can.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:27:12','2022-06-09 21:27:12',NULL),(359,'HenryUsazy','karar20@forum.dk','karar20@forum.dk','Need cash? Launch this robot and see what it can.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:27:13','2022-06-09 21:27:13',NULL),(360,'HenryUsazy','karar20@forum.dk','karar20@forum.dk','Need cash? Launch this robot and see what it can.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:27:18','2022-06-09 21:27:18',NULL),(361,'HenryUsazy','badboy@forum.dk','badboy@forum.dk','Financial robot keeps bringing you money while you sleep.','Start your online work using the financial Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:55:24','2022-06-09 21:55:24',NULL),(362,'HenryUsazy','badboy@forum.dk','badboy@forum.dk','Financial robot keeps bringing you money while you sleep.','Start your online work using the financial Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:55:28','2022-06-09 21:55:28',NULL),(363,'HenryUsazy','badboy@forum.dk','badboy@forum.dk','Financial robot keeps bringing you money while you sleep.','Start your online work using the financial Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:55:30','2022-06-09 21:55:30',NULL),(364,'HenryUsazy','badboy@forum.dk','badboy@forum.dk','Financial robot keeps bringing you money while you sleep.','Start your online work using the financial Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:55:31','2022-06-09 21:55:31',NULL),(365,'HenryUsazy','badboy@forum.dk','badboy@forum.dk','Financial robot keeps bringing you money while you sleep.','Start your online work using the financial Robot. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 21:55:33','2022-06-09 21:55:33',NULL),(366,'HenryUsazy','mrtommy@forum.dk','mrtommy@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:18:02','2022-06-09 22:18:02',NULL),(367,'HenryUsazy','mrtommy@forum.dk','mrtommy@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:18:03','2022-06-09 22:18:03',NULL),(368,'HenryUsazy','mrtommy@forum.dk','mrtommy@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:18:07','2022-06-09 22:18:07',NULL),(369,'HenryUsazy','mrtommy@forum.dk','mrtommy@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:18:09','2022-06-09 22:18:09',NULL),(370,'HenryUsazy','mrtommy@forum.dk','mrtommy@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The online income is your key to success. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:18:10','2022-06-09 22:18:10',NULL),(371,'HenryUsazy','brigs@mail-online.dk','brigs@mail-online.dk','Check out the new financial tool, which can make you rich.','Have no financial skills? Let Robot make money for you. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:45:17','2022-06-09 22:45:17',NULL),(372,'HenryUsazy','brigs@mail-online.dk','brigs@mail-online.dk','Check out the new financial tool, which can make you rich.','Have no financial skills? Let Robot make money for you. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:45:18','2022-06-09 22:45:18',NULL),(373,'HenryUsazy','brigs@mail-online.dk','brigs@mail-online.dk','Check out the new financial tool, which can make you rich.','Have no financial skills? Let Robot make money for you. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:45:19','2022-06-09 22:45:19',NULL),(374,'HenryUsazy','brigs@mail-online.dk','brigs@mail-online.dk','Check out the new financial tool, which can make you rich.','Have no financial skills? Let Robot make money for you. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:45:21','2022-06-09 22:45:21',NULL),(375,'HenryUsazy','brigs@mail-online.dk','brigs@mail-online.dk','Check out the new financial tool, which can make you rich.','Have no financial skills? Let Robot make money for you. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 22:45:23','2022-06-09 22:45:23',NULL),(376,'HenryUsazy','korsef@forum.dk','korsef@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 23:41:24','2022-06-09 23:41:24',NULL),(377,'HenryUsazy','korsef@forum.dk','korsef@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 23:41:26','2022-06-09 23:41:26',NULL),(378,'HenryUsazy','korsef@forum.dk','korsef@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 23:41:27','2022-06-09 23:41:27',NULL),(379,'HenryUsazy','korsef@forum.dk','korsef@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 23:41:28','2022-06-09 23:41:28',NULL),(380,'HenryUsazy','korsef@forum.dk','korsef@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money, not war! Financial Robot is what you need. https://Usazy.blueliners07.de/Usazy',0,'0','2022-06-09 23:41:29','2022-06-09 23:41:29',NULL),(381,'Becky McCarren','rosannebecky339@gmail.com','078 4938 0361','Explainer Video for akkhor.xyz?','Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service, which we feel can benefit your site akkhor.xyz.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian/Canadian accents.\r\nWe can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $239\r\n1-2 minutes = $339\r\n2-3 minutes = $439\r\n\r\n*All prices above are in USD and include an engaging, captivating video with full script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don\'t hesitate to reply.\r\n\r\nKind Regards,\r\nBecky',0,'0','2022-06-10 10:59:08','2022-06-10 10:59:08',NULL),(382,'HenryUsazy','birchspil@forum.dk','birchspil@forum.dk','Launch the financial Bot now to start earning.','Making money is very easy if you use the financial Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-10 13:16:11','2022-06-10 13:16:11',NULL),(383,'HenryUsazy','harveybolton205@mailme.dk','harveybolton205@mailme.dk','# 1 financial expert in the net! Check out the new Robot.','Learn how to make hundreds of backs each day. https://Usazy.coronect.de/Usazy',0,'0','2022-06-10 15:44:59','2022-06-10 15:44:59',NULL),(384,'HenryUsazy','kimchr@forum.dk','kimchr@forum.dk','Financial independence is what everyone needs.','Looking for additional money? Try out the best financial instrument. https://Usazy.coronect.de/Usazy',0,'0','2022-06-10 18:17:37','2022-06-10 18:17:37',NULL),(385,'HenryUsazy','eksennem@forum.dk','eksennem@forum.dk','Financial robot guarantees everyone stability and income.','Making money is very easy if you use the financial Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-10 20:58:35','2022-06-10 20:58:35',NULL),(386,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Strike when the iron’s hot','Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found akkhor.xyz after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://jumboleadmagnet.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-10 21:46:26','2022-06-10 21:46:26',NULL),(387,'HenryUsazy','kinkybamse@forum.dk','kinkybamse@forum.dk','Need money? Get it here easily?','Robot is the best way for everyone who looks for financial independence. https://Usazy.coronect.de/Usazy',0,'0','2022-06-10 23:38:46','2022-06-10 23:38:46',NULL),(388,'HenryUsazy','www.kludedukke2@forum.dk','www.kludedukke2@forum.dk','Earning $1000 a day is easy if you use this financial Robot.','We have found the fastest way to be rich. Find it out here. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 02:20:58','2022-06-11 02:20:58',NULL),(389,'HenryUsazy','dba.lene@forum.dk','dba.lene@forum.dk','Have no money? It’s easy to earn them online here.','The online job can bring you a fantastic profit. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 05:01:09','2022-06-11 05:01:09',NULL),(390,'HenryUsazy','bloodoblivion777@inbox.ru','bloodoblivion777@inbox.ru','Wow! This Robot is a great start for an online career.','Check out the newest way to make a fantastic profit. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 07:41:00','2022-06-11 07:41:00',NULL),(391,'HenryUsazy','iren853@mailme.dk','iren853@mailme.dk','Using this Robot is the best way to make you rich.','Make thousands of bucks. Financial robot will help you to do it! https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 10:19:24','2022-06-11 10:19:24',NULL),(392,'HenryUsazy','mikem19817@forum.dk','mikem19817@forum.dk','The online income is the easiest ways to make you dream come true.','Make thousands every week working online here. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 12:52:45','2022-06-11 12:52:45',NULL),(393,'Penni','kumiko.hatfield@eu.optoisolate.com','01.21.49.44.52','Welcome To Akkhor.xyz','New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: https://fashiondaily.shop\r\n\r\nSincerely, \r\n\r\nPenni\r\nWelcome To Akkhor.xyz',0,'0','2022-06-11 12:59:17','2022-06-11 12:59:17',NULL),(394,'Kendrick Easterby','kendrick.easterby6@gmail.com','091 546 99 98','Cryptocurrency: How a bot can make you $12,000 daily','Hi there,\r\n\r\nHave you ever wondered why new tokens listed on Uniswap, Pancakeswap or any decentralized exchange are always subject to insane price volatility?\r\n\r\nDid you know that front running bots have been dominating the market and profiting due to that?\r\n\r\nCheck out our new Youtube video for a free and detailed tutorial on how to deploy your own front running bot:\r\nhttps://youtu.be/SQHFveYdjV8\r\n\r\nKind Regards,\r\nKendrick',0,'0','2022-06-11 15:25:30','2022-06-11 15:25:30',NULL),(395,'HenryUsazy','vorovchenko76@mail.ru','vorovchenko76@mail.ru','Need money? The financial robot is your solution.','Wow! This is a fastest way for a financial independence. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 15:38:44','2022-06-11 15:38:44',NULL),(396,'HenryUsazy','molle20@forum.dk','molle20@forum.dk','Every your dollar can turn into $100 after you lunch this Robot.','Let the financial Robot be your companion in the financial market. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 18:19:27','2022-06-11 18:19:27',NULL),(397,'HenryUsazy','vikingen123@forum.dk','vikingen123@forum.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Looking forward for income? Get it online. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 20:59:21','2022-06-11 20:59:21',NULL),(398,'HenryUsazy','ad77@jubiipost.dk','ad77@jubiipost.dk','The huge income without investments is available, now!','Just one click can turn you dollar into $1000. https://Usazy.coronect.de/Usazy',0,'0','2022-06-11 23:39:44','2022-06-11 23:39:44',NULL),(399,'HenryUsazy','jesper1977@forum.dk','jesper1977@forum.dk','Wow! This is a fastest way for a financial independence.','This robot will help you to make hundreds of dollars each day. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 02:19:36','2022-06-12 02:19:36',NULL),(400,'HenryUsazy','gamemaster@forum.dk','gamemaster@forum.dk','Need money? Get it here easily! Just press this to launch the robot.','The best online investment tool is found. Learn more! https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 04:58:42','2022-06-12 04:58:42',NULL),(401,'HenryUsazy','storfangeren@forum.dk','storfangeren@forum.dk','Let your money grow into the capital with this Robot.','Launch the robot and let it bring you money. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 07:41:29','2022-06-12 07:41:29',NULL),(402,'HenryUsazy','inaiaracosta@mailme.dk','inaiaracosta@mailme.dk','The fastest way to make your wallet thick is found.','Even a child knows how to make $100 today. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 10:22:14','2022-06-12 10:22:14',NULL),(403,'HenryUsazy','stinaand@forum.dk','stinaand@forum.dk','Even a child knows how to make money. This robot is what you need!','The huge income without investments is available. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 13:20:57','2022-06-12 13:20:57',NULL),(404,'HenryUsazy','erikc@forum.dk','erikc@forum.dk','Looking forward for income? Get it online.','The fastest way to make your wallet thick is found. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 15:59:59','2022-06-12 15:59:59',NULL),(405,'HenryUsazy','runeholmjensenzlsak@mailme.dk','runeholmjensenzlsak@mailme.dk','Looking for additional money? Try out the best financial instrument.','Make thousands of bucks. Pay nothing. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 18:40:46','2022-06-12 18:40:46',NULL),(406,'DavidStipt','evalid.ator.test@gmail.com','86951168365','Aloha','Hi, ego volo scire vestri pretium.',0,'0','2022-06-12 19:34:01','2022-06-12 19:34:01',NULL),(407,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Try this, get more leads','Hi, my name is Eric and I’m betting you’d like your website akkhor.xyz to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at akkhor.xyz.\r\n\r\nTalk With Web Visitor – CLICK HERE https://jumboleadmagnet.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-12 19:39:00','2022-06-12 19:39:00',NULL),(408,'HenryUsazy','np@forum.dk','np@forum.dk','We know how to make our future rich and do you?','Have no financial skills? Let Robot make money for you. https://Usazy.coronect.de/Usazy',0,'0','2022-06-12 21:41:46','2022-06-12 21:41:46',NULL),(409,'HenryUsazy','thorsen@mail-online.dk','thorsen@mail-online.dk','The online financial Robot is your key to success.','Even a child knows how to make money. This robot is what you need! https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 00:21:31','2022-06-13 00:21:31',NULL),(410,'HenryUsazy','jonathandaly45@mailme.dk','jonathandaly45@mailme.dk','Need money? Get it here easily?','Watch your money grow while you invest with the Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 03:02:48','2022-06-13 03:02:48',NULL),(411,'DavidStipt','evalidator.test@gmail.com','83265575646','Aloha','Hi, I wanted to know your price.',0,'0','2022-06-13 03:30:24','2022-06-13 03:30:24',NULL),(412,'HenryUsazy','kras@mailme.dk','kras@mailme.dk','Let the financial Robot be your companion in the financial market.','One dollar is nothing, but it can grow into $100 here. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 05:41:17','2022-06-13 05:41:17',NULL),(413,'HenryUsazy','emilvalentin@forum.dk','emilvalentin@forum.dk','Even a child knows how to make $100 today.','Start making thousands of dollars every week. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 08:20:57','2022-06-13 08:20:57',NULL),(414,'HenryUsazy','cecilie-molgaard@mailme.dk','cecilie-molgaard@mailme.dk','Even a child knows how to make $100 today with the help of this robot.','Still not a millionaire? Fix it now! https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 11:00:54','2022-06-13 11:00:54',NULL),(415,'HenryUsazy','goldierap@forum.dk','goldierap@forum.dk','Make thousands every week working online here.','No need to stay awake all night long to earn money. Launch the robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 13:33:06','2022-06-13 13:33:06',NULL),(416,'HenryUsazy','kengryberg@forum.dk','kengryberg@forum.dk','Start making thousands of dollars every week.','Let the Robot bring you money while you rest. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 16:22:49','2022-06-13 16:22:49',NULL),(417,'HenryUsazy','pibes@forum.dk','pibes@forum.dk','Financial independence is what this robot guarantees.','Financial Robot is #1 investment tool ever. Launch it! https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 19:04:06','2022-06-13 19:04:06',NULL),(418,'HenryUsazy','mashal5@forum.dk','mashal5@forum.dk','Make your money work for you all day long.','No need to work anymore. Just launch the robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-13 21:43:41','2022-06-13 21:43:41',NULL),(419,'HenryUsazy','ira-kazan@mailme.dk','ira-kazan@mailme.dk','Launch the financial Bot now to start earning.','Join the society of successful people who make money here. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 00:23:58','2022-06-14 00:23:58',NULL),(420,'HenryUsazy','plastmand@forum.dk','plastmand@forum.dk','Financial independence is what this robot guarantees.','This robot will help you to make hundreds of dollars each day. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 03:00:57','2022-06-14 03:00:57',NULL),(421,'HenryUsazy','blobbert@mailme.dk','blobbert@mailme.dk','Making money can be extremely easy if you use this Robot.','Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 05:43:15','2022-06-14 05:43:15',NULL),(422,'HenryUsazy','signe90@forum.dk','signe90@forum.dk','There is no need to look for a job anymore. Work online.','Try out the best financial robot in the Internet. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 08:23:18','2022-06-14 08:23:18',NULL),(423,'HenryUsazy','irina.dat4encko@mailme.dk','irina.dat4encko@mailme.dk','Everyone can earn as much as he wants suing this Bot.','Making money can be extremely easy if you use this Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 11:03:15','2022-06-14 11:03:15',NULL),(424,'HenryUsazy','glodeva77@mailme.dk','glodeva77@mailme.dk','Let the Robot bring you money while you rest.','Making money is very easy if you use the financial Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 13:44:10','2022-06-14 13:44:10',NULL),(425,'HenryUsazy','jepsenroskilde@forum.dk','jepsenroskilde@forum.dk','Join the society of successful people who make money here.','The success formula is found. Learn more about it. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 16:43:43','2022-06-14 16:43:43',NULL),(426,'HenryUsazy','olja@forum.dk','olja@forum.dk','The additional income for everyone.','Make money in the internet using this Bot. It really works! https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 19:25:17','2022-06-14 19:25:17',NULL),(427,'HenryUsazy','duhart@mailme.dk','duhart@mailme.dk','Thousands of bucks are guaranteed if you use this robot.','Launch the robot and let it bring you money. https://Usazy.coronect.de/Usazy',0,'0','2022-06-14 22:03:18','2022-06-14 22:03:18',NULL),(428,'HenryUsazy','mb_s@forum.dk','mb_s@forum.dk','Make dollars just sitting home.','Start making thousands of dollars every week. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 01:04:21','2022-06-15 01:04:21',NULL),(429,'HenryUsazy','kitmam@forum.dk','kitmam@forum.dk','Feel free to buy everything you want with the additional income.','The online job can bring you a fantastic profit. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 03:44:35','2022-06-15 03:44:35',NULL),(430,'HenryUsazy','lonejuhl@forum.dk','lonejuhl@forum.dk','Financial independence is what this robot guarantees.','Let your money grow into the capital with this Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 07:00:53','2022-06-15 07:00:53',NULL),(431,'HenryUsazy','m.ibsen@forum.dk','m.ibsen@forum.dk','Most successful people already use Robot. Do you?','Making money in the net is easier now. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 09:49:27','2022-06-15 09:49:27',NULL),(432,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Strike when the iron’s hot','Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found akkhor.xyz after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://talkwithwebtraffic.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://talkwithwebtraffic.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebtraffic.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-15 11:07:31','2022-06-15 11:07:31',NULL),(433,'HenryUsazy','kinga@forum.dk','kinga@forum.dk','Making money in the net is easier now.','Need some more money? Robot will earn them really fast. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 12:23:54','2022-06-15 12:23:54',NULL),(434,'HenryUsazy','skalsallan@mail-online.dk','skalsallan@mail-online.dk','It is the best time to launch the Robot to get more money.','Check out the new financial tool, which can make you rich. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 14:57:10','2022-06-15 14:57:10',NULL),(435,'HenryUsazy','mikk5296@forum.dk','mikk5296@forum.dk','Make your money work for you all day long.','# 1 financial expert in the net! Check out the new Robot. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 17:44:31','2022-06-15 17:44:31',NULL),(436,'HenryUsazy','andreirakhmanov@mailme.dk','andreirakhmanov@mailme.dk','Trust your dollar to the Robot and see how it grows to $100.','Make thousands of bucks. Pay nothing. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 20:26:58','2022-06-15 20:26:58',NULL),(437,'HenryUsazy','inzotova@mailme.dk','inzotova@mailme.dk','Provide your family with the money in age. Launch the Robot!','The online financial Robot is your key to success. https://Usazy.coronect.de/Usazy',0,'0','2022-06-15 23:04:18','2022-06-15 23:04:18',NULL),(438,'HenryUsazy','karina.jensen@jubiipost.dk','karina.jensen@jubiipost.dk','Every your dollar can turn into $100 after you lunch this Robot.','Financial robot is a great way to manage and increase your income. https://Usazy.coronect.de/Usazy',0,'0','2022-06-16 01:29:15','2022-06-16 01:29:15',NULL),(439,'HenryUsazy','292570992@mailme.dk','292570992@mailme.dk','No need to work anymore while you have the Robot launched!','We know how to make our future rich and do you? https://Usazy.coronect.de/Usazy',0,'0','2022-06-16 04:26:07','2022-06-16 04:26:07',NULL),(440,'HenryUsazy','eheyhey@forum.dk','eheyhey@forum.dk','Making money in the net is easier now.','Check out the newest way to make a fantastic profit. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 07:06:44','2022-06-16 07:06:44',NULL),(441,'HenryUsazy','borya_dmitri@mailme.dk','borya_dmitri@mailme.dk','Make dollars staying at home and launched this Bot.','Making money in the net is easier now. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 09:44:56','2022-06-16 09:44:56',NULL),(442,'HenryUsazy','uandpriv@forum.dk','uandpriv@forum.dk','Join the society of successful people who make money here.','Have no money? Earn it online. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 12:26:51','2022-06-16 12:26:51',NULL),(443,'Eric Jones','eric.jones.z.mail@gmail.com','555-555-1212','Your site – more leads?','Hey, this is Eric and I ran across akkhor.xyz a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=akkhor.xyz',0,'0','2022-06-16 13:41:41','2022-06-16 13:41:41',NULL),(444,'HenryUsazy','mroemer@mailme.dk','mroemer@mailme.dk','Financial robot is your success formula is found. Learn more about it.','Online Bot will bring you wealth and satisfaction. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 15:07:05','2022-06-16 15:07:05',NULL),(445,'HenryUsazy','mhjkrim@forum.dk','mhjkrim@forum.dk','Automatic robot is the best start for financial independence.','Let the financial Robot be your companion in the financial market. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 17:46:42','2022-06-16 17:46:42',NULL),(446,'HenryUsazy','frederik_meyer@forum.dk','frederik_meyer@forum.dk','Financial Robot is #1 investment tool ever. Launch it!','Make money 24/7 without any efforts and skills. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 20:25:38','2022-06-16 20:25:38',NULL),(447,'HenryUsazy','christianskov@forum.dk','christianskov@forum.dk','Making money in the net is easier now.','Make money 24/7 without any efforts and skills. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-16 23:08:01','2022-06-16 23:08:01',NULL),(448,'HenryUsazy','hghayes@mailme.dk','hghayes@mailme.dk','One dollar is nothing, but it can grow into $100 here.','Automatic robot is the best start for financial independence. https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-17 01:47:23','2022-06-17 01:47:23',NULL),(449,'Dana','sd@dinconsultants.com','0731 14 90 50','Welcome To Akkhor.xyz','Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  https://magicmat.biz\r\n\r\nThank You, \r\n \r\nDana',0,'0','2022-06-17 02:23:52','2022-06-17 02:23:52',NULL),(450,'HenryUsazy','mjmjchristineg21slitchsbaby69cnmnmc@mailme.dk','mjmjchristineg21slitchsbaby69cnmnmc@mailme.dk','Launch the best investment instrument to start making money today.','Make thousands of bucks. Financial robot will help you to do it! https://Usazy.bode-roesch.de/Usazy',0,'0','2022-06-17 04:23:32','2022-06-17 04:23:32',NULL),(451,'HenryUsazy','fkerh@forum.dk','fkerh@forum.dk','The fastest way to make you wallet thick is here.','Robot is the best solution for everyone who wants to earn. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 06:54:41','2022-06-17 06:54:41',NULL),(452,'HenryUsazy','hvasaa@forum.dk','hvasaa@forum.dk','Make $1000 from $1 in a few minutes. Launch the financial robot now.','Buy everything you want earning money online. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 09:21:50','2022-06-17 09:21:50',NULL),(453,'HenryUsazy','animeclub@forum.dk','animeclub@forum.dk','Financial robot is a great way to manage and increase your income.','Provide your family with the money in age. Launch the Robot! https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 12:07:13','2022-06-17 12:07:13',NULL),(454,'HenryUsazy','art1deni1@mailme.dk','art1deni1@mailme.dk','The online income is the easiest ways to make you dream come true.','Need money? Earn it without leaving your home. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 14:36:03','2022-06-17 14:36:03',NULL),(455,'HenryUsazy','michelle88@forum.dk','michelle88@forum.dk','Still not a millionaire? Fix it now!','The huge income without investments is available. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 17:08:24','2022-06-17 17:08:24',NULL),(456,'HenryUsazy','12345@mailme.dk','12345@mailme.dk','Let the financial Robot be your companion in the financial market.','Launch the financial Robot and do your business. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 19:47:18','2022-06-17 19:47:18',NULL),(457,'HenryUsazy','mh93@jubiipost.dk','mh93@jubiipost.dk','Try out the best financial robot in the Internet.','Make your money work for you all day long. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-17 22:06:00','2022-06-17 22:06:00',NULL),(458,'HenryUsazy','oernum@jubiipost.dk','oernum@jubiipost.dk','Robot is the best solution for everyone who wants to earn.','Try out the automatic robot to keep earning all day long. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 00:47:00','2022-06-18 00:47:00',NULL),(459,'HenryUsazy','tulletomat@forum.dk','tulletomat@forum.dk','Buy everything you want earning money online.','No need to work anymore. Just launch the robot. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 03:22:50','2022-06-18 03:22:50',NULL),(460,'HenryUsazy','monajn@forum.dk','monajn@forum.dk','Make thousands of bucks. Financial robot will help you to do it!','Need some more money? Robot will earn them really fast. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 05:52:34','2022-06-18 05:52:34',NULL),(461,'HenryUsazy','atc75@forum.dk','atc75@forum.dk','Have no financial skills? Let Robot make money for you.','Making money is very easy if you use the financial Robot. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 08:21:26','2022-06-18 08:21:26',NULL),(462,'HenryUsazy','sejemikkelmus@forum.dk','sejemikkelmus@forum.dk','No need to work anymore. Just launch the robot.','Make thousands every week working online here. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 10:47:41','2022-06-18 10:47:41',NULL),(463,'HenryUsazy','stefan.sonnichsen@jubiipost.dk','stefan.sonnichsen@jubiipost.dk','No need to worry about the future if your use this financial robot.','Trust the financial Bot to become rich. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 13:44:55','2022-06-18 13:44:55',NULL),(464,'HenryUsazy','shadycrow@mailme.dk','shadycrow@mailme.dk','Start making thousands of dollars every week just using this robot.','The success formula is found. Learn more about it. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 16:28:58','2022-06-18 16:28:58',NULL),(465,'HenryUsazy','bentgamer1@forum.dk','bentgamer1@forum.dk','Looking for an easy way to make money? Check out the financial robot.','Make money in the internet using this Bot. It really works! https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 18:48:27','2022-06-18 18:48:27',NULL),(466,'HenryUsazy','eko69@forum.dk','eko69@forum.dk','Make money 24/7 without any efforts and skills.','Looking forward for income? Get it online. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-18 21:29:51','2022-06-18 21:29:51',NULL),(467,'HenryUsazy','lion.7@forum.dk','lion.7@forum.dk','Earn additional money without efforts and skills.','Financial robot is the best companion of rich people. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 00:09:04','2022-06-19 00:09:04',NULL),(468,'HenryUsazy','klarnu1@forum.dk','klarnu1@forum.dk','One click of the robot can bring you thousands of bucks.','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 02:37:35','2022-06-19 02:37:35',NULL),(469,'HenryUsazy','enigma_m50@forum.dk','enigma_m50@forum.dk','Make thousands of bucks. Financial robot will help you to do it!','The financial Robot works for you even when you sleep. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 05:05:28','2022-06-19 05:05:28',NULL),(470,'HenryUsazy','stine.dissing-andersen@jubiipost.dk','stine.dissing-andersen@jubiipost.dk','Make money online, staying at home this cold winter.','Buy everything you want earning money online. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 07:48:15','2022-06-19 07:48:15',NULL),(471,'HenryUsazy','isel@forum.dk','isel@forum.dk','See how Robot makes $1000 from $1 of investment.','Even a child knows how to make money. Do you? https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 10:28:40','2022-06-19 10:28:40',NULL),(472,'HenryUsazy','irina.dm2012@mailme.dk','irina.dm2012@mailme.dk','The additional income for everyone.','Online job can be really effective if you use this Robot. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 13:08:03','2022-06-19 13:08:03',NULL),(473,'HenryUsazy','jettmus@jubiipost.dk','jettmus@jubiipost.dk','Make your computer to be you earning instrument.','Need some more money? Robot will earn them really fast. https://Usazy.fannyberlin.se/Usazy',0,'0','2022-06-19 15:33:55','2022-06-19 15:33:55',NULL),(474,'HenryUsazy','kennethh@forum.dk','kennethh@forum.dk','The additional income is available for everyone using this robot.','Everyone who needs money should try this Robot out. https://fannyberlin.se/Usazy',0,'0','2022-06-19 18:51:18','2022-06-19 18:51:18',NULL),(475,'HenryUsazy','mickyhvid@mail-online.dk','mickyhvid@mail-online.dk','Your money keep grow 24/7 if you use the financial Robot.','Check out the newest way to make a fantastic profit. https://Usazy.compras2u.es/Usazy',0,'0','2022-06-19 21:32:06','2022-06-19 21:32:06',NULL),(476,'HenryUsazy','shaxdl@mailme.dk','shaxdl@mailme.dk','Make money, not war! Financial Robot is what you need.','Start making thousands of dollars every week. https://fannyberlin.se/Usazy',0,'0','2022-06-20 00:13:26','2022-06-20 00:13:26',NULL),(477,'Isabellapt','isabellapt@gmail.com','isabellapt@gmail.com','Ι\'m lookіng for ѕerіоus man!..','Неllo all, guyѕ! I know, my mеѕѕage maу be too spеcifіс,\r\nBut mу sіster fоund nіce mаn hеrе аnd thеу marrіеd, sо hоw аbout mе?ǃ :)\r\nI am 27 уears old, Ιѕabella, from Romanіа, I know Εnglіѕh and German lаnguаges аlѕo\r\nАnd... Ι hаve spеcifiс diѕеаѕe, namеd nymphоmаniа. Ԝho know whаt is thіs, саn underѕtand me (bеttеr tо sау іt immеdiаtеly)\r\nΑh yes, Ι cооk vеry taѕtу! and Ι lоvе nоt оnlу соok ;))\r\nIm reаl girl, not prostitute, аnd lookіng for sеriouѕ аnd hоt relаtіоnѕhip...\r\nАnуwау, yоu саn find mу рrоfіle hеre: http://moonscomrocate.ga/user/91045/',0,'0','2022-06-20 01:44:00','2022-06-20 01:44:00',NULL),(478,'HenryUsazy','giveninstinkt@hotmail.com','giveninstinkt@hotmail.com','Find out about the fastest way for a financial independence.','Need money? Get it here easily! Just press this to launch the robot. https://Usazy.borisvonsmercek.de/Usazy',0,'0','2022-06-20 02:51:56','2022-06-20 02:51:56',NULL),(479,'HenryUsazy','mayze_@mail-online.dk','mayze_@mail-online.dk','Need cash? Launch this robot and see what it can.','The best online investment tool is found. Learn more! https://Usazy.collectif-hameb.fr/Usazy',0,'0','2022-06-20 05:32:27','2022-06-20 05:32:27',NULL),(480,'HenryUsazy','joergendan@forum.dk','joergendan@forum.dk','The additional income is available for everyone using this robot.','Everyone can earn as much as he wants now. https://amalgamas.es/Usazy',0,'0','2022-06-20 08:01:10','2022-06-20 08:01:10',NULL),(481,'HenryUsazy','rubelanatolii@mailme.dk','rubelanatolii@mailme.dk','Make money online, staying at home this cold winter.','Your money keep grow 24/7 if you use the financial Robot. https://Usazy.baleti-design.fr/Usazy',0,'0','2022-06-20 10:31:14','2022-06-20 10:31:14',NULL),(482,'HenryUsazy','iss_kenya198@forum.dk','iss_kenya198@forum.dk','Make yourself rich in future using this financial robot.','Watch your money grow while you invest with the Robot. https://Usazy.amalgamas.es/Usazy',0,'0','2022-06-20 13:32:43','2022-06-20 13:32:43',NULL),(483,'HenryUsazy','abolin-ura@mailme.dk','abolin-ura@mailme.dk','Need cash? Launch this robot and see what it can.','Make your money work for you all day long. https://Usazy.baleti-design.fr/Usazy',0,'0','2022-06-20 16:12:20','2022-06-20 16:12:20',NULL),(484,'HenryUsazy','benjaminc@forum.dk','benjaminc@forum.dk','Check out the newest way to make a fantastic profit.','Make your laptop a financial instrument with this program. https://Usazy.amalgamas.es/Usazy',0,'0','2022-06-20 18:44:36','2022-06-20 18:44:36',NULL),(485,'HenryUsazy','emarikoda@mailme.dk','emarikoda@mailme.dk','Everyone who needs money should try this Robot out.','Earn additional money without efforts. https://Usazy.amalgamas.es/Usazy',0,'0','2022-06-20 21:33:54','2022-06-20 21:33:54',NULL),(486,'HenryUsazy','brc@mail-online.dk','brc@mail-online.dk','Make money in the internet using this Bot. It really works!','Find out about the fastest way for a financial independence. https://collectif-hameb.fr/Usazy',0,'0','2022-06-21 00:13:00','2022-06-21 00:13:00',NULL),(487,'HenryUsazy','liderligtv@forum.dk','liderligtv@forum.dk','The online income is your key to success.','Need some more money? Robot will earn them really fast. https://Usazy.amalgamas.es/Usazy',0,'0','2022-06-21 02:51:47','2022-06-21 02:51:47',NULL),(488,'HenryUsazy','laura10@forum.dk','laura10@forum.dk','Thousands of bucks are guaranteed if you use this robot.','Make thousands of bucks. Financial robot will help you to do it! https://Usazy.amalgamas.es/Usazy',0,'0','2022-06-21 05:14:10','2022-06-21 05:14:10',NULL),(489,'HenryUsazy','m2ffu@yandex.ru','m2ffu@yandex.ru','Thousands of bucks are guaranteed if you use this robot.','See how Robot makes $1000 from $1 of investment. https://Usazy.baleti-design.fr/Usazy',0,'0','2022-06-21 07:54:15','2022-06-21 07:54:15',NULL),(490,'HenryUsazy','lavernetemyqde@coremail.ru','lavernetemyqde@coremail.ru','The additional income is available for everyone using this robot.','Check out the automatic Bot, which works for you 24/7. http://go.afalobo.com/0ide',0,'0','2022-06-21 10:32:49','2022-06-21 10:32:49',NULL),(491,'HenryUsazy','rpzbhsa@aol.com','rpzbhsa@aol.com','Make dollars staying at home and launched this Bot.','Make money 24/7 without any efforts and skills. http://go.afalobo.com/0ide',0,'0','2022-06-21 13:12:22','2022-06-21 13:12:22',NULL),(492,'HenryUsazy','isabellabond@inbox.ru','isabellabond@inbox.ru','Need money? The financial robot is your solution.','No need to stay awake all night long to earn money. Launch the robot. http://go.afalobo.com/0ide',0,'0','2022-06-21 15:52:07','2022-06-21 15:52:07',NULL),(493,'HenryUsazy','marshevaanfisa4@gmail.com','marshevaanfisa4@gmail.com','Even a child knows how to make money. Do you?','Trust your dollar to the Robot and see how it grows to $100. http://go.afalobo.com/0ide',0,'0','2022-06-21 18:34:38','2022-06-21 18:34:38',NULL),(494,'HenryUsazy','huangi@gmail.com','huangi@gmail.com','Financial independence is what this robot guarantees.','Your computer can bring you additional income if you use this Robot. http://go.afalobo.com/0ide',0,'0','2022-06-21 21:14:46','2022-06-21 21:14:46',NULL),(495,'HenryUsazy','kotagepitiya@gmail.com','kotagepitiya@gmail.com','The additional income for everyone.','Even a child knows how to make money. This robot is what you need! http://go.afalobo.com/0ide',0,'0','2022-06-21 23:44:01','2022-06-21 23:44:01',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$','USD','1',1,NULL,'2021-06-27 13:39:37'),(2,'BDT','৳','BDT','84',1,NULL,'2021-07-06 11:52:58'),(3,'Indian Rupi','₹','INR','60',1,'2020-10-15 17:23:04','2021-06-04 18:26:38'),(4,'Euro','€','EUR','100',1,'2021-05-25 21:00:23','2021-06-04 18:25:29'),(5,'YEN','¥','JPY','110',1,'2021-06-10 22:08:31','2021-06-26 14:21:10'),(6,'Ringgit','RM','MYR','4.16',1,'2021-07-03 11:08:33','2021-07-03 11:10:37'),(7,'Rand','R','ZAR','14.26',1,'2021-07-03 11:12:38','2021-07-03 11:12:42');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallet_histories`
--

DROP TABLE IF EXISTS `customer_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_wallet_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallet_histories`
--

LOCK TABLES `customer_wallet_histories` WRITE;
/*!40000 ALTER TABLE `customer_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallets`
--

DROP TABLE IF EXISTS `customer_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `royality_points` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallets`
--

LOCK TABLES `customer_wallets` WRITE;
/*!40000 ALTER TABLE `customer_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_of_the_days`
--

DROP TABLE IF EXISTS `deal_of_the_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deal_of_the_days` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_of_the_days`
--

LOCK TABLES `deal_of_the_days` WRITE;
/*!40000 ALTER TABLE `deal_of_the_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_of_the_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_histories`
--

LOCK TABLES `delivery_histories` WRITE;
/*!40000 ALTER TABLE `delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_men` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_men_phone_unique` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
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
-- Table structure for table `feature_deals`
--

DROP TABLE IF EXISTS `feature_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_deals`
--

LOCK TABLES `feature_deals` WRITE;
/*!40000 ALTER TABLE `feature_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deal_products`
--

DROP TABLE IF EXISTS `flash_deal_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flash_deal_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deal_products`
--

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flash_deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deals`
--

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topics`
--

DROP TABLE IF EXISTS `help_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_topics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topics`
--

LOCK TABLES `help_topics` WRITE;
/*!40000 ALTER TABLE `help_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_09_08_105159_create_admins_table',1),(5,'2020_09_08_111837_create_admin_roles_table',1),(6,'2020_09_16_142451_create_categories_table',2),(7,'2020_09_16_181753_create_categories_table',3),(8,'2020_09_17_134238_create_brands_table',4),(9,'2020_09_17_203054_create_attributes_table',5),(10,'2020_09_19_112509_create_coupons_table',6),(11,'2020_09_19_161802_create_curriencies_table',7),(12,'2020_09_20_114509_create_sellers_table',8),(13,'2020_09_23_113454_create_shops_table',9),(14,'2020_09_23_115615_create_shops_table',10),(15,'2020_09_23_153822_create_shops_table',11),(16,'2020_09_21_122817_create_products_table',12),(17,'2020_09_22_140800_create_colors_table',12),(18,'2020_09_28_175020_create_products_table',13),(19,'2020_09_28_180311_create_products_table',14),(20,'2020_10_04_105041_create_search_functions_table',15),(21,'2020_10_05_150730_create_customers_table',15),(22,'2020_10_08_133548_create_wishlists_table',16),(23,'2016_06_01_000001_create_oauth_auth_codes_table',17),(24,'2016_06_01_000002_create_oauth_access_tokens_table',17),(25,'2016_06_01_000003_create_oauth_refresh_tokens_table',17),(26,'2016_06_01_000004_create_oauth_clients_table',17),(27,'2016_06_01_000005_create_oauth_personal_access_clients_table',17),(28,'2020_10_06_133710_create_product_stocks_table',17),(29,'2020_10_06_134636_create_flash_deals_table',17),(30,'2020_10_06_134719_create_flash_deal_products_table',17),(31,'2020_10_08_115439_create_orders_table',17),(32,'2020_10_08_115453_create_order_details_table',17),(33,'2020_10_08_121135_create_shipping_addresses_table',17),(34,'2020_10_10_171722_create_business_settings_table',17),(35,'2020_09_19_161802_create_currencies_table',18),(36,'2020_10_12_152350_create_reviews_table',18),(37,'2020_10_12_161834_create_reviews_table',19),(38,'2020_10_12_180510_create_support_tickets_table',20),(39,'2020_10_14_140130_create_transactions_table',21),(40,'2020_10_14_143553_create_customer_wallets_table',21),(41,'2020_10_14_143607_create_customer_wallet_histories_table',21),(42,'2020_10_22_142212_create_support_ticket_convs_table',21),(43,'2020_10_24_234813_create_banners_table',22),(44,'2020_10_27_111557_create_shipping_methods_table',23),(45,'2020_10_27_114154_add_url_to_banners_table',24),(46,'2020_10_28_170308_add_shipping_id_to_order_details',25),(47,'2020_11_02_140528_add_discount_to_order_table',26),(48,'2020_11_03_162723_add_column_to_order_details',27),(49,'2020_11_08_202351_add_url_to_banners_table',28),(50,'2020_11_10_112713_create_help_topic',29),(51,'2020_11_10_141513_create_contacts_table',29),(52,'2020_11_15_180036_add_address_column_user_table',30),(53,'2020_11_18_170209_add_status_column_to_product_table',31),(54,'2020_11_19_115453_add_featured_status_product',32),(55,'2020_11_21_133302_create_deal_of_the_days_table',33),(56,'2020_11_20_172332_add_product_id_to_products',34),(57,'2020_11_27_234439_add__state_to_shipping_addresses',34),(58,'2020_11_28_091929_create_chattings_table',35),(59,'2020_12_02_011815_add_bank_info_to_sellers',36),(60,'2020_12_08_193234_create_social_medias_table',37),(61,'2020_12_13_122649_shop_id_to_chattings',37),(62,'2020_12_14_145116_create_seller_wallet_histories_table',38),(63,'2020_12_14_145127_create_seller_wallets_table',38),(64,'2020_12_15_174804_create_admin_wallets_table',39),(65,'2020_12_15_174821_create_admin_wallet_histories_table',39),(66,'2020_12_15_214312_create_feature_deals_table',40),(67,'2020_12_17_205712_create_withdraw_requests_table',41),(68,'2021_02_22_161510_create_notifications_table',42),(69,'2021_02_24_154706_add_deal_type_to_flash_deals',43),(70,'2021_03_03_204349_add_cm_firebase_token_to_users',44),(71,'2021_04_17_134848_add_column_to_order_details_stock',45),(72,'2021_05_12_155401_add_auth_token_seller',46),(73,'2021_06_03_104531_ex_rate_update',47),(74,'2021_06_03_222413_amount_withdraw_req',48),(75,'2021_06_04_154501_seller_wallet_withdraw_bal',49),(76,'2021_06_04_195853_product_dis_tax',50),(77,'2021_05_27_103505_create_product_translations_table',51),(78,'2021_06_17_054551_create_soft_credentials_table',51),(79,'2021_06_29_212549_add_active_col_user_table',52),(80,'2021_06_30_212619_add_col_to_contact',53),(81,'2021_07_01_160828_add_col_daily_needs_products',54),(82,'2021_07_04_182331_add_col_seller_sales_commission',55),(83,'2021_08_07_190655_add_seo_columns_to_products',56),(84,'2021_08_07_205913_add_col_to_category_table',56),(85,'2021_08_07_210808_add_col_to_shops_table',56),(86,'2021_08_14_205216_change_product_price_col_type',56),(87,'2021_08_16_201505_change_order_price_col',56),(88,'2021_08_16_201552_change_order_details_price_col',56),(89,'2019_09_29_154000_create_payment_cards_table',57),(90,'2021_08_17_213934_change_col_type_seller_earning_history',57),(91,'2021_08_17_214109_change_col_type_admin_earning_history',57),(92,'2021_08_17_214232_change_col_type_admin_wallet',57),(93,'2021_08_17_214405_change_col_type_seller_wallet',57),(94,'2021_08_22_184834_add_publish_to_products_table',57),(95,'2021_09_08_211832_add_social_column_to_users_table',57),(96,'2021_09_13_165535_add_col_to_user',57),(97,'2021_09_19_061647_add_limit_to_coupons_table',57),(98,'2021_09_20_020716_add_coupon_code_to_orders_table',57),(99,'2021_09_23_003059_add_gst_to_sellers_table',57),(100,'2021_09_28_025411_create_order_transactions_table',57),(101,'2021_10_02_185124_create_carts_table',57),(102,'2021_10_02_190207_create_cart_shippings_table',57),(103,'2021_10_03_194334_add_col_order_table',57),(104,'2021_10_03_200536_add_shipping_cost',57),(105,'2021_10_04_153201_add_col_to_order_table',57),(106,'2021_10_07_172701_add_col_cart_shop_info',57),(107,'2021_10_07_184442_create_phone_or_email_verifications_table',57),(108,'2021_10_07_185416_add_user_table_email_verified',57),(109,'2021_10_11_192739_add_transaction_amount_table',57),(110,'2021_10_11_200850_add_order_verification_code',57),(111,'2021_10_12_083241_add_col_to_order_transaction',57),(112,'2021_10_12_084440_add_seller_id_to_order',57),(113,'2021_10_12_102853_change_col_type',57),(114,'2021_10_12_110434_add_col_to_admin_wallet',57),(115,'2021_10_12_110829_add_col_to_seller_wallet',57),(116,'2021_10_13_091801_add_col_to_admin_wallets',57),(117,'2021_10_13_092000_add_col_to_seller_wallets_tax',57),(118,'2021_10_13_165947_rename_and_remove_col_seller_wallet',57),(119,'2021_10_13_170258_rename_and_remove_col_admin_wallet',57),(120,'2021_10_14_061603_column_update_order_transaction',57),(121,'2021_10_15_103339_remove_col_from_seller_wallet',57),(122,'2021_10_15_104419_add_id_col_order_tran',57),(123,'2021_10_15_213454_update_string_limit',57),(124,'2021_10_16_234037_change_col_type_translation',57),(125,'2021_10_16_234329_change_col_type_translation_1',57),(126,'2021_10_27_091250_add_shipping_address_in_order',58),(127,'2021_01_24_205114_create_paytabs_invoices_table',59),(128,'2021_11_20_043814_change_pass_reset_email_col',59),(129,'2021_11_25_043109_create_delivery_men_table',60),(130,'2021_11_25_062242_add_auth_token_delivery_man',60),(131,'2021_11_27_043405_add_deliveryman_in_order_table',60),(132,'2021_11_27_051432_create_delivery_histories_table',60),(133,'2021_11_27_051512_add_fcm_col_for_delivery_man',60),(134,'2021_12_15_123216_add_columns_to_banner',60),(135,'2022_01_04_100543_add_order_note_to_orders_table',60),(136,'2022_01_10_034952_add_lat_long_to_shipping_addresses_table',60),(137,'2022_01_10_045517_create_billing_addresses_table',60),(138,'2022_01_11_040755_add_is_billing_to_shipping_addresses_table',60),(139,'2022_01_11_053404_add_billing_to_orders_table',60),(140,'2022_01_11_234310_add_firebase_toke_to_sellers_table',60),(141,'2022_01_16_121801_change_colu_type',60),(142,'2019_12_14_000001_create_personal_access_tokens_table',61),(143,'2022_01_29_153658_add_columns_to_products_table',61),(144,'2022_01_31_233154_create_author_tables',62),(145,'2022_01_31_233227_create_translator_tables',62),(146,'2022_01_31_233243_create_publisher_tables',62),(147,'2022_02_01_222326_add_fields_to_products_table',63),(148,'2022_02_19_111953_update_products_table',64),(149,'2022_02_20_124028_update_brands_table',64),(150,'2022_02_20_124037_update_authors_table',64),(151,'2022_02_20_124108_update_publishers_table',64),(152,'2022_02_20_124123_update_translators_table',64),(153,'2022_02_20_124400_add_seo_products_table',64),(154,'2022_02_20_125043_update_attributes_table',64),(155,'2022_03_05_114813_add_banner_title_to_banners_table',65),(156,'2022_04_13_081430_add_spcification_to_products_table',66),(157,'2022_04_13_084604_add_desc_to_authors_table',66),(158,'2022_04_24_165896_create_warehouse_table',66),(159,'2022_04_24_183104_create_product_availabilities_table',66),(160,'2022_04_24_204965_add_options_to_products_table',66);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:25:41','2021-07-05 09:25:41','2022-07-05 15:25:41'),('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:24:36','2021-07-05 09:24:36','2022-07-05 15:24:36');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'6amtech','GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI','http://localhost',1,0,0,'2020-10-21 18:27:22','2020-10-21 18:27:22');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-21 18:27:23','2020-10-21 18:27:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `delivery_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_transactions` (
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_transactions`
--

LOCK TABLES `order_transactions` WRITE;
/*!40000 ALTER TABLE `order_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_ref` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `order_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` bigint(20) unsigned DEFAULT NULL,
  `billing_address_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `identity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`identity`)
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
-- Table structure for table `paytabs_invoices`
--

DROP TABLE IF EXISTS `paytabs_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paytabs_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_code` int(10) unsigned NOT NULL,
  `pt_invoice_id` int(10) unsigned DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int(10) unsigned DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_first_six_digits` int(10) unsigned DEFAULT NULL,
  `card_last_four_digits` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytabs_invoices`
--

LOCK TABLES `paytabs_invoices` WRITE;
/*!40000 ALTER TABLE `paytabs_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `paytabs_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `phone_or_email_verifications`
--

DROP TABLE IF EXISTS `phone_or_email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_or_email_verifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phone_or_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_or_email_verifications`
--

LOCK TABLES `phone_or_email_verifications` WRITE;
/*!40000 ALTER TABLE `phone_or_email_verifications` DISABLE KEYS */;
INSERT INTO `phone_or_email_verifications` VALUES (1,'vikulya_dmitriyeva_92@mail.ru','8571','2022-04-04 11:40:31','2022-04-04 11:40:31'),(2,'akashir39@gmail.com','5952','2022-06-06 08:21:55','2022-06-06 08:21:55'),(3,'akashir39@gmail.com','2709','2022-06-06 08:23:58','2022-06-06 08:23:58');
/*!40000 ALTER TABLE `phone_or_email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_availabilities`
--

DROP TABLE IF EXISTS `product_availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_availabilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_availabilities`
--

LOCK TABLES `product_availabilities` WRITE;
/*!40000 ALTER TABLE `product_availabilities` DISABLE KEYS */;
INSERT INTO `product_availabilities` VALUES (1,'sss','2022-05-10 06:21:32','2022-05-10 06:21:32');
/*!40000 ALTER TABLE `product_availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

LOCK TABLES `product_stocks` WRITE;
/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_ids` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_deal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT 0,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `purchase_price` double NOT NULL DEFAULT 0,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured_status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT 0,
  `denied_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `printing_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `publisher_id` bigint(20) DEFAULT NULL,
  `translator_id` bigint(20) DEFAULT NULL,
  `category_id2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL,
  `display_avail` tinyint(4) DEFAULT NULL,
  `display_stock_quantity` tinyint(4) DEFAULT NULL,
  `minimum_stock` bigint(20) DEFAULT NULL,
  `low_stock_activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_quantity` bigint(20) DEFAULT NULL,
  `backorders` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_back_in_stock_subs` tinyint(4) DEFAULT NULL,
  `product_availability` bigint(20) DEFAULT NULL,
  `minimum_cart_qty` bigint(20) DEFAULT NULL,
  `maximum_cart_qty` bigint(20) DEFAULT NULL,
  `allowed_qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_return` tinyint(4) DEFAULT NULL,
  `available_pre_order` tinyint(4) DEFAULT NULL,
  `pre_order_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_order_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,'admin',1,'test Product','test-2LsESt','[{\"id\":\"1\",\"position\":1}]',1,'kg',1,1,'[\"2022-02-01-61f963adb2022.png\"]','2022-02-01-61f963adb5cc4.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,100,100,'0','percent','10','flat',0,'<p>test</p>',0,NULL,'2022-02-01 16:45:33','2022-02-23 07:11:07',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Local',2,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'admin',1,'test 2','test-2-UndZ78','[{\"id\":\"1\",\"position\":1}]',NULL,'kg',1,1,'[\"2022-02-03-61fc0a9614aa8.png\"]','2022-02-03-61fc0a9617294.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,120,100,'0','percent','0','flat',0,'<p>test</p>',0,NULL,'2022-02-03 17:02:14','2022-02-03 17:04:52',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'admin',1,'test','test-cplor2','[{\"id\":\"1\",\"position\":1}]',NULL,'kg',1,1,'[\"2022-02-23-6215dde68ce04.png\"]','2022-02-23-6215dde697c4d.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,1200,1200,'0','percent','10','percent',0,NULL,0,NULL,'2022-02-23 07:10:30','2022-02-23 07:10:30',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',NULL,NULL,NULL,NULL,NULL,'def.png',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'admin',1,'new test','new-test-v7pGti','[{\"id\":\"1\",\"position\":1}]',NULL,'kg',1,1,'[\"2022-02-23-6215de9412be0.png\"]','2022-02-23-6215de9412f5f.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,1200,1200,'0','percent','200','flat',0,NULL,0,NULL,'2022-02-23 07:13:24','2022-02-23 07:13:24',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',NULL,NULL,NULL,NULL,NULL,'def.png',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'admin',1,'new  new test','new-new-test-gmjwP4','[{\"id\":\"1\",\"position\":1}]',NULL,'kg',1,1,'[\"2022-02-23-6215df5164050.png\"]','2022-02-23-6215df51643a8.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,1200,1000,'0','percent','40','percent',0,NULL,0,NULL,'2022-02-23 07:16:33','2022-02-23 07:17:17',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',NULL,NULL,NULL,NULL,NULL,'def.png',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'admin',1,'Ebong Inquisition','ebong-inquisition-Pt9nXz','[{\"id\":\"2\",\"position\":1},{\"id\":\"3\",\"position\":2}]',2,'kg',1,1,'[\"2022-04-02-624892f5beeaa.png\"]','2022-04-02-624892f5bf1b8.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,480,288,'0','percent','40','percent',250,'<p>&nbsp;</p>\r\n\r\n<p>গল্পের সারাংশ একদিকে দেশীয় রাজাদের অকর্মণ্যতা আর একদিকে ক্রমশ ঘনিয়ে আসা ইস্ট ইন্ডিয়া কোম্পানির শাসনের ছায়া, দুয়ের মাঝে বিস্তীর্ণ মধ্যভারত শাসন করে এক লুটেরা খুনির দল। এমনই এক লুটেরা দলের সর্দার ভুকোত জমাদারকে অকস্মাৎ সরিয়ে দিয়ে দলের কর্তৃত্ব হাতে নেয় এক অজ্ঞাতপরিচয় ব্রাহ্মণ। না, লুটের ধনসম্পদ নয়, অলৌকিক শক্তির অধিকারী সেই ব্রাহ্মণ প্রতিটি শিকারের পর চেয়ে নেন শুধুমাত্র একটিই জিনিস, শিকারের মৃতদেহ! কে এই ব্রাহ্মণ? কী করেন ইনি মৃতদেহ দিয়ে? মারায়নি হালদারের বংশে হাজার বছর ধরে পুজিত হয়ে এসেছে একটি অভিশপ্ত পাথুরে ফলক। কিন্তু কেন? হাজারবছর আগে কী ঘটেছিল সোমপুরা মহাবিহারের গর্ভগৃহে? একজটা দেবীর নামে কাকে অভিশাপ দিলেন মহাবস্থবির রত্নাকরশান্তি? টেনিয়া কি পারবে বালুরঘাটের তিনটি মেয়েকে প্রেমের জালে ফাঁসিয়ে এনে দালালদের কাছে বিক্রি করে দিতে? মেখলা-কনখলার কাহিনিটাই বা কী? কী হবে অসহায় মেয়ে তিনটির? অতীনকে যেন তার সমস্ত অস্তিত্বসহ অজগরের মতোই গ্রাস করে নিল মুর্তিটা। রোজ ভোগ বেড়ে দিত সে, এই আশায় যে মা খাবেন, গ্রহণ করবেন ভোগের প্রসাদ। কিন্তু মা সেদিনই ভোগ নিলেন যেদিন ডামরি এসে উপস্থিত এল এ বাড়িতে। কে এই ডামরি? মুর্তিটাই বা কোন দেবীর? বৌদ্ধতান্ত্রিক সহস্রাক্ষ কেন বানিয়েছিলেন এই মুর্তি? অতীনের পিতৃবন্ধু ভবেশবাবু কি পারবেন অতীনকে বাঁচাতে? আফগান সন্ত্রাসবাদীদের হাত থেকে একদল শিশুকে বাঁচাবার দিনেই পর্তুগালের কম্যান্ডোবাহিনীর নায়ক মার্টিনেজ ভাজ খবর পেলেন তাঁর একমাত্র ছেলে তিয়াগো মৃত্যুশয্যায়। বাড়ি এসে এক আশ্চর্য ইতিহাসের সম্মুখীন হন মার্টিনেজ, শোনেন গোয়াতে পর্তুগালের আধিপত্যবিস্তারের সময় তাঁরই এক পূর্বপুরুষের ইনক্যুইজিশনের নামে কৃত একটি মহাপাপের ইতিবৃত্ত। শোনেন তজ্জনিত এক ভয়াল অভিশাপের কথা, যার জন্যে আজ তাঁর প্রাণাধিক প্রিয় মাতৃহারা সন্তানটি মৃত্যুশয্যায়। কী হলো তারপর? আমোনা গ্রামের বেতালমন্দিরের সামনে কীভাবে মিলে গেল পাঁচশো বছরের ব্যবধানে ঘটে যাওয়া কাহিনির সূত্র? কীভাবে বাংলার অক্সফোর্ড নবদ্বীপের এক বিস্মৃতপ্রায় মহাপণ্ডিত কৃষ্ণানন্দ আগমবাগীশ হয়ে উঠলেন বিভিন্ন কালখণ্ডে ধৃত এই সমগ্র কাহিনিমঞ্জরীটির একমাত্র তন্ত্রধারক? আসুন পাঠক, প্রবেশ করি সেই গহীন অরণ্যে, শুধু মনে রাখবেন একটি মাত্র মন্ত্র, ভালোবাসাই হল সবচেয়ে বড় তন্ত্র, সবচেয়ে বড় যাদু। ব্লার্ব এই বইয়ের পাতায় পাতায় মিশে আছে রহস্যের শিহরন, তন্ত্রের মারণভয়, আতঙ্কের করাল ছায়া। এই বই আপনার শিরদাঁড়ায় বইয়ে দেবে ভয়ের হিমেল স্রোত, আপনার মাথার ভেতর যেন এক আতঙ্কের বোধ কাজ করবে। তবু এই বই রহস্যের নয়, তন্ত্রের নয়, ভয়ের নয়। সব ছাপিয়ে এই বই শেষ অবধি হয়ে ওঠে অনন্য মানবিকতার দীপ্ত শিখা, শেষ অবধি শুধুমাত্র ভালোবাসার কথাই বলে &ndash; কারণ এতদিনে তো আপনারা জেনেই গেছেন, &lsquo;ভালোবাসাই সবচেয়ে বড়ো তন্ত্র সবচেয়ে বড়ো জাদু&rsquo;</p>',0,NULL,'2022-04-02 12:16:21','2022-04-02 12:28:17',1,1,'এবং ইনকুইজিশন - অভীক সরকার','অভীক সরকার এর এবং ইনকুইজিশন অরিজিনাল বই সংগ্রহ করুন Akkhor.xyz থেকে। রয়েছে ক্যাশ অন ডেলিভারির সুবিধা।','2022-04-02-624892f5bf29f.png',1,NULL,NULL,NULL,NULL,'Original',3,2,NULL,NULL,NULL,'def.png','ebong-inquisition','অভীক সরকার, এবং ইনকুইজিশন, থ্রিলার, ফিকশন',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'admin',1,'yyyy','yyyy-VKUqIc','[{\"id\":\"1\",\"position\":1}]',1,'kg',1,1,'[\"2022-05-10-627a591bc5179.png\"]','2022-05-10-627a591bc5434.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,12,12,'0','percent','1.98','flat',0,'<p>yyy</p>',0,NULL,'2022-05-10 06:22:51','2022-05-10 06:22:51',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',3,2,2,'2',NULL,'def.png',NULL,NULL,NULL,'track_inventory',NULL,0,0,0,'nothing',0,'no_backorders',0,NULL,1,1000,NULL,0,0,NULL,NULL,NULL),(15,'admin',1,'test','test-KUqPnn','[{\"id\":\"1\",\"position\":1}]',1,'kg',1,1,'[\"2022-05-10-627a59a0bff1a.png\"]','2022-05-10-627a59a0c034e.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,100,111,'0','percent','10','percent',0,'<p>aaa</p>',0,NULL,'2022-05-10 06:25:04','2022-05-10 06:25:04',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',4,2,2,NULL,NULL,'def.png',NULL,NULL,'<p>aa</p>','track_inventory',1,1,1,36,'nothing',0,'no_backorders',0,1,1,1000,NULL,0,0,NULL,NULL,NULL),(16,'admin',1,'test','test-d72Jrb','[{\"id\":\"2\",\"position\":1},{\"id\":\"3\",\"position\":2}]',NULL,'kg',1,1,'[\"2022-05-16-6281fb2b55621.png\"]','2022-05-16-6281fb2b556c6.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,32,32,'0','percent','31.97','flat',0,'<p>ff</p>',0,NULL,'2022-05-16 01:20:11','2022-05-16 01:20:11',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',3,2,1,'1',NULL,'2022-05-16-6281fb2b553ca.pdf',NULL,NULL,NULL,'track_inventory',NULL,0,0,0,'nothing',0,'no_backorders',0,NULL,1,1000,NULL,0,0,NULL,NULL,NULL),(17,'admin',1,'Ondhokarer Golpo','ondhokarer-golpo-4Biu8N','[{\"id\":\"1\",\"position\":1}]',NULL,'kg',1,1,'[\"2022-05-16-6282b67f04256.png\"]','2022-05-16-6282b67f04581.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,270,35,'0','percent','25','percent',0,'<p>&lsquo;অন্ধকারের গল্প&lsquo; লেখকের নবম বই। যে ছয়খানি গল্প নিয়ে এই ক্ষুদ্র সংকলনটি রচিত, তাঁর প্রায় প্রতিটিই কোনও না কোনও ম্যাগাজিন, ওয়েবজিন অথবা কোনও সংকলনে পূর্বপ্রকাশিত। গল্পগুলি ভয়ের না, ভুতের না, যে আদিম জান্তব বোধ মানুষের মাথার মধ্যে ক্রমাগত অন্ধকারের উর্ণা বুনে চলে, গল্পগুলি সেই বোধের খোঁজ করে চলে। তাই মানুষের মনের কোণে লুকিয়ে থাকা আদিম বিষণ্ণতা আর অসহায়তা মিশে থাকে প্রতিটি গল্পের পরতে। আসুন পাঠক, সেই অন্ধকারের বহমান নদীতে ডুব দিই।</p>',0,NULL,'2022-05-16 14:39:27','2022-05-17 12:02:27',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',3,2,2,'2',NULL,'def.png',NULL,NULL,'<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Title</td>\r\n			<td>অন্ধকারের গল্প</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Author</td>\r\n			<td>অভীক সরকার</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Publisher</td>\r\n			<td>অক্ষর ডট এক্সওয়াইজেড</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ISBN</td>\r\n			<td>9789849638711</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Edition</td>\r\n			<td>1st Published, 2022</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Pages</td>\r\n			<td>144</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Country</td>\r\n			<td>বাংলাদেশ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Language</td>\r\n			<td>বাংলা</td>\r\n		</tr>\r\n	</tbody>\r\n</table>','track_inventory',2,1,0,0,'nothing',0,'no_backorders',0,NULL,1,1000,NULL,0,0,NULL,NULL,NULL),(18,'admin',1,'hutum pecha','hutum-pecha-EHobel','[{\"id\":\"2\",\"position\":1},{\"id\":\"3\",\"position\":2}]',2,'kg',1,1,'[\"2022-05-19-62860fba62f58.png\"]','2022-05-19-62860fba62fdb.png',NULL,NULL,'youtube',NULL,'[]',0,'null','[]','[]',0,12,78,'0','percent','66.98','percent',0,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',0,NULL,'2022-05-19 03:36:58','2022-05-19 03:36:58',1,1,NULL,NULL,'def.png',1,NULL,NULL,NULL,NULL,'Original',3,2,2,'1','6','2022-05-19-62860fba62cfb.pdf',NULL,NULL,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','don\'t_track_inventory',2,1,1,27,'disable_buy_button',0,'allow_qty_below_0',1,1,1,1000,NULL,0,1,'2022-05-19','2022-05-26',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Test Publisher 1','2022-02-01-61f954b162328.png',1,'2022-02-01 15:41:37','2022-02-01 15:41:53',NULL,NULL,NULL,NULL),(2,'Akkhor.xyz','2022-04-02-62486697f0991.png',1,'2022-04-02 09:07:03','2022-04-02 09:07:03','akkhor-dot-xyz','অক্ষর ডট এক্সওয়াইজেড, THRILLER','অক্ষর ডট এক্সওয়াইজেড প্রকাশিত বইসমূহ','BUY AKKHOR.XYZ BOOKS FROM US'),(3,'test publisher','2022-05-10-627a093a073b6.png',1,'2022-05-10 00:42:02','2022-05-10 00:42:02','fhfhfhfh',NULL,NULL,NULL);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_functions`
--

DROP TABLE IF EXISTS `search_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_functions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_functions`
--

LOCK TABLES `search_functions` WRITE;
/*!40000 ALTER TABLE `search_functions` DISABLE KEYS */;
INSERT INTO `search_functions` VALUES (1,'Dashboard','admin/dashboard','admin',NULL,NULL),(2,'Order All','admin/orders/list/all','admin',NULL,NULL),(3,'Order Pending','admin/orders/list/pending','admin',NULL,NULL),(4,'Order Processed','admin/orders/list/processed','admin',NULL,NULL),(5,'Order Delivered','admin/orders/list/delivered','admin',NULL,NULL),(6,'Order Returned','admin/orders/list/returned','admin',NULL,NULL),(7,'Order Failed','admin/orders/list/failed','admin',NULL,NULL),(8,'Brand Add','admin/brand/add-new','admin',NULL,NULL),(9,'Brand List','admin/brand/list','admin',NULL,NULL),(10,'Banner','admin/banner/list','admin',NULL,NULL),(11,'Category','admin/category/view','admin',NULL,NULL),(12,'Sub Category','admin/category/sub-category/view','admin',NULL,NULL),(13,'Sub sub category','admin/category/sub-sub-category/view','admin',NULL,NULL),(14,'Attribute','admin/attribute/view','admin',NULL,NULL),(15,'Product','admin/product/list','admin',NULL,NULL),(16,'Coupon','admin/coupon/add-new','admin',NULL,NULL),(17,'Custom Role','admin/custom-role/create','admin',NULL,NULL),(18,'Employee','admin/employee/add-new','admin',NULL,NULL),(19,'Seller','admin/sellers/seller-list','admin',NULL,NULL),(20,'Contacts','admin/contact/list','admin',NULL,NULL),(21,'Flash Deal','admin/deal/flash','admin',NULL,NULL),(22,'Deal of the day','admin/deal/day','admin',NULL,NULL),(23,'Language','admin/business-settings/language','admin',NULL,NULL),(24,'Mail','admin/business-settings/mail','admin',NULL,NULL),(25,'Shipping method','admin/business-settings/shipping-method/add','admin',NULL,NULL),(26,'Currency','admin/currency/view','admin',NULL,NULL),(27,'Payment method','admin/business-settings/payment-method','admin',NULL,NULL),(28,'SMS Gateway','admin/business-settings/sms-gateway','admin',NULL,NULL),(29,'Support Ticket','admin/support-ticket/view','admin',NULL,NULL),(30,'FAQ','admin/helpTopic/list','admin',NULL,NULL),(31,'About Us','admin/business-settings/about-us','admin',NULL,NULL),(32,'Terms and Conditions','admin/business-settings/terms-condition','admin',NULL,NULL),(33,'Web Config','admin/business-settings/web-config','admin',NULL,NULL);
/*!40000 ALTER TABLE `search_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallet_histories`
--

DROP TABLE IF EXISTS `seller_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_wallet_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallet_histories`
--

LOCK TABLES `seller_wallet_histories` WRITE;
/*!40000 ALTER TABLE `seller_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallets`
--

DROP TABLE IF EXISTS `seller_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `collected_cash` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallets`
--

LOCK TABLES `seller_wallets` WRITE;
/*!40000 ALTER TABLE `seller_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (2,1,'admin','Company Vehicle',5.00,'2 Week',1,'2021-05-25 20:57:04','2021-05-25 20:57:04');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_medias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_medias`
--

LOCK TABLES `social_medias` WRITE;
/*!40000 ALTER TABLE `social_medias` DISABLE KEYS */;
INSERT INTO `social_medias` VALUES (1,'twitter','https://www.w3schools.com/howto/howto_css_table_responsive.asp','fa fa-twitter',1,1,'2020-12-31 21:18:03','2020-12-31 21:18:25'),(2,'linkedin','https://dev.6amtech.com/','fa fa-linkedin',1,1,'2021-02-27 16:23:01','2021-02-27 16:23:05'),(3,'google-plus','https://dev.6amtech.com/','fa fa-google-plus-square',1,1,'2021-02-27 16:23:30','2021-02-27 16:23:33'),(4,'pinterest','https://dev.6amtech.com/','fa fa-pinterest',1,1,'2021-02-27 16:24:14','2021-02-27 16:24:26'),(5,'instagram','https://dev.6amtech.com/','fa fa-instagram',1,1,'2021-02-27 16:24:36','2021-02-27 16:24:41'),(6,'facebook','facebook.com','fa fa-facebook',1,1,'2021-02-27 19:19:42','2021-06-11 17:41:59');
/*!40000 ALTER TABLE `social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soft_credentials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_credentials`
--

LOCK TABLES `soft_credentials` WRITE;
/*!40000 ALTER TABLE `soft_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket_convs`
--

DROP TABLE IF EXISTS `support_ticket_convs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket_convs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `customer_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket_convs`
--

LOCK TABLES `support_ticket_convs` WRITE;
/*!40000 ALTER TABLE `support_ticket_convs` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_ticket_convs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `subject` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_for` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payment_receiver_id` bigint(20) DEFAULT NULL,
  `paid_by` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `transactions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `translationable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES ('App\\Model\\Product',8,'bd','name','test 2',1),('App\\Model\\Product',8,'bd','description','<p>test</p>',2),('App\\Model\\Product',7,'bd','name','test Product',3),('App\\Model\\Product',7,'bd','description','<p>test</p>',4),('App\\Model\\Product',12,'bd','name','new  new test',5),('App\\Model\\Brand',2,'bd','name','অক্ষর ডট এক্সওয়াইজেড',6),('App\\Model\\Publisher',2,'bd','name','অক্ষর ডট এক্সওয়াইজেড',7),('App\\Model\\Author',3,'bd','name','অভীক সরকার',8),('App\\Model\\Category',3,'bd','name','থ্রিলার',9),('App\\Model\\Category',4,'bd','name','অন্ধকারের গল্প',10),('App\\Model\\Category',5,'bd','name','অতিপ্রাকৃত ও ভৌতিক',11),('App\\Model\\Product',13,'bd','name','এবং ইনকুইজিশন',12),('App\\Model\\Product',13,'bd','description','<p>&nbsp;</p>\r\n\r\n<p>গল্পের সারাংশ একদিকে দেশীয় রাজাদের অকর্মণ্যতা আর একদিকে ক্রমশ ঘনিয়ে আসা ইস্ট ইন্ডিয়া কোম্পানির শাসনের ছায়া, দুয়ের মাঝে বিস্তীর্ণ মধ্যভারত শাসন করে এক লুটেরা খুনির দল। এমনই এক লুটেরা দলের সর্দার ভুকোত জমাদারকে অকস্মাৎ সরিয়ে দিয়ে দলের কর্তৃত্ব হাতে নেয় এক অজ্ঞাতপরিচয় ব্রাহ্মণ। না, লুটের ধনসম্পদ নয়, অলৌকিক শক্তির অধিকারী সেই ব্রাহ্মণ প্রতিটি শিকারের পর চেয়ে নেন শুধুমাত্র একটিই জিনিস, শিকারের মৃতদেহ! কে এই ব্রাহ্মণ? কী করেন ইনি মৃতদেহ দিয়ে? মারায়নি হালদারের বংশে হাজার বছর ধরে পুজিত হয়ে এসেছে একটি অভিশপ্ত পাথুরে ফলক। কিন্তু কেন? হাজারবছর আগে কী ঘটেছিল সোমপুরা মহাবিহারের গর্ভগৃহে? একজটা দেবীর নামে কাকে অভিশাপ দিলেন মহাবস্থবির রত্নাকরশান্তি? টেনিয়া কি পারবে বালুরঘাটের তিনটি মেয়েকে প্রেমের জালে ফাঁসিয়ে এনে দালালদের কাছে বিক্রি করে দিতে? মেখলা-কনখলার কাহিনিটাই বা কী? কী হবে অসহায় মেয়ে তিনটির? অতীনকে যেন তার সমস্ত অস্তিত্বসহ অজগরের মতোই গ্রাস করে নিল মুর্তিটা। রোজ ভোগ বেড়ে দিত সে, এই আশায় যে মা খাবেন, গ্রহণ করবেন ভোগের প্রসাদ। কিন্তু মা সেদিনই ভোগ নিলেন যেদিন ডামরি এসে উপস্থিত এল এ বাড়িতে। কে এই ডামরি? মুর্তিটাই বা কোন দেবীর? বৌদ্ধতান্ত্রিক সহস্রাক্ষ কেন বানিয়েছিলেন এই মুর্তি? অতীনের পিতৃবন্ধু ভবেশবাবু কি পারবেন অতীনকে বাঁচাতে? আফগান সন্ত্রাসবাদীদের হাত থেকে একদল শিশুকে বাঁচাবার দিনেই পর্তুগালের কম্যান্ডোবাহিনীর নায়ক মার্টিনেজ ভাজ খবর পেলেন তাঁর একমাত্র ছেলে তিয়াগো মৃত্যুশয্যায়। বাড়ি এসে এক আশ্চর্য ইতিহাসের সম্মুখীন হন মার্টিনেজ, শোনেন গোয়াতে পর্তুগালের আধিপত্যবিস্তারের সময় তাঁরই এক পূর্বপুরুষের ইনক্যুইজিশনের নামে কৃত একটি মহাপাপের ইতিবৃত্ত। শোনেন তজ্জনিত এক ভয়াল অভিশাপের কথা, যার জন্যে আজ তাঁর প্রাণাধিক প্রিয় মাতৃহারা সন্তানটি মৃত্যুশয্যায়। কী হলো তারপর? আমোনা গ্রামের বেতালমন্দিরের সামনে কীভাবে মিলে গেল পাঁচশো বছরের ব্যবধানে ঘটে যাওয়া কাহিনির সূত্র? কীভাবে বাংলার অক্সফোর্ড নবদ্বীপের এক বিস্মৃতপ্রায় মহাপণ্ডিত কৃষ্ণানন্দ আগমবাগীশ হয়ে উঠলেন বিভিন্ন কালখণ্ডে ধৃত এই সমগ্র কাহিনিমঞ্জরীটির একমাত্র তন্ত্রধারক? আসুন পাঠক, প্রবেশ করি সেই গহীন অরণ্যে, শুধু মনে রাখবেন একটি মাত্র মন্ত্র, ভালোবাসাই হল সবচেয়ে বড় তন্ত্র, সবচেয়ে বড় যাদু। ব্লার্ব এই বইয়ের পাতায় পাতায় মিশে আছে রহস্যের শিহরন, তন্ত্রের মারণভয়, আতঙ্কের করাল ছায়া। এই বই আপনার শিরদাঁড়ায় বইয়ে দেবে ভয়ের হিমেল স্রোত, আপনার মাথার ভেতর যেন এক আতঙ্কের বোধ কাজ করবে। তবু এই বই রহস্যের নয়, তন্ত্রের নয়, ভয়ের নয়। সব ছাপিয়ে এই বই শেষ অবধি হয়ে ওঠে অনন্য মানবিকতার দীপ্ত শিখা, শেষ অবধি শুধুমাত্র ভালোবাসার কথাই বলে &ndash; কারণ এতদিনে তো আপনারা জেনেই গেছেন, &lsquo;ভালোবাসাই সবচেয়ে বড়ো তন্ত্র সবচেয়ে বড়ো জাদু&rsquo;</p>',13);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators`
--

DROP TABLE IF EXISTS `translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_friendly_page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators`
--

LOCK TABLES `translators` WRITE;
/*!40000 ALTER TABLE `translators` DISABLE KEYS */;
INSERT INTO `translators` VALUES (1,'Test Translator 1','2022-02-01-61f95c2a14586.png',1,'2022-02-01 16:13:30','2022-02-01 16:13:42',NULL,NULL,NULL,NULL),(2,'new test','2022-05-10-627a094f1abb3.png',1,'2022-05-10 00:42:23','2022-05-10 00:42:23','fhfhfhfh',NULL,'test',NULL);
/*!40000 ALTER TABLE `translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `payment_card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_fawry_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'Документ номер WLR569708WLR2 подготовлен. Смотрите документ12 далее на странице http://apple.com','Документ номер WLR569708WLR2 подготовлен. Смотрите документ12 далее на странице http://apple.com','vikulya_dmitriyeva_92@mai','def.png','vikulya_dmitriyeva_92@mail.ru',NULL,'$2y$10$eyodkGXONGq3VuHCwFMARut4cbo97Az6wqrXLR8DIlbfzZWi2usIS',NULL,'2022-04-04 11:40:30','2022-04-04 11:40:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0),(2,NULL,'Mostakim','Bin Motaher','8801726226008','def.png','akashir39@gmail.com',NULL,'$2y$10$6Nm8Yz1tBeBQeWpO5hHDVO7HsHVD.DuC.cdXlXj3JOuaGX1m/LtIy',NULL,'2022-06-06 08:21:55','2022-06-06 08:21:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'test','2022-05-10 06:21:20','2022-05-10 06:21:20'),(2,'Khulna','2022-05-14 23:33:54','2022-05-14 23:33:54');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `transaction_note` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_requests`
--

LOCK TABLES `withdraw_requests` WRITE;
/*!40000 ALTER TABLE `withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 12:29:23
