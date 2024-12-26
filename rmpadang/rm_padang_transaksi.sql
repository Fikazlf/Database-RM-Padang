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
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id_transaksi` varchar(6) NOT NULL,
  `id_pesanan` varchar(6) DEFAULT NULL,
  `nama_pemesan` varchar(50) DEFAULT NULL,
  `jenis_pesanan` enum('Dine In','Takeaway','Delivery') DEFAULT NULL,
  `nama_menu` varchar(45) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `sub_total` int DEFAULT NULL,
  `total_harga` int DEFAULT NULL,
  `mtd_pembayaran` enum('Cash','Debit','Qris') DEFAULT NULL,
  `bayar` int DEFAULT NULL,
  `kembalian` int DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `id_pesanan_idx` (`id_pesanan`),
  CONSTRAINT `id_pesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES ('TRS001','PSN001','Naufal','Dine In','Ayam Goreng',10000,3,30000,30000,'Cash',50000,20000),('TRS002','PSN002','Dzikri','Dine In','Ayam Bakar',12000,5,60000,60000,'Cash',100000,40000),('TRS003','PSN003','Syafika','Dine In','Rendang',15000,3,45000,45000,'Cash',50000,5000),('TRS004','PSN004','Alfina','Dine In','Ikan Goreng',15000,2,30000,30000,'Cash',50000,20000),('TRS005','PSN005','Geboy','Dine In','Ikan Bakar',15000,10,150000,150000,'Debit',150000,0),('TRS006','PSN006','Rofif','Dine In','Gulai Ikan Kakap',20000,5,100000,100000,'Debit',100000,0),('TRS007','PSN007','Nayla','Delivery','Ayam Goreng',10000,4,40000,40000,'Debit',40000,0);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
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
