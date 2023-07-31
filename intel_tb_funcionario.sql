-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: intel
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `id_fun` char(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL,
  `data_contratacao` date NOT NULL,
  `genero` enum('M','F') NOT NULL,
  PRIMARY KEY (`id_fun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES ('F001','Ana','Silva','1990-01-10','2015-03-01','F'),('F002','Bruno','Santos','1988-05-15','2016-06-20','M'),('F003','Carla','Oliveira','1992-09-30','2017-10-05','F'),('F004','Daniel','Costa','1986-12-25','2014-01-15','M'),('F005','Eduarda','Ribeiro','1991-04-07','2018-07-30','F'),('F006','Fabio','Gomes','1989-07-12','2016-09-10','M'),('F007','Gabriela','Martins','1993-02-14','2019-04-01','F'),('F008','Henrique','Lima','1987-06-18','2015-05-25','M'),('F009','Isabela','Alves','1990-03-21','2017-08-15','F'),('F010','João','Pereira','1985-10-31','2013-11-01','M'),('F011','Karina','Souza','1992-08-24','2018-12-20','F'),('F012','Lucas','Rodrigues','1989-11-11','2016-02-29','M'),('F013','Maria','Ferreira','1991-05-05','2017-06-06','F'),('F014','Nelson','Barbosa','1988-04-04','2015-07-07','M'),('F015','Olivia','Cardoso','1993-03-03','2019-08-08','F'),('F016','Pedro','Machado','1986-02-02','2014-09-09','M'),('F017','Raquel','Nunes','1990-01-01','2016-10-10','F'),('F018','Tiago','Silveira','1987-12-12','2015-11-11','M'),('F019','Valeria','Campos','1994-11-11','2020-12-12','F'),('F020','Wesley','Araujo','1985-10-10','2013-01-01','M');
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-31  9:09:47
