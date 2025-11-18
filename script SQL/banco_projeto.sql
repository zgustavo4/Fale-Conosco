-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.13.0.7147
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para fale_conosco
DROP DATABASE IF EXISTS `fale_conosco`;
CREATE DATABASE IF NOT EXISTS `fale_conosco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `fale_conosco`;

-- Copiando estrutura para tabela fale_conosco.fale_conosco
DROP TABLE IF EXISTS `fale_conosco`;
CREATE TABLE IF NOT EXISTS `fale_conosco` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL DEFAULT '',
  `Email` varchar(100) NOT NULL DEFAULT '0',
  `Telefone` varchar(15) DEFAULT '0',
  `Assunto` varchar(250) NOT NULL DEFAULT '0',
  `Mensagem` varchar(250) NOT NULL DEFAULT '0',
  `data_horario` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela fale_conosco.fale_conosco: ~3 rows (aproximadamente)
DELETE FROM `fale_conosco`;
INSERT INTO `fale_conosco` (`ID`, `Nome`, `Email`, `Telefone`, `Assunto`, `Mensagem`, `data_horario`) VALUES
	(1, 'Gustavo', 'gustavo@gmail.com', '', 'alguma coisa ae', 'alguma mensagem ae', '2025-11-13 20:11:05'),
	(4, 'bia', 'bia@gmail.com', '', 'alguma coisa ae', 'alguma mensagem ae', '2025-11-13 20:11:05'),
	(5, 'gtz', 'gtzaass@!fegsag', '', 'fagsgewgh', 'agwsghrhwerh', '2025-11-18 12:15:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
