-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 15, 2018 alle 23:07
-- Versione del server: 10.1.30-MariaDB
-- Versione PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practica3`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `palabrasprohibidas`
--

CREATE TABLE `palabrasprohibidas` (
  `id` int(11) NOT NULL,
  `palabra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `palabrasprohibidas`
--

INSERT INTO `palabrasprohibidas` (`id`, `palabra`) VALUES
(1, 'mierda'),
(2, 'basura'),
(3, 'gilipollas'),
(4, 'cabron'),
(5, 'tonto'),
(6, 'idiota'),
(7, 'caca'),
(8, 'tontos'),
(1, 'mierda'),
(2, 'basura'),
(3, 'gilipollas'),
(4, 'cabron'),
(5, 'tonto'),
(6, 'idiota'),
(7, 'caca'),
(8, 'tontos');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
