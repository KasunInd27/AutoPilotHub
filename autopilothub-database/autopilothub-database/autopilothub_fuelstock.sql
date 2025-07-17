-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: autopilothub
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `fuelstock`
--

DROP TABLE IF EXISTS `fuelstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuelstock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fuel_type` varchar(1000) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `supplier` varchar(1000) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuelstock`
--

LOCK TABLES `fuelstock` WRITE;
/*!40000 ALTER TABLE `fuelstock` DISABLE KEYS */;
INSERT INTO `fuelstock` VALUES (1,'Petrol(Gasoline)',1000,'D.M.S.Dias',112,'2025-05-02'),(2,'diesel',2000,'D.M.S.dilhan',111,'2025-05-01'),(3,'Ethanal',3000,'D.M.S.dilhan',120,'2025-04-30'),(4,'Kerosene',3300,'Mrs.Nimali',112,'2025-05-04'),(5,'Petrol(Gasoline)',1000,'D.M.dinuth',114,'2025-05-05'),(9,'Compressed Natural Gas (CNG)',3000,'p.kumaara',300,'2025-05-07'),(10,'Kerosene',800,'d.s.d.nimal',90,'2025-04-28'),(11,'Kerosene',800,'d.s.d.nimal',90,'2025-04-28'),(12,'Petrol(Gasoline)',1000,'tasma',100,'2025-05-06'),(33,'Petrol(Gasoline)',1000,'D.M.S.Dias',100,'2025-05-19');
/*!40000 ALTER TABLE `fuelstock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-24 19:06:16
