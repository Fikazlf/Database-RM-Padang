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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id_menu` varchar(6) NOT NULL,
  `id_resep` varchar(6) DEFAULT NULL,
  `nama_menu` varchar(45) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `jenis_menu` enum('Makanan','Minuman') DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `status` enum('Ready','Non-Ready') DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_resep_idx` (`id_resep`),
  CONSTRAINT `id_resep` FOREIGN KEY (`id_resep`) REFERENCES `resep` (`id_resep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('MKN001','RSP001','Ayam Goreng',10000,'Makanan','Ayam Goreng Bagian Dada/Sayap/Paha','Ready'),('MKN002','RSP002','Ayam Bakar',12000,'Makanan','Ayam Bakar Bagian Dada/Sayap/Paha','Ready'),('MKN003','RSP003','Rendang',15000,'Minuman','Rendang Gurih','Ready'),('MKN004','RSP004','Gulai Nangka',7000,'Makanan','Gulai nangka lezat','Ready'),('MKN005','RSP005','Ikan Goreng',15000,'Makanan','Ikan Goreng Nila Gurih','Ready'),('MKN006','RSP006','Ikan Bakar',15000,'Makanan','Ikan Bakar Nila Lezatt','Ready'),('MKN007','BHN007','Gulai Ikan Kakap',20000,'Makanan','Gulai Ikan Kakap Limited','Ready'),('MNM001','BHN014','Teh Manis Es/Hangat',5000,'Minuman','Minuman Teh Pilihan','Ready'),('MNM002','BHN017','Jeruk Es/Hangat',7000,'Minuman','Jeruk Manis segerr','Ready');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
