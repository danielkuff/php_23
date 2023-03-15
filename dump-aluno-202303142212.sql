-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aluno
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.11-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `PESSOAS`
--

DROP TABLE IF EXISTS `PESSOAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PESSOAS` (
  `id_pessoas` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pessoas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PESSOAS`
--

LOCK TABLES `PESSOAS` WRITE;
/*!40000 ALTER TABLE `PESSOAS` DISABLE KEYS */;
INSERT INTO `PESSOAS` VALUES (1,'JORGE'),(2,'MATEUS'),(3,'LUCAS');
/*!40000 ALTER TABLE `PESSOAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RH`
--

DROP TABLE IF EXISTS `RH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RH` (
  `id_rh` tinyint(4) NOT NULL AUTO_INCREMENT,
  `id_pessoas` tinyint(4) DEFAULT NULL,
  `salarios` varchar(100) DEFAULT NULL,
  `log_inicial` datetime NOT NULL DEFAULT current_timestamp(),
  `log_final` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_rh`),
  KEY `RH_FK` (`id_pessoas`),
  CONSTRAINT `RH_FK` FOREIGN KEY (`id_pessoas`) REFERENCES `PESSOAS` (`id_pessoas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RH`
--

LOCK TABLES `RH` WRITE;
/*!40000 ALTER TABLE `RH` DISABLE KEYS */;
INSERT INTO `RH` VALUES (1,NULL,'1080','2023-03-14 21:52:20','2023-03-14 21:53:00');
/*!40000 ALTER TABLE `RH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aluno'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 22:12:12
