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
-- Table structure for table `tb_dept_fun`
--

DROP TABLE IF EXISTS `tb_dept_fun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dept_fun` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `fun_id` char(4) NOT NULL,
  `dept_id` char(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fun_id` (`fun_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `tb_dept_fun_ibfk_1` FOREIGN KEY (`fun_id`) REFERENCES `tb_funcionario` (`id_fun`),
  CONSTRAINT `tb_dept_fun_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `tb_departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dept_fun`
--

LOCK TABLES `tb_dept_fun` WRITE;
/*!40000 ALTER TABLE `tb_dept_fun` DISABLE KEYS */;
INSERT INTO `tb_dept_fun` VALUES (1,'2015-03-01','2018-03-01','F001','D001'),(2,'2016-06-20','2019-03-01','F002','D002'),(3,'2017-10-05','2019-05-01','F003','D003'),(4,'2014-01-15','2018-06-01','F004','D004'),(5,'2018-07-30','2020-03-01','F005','D005'),(16,'2015-03-01','2018-03-01','F006','D001'),(17,'2016-06-20','2019-03-01','F007','D002'),(18,'2017-10-05','2019-05-01','F008','D003'),(19,'2014-01-15','2018-06-01','F009','D004'),(20,'2018-07-30','2020-03-01','F010','D005'),(21,'2015-03-01','2018-03-01','F011','D001'),(22,'2016-06-20','2019-03-01','F012','D002'),(23,'2017-10-05','2019-05-01','F013','D003'),(24,'2014-01-15','2018-06-01','F014','D004'),(25,'2018-07-30','2020-03-01','F015','D005'),(26,'2015-03-01','2018-03-01','F016','D001'),(27,'2016-06-20','2019-03-01','F017','D002'),(28,'2017-10-05','2019-05-01','F018','D003'),(29,'2014-01-15','2018-06-01','F019','D004'),(30,'2018-07-30','2020-03-01','F020','D005');
/*!40000 ALTER TABLE `tb_dept_fun` ENABLE KEYS */;
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
