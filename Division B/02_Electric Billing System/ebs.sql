-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ebs
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `meter_no` varchar(20) DEFAULT NULL,
  `month` varchar(30) DEFAULT NULL,
  `units` varchar(20) DEFAULT NULL,
  `totalbill` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('511762','January','231','2229','Not Paid'),('511762','January','213','2067','Not Paid'),('398256','January','123','1257','Not Paid'),('511762','January','321','3039','Not Paid'),('511762','January','123','1257','Not Paid'),('398256','January','3231','29229','Not Paid'),('511762','January','31','429','Not Paid'),('511762','January','123','1257','Not Paid'),('548841','January','24','366','Not Paid'),('626842','January','34','456','Paid'),('302159','January','26','384','Paid'),('921382','January','34','456','Not Paid');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `name` varchar(20) DEFAULT NULL,
  `meter_no` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `meter_no` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('','harsh','Kaushik','123456','Customer'),('','harsh','admin','123456','Customer'),('511762','harsh','Harsh','123456','Customer'),('','admin','kaushik','123456','Admin'),('398256','','abc','',''),('580434','','abc','',''),('548841','','ab','',''),('387661','','as','',''),('842533','','d','',''),('','admin1','Admin','12345','Admin'),('626842','Customer','customer','123456','Customer'),('302159','cust1','ab','123456','Customer'),('33184','','a','',''),('921382','Ram','Ram','123456','Customer');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meter_info`
--

DROP TABLE IF EXISTS `meter_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meter_info` (
  `meter_no` varchar(20) DEFAULT NULL,
  `meter_location` varchar(20) DEFAULT NULL,
  `meter_type` varchar(20) DEFAULT NULL,
  `phase_code` varchar(20) DEFAULT NULL,
  `bill_type` varchar(20) DEFAULT NULL,
  `days` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter_info`
--

LOCK TABLES `meter_info` WRITE;
/*!40000 ALTER TABLE `meter_info` DISABLE KEYS */;
INSERT INTO `meter_info` VALUES ('511762','Inside','Electric Meter','011','Normal','30'),('398256','Outside','Electric Meter','011','Normal','30'),('580434','Outside','Electric Meter','011','Normal','30'),('','Outside','Electric Meter','011','Normal','30'),('548841','Inside','Electric Meter','011','Normal','30'),('387661','Outside','Electric Meter','011','Normal','30'),('842533','Outside','Electric Meter','011','Normal','30'),('626842','Inside','Electric Meter','011','Normal','30'),('302159','Outside','Electric Meter','011','Normal','30'),('33184','Inside','Electric Meter','011','Normal','30'),('921382','Outside','Electric Meter','011','Normal','30');
/*!40000 ALTER TABLE `meter_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax` (
  `cost_per_unit` varchar(20) DEFAULT NULL,
  `meter_rent` varchar(20) DEFAULT NULL,
  `service_charge` varchar(20) DEFAULT NULL,
  `service_tax` varchar(20) DEFAULT NULL,
  `swacch_bharat_cess` varchar(20) DEFAULT NULL,
  `fixed_tax` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
INSERT INTO `tax` VALUES ('9','47','22','57','6','18');
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-29 17:18:44
