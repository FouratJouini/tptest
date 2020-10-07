-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for crud_db
CREATE DATABASE IF NOT EXISTS `crud_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crud_db`;

-- Dumping structure for table crud_db.document
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL,
  `lib` varchar(255) NOT NULL DEFAULT '',
  `consultable` int(11) NOT NULL DEFAULT '0',
  `empruntable` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table crud_db.document: ~1 rows (approximately)
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` (`id`, `lib`, `consultable`, `empruntable`) VALUES
	(1, 'document 1', 1, 1);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;

-- Dumping structure for table crud_db.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_emp` int(11) NOT NULL DEFAULT '0',
  `doc_en_retard` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table crud_db.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `doc_emp`, `doc_en_retard`, `nom`) VALUES
	(1, 0, 0, 'salah'),
	(2, 1, 0, 'sami'),
	(3, 3, 0, 'mohamed'),
	(4, 1, 1, 'khmaies');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
