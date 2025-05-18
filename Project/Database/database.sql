-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: booking_test
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adID` int NOT NULL,
  PRIMARY KEY (`adID`),
  CONSTRAINT `aid` FOREIGN KEY (`adID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (19),(20);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `vehicleID` int NOT NULL,
  `type_uf` varchar(10) DEFAULT NULL,
  `pick_up` varchar(20) NOT NULL,
  `return_des` varchar(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `manaID` int DEFAULT NULL,
  `cusID` int NOT NULL,
  PRIMARY KEY (`bookingID`),
  KEY `veI` (`vehicleID`),
  CONSTRAINT `veI` FOREIGN KEY (`vehicleID`) REFERENCES `vehicle` (`vid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (10,3,'Upcomming','Colombo','Malabe','2024-10-20','2024-10-29','Active',NULL,12);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cusID` int NOT NULL,
  PRIMARY KEY (`cusID`),
  CONSTRAINT `cid` FOREIGN KEY (`cusID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1),(12),(17),(22);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_user`
--

DROP TABLE IF EXISTS `manage_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_user` (
  `Admin_ID` int NOT NULL,
  `UserID` int NOT NULL,
  PRIMARY KEY (`Admin_ID`,`UserID`),
  KEY `u_id` (`UserID`),
  CONSTRAINT `ad_id` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`adID`),
  CONSTRAINT `u_id` FOREIGN KEY (`UserID`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_user`
--

LOCK TABLES `manage_user` WRITE;
/*!40000 ALTER TABLE `manage_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_vehicles`
--

DROP TABLE IF EXISTS `manage_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_vehicles` (
  `Admin_ID` int NOT NULL,
  `vid` int NOT NULL,
  PRIMARY KEY (`Admin_ID`,`vid`),
  KEY `us_id` (`vid`),
  CONSTRAINT `admi_id` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`adID`),
  CONSTRAINT `us_id` FOREIGN KEY (`vid`) REFERENCES `vehicle` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_vehicles`
--

LOCK TABLES `manage_vehicles` WRITE;
/*!40000 ALTER TABLE `manage_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manID` int NOT NULL,
  PRIMARY KEY (`manID`),
  CONSTRAINT `mid` FOREIGN KEY (`manID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (21);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payID` int NOT NULL AUTO_INCREMENT,
  `bookingID` int DEFAULT NULL,
  `ac_no` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `method` varchar(20) NOT NULL,
  `cvc` varchar(5) NOT NULL,
  `holderName` varchar(30) NOT NULL,
  `E_date` varchar(20) NOT NULL,
  `pay_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,NULL,'123456789',20000,'Visa','777','Linal','03/28','2024-10-09 06:09:49'),(2,NULL,'12345678910',20000,'Visa','555','L.T.B Wickramaarachchi','03/29','2024-10-09 06:12:43'),(3,NULL,'1111111',47000,'Visa','333','L.T.B Wickramaarachchi','03/27','2024-10-09 06:52:04'),(4,NULL,'8888888888',25700,'Visa','999','Y.T KAVINDA','03/29','2024-10-11 02:38:23'),(5,NULL,'999999',25700,'Visa','666','tt1','03/28','2024-10-11 02:46:35'),(6,NULL,'5555555',25700,'Visa','777','Band1','03/28','2024-10-11 03:12:57'),(7,NULL,'000000',25700,'Visa','333','suc1','00/00','2024-10-11 03:16:31'),(8,NULL,'111111',25700,'Master','222','J.J Autunga','02/30','2024-10-12 10:25:49'),(9,NULL,'9999999999',30000,'Master','000','Big sean','02/29','2024-10-12 10:30:46'),(10,NULL,'88888',30000,'Visa','111','t.t thondaman','03/30','2024-10-12 14:17:38'),(11,NULL,'666666',23000,'Master','999','K.K.K. Dharmadaasa','10/30','2024-10-14 04:11:02'),(12,NULL,'2222222',23000,'Master','777','s.m.t.p Gayantha','02/30','2024-10-14 04:42:17'),(13,NULL,'00000000',23000,'Visa','999','K.A.N.S Ruban','12/30','2024-10-14 04:47:25'),(14,NULL,'43189026783',40000,'Visa','999','S.S Dukkgannarala','03/31','2024-10-15 07:00:42'),(15,NULL,'99999',23000,'Visa','666','Y.T KAVINDA','04/30','2024-10-15 15:36:59'),(16,NULL,'99999999',500,'Visa','222','Band1','03/40','2024-10-15 17:07:19');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `rentID` int NOT NULL AUTO_INCREMENT,
  `vid` int NOT NULL,
  `cusID` int NOT NULL,
  PRIMARY KEY (`rentID`),
  KEY `ve_id` (`vid`),
  KEY `c_id` (`cusID`),
  CONSTRAINT `c_id` FOREIGN KEY (`cusID`) REFERENCES `customer` (`cusID`) ON DELETE CASCADE,
  CONSTRAINT `ve_id` FOREIGN KEY (`vid`) REFERENCES `vehicle` (`vid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (4,3,1),(6,3,12);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `ReportID` int NOT NULL,
  `avg_rent` float DEFAULT NULL,
  `monthly_income` float DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `Admin_ID` int DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `ada_id` (`Admin_ID`),
  CONSTRAINT `ada_id` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`adID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `description` varchar(10) DEFAULT NULL,
  `cusID` int NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `cuid` (`cusID`),
  CONSTRAINT `cuid` FOREIGN KEY (`cusID`) REFERENCES `customer` (`cusID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_offers`
--

DROP TABLE IF EXISTS `special_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `special_offers` (
  `offer_ID` int NOT NULL AUTO_INCREMENT,
  `offerName` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `Manager_ID` int NOT NULL,
  PRIMARY KEY (`offer_ID`),
  KEY `M_ID` (`Manager_ID`),
  CONSTRAINT `M_ID` FOREIGN KEY (`Manager_ID`) REFERENCES `manager` (`manID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_offers`
--

LOCK TABLES `special_offers` WRITE;
/*!40000 ALTER TABLE `special_offers` DISABLE KEYS */;
INSERT INTO `special_offers` VALUES (6,'day of the dead','loyal_cust','Breif description about the offer','2024-11-02','2025-10-22',21);
/*!40000 ALTER TABLE `special_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'kans@gmail.com','oooo','23/5,Athurugiriya road, Rathnapura','Saman','Fernando','customer','active'),(3,'matheesh@gmail.com','MAS123','23/5,Araliya road, Mawanelle','Matheesh','Weereasinghe','vowner','active'),(4,'prasa@gmail.com','prasad123','23/5,Athurugiriya road, Peradeniya','Prasad','Bandara','vowner','active'),(12,'linal@gmail.com','linal123','34/3,Natharampotha RD , Kundasale','Linal','Wickramaarachchi','customer','active'),(13,'rrr@gmail.com','0000','23/2,rPeradeniya road,Kandy','Kasun','TimberLanke','vowner','active'),(17,'himasha@gmail.com','hhhh','23/2,rPeradeniya road,Kandy','Himasha','Rathnayaka','customer','active'),(19,'soum@gmail.com','som123','23/2,rPeradeniya road,Kandy','soumya','Liyanage','admin','active'),(20,'Kalani@gmail.com','kala123','23/5, Windya road,Mathale','Kalani','Dodantenne','admin','active'),(21,'uuu@gmail.com','iiii','45/3,Peradinya RD , Kandy','Kasun','Poonam','manager','active'),(22,'ngga@gmail.com','nnnn','23/5, Windya road,Mathale','Lalantha','TimberLanke','customer','active');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `userInput_trig` AFTER INSERT ON `user` FOR EACH ROW begin 

	DECLARE ty varchar(50);
	DECLARE uno INT;

	SET ty = NEW.utype;
	SET uno = NEW.userID;

	if  (@ty = 'customer') then
		insert into customer values(@uno);

	elseif (@ty = 'vowner') then
		insert into v_owner values(@uno);
	
	elseif (@ty = 'admin') then
		insert into admin values(@uno);

	elseif (@ty = 'manager') then
		insert into manager values(@uno);
	end if;
    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `v_owner`
--

DROP TABLE IF EXISTS `v_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `v_owner` (
  `voID` int NOT NULL,
  PRIMARY KEY (`voID`),
  CONSTRAINT `vid` FOREIGN KEY (`voID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_owner`
--

LOCK TABLES `v_owner` WRITE;
/*!40000 ALTER TABLE `v_owner` DISABLE KEYS */;
INSERT INTO `v_owner` VALUES (3),(4),(13);
/*!40000 ALTER TABLE `v_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcategory`
--

DROP TABLE IF EXISTS `vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcategory` (
  `catID` int NOT NULL AUTO_INCREMENT,
  `catName` varchar(30) NOT NULL,
  PRIMARY KEY (`catID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcategory`
--

LOCK TABLES `vcategory` WRITE;
/*!40000 ALTER TABLE `vcategory` DISABLE KEYS */;
INSERT INTO `vcategory` VALUES (1,'Luxuary Cars'),(2,'Van'),(3,'Double Cab');
/*!40000 ALTER TABLE `vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vid` int NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `registrtionNO` varchar(10) NOT NULL,
  `AMT` varchar(20) NOT NULL,
  `added_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `catID` int NOT NULL,
  `ftype` varchar(10) NOT NULL,
  `passengers` int NOT NULL,
  `rentalPrice` int NOT NULL,
  `image` blob,
  `rating` int DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `voID` int NOT NULL,
  `tradeName` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `void` (`voID`),
  KEY `caID` (`catID`),
  CONSTRAINT `caID` FOREIGN KEY (`catID`) REFERENCES `vcategory` (`catID`) ON DELETE CASCADE,
  CONSTRAINT `void` FOREIGN KEY (`voID`) REFERENCES `v_owner` (`voID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (3,'Used nopp','CAA-3467','Auto','2024-10-06 20:53:07',3,'Petrol',5,23000,'',0,'Active',4,'L200','linal'),(24,'Electric car','CBP-4567','auto','2022-04-05 00:00:00',1,'P',4,40000,'',5,'Active',3,'Galarado','Lamboghini'),(25,'Super fast car','CAA-4531','auto','2024-03-06 00:00:00',1,'P',2,90000,'',5,'pend_reg',3,'Mclaren','Kemui');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 22:22:09
