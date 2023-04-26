-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommercedbv1
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add transaction',9,'add_transaction'),(34,'Can change transaction',9,'change_transaction'),(35,'Can delete transaction',9,'delete_transaction'),(36,'Can view transaction',9,'view_transaction'),(37,'Can add store',10,'add_store'),(38,'Can change store',10,'change_store'),(39,'Can delete store',10,'delete_store'),(40,'Can view store',10,'view_store'),(41,'Can add review',11,'add_review'),(42,'Can change review',11,'change_review'),(43,'Can delete review',11,'delete_review'),(44,'Can view review',11,'view_review'),(45,'Can add product category',12,'add_productcategory'),(46,'Can change product category',12,'change_productcategory'),(47,'Can delete product category',12,'delete_productcategory'),(48,'Can view product category',12,'view_productcategory'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order'),(53,'Can add comparison',14,'add_comparison'),(54,'Can change comparison',14,'change_comparison'),(55,'Can delete comparison',14,'delete_comparison'),(56,'Can view comparison',14,'view_comparison'),(57,'Can add comment',15,'add_comment'),(58,'Can change comment',15,'change_comment'),(59,'Can delete comment',15,'delete_comment'),(60,'Can view comment',15,'view_comment');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_ecommerce_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(7,'ecommerce','category'),(15,'ecommerce','comment'),(14,'ecommerce','comparison'),(13,'ecommerce','order'),(8,'ecommerce','product'),(12,'ecommerce','productcategory'),(11,'ecommerce','review'),(10,'ecommerce','store'),(9,'ecommerce','transaction'),(6,'ecommerce','user'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-26 17:07:37.630610'),(2,'contenttypes','0002_remove_content_type_name','2023-04-26 17:07:38.965836'),(3,'auth','0001_initial','2023-04-26 17:07:43.199172'),(4,'auth','0002_alter_permission_name_max_length','2023-04-26 17:07:45.354004'),(5,'auth','0003_alter_user_email_max_length','2023-04-26 17:07:45.449060'),(6,'auth','0004_alter_user_username_opts','2023-04-26 17:07:45.581197'),(7,'auth','0005_alter_user_last_login_null','2023-04-26 17:07:45.630111'),(8,'auth','0006_require_contenttypes_0002','2023-04-26 17:07:45.706294'),(9,'auth','0007_alter_validators_add_error_messages','2023-04-26 17:07:45.770381'),(10,'auth','0008_alter_user_username_max_length','2023-04-26 17:07:45.801674'),(11,'auth','0009_alter_user_last_name_max_length','2023-04-26 17:07:45.833659'),(12,'auth','0010_alter_group_name_max_length','2023-04-26 17:07:46.821315'),(13,'auth','0011_update_proxy_permissions','2023-04-26 17:07:46.884959'),(14,'auth','0012_alter_user_first_name_max_length','2023-04-26 17:07:46.994807'),(15,'ecommerce','0001_initial','2023-04-26 17:08:23.897472'),(16,'admin','0001_initial','2023-04-26 17:08:26.642962'),(17,'admin','0002_logentry_remove_auto_add','2023-04-26 17:08:26.689234'),(18,'admin','0003_logentry_add_action_flag_choices','2023-04-26 17:08:26.736066'),(19,'sessions','0001_initial','2023-04-26 17:08:27.596417');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_category`
--

DROP TABLE IF EXISTS `ecommerce_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_category`
--

LOCK TABLES `ecommerce_category` WRITE;
/*!40000 ALTER TABLE `ecommerce_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_comment`
--

DROP TABLE IF EXISTS `ecommerce_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `review_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_comment_review_id_bb3d23ef_fk_ecommerce_review_id` (`review_id`),
  KEY `ecommerce_comment_user_id_4400e44d_fk_ecommerce_user_id` (`user_id`),
  CONSTRAINT `ecommerce_comment_review_id_bb3d23ef_fk_ecommerce_review_id` FOREIGN KEY (`review_id`) REFERENCES `ecommerce_review` (`id`),
  CONSTRAINT `ecommerce_comment_user_id_4400e44d_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_comment`
--

LOCK TABLES `ecommerce_comment` WRITE;
/*!40000 ALTER TABLE `ecommerce_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_comparison`
--

DROP TABLE IF EXISTS `ecommerce_comparison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_comparison` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `store_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_comparison_product_id_f6eea7e2_fk_ecommerce_product_id` (`product_id`),
  KEY `ecommerce_comparison_store_id_b112728f_fk_ecommerce_store_id` (`store_id`),
  CONSTRAINT `ecommerce_comparison_product_id_f6eea7e2_fk_ecommerce_product_id` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`),
  CONSTRAINT `ecommerce_comparison_store_id_b112728f_fk_ecommerce_store_id` FOREIGN KEY (`store_id`) REFERENCES `ecommerce_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_comparison`
--

LOCK TABLES `ecommerce_comparison` WRITE;
/*!40000 ALTER TABLE `ecommerce_comparison` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_comparison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_order`
--

DROP TABLE IF EXISTS `ecommerce_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_order_product_id_ac325932_fk_ecommerce_product_id` (`product_id`),
  KEY `ecommerce_order_user_id_93d858c0_fk_ecommerce_user_id` (`user_id`),
  CONSTRAINT `ecommerce_order_product_id_ac325932_fk_ecommerce_product_id` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`),
  CONSTRAINT `ecommerce_order_user_id_93d858c0_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_order`
--

LOCK TABLES `ecommerce_order` WRITE;
/*!40000 ALTER TABLE `ecommerce_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_product`
--

DROP TABLE IF EXISTS `ecommerce_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `store_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_product_store_id_534b1672_fk_ecommerce_store_id` (`store_id`),
  CONSTRAINT `ecommerce_product_store_id_534b1672_fk_ecommerce_store_id` FOREIGN KEY (`store_id`) REFERENCES `ecommerce_store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_product`
--

LOCK TABLES `ecommerce_product` WRITE;
/*!40000 ALTER TABLE `ecommerce_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_productcategory`
--

DROP TABLE IF EXISTS `ecommerce_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_productcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_productcat_category_id_4fc8b94e_fk_ecommerce` (`category_id`),
  KEY `ecommerce_productcat_product_id_76655cc7_fk_ecommerce` (`product_id`),
  CONSTRAINT `ecommerce_productcat_category_id_4fc8b94e_fk_ecommerce` FOREIGN KEY (`category_id`) REFERENCES `ecommerce_category` (`id`),
  CONSTRAINT `ecommerce_productcat_product_id_76655cc7_fk_ecommerce` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_productcategory`
--

LOCK TABLES `ecommerce_productcategory` WRITE;
/*!40000 ALTER TABLE `ecommerce_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_review`
--

DROP TABLE IF EXISTS `ecommerce_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_review_user_id_997035a7_fk_ecommerce_user_id` (`user_id`),
  CONSTRAINT `ecommerce_review_user_id_997035a7_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_review`
--

LOCK TABLES `ecommerce_review` WRITE;
/*!40000 ALTER TABLE `ecommerce_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_store`
--

DROP TABLE IF EXISTS `ecommerce_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_store` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `owner_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_store_owner_id_db9f57fe_fk_ecommerce_user_id` (`owner_id`),
  CONSTRAINT `ecommerce_store_owner_id_db9f57fe_fk_ecommerce_user_id` FOREIGN KEY (`owner_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_store`
--

LOCK TABLES `ecommerce_store` WRITE;
/*!40000 ALTER TABLE `ecommerce_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_transaction`
--

DROP TABLE IF EXISTS `ecommerce_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_transaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecommerce_transactio_product_id_385f1772_fk_ecommerce` (`product_id`),
  KEY `ecommerce_transaction_user_id_37835329_fk_ecommerce_user_id` (`user_id`),
  CONSTRAINT `ecommerce_transactio_product_id_385f1772_fk_ecommerce` FOREIGN KEY (`product_id`) REFERENCES `ecommerce_product` (`id`),
  CONSTRAINT `ecommerce_transaction_user_id_37835329_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_transaction`
--

LOCK TABLES `ecommerce_transaction` WRITE;
/*!40000 ALTER TABLE `ecommerce_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_user`
--

DROP TABLE IF EXISTS `ecommerce_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_user`
--

LOCK TABLES `ecommerce_user` WRITE;
/*!40000 ALTER TABLE `ecommerce_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_user_groups`
--

DROP TABLE IF EXISTS `ecommerce_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_user_groups_user_id_group_id_2a9a583d_uniq` (`user_id`,`group_id`),
  KEY `ecommerce_user_groups_group_id_a8fd9cb8_fk_auth_group_id` (`group_id`),
  CONSTRAINT `ecommerce_user_groups_group_id_a8fd9cb8_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `ecommerce_user_groups_user_id_60d58887_fk_ecommerce_user_id` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_user_groups`
--

LOCK TABLES `ecommerce_user_groups` WRITE;
/*!40000 ALTER TABLE `ecommerce_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecommerce_user_user_permissions`
--

DROP TABLE IF EXISTS `ecommerce_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecommerce_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ecommerce_user_user_perm_user_id_permission_id_6d807de6_uniq` (`user_id`,`permission_id`),
  KEY `ecommerce_user_user__permission_id_4dc38e40_fk_auth_perm` (`permission_id`),
  CONSTRAINT `ecommerce_user_user__permission_id_4dc38e40_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `ecommerce_user_user__user_id_0ceec4a8_fk_ecommerce` FOREIGN KEY (`user_id`) REFERENCES `ecommerce_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecommerce_user_user_permissions`
--

LOCK TABLES `ecommerce_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `ecommerce_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecommerce_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27  0:14:30
