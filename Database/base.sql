-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.1.10-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win32
-- HeidiSQL Versione:            9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dump della struttura del database website
DROP DATABASE IF EXISTS `website`;
CREATE DATABASE IF NOT EXISTS `website` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `website`;

-- Dump della struttura di tabella website.colsf
DROP TABLE IF EXISTS `colsf`;
CREATE TABLE IF NOT EXISTS `colsf` (
  `id_colsf` int(11) NOT NULL AUTO_INCREMENT,
  `codice_col` varchar(45) DEFAULT NULL,
  `nome_col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_colsf`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella website.messaggi
DROP TABLE IF EXISTS `messaggi`;
CREATE TABLE IF NOT EXISTS `messaggi` (
  `id_messaggio` int(11) NOT NULL AUTO_INCREMENT,
  `fk_utente` varchar(45) DEFAULT NULL,
  `testo_messaggio` longtext,
  `titolo_messaggio` varchar(45) DEFAULT NULL,
  `data_inserimento` date DEFAULT NULL,
  `ora_inserimento` time DEFAULT NULL,
  PRIMARY KEY (`id_messaggio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella website.tema
DROP TABLE IF EXISTS `tema`;
CREATE TABLE IF NOT EXISTS `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(45) DEFAULT NULL,
  `sottotitolo` varchar(45) DEFAULT NULL,
  `sfondo` varchar(45) DEFAULT NULL,
  `destra_info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- L’esportazione dei dati non era selezionata.
-- Dump della struttura di tabella website.utenti
DROP TABLE IF EXISTS `utenti`;
CREATE TABLE IF NOT EXISTS `utenti` (
  `id_utenti` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `livello_accesso` char(1) NOT NULL DEFAULT '0',
  `data_nascita` date DEFAULT NULL,
  `sesso` char(1) DEFAULT 'M',
  `link_foto` text,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_utenti`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='livello_accesso da 0 (utente) 1 (moderatore) 2 (amministratore)';

-- L’esportazione dei dati non era selezionata.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
