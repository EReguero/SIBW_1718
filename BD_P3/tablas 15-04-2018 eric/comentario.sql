-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 15, 2018 alle 23:06
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
-- Struttura della tabella `comentario`
--

CREATE TABLE `comentario` (
  `correo` varchar(100) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `fechaydata` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `comentario`
--

INSERT INTO `comentario` (`correo`, `nome`, `ip`, `fechaydata`, `text`) VALUES
('emilio@email.com', 'Emilio Reguero Castro', '::1', '2018-04-15 22:28:05', 'Es una obra preciosa, merece la pena ir a Bilbao a verla.'),
('eric@email.com', 'Eric', '::1', '2018-04-15 22:29:05', 'Me gusta mucho esta obra, les aconsejÃ© a mis amigos que vengan a ver este espectÃ¡culo de arte.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
