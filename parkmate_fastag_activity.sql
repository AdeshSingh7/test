-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: parkmate_fastag
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `paid` tinyint(1) NOT NULL,
  `foc_applied` tinyint(1) NOT NULL,
  `foc_time` datetime(6) DEFAULT NULL,
  `foc_reason` varchar(100) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_status` int DEFAULT NULL,
  `synced` tinyint(1) NOT NULL,
  `cloud_id` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cloud_id` (`cloud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}',NULL,0,0,NULL,NULL,NULL,NULL,0,NULL,'2024-03-07 16:03:16.215000','2024-03-07 17:48:57.458854'),(2,'A4zZqRCuxyTEmANjynoXXE',1,'Multilevel Parking Hazratganj',4,3,'Visitor',NULL,NULL,NULL,'UP32JE9797',4,4,1,NULL,'34161FA8203289721F95BDC0','E06F211AC98275633F3AE580433BC4788C8F21D80BAB77CF4F248828DF714CF7','3','entry','ingress',NULL,4,2,'auto',NULL,'2024-03-07 18:00:59.583225',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}',NULL,0,0,NULL,NULL,NULL,1,0,NULL,'2024-03-07 18:00:59.584250','2024-03-07 18:00:59.584267'),(3,'ByCnPrAvKXTSuLRyYyQf8d',1,'Multilevel Parking Hazratganj',4,3,'Visitor',NULL,NULL,NULL,'DL10CK6545',4,4,1,NULL,'34161FA8203289723BC1B500','C19A23BDE8BA65C6E71814046C57FFD1FC18EF0D7B76F3E125AD520AB9D6FECE','3','entry','ingress',NULL,4,2,'auto',NULL,'2024-03-07 18:01:09.722515',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}',NULL,0,0,NULL,NULL,NULL,1,0,NULL,'2024-03-07 18:01:09.723227','2024-03-07 18:01:09.723243'),(4,'giF8gmfR4N8qGRukAt7fE9',1,'Multilevel Parking Hazratganj',4,3,'Visitor',NULL,NULL,NULL,'UP32FB2153',4,4,1,NULL,'34161FA8203289722FF330C0','B3296DA0A12C67FA377A88AA9D7B3C661D6E8C4D3A8FC85A35B5915929E61D49','3','entry','ingress',NULL,4,2,'auto',NULL,'2024-03-07 18:01:50.228206',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}',NULL,0,0,NULL,NULL,NULL,1,0,NULL,'2024-03-07 18:01:50.231750','2024-03-07 18:01:50.231777'),(5,'3dtJhtjzdyvuqyCHXfGNUA',1,'Multilevel Parking Hazratganj',4,3,'Visitor',NULL,NULL,NULL,'UP32LF3248',4,4,1,NULL,'34161FA8203288AC077E6640','46A28A23E31A0CEC1ABAF6DA528FD44A75F514AE265C2DDCD12DFB5EA628482B','3','entry','ingress',NULL,4,2,'auto',NULL,'2024-03-07 18:02:29.683895',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{}',NULL,0,0,NULL,NULL,NULL,1,0,NULL,'2024-03-07 18:02:29.688098','2024-03-07 18:02:29.688128');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 18:04:39
