CREATE DATABASE  IF NOT EXISTS `bizcorp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bizcorp`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bizcorp
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
-- Table structure for table `user_past`
--

DROP TABLE IF EXISTS `user_past`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_past` (
  `UserPastId` int NOT NULL AUTO_INCREMENT,
  `user` int DEFAULT NULL,
  `organization` int DEFAULT NULL,
  `city` int DEFAULT NULL,
  `country` int DEFAULT NULL,
  `from_date` datetime DEFAULT (now()),
  `to_date` datetime DEFAULT (now()),
  `created_at` datetime DEFAULT (now()),
  PRIMARY KEY (`UserPastId`),
  KEY `user` (`user`),
  KEY `organization` (`organization`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  CONSTRAINT `user_past_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`UserId`),
  CONSTRAINT `user_past_ibfk_2` FOREIGN KEY (`organization`) REFERENCES `organization` (`OrganizationId`),
  CONSTRAINT `user_past_ibfk_3` FOREIGN KEY (`city`) REFERENCES `city_lookup` (`CityLookupId`),
  CONSTRAINT `user_past_ibfk_4` FOREIGN KEY (`country`) REFERENCES `country_lookup` (`CountryLookupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_past`
--

LOCK TABLES `user_past` WRITE;
/*!40000 ALTER TABLE `user_past` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_past` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 15:40:47
