CREATE DATABASE  IF NOT EXISTS `comics` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `comics`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: comics
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comics` (
  `idComic` int(11) NOT NULL AUTO_INCREMENT,
  `nameComic` varchar(45) DEFAULT 'none',
  `companyComic` varchar(45) DEFAULT 'none',
  `reviewComic` varchar(500) DEFAULT 'none',
  `quantityComic` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idComic`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
INSERT INTO `comics` VALUES (2,'SPIDERMAN','CAPCOMA','ES UNA REVIEW RECONTRA COPADAa',39),(8,'PANTERA ROSA','DIBUJITOS','asdasdasdasd',6);
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `idLoan` int(11) NOT NULL AUTO_INCREMENT,
  `Persons_idPerson` int(11) NOT NULL,
  `Comics_idComic` int(11) NOT NULL,
  `date` varchar(45) NOT NULL DEFAULT 'dd-mm-yyyy',
  PRIMARY KEY (`idLoan`),
  KEY `fk_Loans_Persons_idx` (`Persons_idPerson`),
  KEY `fk_Loans_Comics1_idx` (`Comics_idComic`),
  CONSTRAINT `fk_Loans_Comics1` FOREIGN KEY (`Comics_idComic`) REFERENCES `comics` (`idComic`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_Loans_Persons` FOREIGN KEY (`Persons_idPerson`) REFERENCES `persons` (`idPerson`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (31,1,2,'2015-03-15'),(32,2,8,'2015-04-31'),(34,1,2,'2015-04-31'),(35,1,8,'2015-03-15'),(36,1,8,'2015-03-16');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idLogin` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT 'none',
  `password` varchar(45) DEFAULT 'none',
  `idRol` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLogin`),
  KEY `idRol_idx` (`idRol`),
  CONSTRAINT `idRol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (2,'messi','1234',7),(8,'cosme','fula',5),(10,'visi','3333',8),(11,'demo','demo',8);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `idPerson` int(11) NOT NULL AUTO_INCREMENT,
  `namePerson` varchar(45) NOT NULL DEFAULT 'none',
  `telephonePerson` varchar(45) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Perico Perez','12345678'),(2,'Jonny Deep','9999998');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT 'none',
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (5,'ADMINISTRADOR'),(7,'USUARIO'),(8,'VISITANTE');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'comics'
--

--
-- Dumping routines for database 'comics'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-31 12:40:44
