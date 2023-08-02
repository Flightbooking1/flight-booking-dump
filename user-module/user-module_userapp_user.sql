-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: user-module
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
-- Table structure for table `userapp_user`
--

DROP TABLE IF EXISTS `userapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userapp_user` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` bigint NOT NULL,
  `role` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userapp_user`
--

LOCK TABLES `userapp_user` WRITE;
/*!40000 ALTER TABLE `userapp_user` DISABLE KEYS */;
INSERT INTO `userapp_user` VALUES (NULL,0,'Rasamsetti','Karthik',0,1,'2023-07-05 06:23:59.775066',1,'karthikrasamsetti@gmail.com','pbkdf2_sha256$600000$nN9ozmrVRDuX54JmgRt6Ji$6hahyMSUD1UHb/LWzuiudezexB08SZiuHp2Jk4EUuFE=',9381243030,'admin','active'),(NULL,0,'uma','mahesh',0,1,'2023-07-05 06:27:01.034713',2,'umamahesh@gmail.com','pbkdf2_sha256$600000$MIKck9fumFZSCZw2tgrm3H$iaH77K+2jhJVmJHUR35nbYbv8epHBlKJc42byaEDNeM=',9876543216,'user','active'),(NULL,0,'mahesh','uma',0,1,'2023-07-05 06:45:00.489700',3,'umamaheshnani123@gmail.com','pbkdf2_sha256$600000$TT2v1eo8CMjT4FskK6JZtx$/rUkjfFP32286chSZE1bCbA0NKorV7AfAr4gDWPLVf4=',9876543213,'user','active'),(NULL,0,'sai','ram',0,1,'2023-07-05 07:21:35.913432',4,'sairam@gmail.com','pbkdf2_sha256$600000$q3RqttS2Nse4Wzs5rXJWC4$cVrZFO1EUcq5QyAhv0kxK8pJEL3ek9FjGMgS6t3tZlE=',9876543211,'user','active'),(NULL,0,'roshan','nayak',0,1,'2023-07-05 09:32:54.913642',5,'roshannayak5977@gmail.com','pbkdf2_sha256$600000$atBBUPA5dCtrx9yhBgQURX$Wr3Z0jBvBKCKyznShiG22X7dkCL1De2NPbP9A0irdic=',9987654321,'user','active'),(NULL,0,'akash','gowda',0,1,'2023-07-06 06:51:21.941403',6,'akashgowda0902@gmail.com','pbkdf2_sha256$600000$1YUQk4fKzDVaNgwPlFEUzx$5kq0yf/YH4m9Wjl37MiEMoB0huUCRJCGfUDm1JzDLAU=',9345678289,'user','active'),(NULL,0,'gowtham','g',0,1,'2023-07-06 09:05:12.560079',7,'gowtham@gmail.com','pbkdf2_sha256$600000$eab3RgdNLTssWqAxkNWyXB$xwdmD44C2cewp1Fe4Rkb3/tmtsBji7eqkmaab2uBZhY=',9876543212,'user','active'),(NULL,0,'jaya','ram',0,1,'2023-07-06 09:07:00.018660',8,'jayaram@gmail.com','pbkdf2_sha256$600000$Baut0mZk3jnoFG2CN3D4C0$KaQlAA0GNxw11r2QrC4yXfJ/8qeOm/h1q5hXiDua/I0=',9876543212,'user','active'),(NULL,0,'poojitha','p',0,1,'2023-07-06 09:10:01.875573',9,'poojitha@gmail.com','pbkdf2_sha256$600000$aUaimLFTyUGqXtH2aEBC0o$TLDyX65hC3rPHX8aOGmlcziCu5l8k9f0ARaPLDJzqkE=',9765547765,'user','active'),(NULL,0,'bota','b',0,1,'2023-07-06 09:11:26.901193',10,'bot1@gmail.com','pbkdf2_sha256$600000$LtKRnI7FJaCyNEjPgTDzck$B6pqHubBMoby27gW2p0Dze3yP8SaeyRTVxnr9LedVpY=',6789765487,'user','active'),(NULL,0,'botb','b',0,1,'2023-07-06 09:12:56.585314',11,'bot2@gmail.com','pbkdf2_sha256$600000$BI5w8M2deiOV2GPgasFwDt$N8kWl2K8Sfyfo7t9m4LAP3FpICZpDlg3YnKB6j7kUCM=',9381243030,'user','active'),(NULL,0,'botc','b',0,1,'2023-07-06 09:14:50.526361',12,'bot3@gmail.com','pbkdf2_sha256$600000$FFGGPk4nmnqyQpaYW2YfJ7$cb9I0XCWz0etscvzvQ8dKNJavGb9b/pnnEuGATI7g+k=',9381243030,'user','active'),(NULL,0,'botd','b',0,1,'2023-07-06 09:16:51.293161',13,'bot4@gmail.com','pbkdf2_sha256$600000$2nS5Dw4FjDlX2zPWfuyvUp$p0sBO02leCBzkHYurn0zJIHRjdAbWzAX29b6F0K93x0=',9381243030,'user','active'),(NULL,0,'bote','b',0,1,'2023-07-06 09:17:38.024080',14,'bot5@gmail.com','pbkdf2_sha256$600000$ff4BOFqvbqNt7bfEdkMrSj$E3j8Uaw9RB2LmqQIOiroIOQDVilMjQqaXc4zYfYWfZI=',9381243030,'user','active'),(NULL,0,'Krupal','Airlines',0,1,'2023-07-06 10:11:42.176179',15,'krupalair@krupal.com','pbkdf2_sha256$600000$apu6bgEYdakUQg9bzbV0Pa$VUy/FVF9sdjCRkBoJ0TzXFQYr8Xb3KGGolR1iFgm3jo=',9876543215,'admin','active'),(NULL,0,'Mahesh','d',0,1,'2023-07-06 10:43:52.487375',16,'mahesh@gmail.com','pbkdf2_sha256$600000$TeCRyLSQRVs4CLaBb9R2iZ$esfqAT9O+MOIc6vL2cVCPr0y05I7Y0GPE7m7pJq1OVI=',7674574568,'user','active');
/*!40000 ALTER TABLE `userapp_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-02 14:09:23
