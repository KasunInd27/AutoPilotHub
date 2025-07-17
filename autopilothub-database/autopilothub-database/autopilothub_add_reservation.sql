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
-- Table structure for table `add_reservation`
--

DROP TABLE IF EXISTS `add_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(1000) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `email_address` varchar(1000) DEFAULT NULL,
  `vehicle_model` varchar(1000) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `license_plate` varchar(1000) DEFAULT NULL,
  `service_type` varchar(1000) DEFAULT NULL,
  `preferred_date` date DEFAULT NULL,
  `preferred_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_reservation`
--

LOCK TABLES `add_reservation` WRITE;
/*!40000 ALTER TABLE `add_reservation` DISABLE KEYS */;
INSERT INTO `add_reservation` VALUES (91,'Dasun Shanaka ','0716112390','dasun1@gmail.com','BYD',2022,'CAK1941','Engine Diagnostics','2025-05-19','09:00:00'),(92,'Viboothi','0716892366','viboothi23@gmail.com','Mazda',2024,'CAK4567','Brake Service','2025-05-16','14:00:00'),(96,'Sewmini Shashikala','0719522466','sewmini12@gmail.com','Honda Vazel',2023,'CBJ4567','Engine Diagnostics','2025-05-23','14:00:00'),(97,'Dasun','0716192390','asd@gmail.com','Honda Vazel',2025,'CAK1041','General Maintenance','2025-05-23','09:00:00'),(99,'sewmini ','0753585268','sewminishashikala@gmail.com','BYD',2025,'WER','Oil Change','2025-05-17','09:00:00'),(100,'sewmini Shashikala','0753585268','sewminishashikala@gmail.com','BYD',2025,'WER','Oil Change','2025-05-17','09:00:00'),(101,'Sewmini Shashikala','0753585268','sewminishashikala@gmail.com','BYD',2025,'BDD1767','Engine Diagnostics','2025-05-19','09:00:00'),(102,'Kasun Indrajith','0718522318','kasunindrajith2016@gmail.com','Toyota Aqua',2022,'CAJ1677','General Maintenance','2025-05-22','09:00:00'),(103,'Lahiru Sahan','0718522319','lahiru1996@gmail.com','Toyota Aqua',2022,'DAJ1677','Air Conditioning','2025-05-21','14:00:00');
/*!40000 ALTER TABLE `add_reservation` ENABLE KEYS */;
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
