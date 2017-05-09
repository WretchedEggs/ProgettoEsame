CREATE DATABASE  IF NOT EXISTS `website` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `website`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: website
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.10-MariaDB

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
-- Table structure for table `messaggi`
--

DROP TABLE IF EXISTS `messaggi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messaggi` (
  `id_messaggio` int(11) NOT NULL AUTO_INCREMENT,
  `fk_utente` varchar(45) DEFAULT NULL,
  `testo_messaggio` varchar(45) DEFAULT NULL,
  `titolo_messaggio` varchar(45) DEFAULT NULL,
  `data_inserimento` date DEFAULT NULL,
  `ora_inserimento` time DEFAULT NULL,
  PRIMARY KEY (`id_messaggio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messaggi`
--

LOCK TABLES `messaggi` WRITE;
/*!40000 ALTER TABLE `messaggi` DISABLE KEYS */;
INSERT INTO `messaggi` VALUES (1,'2','Da Aggiornare Vero?','Domanda','2017-02-16','18:45:03'),(2,'1','Devo gestire il databaseeee','Aggiornamento','2017-02-14','21:10:06');
/*!40000 ALTER TABLE `messaggi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utenti`
--

DROP TABLE IF EXISTS `utenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utenti` (
  `id_utenti` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `livello_accesso` char(1) NOT NULL DEFAULT '0',
  `data_nascita` date DEFAULT NULL,
  `sesso` char(1) DEFAULT 'M',
  `link_foto` text,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_utenti`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COMMENT='livello_accesso da 0 (utente) 1 (moderatore) 2 (amministratore)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utenti`
--

LOCK TABLES `utenti` WRITE;
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` VALUES (1,'bianca','password','2','1998-03-21','F',NULL,'biancaandreea_rotaru@yahoo.com'),(2,'utente','base','0','1987-10-03','M',NULL,'utente@gmail.it'),(3,'bob','sonobello','0','2001-11-01','N',NULL,'erleicuin01@hotmail.it'),(45,'bianca','bu','0','2017-02-05','N',NULL,'hiro@yahoo.com');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-16 22:30:08
