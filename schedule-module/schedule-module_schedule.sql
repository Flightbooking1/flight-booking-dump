-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: schedule-module
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `arrival_time` datetime(6) NOT NULL,
  `departure_time` datetime(6) NOT NULL,
  `available_seats` int NOT NULL,
  `base_price` double NOT NULL,
  `status` varchar(45) NOT NULL,
  `destination_airport` bigint NOT NULL,
  `flight_id` bigint NOT NULL,
  `source_airport` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_destination_airport_39a6c3dd_fk_airport_id` (`destination_airport`),
  KEY `schedule_flight_id_9f7ab0ae_fk_flight_id` (`flight_id`),
  KEY `schedule_source_airport_6e53119a_fk_airport_id` (`source_airport`),
  CONSTRAINT `schedule_destination_airport_39a6c3dd_fk_airport_id` FOREIGN KEY (`destination_airport`) REFERENCES `airport` (`id`),
  CONSTRAINT `schedule_flight_id_9f7ab0ae_fk_flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`),
  CONSTRAINT `schedule_source_airport_6e53119a_fk_airport_id` FOREIGN KEY (`source_airport`) REFERENCES `airport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'2023-07-06 15:04:00.000000','2023-07-06 11:04:00.000000',92,5000,'Active',2,2,1),(3,'2023-07-07 18:13:00.000000','2023-07-07 14:13:00.000000',100,5000,'Active',1,2,2);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 14:09:21
