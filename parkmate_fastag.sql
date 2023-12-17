-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: parkmate_fastag
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acquirer_bank`
--

DROP TABLE IF EXISTS `acquirer_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquirer_bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `bank_id` varchar(10) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquirer_bank`
--

LOCK TABLES `acquirer_bank` WRITE;
/*!40000 ALTER TABLE `acquirer_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `acquirer_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acquirer_settlement`
--

DROP TABLE IF EXISTS `acquirer_settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquirer_settlement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned DEFAULT NULL,
  `plaza_id` int unsigned DEFAULT NULL,
  `txn_id` varchar(30) DEFAULT NULL,
  `conc_txn_id` varchar(30) DEFAULT NULL,
  `request_id` varchar(30) DEFAULT NULL,
  `settled_amount` double DEFAULT NULL,
  `settled_time` datetime(6) DEFAULT NULL,
  `npci_settled_amount` double DEFAULT NULL,
  `npci_settled_time` datetime(6) DEFAULT NULL,
  `utr_reference` varchar(10) DEFAULT NULL,
  `cb_reference_no` int unsigned DEFAULT NULL,
  `cb_raise_time` datetime(6) DEFAULT NULL,
  `cb_amount` double DEFAULT NULL,
  `cb_settled_time` datetime(6) DEFAULT NULL,
  `cb_action` varchar(10) DEFAULT NULL,
  `cb_reason_code` varchar(10) DEFAULT NULL,
  `cb_reason_desc` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `acquirer_settlement_chk_1` CHECK ((`project_id` >= 0)),
  CONSTRAINT `acquirer_settlement_chk_2` CHECK ((`plaza_id` >= 0)),
  CONSTRAINT `acquirer_settlement_chk_3` CHECK ((`cb_reference_no` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquirer_settlement`
--

