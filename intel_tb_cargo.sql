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
-- Table structure for table `tb_cargo`
--

DROP TABLE IF EXISTS `tb_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cargo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `fun_id` char(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fun_id` (`fun_id`),
  CONSTRAINT `tb_cargo_ibfk_1` FOREIGN KEY (`fun_id`) REFERENCES `tb_funcionario` (`id_fun`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cargo`
--

LOCK TABLES `tb_cargo` WRITE;
/*!40000 ALTER TABLE `tb_cargo` DISABLE KEYS */;
INSERT INTO `tb_cargo` VALUES (1,'Desenvolvedor','2017-10-05','2019-10-05','F001'),(2,'Engenheiro de Software','2014-01-15','2016-01-15','F002'),(57,'Analista de Sistemas','2016-06-20','2018-06-20','F003'),(58,'Tester','2018-07-15','2020-07-12','F004'),(59,'Arquiteto de Software','2019-04-01','2021-04-08','F005'),(60,'Gerente de Projetos','2015-05-25','2019-04-07','F006'),(61,'Scrum Master','2017-08-15','2020-04-01','F007'),(62,'Product Owner','2013-11-01','2015-04-01','F008'),(63,'DevOps Engineer','2018-12-20','2019-12-20','F009'),(64,'UX Designer','2016-02-29','2018-12-20','F010'),(65,'Desenvolvedor','2017-10-05','2018-12-27','F011'),(66,'Engenheiro de Software','2014-01-15','2018-06-20','F012'),(67,'Analista de Sistemas','2016-06-20','2018-11-20','F013'),(68,'Tester','2018-07-30','2018-12-20','F014'),(69,'Arquiteto de Software','2019-04-01','2020-12-20','F015'),(70,'Gerente de Projetos','2015-05-25','2018-01-20','F016'),(71,'Scrum Master','2017-08-15','2018-12-20','F017'),(72,'Product Owner','2013-11-01','2015-12-20','F018'),(73,'DevOps Engineer','2018-12-20','2018-08-20','F019'),(74,'UX Designer','2016-02-29','2018-09-20','F020');
/*!40000 ALTER TABLE `tb_cargo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-31  9:09:48
