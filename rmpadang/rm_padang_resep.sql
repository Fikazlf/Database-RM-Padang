-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rm_padang
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `resep`
--

DROP TABLE IF EXISTS `resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resep` (
  `id_resep` varchar(6) NOT NULL,
  `id_bahan` varchar(6) DEFAULT NULL,
  `nama_resep` varchar(45) DEFAULT NULL,
  `desc_resep` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_resep`),
  KEY `id_bahan_idx` (`id_bahan`),
  CONSTRAINT `id_bahan` FOREIGN KEY (`id_bahan`) REFERENCES `supply` (`id_bahan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep`
--

LOCK TABLES `resep` WRITE;
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
INSERT INTO `resep` VALUES ('RSP001','BHN001','Resep Ayam Goreng','Bumbu Ayam Goreng & Ayam'),('RSP002','BHN002','Resep Ayam Bakar','Bumbu Ayam Bakar & Ayam'),('RSP003','BHN003','Resep Rendang','Bumbu Rendang & Daging Sapi'),('RSP004','BHN004','Resep Gulai Nangka','Bumbu Gulai Nangka & Nangka'),('RSP005','BHN005','Resep Ikan Goreng','Bumbu Ikan Goreng & Ikan Nila'),('RSP006','BHN006','Resep Ikan Bakar','Bumbu Ikan Bakar & Ikan Nila'),('RSP007','BHN007','Resep Gulai Ikan Kakap','Bumbu Gulai Ikan Kakap & Ikan Kakap'),('RSP008','BHN014','Resep Teh Manis Es/Hangat','Air, Teh, & Es Batu'),('RSP009','BHN017','Resep Jeruk Es/Hangat','Air, Teh, & Es Batu');
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-02 23:26:48
