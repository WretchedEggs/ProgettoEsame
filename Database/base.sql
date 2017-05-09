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
CREATE DATABASE IF NOT EXISTS `website` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `website`;

-- Dump della struttura di tabella website.colsf
CREATE TABLE IF NOT EXISTS `colsf` (
  `id_colsf` int(11) NOT NULL AUTO_INCREMENT,
  `codice_col` varchar(45) DEFAULT NULL,
  `nome_col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_colsf`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella website.colsf: ~16 rows (circa)
/*!40000 ALTER TABLE `colsf` DISABLE KEYS */;
INSERT INTO `colsf` (`id_colsf`, `codice_col`, `nome_col`) VALUES
	(1, '#ffffff', 'white'),
	(2, '#0000ff', 'blue'),
	(3, '#ff00ff', 'fuchsia'),
	(4, '#000000', 'black'),
	(5, '#808080', 'gray'),
	(6, '#008000', 'green'),
	(7, '#ff0000', 'red'),
	(8, '#800080', 'purple'),
	(9, '#c0c0c0', 'silver'),
	(10, '#ffff00', 'yellow'),
	(11, '#fffaf0', 'floralwhite'),
	(12, '#ff69b4', 'hotpink'),
	(13, '#f5deb3', 'wheat'),
	(14, '#ffefd5', 'papayawhip'),
	(15, '#ffe4e1', 'mistyrose'),
	(16, '#191970', 'midnightblue');
/*!40000 ALTER TABLE `colsf` ENABLE KEYS */;

-- Dump della struttura di tabella website.messaggi
CREATE TABLE IF NOT EXISTS `messaggi` (
  `id_messaggio` int(11) NOT NULL AUTO_INCREMENT,
  `fk_utente` varchar(45) DEFAULT NULL,
  `testo_messaggio` longtext,
  `titolo_messaggio` varchar(45) DEFAULT NULL,
  `data_inserimento` date DEFAULT NULL,
  `ora_inserimento` time DEFAULT NULL,
  PRIMARY KEY (`id_messaggio`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella website.messaggi: ~13 rows (circa)
/*!40000 ALTER TABLE `messaggi` DISABLE KEYS */;
INSERT INTO `messaggi` (`id_messaggio`, `fk_utente`, `testo_messaggio`, `titolo_messaggio`, `data_inserimento`, `ora_inserimento`) VALUES
	(1, '2', 'Da Aggiornare Vero?', 'Domanda', '2017-02-16', '18:45:03'),
	(2, '1', 'Devo gestire il databaseeee', 'Aggiornamento', '2017-02-14', '21:10:06'),
	(3, '2', 'billo', 'chebbllll', '2017-02-17', '08:42:36'),
	(4, '2', 'ma che ciaone', 'ciaone', '2017-02-17', '08:43:15'),
	(5, '2', 'SALEEEEEEEEE VINCENIONO', 'Salerno', '2017-02-17', '08:44:14'),
	(6, '2', '*********************************************', 'Hello', '2017-02-20', '09:06:42'),
	(7, '2', 'Grazie marco per il commento stupendo <3 XD', 'Titolo', '2017-02-20', '09:45:48'),
	(8, '2', 'Provetta', 'Prova', '2017-02-20', '10:52:42'),
	(9, '1', 'Salvisimo', 'buongiorno a tutti', '2017-02-20', '10:53:35'),
	(10, '7', 'yeo', 'Prova', '2017-02-20', '22:16:25'),
	(11, '7', 'ooooooooooooooooooooooooooooooooooooooooooooo', 'Titolo', '2017-02-20', '22:17:06'),
	(12, '7', 'oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooppeee', 'Titolo', '2017-02-20', '22:18:58'),
	(13, '7', 'ooooooooooooooooooooooooooooooooooooooooooooooooooooooo\r\nooooooooooooooooooooooooooooooooooooooooooooooooooooooo\r\nooooooooooooooooooooooooooooooooooooooooooooooooooooooo\r\nooooooooooooooooooooooooooooooooooooooooooooooooooooooo\r\noooooooooooooooooooooooooooooppeee', 'Titolo', '2017-02-20', '22:19:31');
/*!40000 ALTER TABLE `messaggi` ENABLE KEYS */;

-- Dump della struttura di tabella website.tema
CREATE TABLE IF NOT EXISTS `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(45) DEFAULT NULL,
  `sottotitolo` varchar(45) DEFAULT NULL,
  `sfondo` varchar(45) DEFAULT NULL,
  `destra_info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella website.tema: ~0 rows (circa)
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;

-- Dump della struttura di tabella website.utenti
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

-- Dump dei dati della tabella website.utenti: ~5 rows (circa)
/*!40000 ALTER TABLE `utenti` DISABLE KEYS */;
INSERT INTO `utenti` (`id_utenti`, `username`, `password`, `livello_accesso`, `data_nascita`, `sesso`, `link_foto`, `email`) VALUES
	(1, 'bianca', 'password', '2', '1998-03-21', 'F', NULL, 'biancaandreea_rotaru@yahoo.com'),
	(2, 'utente', 'base', '0', '1987-10-03', 'M', NULL, 'utente@gmail.it'),
	(3, 'bob', 'sonobello', '0', '2001-11-01', 'N', NULL, 'erleicuin01@hotmail.it'),
	(7, 'vince9861', 'sale9861', '0', '1998-07-14', 'M', NULL, 'vincenzo9861@gmail.com'),
	(8, 'blu', 'pappa', '0', '2017-04-06', 'F', NULL, 'b@pappa.it');
/*!40000 ALTER TABLE `utenti` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
