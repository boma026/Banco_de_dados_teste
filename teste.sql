-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.22.04.1

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
-- Table structure for table `Fornecedores`
--

DROP TABLE IF EXISTS `Fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedores`
--

LOCK TABLES `Fornecedores` WRITE;
/*!40000 ALTER TABLE `Fornecedores` DISABLE KEYS */;
INSERT INTO `Fornecedores` VALUES (1,'XYZ','(11) 99999-9999'),(2,'Bigsoft','(12) 88888-8888'),(3,'Bia','(13) 77777-7777'),(4,'Positivo','(14) 66666-6666'),(5,'LG','(15) 55555-5555'),(6,'NASA','(16) 44444-4444');
/*!40000 ALTER TABLE `Fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produtos`
--

DROP TABLE IF EXISTS `Produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `preco` float NOT NULL,
  `estoque` int NOT NULL DEFAULT '0',
  `minDeEstoque` int NOT NULL DEFAULT '0',
  `id_fornecedor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produtos`
--

LOCK TABLES `Produtos` WRITE;
/*!40000 ALTER TABLE `Produtos` DISABLE KEYS */;
INSERT INTO `Produtos` VALUES (1,'Teclado Gamer XYZ',200,10,5,1),(2,'Mouse 9200dpi',125.66,36,15,2),(3,'Notebook 50GB ram',999.99,14,10,4),(4,'Teclado Numérico X',37.5,5,5,1),(5,'Cadeira Gamer BLA',864.1,12,10,3),(6,'Monitor 5 curvo',140,33,35,5),(7,'PC da NASA',54564,2,1,6),(8,'PC Ruim',50.99,75,50,6),(9,'Cubo Magico de 13 faces',3.5,324,350,6);
/*!40000 ALTER TABLE `Produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `dataDeCadastro` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Bonieky','2017-12-10'),(2,'Pedro','2009-04-15'),(3,'João','2011-03-18'),(4,'Jessica','2019-07-22'),(5,'Beatriz','2021-01-11');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-04 10:48:25