LOCK TABLES `acquirer_settlement` WRITE;
/*!40000 ALTER TABLE `acquirer_settlement` DISABLE KEYS */;
/*!40000 ALTER TABLE `acquirer_settlement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acquirer_url`
--

DROP TABLE IF EXISTS `acquirer_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquirer_url` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `acquirer_id` int unsigned DEFAULT NULL,
  `type` smallint unsigned DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `version` varchar(5) DEFAULT NULL,
  `asynchronous` tinyint(1) DEFAULT NULL,
  `success_http_code` int unsigned DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `acquirer_url_chk_1` CHECK ((`acquirer_id` >= 0)),
  CONSTRAINT `acquirer_url_chk_2` CHECK ((`type` >= 0)),
  CONSTRAINT `acquirer_url_chk_3` CHECK ((`success_http_code` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquirer_url`
--

LOCK TABLES `acquirer_url` WRITE;
/*!40000 ALTER TABLE `acquirer_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `acquirer_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `transaction_uuid` varchar(100) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `project_type` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `pass_id` int DEFAULT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  `vehicle_type` int DEFAULT NULL,
  `wheel_count` int DEFAULT NULL,
  `tag_type` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `epc_code` varchar(100) DEFAULT NULL,
  `tag_signature` varchar(100) DEFAULT NULL,
  `slot_allocation_type` varchar(100) DEFAULT NULL,
  `event_type` varchar(100) DEFAULT NULL,
  `record_type` varchar(100) DEFAULT NULL,
  `transaction_denial_reason` varchar(100) DEFAULT NULL,
  `entry_reader_id` int DEFAULT NULL,
  `entry_gate_id` int DEFAULT NULL,
  `entry_mode` varchar(100) DEFAULT NULL,
  `entry_operator_id` int DEFAULT NULL,
  `entry_time` datetime(6) DEFAULT NULL,
  `exit_reader_id` int DEFAULT NULL,
  `exit_gate_id` int DEFAULT NULL,
  `exit_mode` varchar(100) DEFAULT NULL,
  `exit_operator_id` int DEFAULT NULL,
  `exit_time` datetime(6) DEFAULT NULL,
  `boom_status` int DEFAULT NULL,
  `day_charges` decimal(10,2) DEFAULT NULL,
  `night_charge` decimal(10,2) DEFAULT NULL,
  `lost_ticket_charge` decimal(10,2) DEFAULT NULL,
  `helmet_charge` decimal(10,2) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `pricing_id` int DEFAULT NULL,
  `commission_meta_data` json DEFAULT NULL,
  `issuer_bank_name` varchar(100) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `foc_applied` tinyint(1) DEFAULT NULL,
  `foc_time` datetime(6) DEFAULT NULL,
  `foc_reason` varchar(100) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_status` int DEFAULT NULL,
  `synced` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Admin'),(1,'User');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (9,1,41),(10,1,42),(11,1,43),(12,1,44),(13,1,45),(14,1,46),(15,1,47),(16,1,48),(17,1,49),(18,1,50),(19,1,51),(20,1,52),(33,1,65),(34,1,66),(35,1,67),(36,1,68),(37,1,69),(38,1,70),(39,1,71),(40,1,72),(41,1,73),(42,1,74),(43,1,75),(44,1,76),(45,1,77),(46,1,78),(47,1,79),(48,1,80),(49,1,81),(50,1,82),(51,1,83),(52,1,84),(53,1,85),(54,1,86),(55,1,87),(56,1,88),(57,1,89),(58,1,90),(59,1,91),(60,1,92),(61,1,93),(62,1,94),(63,1,95),(64,1,96),(65,1,97),(66,1,98),(67,1,99),(68,1,100),(69,1,101),(70,1,102),(71,1,103),(72,1,104),(73,1,105),(74,1,106),(75,1,107),(76,1,108),(85,2,1),(86,2,2),(87,2,3),(88,2,4),(89,2,5),(90,2,6),(91,2,7),(92,2,8),(93,2,9),(94,2,10),(95,2,11),(96,2,12),(97,2,13),(98,2,14),(99,2,15),(100,2,16),(101,2,17),(102,2,18),(103,2,19),(104,2,20),(105,2,21),(106,2,22),(107,2,23),(108,2,24),(109,2,25),(110,2,26),(111,2,27),(112,2,28),(113,2,29),(114,2,30),(115,2,31),(116,2,32),(117,2,33),(118,2,34),(119,2,35),(120,2,36),(121,2,37),(122,2,38),(123,2,39),(124,2,40),(125,2,41),(126,2,42),(127,2,43),(128,2,44),(129,2,45),(130,2,46),(131,2,47),(132,2,48),(133,2,49),(134,2,50),(135,2,51),(136,2,52),(137,2,53),(138,2,54),(139,2,55),(140,2,56),(141,2,57),(142,2,58),(143,2,59),(144,2,60),(145,2,61),(146,2,62),(147,2,63),(148,2,64),(149,2,65),(150,2,66),(151,2,67),(152,2,68),(153,2,69),(154,2,70),(155,2,71),(156,2,72),(157,2,73),(158,2,74),(159,2,75),(160,2,76),(161,2,77),(162,2,78),(163,2,79),(164,2,80),(165,2,81),(166,2,82),(167,2,83),(168,2,84),(169,2,85),(170,2,86),(171,2,87),(172,2,88),(173,2,89),(174,2,90),(175,2,91),(176,2,92),(177,2,93),(178,2,94),(179,2,95),(180,2,96),(181,2,97),(182,2,98),(183,2,99),(184,2,100),(185,2,101),(186,2,102),(187,2,103),(188,2,104),(189,2,105),(190,2,106),(191,2,107),(192,2,108),(193,2,109),(194,2,110),(195,2,111),(196,2,112),(197,2,113),(198,2,114),(199,2,115),(200,2,116),(201,2,117),(202,2,118),(203,2,119),(204,2,120),(205,2,121),(206,2,122),(207,2,123),(208,2,124),(209,2,125),(210,2,126),(211,2,127),(212,2,128),(213,2,129),(214,2,130),(215,2,131),(216,2,132);
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add token',8,'add_tokenproxy'),(30,'Can change token',8,'change_tokenproxy'),(31,'Can delete token',8,'delete_tokenproxy'),(32,'Can view token',8,'view_tokenproxy'),(33,'Can add cloud command',9,'add_cloudcommand'),(34,'Can change cloud command',9,'change_cloudcommand'),(35,'Can delete cloud command',9,'delete_cloudcommand'),(36,'Can view cloud command',9,'view_cloudcommand'),(37,'Can add cloud action',10,'add_cloudaction'),(38,'Can change cloud action',10,'change_cloudaction'),(39,'Can delete cloud action',10,'delete_cloudaction'),(40,'Can view cloud action',10,'view_cloudaction'),(41,'Can add activity',11,'add_activity'),(42,'Can change activity',11,'change_activity'),(43,'Can delete activity',11,'delete_activity'),(44,'Can view activity',11,'view_activity'),(45,'Can add Pricing',12,'add_pricing'),(46,'Can change Pricing',12,'change_pricing'),(47,'Can delete Pricing',12,'delete_pricing'),(48,'Can view Pricing',12,'view_pricing'),(49,'Can add Pass',13,'add_pass'),(50,'Can change Pass',13,'change_pass'),(51,'Can delete Pass',13,'delete_pass'),(52,'Can view Pass',13,'view_pass'),(53,'Can add Tag Infra',14,'add_taginfra'),(54,'Can change Tag Infra',14,'change_taginfra'),(55,'Can delete Tag Infra',14,'delete_taginfra'),(56,'Can view Tag Infra',14,'view_taginfra'),(57,'Can add Tags',15,'add_tag'),(58,'Can change Tags',15,'change_tag'),(59,'Can delete Tags',15,'delete_tag'),(60,'Can view Tags',15,'view_tag'),(61,'Can add Vehicles',16,'add_vehicle'),(62,'Can change Vehicles',16,'change_vehicle'),(63,'Can delete Vehicles',16,'delete_vehicle'),(64,'Can view Vehicles',16,'view_vehicle'),(65,'Can add gate',17,'add_gate'),(66,'Can change gate',17,'change_gate'),(67,'Can delete gate',17,'delete_gate'),(68,'Can view gate',17,'view_gate'),(69,'Can add device',18,'add_device'),(70,'Can change device',18,'change_device'),(71,'Can delete device',18,'delete_device'),(72,'Can view device',18,'view_device'),(73,'Can add device gate mapping',19,'add_devicegatemapping'),(74,'Can change device gate mapping',19,'change_devicegatemapping'),(75,'Can delete device gate mapping',19,'delete_devicegatemapping'),(76,'Can view device gate mapping',19,'view_devicegatemapping'),(77,'Can add fas tag',20,'add_fastag'),(78,'Can change fas tag',20,'change_fastag'),(79,'Can delete fas tag',20,'delete_fastag'),(80,'Can view fas tag',20,'view_fastag'),(81,'Can add buildings',21,'add_buildings'),(82,'Can change buildings',21,'change_buildings'),(83,'Can delete buildings',21,'delete_buildings'),(84,'Can view buildings',21,'view_buildings'),(85,'Can add categories',22,'add_categories'),(86,'Can change categories',22,'change_categories'),(87,'Can delete categories',22,'delete_categories'),(88,'Can view categories',22,'view_categories'),(89,'Can add Companies',23,'add_companies'),(90,'Can change Companies',23,'change_companies'),(91,'Can delete Companies',23,'delete_companies'),(92,'Can view Companies',23,'view_companies'),(93,'Can add Configuration',24,'add_configuration'),(94,'Can change Configuration',24,'change_configuration'),(95,'Can delete Configuration',24,'delete_configuration'),(96,'Can view Configuration',24,'view_configuration'),(97,'Can add Floors',25,'add_floors'),(98,'Can change Floors',25,'change_floors'),(99,'Can delete Floors',25,'delete_floors'),(100,'Can view Floors',25,'view_floors'),(101,'Can add Inventories',26,'add_inventories'),(102,'Can change Inventories',26,'change_inventories'),(103,'Can delete Inventories',26,'delete_inventories'),(104,'Can view Inventories',26,'view_inventories'),(105,'Can add project',27,'add_project'),(106,'Can change project',27,'change_project'),(107,'Can delete project',27,'delete_project'),(108,'Can view project',27,'view_project'),(109,'Can add Users',28,'add_users'),(110,'Can change Users',28,'change_users'),(111,'Can delete Users',28,'delete_users'),(112,'Can view Users',28,'view_users'),(113,'Can add User Config',29,'add_userconfig'),(114,'Can change User Config',29,'change_userconfig'),(115,'Can delete User Config',29,'delete_userconfig'),(116,'Can view User Config',29,'view_userconfig'),(117,'Can add acquirer bank',30,'add_acquirerbank'),(118,'Can change acquirer bank',30,'change_acquirerbank'),(119,'Can delete acquirer bank',30,'delete_acquirerbank'),(120,'Can view acquirer bank',30,'view_acquirerbank'),(121,'Can add project acquirer',31,'add_projectacquirer'),(122,'Can change project acquirer',31,'change_projectacquirer'),(123,'Can delete project acquirer',31,'delete_projectacquirer'),(124,'Can view project acquirer',31,'view_projectacquirer'),(125,'Can add acquirer url',32,'add_acquirerurl'),(126,'Can change acquirer url',32,'change_acquirerurl'),(127,'Can delete acquirer url',32,'delete_acquirerurl'),(128,'Can view acquirer url',32,'view_acquirerurl'),(129,'Can add acquirer settlement',33,'add_acquirersettlement'),(130,'Can change acquirer settlement',33,'change_acquirersettlement'),(131,'Can delete acquirer settlement',33,'delete_acquirersettlement'),(132,'Can view acquirer settlement',33,'view_acquirersettlement');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$fMpaaRJdl0Er$YKs/6K27cfhry272vuKJXv9ba+OAx2/HWE7xNrofB98=','2023-12-17 04:00:18.701654',1,'adesh','Adesh','Singh','adesh.singh@parkmate.in',1,1,'2023-12-17 03:49:44.000000'),(2,'pbkdf2_sha256$216000$3vfxMI2UBhMd$yiVInd2NKsZ1a5USlbLxxW55n5gPE63S+qiiAwaq6sc=','2023-12-17 04:01:22.084195',0,'parkmate','ParkMate','','',1,1,'2023-12-17 03:51:50.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75),(76,1,76),(77,1,77),(78,1,78),(79,1,79),(80,1,80),(81,1,81),(82,1,82),(83,1,83),(84,1,84),(85,1,85),(86,1,86),(87,1,87),(88,1,88),(89,1,89),(90,1,90),(91,1,91),(92,1,92),(93,1,93),(94,1,94),(95,1,95),(96,1,96),(97,1,97),(98,1,98),(99,1,99),(100,1,100),(101,1,101),(102,1,102),(103,1,103),(104,1,104),(105,1,105),(106,1,106),(107,1,107),(108,1,108),(109,1,109),(110,1,110),(111,1,111),(112,1,112),(113,1,113),(114,1,114),(115,1,115),(116,1,116),(117,1,117),(118,1,118),(119,1,119),(120,1,120),(121,1,121),(122,1,122),(123,1,123),(124,1,124),(125,1,125),(126,1,126),(127,1,127),(128,1,128),(129,1,129),(130,1,130),(131,1,131),(132,1,132);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2023-12-17 04:07:13.440989','2023-12-17 04:07:13.441030','General',1,1),(2,'2023-12-17 04:07:22.611350','2023-12-17 04:07:22.611390','Staff',1,2),(3,'2023-12-17 04:07:29.445583','2023-12-17 04:07:29.445629','Visitor',1,3),(4,'2023-12-17 04:07:35.455715','2023-12-17 04:07:35.455753','Employee',1,4);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_action`
--

DROP TABLE IF EXISTS `cloud_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloud_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `command_id` int DEFAULT NULL,
  `command_name` varchar(100) DEFAULT NULL,
  `topic_name` varchar(100) DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` int DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_action`
--

LOCK TABLES `cloud_action` WRITE;
/*!40000 ALTER TABLE `cloud_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloud_command`
--

DROP TABLE IF EXISTS `cloud_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloud_command` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloud_command`
--

LOCK TABLES `cloud_command` WRITE;
/*!40000 ALTER TABLE `cloud_command` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloud_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `parking_flow` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `building_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `auto_checkout` tinyint(1) DEFAULT NULL,
  `print_entry_reciept` tinyint(1) DEFAULT NULL,
  `print_exit_reciept` tinyint(1) DEFAULT NULL,
  `print_parking_scheme` tinyint(1) DEFAULT NULL,
  `paid_after_full_parking` tinyint(1) DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT NULL,
  `config` json DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_gate_mapping`
--

DROP TABLE IF EXISTS `device_gate_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_gate_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `gate` int DEFAULT NULL,
  `device` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_gate_mapping`
--

LOCK TABLES `device_gate_mapping` WRITE;
/*!40000 ALTER TABLE `device_gate_mapping` DISABLE KEYS */;
INSERT INTO `device_gate_mapping` VALUES (1,'2023-12-17 04:12:34.206087','2023-12-17 04:12:34.206131',1,1,2,1,1),(2,'2023-12-17 04:12:40.426242','2023-12-17 04:12:40.426278',1,1,3,1,2),(3,'2023-12-17 04:12:45.981013','2023-12-17 04:12:45.981052',1,2,4,1,3),(4,'2023-12-17 04:12:50.936134','2023-12-17 04:12:50.936180',1,2,5,1,4);
/*!40000 ALTER TABLE `device_gate_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `device_type` int DEFAULT NULL,
  `communation_mode` varchar(100) DEFAULT NULL,
  `reader_type` int DEFAULT NULL,
  `reader_make` int DEFAULT NULL,
  `reader_power` int DEFAULT NULL,
  `reader_version` decimal(4,2) DEFAULT NULL,
  `mac_address` varchar(100) DEFAULT NULL,
  `unique_id` varchar(100) DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `port` int DEFAULT NULL,
  `last_online` datetime(6) DEFAULT NULL,
  `config` json DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'2023-12-17 04:09:30.777886','2023-12-17 04:09:30.777929',1,'Local Server','Local Server',1,'tcp',NULL,NULL,NULL,NULL,'74:56:3C:1B:79:AE',NULL,'192.168.7.2',80,NULL,'{}',1,1),(2,'2023-12-17 04:10:04.483301','2023-12-17 04:10:04.483343',1,'Entry Controller 1','Entry Controller 1',2,'tcp',NULL,NULL,NULL,NULL,'D8:3A:DD:51:D5:C0',NULL,'192.168.7.3',80,NULL,'{}',1,2),(3,'2023-12-17 04:10:45.943443','2023-12-17 04:10:45.943479',1,'Entry Reader 1','Entry Reader 1',3,'tcp',1,1,20,4.15,NULL,NULL,'192.168.7.51',7000,NULL,'{}',1,3),(4,'2023-12-17 04:11:27.234686','2023-12-17 04:11:27.234725',1,'Exit Controller 1','Exit Controller 1',2,'tcp',NULL,NULL,NULL,NULL,NULL,NULL,'192.168.7.4',80,NULL,'{}',1,4),(5,'2023-12-17 04:12:17.078264','2023-12-17 04:12:17.078303',1,'Exit Reader 1','Exit Reader 1',3,'tcp',1,1,20,4.15,NULL,NULL,'192.168.7.52',7000,NULL,'{}',1,5);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-17 03:50:53.700998','1','adesh',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"User permissions\"]}}]',4,1),(2,'2023-12-17 03:51:06.167795','1','adesh',2,'[]',4,1),(3,'2023-12-17 03:53:33.161579','2','parkmate',2,'[{\"changed\": {\"fields\": [\"First name\", \"Superuser status\", \"User permissions\"]}}]',4,1),(4,'2023-12-17 03:56:20.996376','1','Users',1,'[{\"added\": {}}]',3,1),(5,'2023-12-17 03:56:41.093331','2','parkmate',2,'[{\"changed\": {\"fields\": [\"Groups\", \"User permissions\"]}}]',4,1),(6,'2023-12-17 03:57:47.338104','2','Admin',1,'[{\"added\": {}}]',3,1),(7,'2023-12-17 03:57:53.236063','1','User',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',3,1),(8,'2023-12-17 03:58:14.200427','2','parkmate',2,'[]',4,1),(9,'2023-12-17 03:59:55.205412','1','User',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(10,'2023-12-17 04:01:13.228817','1','User',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(11,'2023-12-17 04:06:50.685498','1','Project object (1)',1,'[{\"added\": {}}]',27,2),(12,'2023-12-17 04:07:13.441878','1','Categories object (1)',1,'[{\"added\": {}}]',22,2),(13,'2023-12-17 04:07:22.612681','2','Categories object (2)',1,'[{\"added\": {}}]',22,2),(14,'2023-12-17 04:07:29.446472','3','Categories object (3)',1,'[{\"added\": {}}]',22,2),(15,'2023-12-17 04:07:35.457063','4','Categories object (4)',1,'[{\"added\": {}}]',22,2),(16,'2023-12-17 04:08:24.334633','1','ID: 1',1,'[{\"added\": {}}]',17,2),(17,'2023-12-17 04:08:55.024777','2','ID: 2',1,'[{\"added\": {}}]',17,2),(18,'2023-12-17 04:09:30.779092','1','ID: 1',1,'[{\"added\": {}}]',18,2),(19,'2023-12-17 04:10:04.485032','2','ID: 2',1,'[{\"added\": {}}]',18,2),(20,'2023-12-17 04:10:45.944808','3','ID: 3',1,'[{\"added\": {}}]',18,2),(21,'2023-12-17 04:11:27.236372','4','ID: 4',1,'[{\"added\": {}}]',18,2),(22,'2023-12-17 04:12:17.079480','5','ID: 5',1,'[{\"added\": {}}]',18,2),(23,'2023-12-17 04:12:34.207021','1','ID: 1',1,'[{\"added\": {}}]',19,2),(24,'2023-12-17 04:12:40.427501','2','ID: 2',1,'[{\"added\": {}}]',19,2),(25,'2023-12-17 04:12:45.981931','3','ID: 3',1,'[{\"added\": {}}]',19,2),(26,'2023-12-17 04:12:50.937548','4','ID: 4',1,'[{\"added\": {}}]',19,2);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (30,'acquirer','acquirerbank'),(33,'acquirer','acquirersettlement'),(32,'acquirer','acquirerurl'),(31,'acquirer','projectacquirer'),(11,'activity','activity'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(8,'authtoken','tokenproxy'),(10,'cloud_action','cloudaction'),(9,'cloud_action','cloudcommand'),(5,'contenttypes','contenttype'),(18,'device','device'),(19,'device','devicegatemapping'),(17,'device','gate'),(20,'fastag','fastag'),(21,'infra','buildings'),(22,'infra','categories'),(23,'infra','companies'),(24,'infra','configuration'),(25,'infra','floors'),(26,'infra','inventories'),(27,'infra','project'),(12,'pricing','pricing'),(6,'sessions','session'),(29,'users','userconfig'),(28,'users','users'),(13,'vehicle','pass'),(15,'vehicle','tag'),(14,'vehicle','taginfra'),(16,'vehicle','vehicle');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-17 03:48:51.518459'),(2,'auth','0001_initial','2023-12-17 03:48:51.719686'),(3,'admin','0001_initial','2023-12-17 03:48:52.236165'),(4,'admin','0002_logentry_remove_auto_add','2023-12-17 03:48:52.371264'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-17 03:48:52.387885'),(6,'contenttypes','0002_remove_content_type_name','2023-12-17 03:48:52.522376'),(7,'auth','0002_alter_permission_name_max_length','2023-12-17 03:48:52.594512'),(8,'auth','0003_alter_user_email_max_length','2023-12-17 03:48:52.631363'),(9,'auth','0004_alter_user_username_opts','2023-12-17 03:48:52.646796'),(10,'auth','0005_alter_user_last_login_null','2023-12-17 03:48:52.717209'),(11,'auth','0006_require_contenttypes_0002','2023-12-17 03:48:52.722736'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-17 03:48:52.737171'),(13,'auth','0008_alter_user_username_max_length','2023-12-17 03:48:52.819019'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-17 03:48:52.894497'),(15,'auth','0010_alter_group_name_max_length','2023-12-17 03:48:52.929065'),(16,'auth','0011_update_proxy_permissions','2023-12-17 03:48:52.975577'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-17 03:48:53.063760'),(18,'authtoken','0001_initial','2023-12-17 03:48:53.113020'),(19,'authtoken','0002_auto_20160226_1747','2023-12-17 03:48:53.324584'),(20,'authtoken','0003_tokenproxy','2023-12-17 03:48:53.334647'),(21,'sessions','0001_initial','2023-12-17 03:48:53.366833'),(22,'acquirer','0001_initial','2023-12-17 03:48:55.644263'),(23,'device','0001_initial','2023-12-17 03:48:58.015901'),(24,'infra','0001_initial','2023-12-17 03:48:59.971250'),(25,'users','0001_initial','2023-12-17 03:49:01.756246'),(26,'fastag','0001_initial','2023-12-17 03:49:03.510662'),(27,'pricing','0001_initial','2023-12-17 03:49:05.295568'),(28,'vehicle','0001_initial','2023-12-17 03:49:07.067070'),(29,'activity','0001_initial','2023-12-17 03:49:08.748566'),(30,'cloud_action','0001_initial','2023-12-17 03:49:10.444135');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3rphpgionrlyha2irws0yr9iqujtssob','.eJxVjDsOwjAQRO_iGln-4B8lPWew1rs2DiBHipMKcXccKQVUI715M28WYVtr3Hpe4kTswhQ7_bIE-MxtL-gB7T5znNu6TInvCj_azm8z5df1cP8OKvQ61lgASDqQ3giwiYoSjjQaMRiEc9HJJym0y9m4Ykc6X1BoALSgQgjs8wX_1jhb:1rEdBq:3msao5XDzbbK_v6O5IfFfv5y-NmKUSFKNvepiPp5-tc','2023-12-31 04:01:22.089519');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fastag_payments`
--

DROP TABLE IF EXISTS `fastag_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fastag_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_uuid` varchar(100) DEFAULT NULL,
  `transaction_id` int unsigned DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `project_name` varchar(200) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `entry_gate` varchar(20) DEFAULT NULL,
  `exit_gate` varchar(20) DEFAULT NULL,
  `lane_id` varchar(20) DEFAULT NULL,
  `lane_direction` varchar(2) DEFAULT NULL,
  `geocode` varchar(100) DEFAULT NULL,
  `tag_id` varchar(24) DEFAULT NULL,
  `tid` varchar(24) DEFAULT NULL,
  `reg_number` varchar(50) DEFAULT NULL,
  `reader_id` varchar(100) DEFAULT NULL,
  `tag_signature` varchar(64) DEFAULT NULL,
  `epc_code` varchar(34) DEFAULT NULL,
  `tag_read_time` datetime(6) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_status` int unsigned NOT NULL,
  `last_status_check_at` datetime(6) DEFAULT NULL,
  `tag_vc` varchar(2) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fastag_payments_tag_id_0b3a26f3` (`tag_id`),
  KEY `fastag_payments_tid_472c8f43` (`tid`),
  KEY `fastag_payments_reg_number_4e65c4f6` (`reg_number`),
  KEY `fastag_payments_epc_code_aea0fd2c` (`epc_code`),
  CONSTRAINT `fastag_payments_chk_1` CHECK ((`transaction_id` >= 0)),
  CONSTRAINT `fastag_payments_chk_2` CHECK ((`project_id` >= 0)),
  CONSTRAINT `fastag_payments_chk_3` CHECK ((`payment_status` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fastag_payments`
--

LOCK TABLES `fastag_payments` WRITE;
/*!40000 ALTER TABLE `fastag_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fastag_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gates`
--

DROP TABLE IF EXISTS `gates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `gate_number` int DEFAULT NULL,
  `gate_type` varchar(100) DEFAULT NULL,
  `gate_location` varchar(100) DEFAULT NULL,
  `direction` varchar(10) DEFAULT NULL,
  `fastag_acquire_lan_id` varchar(10) DEFAULT NULL,
  `led_display_text` varchar(100) DEFAULT NULL,
  `config` json DEFAULT NULL,
  `notification` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gates`
--

LOCK TABLES `gates` WRITE;
/*!40000 ALTER TABLE `gates` DISABLE KEYS */;
INSERT INTO `gates` VALUES (1,'2023-12-17 04:08:24.333307','2023-12-17 04:08:24.333355',1,'Entry Gate 1','Entry Gate 1',1,'entry','ground_floor','N','APRAM01','Welcome to MGBS Bus Depot','{\"open_boom\": {\"interval\": 300, \"pin_number\": 17, \"first_action\": \"high\", \"second_action\": \"low\"}, \"close_boom\": {\"interval\": 300, \"pin_number\": 27, \"first_action\": \"high\", \"second_action\": \"low\"}, \"default_pins\": [{\"interval\": 0, \"pin_number\": 0, \"first_action\": \"low\", \"second_action\": \"\"}], \"presence_loop\": {\"pin\": {\"interval\": 0, \"pin_number\": 24, \"first_action\": \"\", \"second_action\": \"\", \"loop_active_value\": 0}, \"is_active\": true}, \"traffic_light\": {\"pin\": {\"interval\": 3000, \"pin_number\": 22, \"first_action\": \"high\", \"second_action\": \"low\"}, \"is_active\": true}, \"is_nfc_readers\": false, \"tag_locked_pin\": {\"pin\": {\"interval\": 3000, \"pin_number\": 23, \"first_action\": \"high\", \"second_action\": \"low\"}, \"is_active\": true}, \"is_rfid_readers\": true, \"is_tvm_available\": false, \"is_locked_tag_exit\": false, \"is_locked_tag_entry\": true, \"cache_timeout_tag_data\": 1400, \"controller_monitoring_pins\": {\"panel_health_pin\": {\"interval\": 1200, \"pin_number\": 14, \"first_action\": \"high\", \"second_action\": \"low\"}, \"reader_connected_pin\": {\"interval\": 0, \"pin_number\": 15, \"first_action\": \"high\", \"second_action\": \"\"}, \"internet_connected_pin\": {\"interval\": 0, \"pin_number\": 18, \"first_action\": \"high\", \"second_action\": \"\"}, \"reader_disconnected_pin\": {\"interval\": 0, \"pin_number\": 15, \"first_action\": \"low\", \"second_action\": \"\"}, \"internet_disconnected_pin\": {\"interval\": 0, \"pin_number\": 18, \"first_action\": \"low\", \"second_action\": \"\"}}, \"start_panel_monitoring_leds\": true, \"is_tag_validation_applicable\": true, \"retry_reader_connection_time\": 5, \"entry_exit_tag_read_time_buffer\": 30}',1,1,1),(2,'2023-12-17 04:08:55.023103','2023-12-17 04:08:55.023154',1,'Exit Gate 1','Exit Gate 1',2,'entry','ground_floor','N','APRAM02','Thankyou for visiting MGBS Bus Depot','{\"open_boom\": {\"interval\": 300, \"pin_number\": 17, \"first_action\": \"high\", \"second_action\": \"low\"}, \"close_boom\": {\"interval\": 300, \"pin_number\": 27, \"first_action\": \"high\", \"second_action\": \"low\"}, \"default_pins\": [{\"interval\": 0, \"pin_number\": 0, \"first_action\": \"low\", \"second_action\": \"\"}], \"presence_loop\": {\"pin\": {\"interval\": 0, \"pin_number\": 24, \"first_action\": \"\", \"second_action\": \"\", \"loop_active_value\": 0}, \"is_active\": true}, \"traffic_light\": {\"pin\": {\"interval\": 3000, \"pin_number\": 22, \"first_action\": \"high\", \"second_action\": \"low\"}, \"is_active\": true}, \"is_nfc_readers\": false, \"tag_locked_pin\": {\"pin\": {\"interval\": 3000, \"pin_number\": 23, \"first_action\": \"high\", \"second_action\": \"low\"}, \"is_active\": true}, \"is_rfid_readers\": true, \"is_tvm_available\": false, \"is_locked_tag_exit\": false, \"is_locked_tag_entry\": true, \"cache_timeout_tag_data\": 1400, \"controller_monitoring_pins\": {\"panel_health_pin\": {\"interval\": 1200, \"pin_number\": 14, \"first_action\": \"high\", \"second_action\": \"low\"}, \"reader_connected_pin\": {\"interval\": 0, \"pin_number\": 15, \"first_action\": \"high\", \"second_action\": \"\"}, \"internet_connected_pin\": {\"interval\": 0, \"pin_number\": 18, \"first_action\": \"high\", \"second_action\": \"\"}, \"reader_disconnected_pin\": {\"interval\": 0, \"pin_number\": 15, \"first_action\": \"low\", \"second_action\": \"\"}, \"internet_disconnected_pin\": {\"interval\": 0, \"pin_number\": 18, \"first_action\": \"low\", \"second_action\": \"\"}}, \"start_panel_monitoring_leds\": true, \"is_tag_validation_applicable\": true, \"retry_reader_connection_time\": 5, \"entry_exit_tag_read_time_buffer\": 30}',1,1,2);
/*!40000 ALTER TABLE `gates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `building_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `wheel_count` int DEFAULT NULL,
  `total_slot` int DEFAULT NULL,
  `available_slot` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass`
--

DROP TABLE IF EXISTS `pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `pass_type` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `buildings_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  `tag_epc` varchar(100) DEFAULT NULL,
  `start_time` time(6) DEFAULT NULL,
  `end_time` time(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `config` json DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass`
--

LOCK TABLES `pass` WRITE;
/*!40000 ALTER TABLE `pass` DISABLE KEYS */;
/*!40000 ALTER TABLE `pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `configuration_id` int DEFAULT NULL,
  `day_type` int DEFAULT NULL,
  `b2b_config` json DEFAULT NULL,
  `b2c_config` json DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_acquirer`
--

DROP TABLE IF EXISTS `project_acquirer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_acquirer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned DEFAULT NULL,
  `plaza_id` int unsigned DEFAULT NULL,
  `acquirer_id` int unsigned DEFAULT NULL,
  `org_id` varchar(10) DEFAULT NULL,
  `agency_code` varchar(10) DEFAULT NULL,
  `commission_percent` double DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `project_acquirer_chk_1` CHECK ((`project_id` >= 0)),
  CONSTRAINT `project_acquirer_chk_2` CHECK ((`plaza_id` >= 0)),
  CONSTRAINT `project_acquirer_chk_3` CHECK ((`acquirer_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_acquirer`
--

LOCK TABLES `project_acquirer` WRITE;
/*!40000 ALTER TABLE `project_acquirer` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_acquirer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `inventory_management` tinyint(1) DEFAULT NULL,
  `gst_number` varchar(100) DEFAULT NULL,
  `project_type` int DEFAULT NULL,
  `config` json DEFAULT NULL,
  `payment_status` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'2023-12-17 04:06:50.683632','2023-12-17 04:06:50.683673','MGBS Bus Depot','MGBS Bus Depot, Hyderabad','Hyderabad','Telengana',NULL,NULL,'17.378826','78.483547',0,NULL,4,'{\"port\": 1883, \"display_name\": \"MGBS Bus Depot\", \"broker_address\": \"pms.parkmate.in\", \"shift_end_time\": \"11:59 PM\", \"health_check_api\": \"pms.parkmate.in\", \"shift_start_time\": \"12:00 AM\", \"is_central_server\": [{\"active\": true, \"server_ip\": \"192.168.7.2\"}], \"vehicle_type_list\": [{\"name\": \"motorcycle\", \"wheel_count\": 2}, {\"name\": \"auto\", \"wheel_count\": 3}, {\"name\": \"car\", \"wheel_count\": 4}, {\"name\": \"mini_bus\", \"wheel_count\": 4}, {\"name\": \"bus\", \"wheel_count\": 6}, {\"name\": \"truck\", \"wheel_count\": 8}], \"parking_admin_phone_number\": \"\"}',1,1,1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_infra`
--

DROP TABLE IF EXISTS `tag_infra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_infra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `tag_type` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `gate_id` int DEFAULT NULL,
  `pass_id` int DEFAULT NULL,
  `tag_expiry` datetime(6) DEFAULT NULL,
  `lock_tag` tinyint(1) DEFAULT NULL,
  `lost_tag` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_infra`
--

LOCK TABLES `tag_infra` WRITE;
/*!40000 ALTER TABLE `tag_infra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_infra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `tag_id` varchar(10) DEFAULT NULL,
  `integrated_tag_id` varchar(10) DEFAULT NULL,
  `epc_code` varchar(50) DEFAULT NULL,
  `tid` varchar(50) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_config`
--

DROP TABLE IF EXISTS `user_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `building_id` int DEFAULT NULL,
  `floor_id` int DEFAULT NULL,
  `gate_id` int DEFAULT NULL,
  `notification` tinyint(1) DEFAULT NULL,
  `transaction` tinyint(1) DEFAULT NULL,
  `inventory` tinyint(1) DEFAULT NULL,
  `search_vehicle` tinyint(1) DEFAULT NULL,
  `allow_ticketing` tinyint(1) DEFAULT NULL,
  `reports` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_config`
--

LOCK TABLES `user_config` WRITE;
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `logged_in` datetime(6) DEFAULT NULL,
  `logged_out` datetime(6) DEFAULT NULL,
  `staff` tinyint(1) DEFAULT NULL,
  `master` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `regn_number` varchar(100) DEFAULT NULL,
  `temp_regn_number` varchar(100) DEFAULT NULL,
  `wheel_count` int DEFAULT NULL,
  `vehicle_type` int DEFAULT NULL,
  `registered_on_app` tinyint(1) DEFAULT NULL,
  `config` json DEFAULT NULL,
  `cloud_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16 22:45:48
