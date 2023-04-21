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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dob` datetime DEFAULT (now()),
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `exprience` bigint DEFAULT NULL,
  `organization` int DEFAULT NULL,
  `organization_join_date` datetime DEFAULT (now()),
  `salary` bigint DEFAULT NULL COMMENT 'Ammount Of salary in LPA',
  `address` varchar(255) DEFAULT NULL COMMENT 'Residential Address',
  `city` int DEFAULT NULL,
  `country` int DEFAULT NULL,
  `number_posts` int DEFAULT NULL,
  `last_seen` datetime DEFAULT (now()),
  `created_at` datetime DEFAULT (now()),
  PRIMARY KEY (`UserId`),
  KEY `user_index_2` (`UserId`),
  KEY `user_index_3` (`name`),
  KEY `user_index_4` (`username`),
  KEY `user_index_5` (`email`),
  KEY `organization` (`organization`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`organization`) REFERENCES `organization` (`OrganizationId`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`city`) REFERENCES `city_lookup` (`CityLookupId`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`country`) REFERENCES `country_lookup` (`CountryLookupId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Dipendra',NULL,'dipendra','dipendra@bizcorp.com','87385ad0b9953e81dfcf0c5270ccbd50c4cad9f4c571f39ecf96a333aa529d39',1,1,'2023-02-18 19:27:41',900000,'Mathura',1,91,0,'2023-02-18 19:27:41','2023-02-18 19:27:41');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
