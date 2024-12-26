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
-- Table structure for table `pesanan`
--

DROP TABLE IF EXISTS `pesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesanan` (
  `id_pesanan` varchar(6) NOT NULL,
  `id_menu` varchar(6) DEFAULT NULL,
  `no_meja` int DEFAULT NULL,
  `nama_pemesan` varchar(50) DEFAULT NULL,
  `jenis_pesanan` enum('Dine In','Takeaway','Delivery') DEFAULT NULL,
  `nama_menu` varchar(45) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `harga` int DEFAULT NULL,
  PRIMARY KEY (`id_pesanan`),
  KEY `no_meja_idx` (`no_meja`),
  KEY `id_menu_idx` (`id_menu`),
  CONSTRAINT `id_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  CONSTRAINT `no_meja` FOREIGN KEY (`no_meja`) REFERENCES `meja` (`no_meja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan`
--

LOCK TABLES `pesanan` WRITE;
/*!40000 ALTER TABLE `pesanan` DISABLE KEYS */;
INSERT INTO `pesanan` VALUES ('PSN001','MKN001',1,'Naufal','Dine In','Ayam Goreng',3,30000),('PSN002','MKN002',2,'Dzikri','Dine In','Ayam Bakar',5,60000),('PSN003','MKN003',3,'Syafika','Dine In','Rendang',3,45000),('PSN004','MKN005',4,'Alfina','Dine In','Ikan Goreng',2,30000),('PSN005','MKN006',5,'Geboy','Dine In','Ikan Bakar',10,150000),('PSN006','MKN007',6,'Rofif','Dine In','Gulai Ikan Kakap',5,100000),('PSN007','MKN001',0,'Nayla','Delivery','Ayam Goreng',4,40000);
/*!40000 ALTER TABLE `pesanan` ENABLE KEYS */;
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
