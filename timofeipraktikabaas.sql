-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Aprill 01, 2026 kell 07:44 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `timofeipraktikabaas`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `firma`
--

CREATE TABLE `firma` (
  `firmaID` int(11) NOT NULL,
  `firmanimi` varchar(20) DEFAULT NULL,
  `aadress` varchar(20) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `firma`
--

INSERT INTO `firma` (`firmaID`, `firmanimi`, `aadress`, `telefon`) VALUES
(1, 'Google', 'Tallinn', '5362455'),
(2, 'Netflix', 'Tartu', '5029831'),
(3, 'Steam', 'Pärnu', '5020395'),
(4, 'Hesburger', 'Narva', '5049283'),
(5, 'Nvidia', 'Tallinn', '5093928'),
(6, 'KFC', 'Tartu', '59904808');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `praktikabaas`
--

CREATE TABLE `praktikabaas` (
  `praktikabaasID` int(11) NOT NULL,
  `firmaID` int(11) DEFAULT NULL,
  `praktikatingimused` varchar(20) DEFAULT NULL,
  `arvutiprogramm` varchar(30) DEFAULT NULL,
  `juhendajaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `praktikabaas`
--

INSERT INTO `praktikabaas` (`praktikabaasID`, `firmaID`, `praktikatingimused`, `arvutiprogramm`, `juhendajaID`) VALUES
(1, 1, 'Kontoritöö', 'Python', 1),
(2, 2, 'Kaugtöö', 'Java', 2),
(3, 3, 'Paindlik graafik', 'C++', 3),
(4, 4, 'Kontoritöö', 'MS Excel', 4),
(5, 5, 'Hübriid', 'CUDA', 5),
(6, 6, 'Vahetustega töö', 'POS süsteem', 6),
(7, 1, 'Kaugtöö', 'JavaScript', 2),
(8, 2, 'Hübriid', 'SQL', 3);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `praktikajuhendaja`
--

CREATE TABLE `praktikajuhendaja` (
  `praktikajuhendajaID` int(11) NOT NULL,
  `eesnimi` varchar(50) DEFAULT NULL,
  `perekonnanimi` varchar(50) DEFAULT NULL,
  `synniaeg` date DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `palk` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `praktikajuhendaja`
--

INSERT INTO `praktikajuhendaja` (`praktikajuhendajaID`, `eesnimi`, `perekonnanimi`, `synniaeg`, `telefon`, `palk`) VALUES
(1, 'Timoha', 'Stoljar', '2006-05-29', '5363480', 1400.00),
(2, 'Anton', 'Letnij', '1999-07-22', '5903927', 1800.00),
(3, 'Pitr', 'Dostoevsij', '2002-09-27', '5345678', 2000.00),
(4, 'Dzonni', 'Depp', '1992-11-30', '5456789', 2500.00),
(5, 'Majkl', 'Tun', '1978-09-09', '5567890', 1700.00),
(6, 'Meri', 'Kivi', '1995-01-18', '5678901', 1600.00);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`firmaID`);

--
-- Indeksid tabelile `praktikabaas`
--
ALTER TABLE `praktikabaas`
  ADD PRIMARY KEY (`praktikabaasID`),
  ADD KEY `firmaID` (`firmaID`),
  ADD KEY `juhendajaID` (`juhendajaID`);

--
-- Indeksid tabelile `praktikajuhendaja`
--
ALTER TABLE `praktikajuhendaja`
  ADD PRIMARY KEY (`praktikajuhendajaID`),
  ADD UNIQUE KEY `telefon` (`telefon`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `firma`
--
ALTER TABLE `firma`
  MODIFY `firmaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT tabelile `praktikabaas`
--
ALTER TABLE `praktikabaas`
  MODIFY `praktikabaasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT tabelile `praktikajuhendaja`
--
ALTER TABLE `praktikajuhendaja`
  MODIFY `praktikajuhendajaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `praktikabaas`
--
ALTER TABLE `praktikabaas`
  ADD CONSTRAINT `praktikabaas_ibfk_1` FOREIGN KEY (`firmaID`) REFERENCES `firma` (`firmaID`),
  ADD CONSTRAINT `praktikabaas_ibfk_2` FOREIGN KEY (`juhendajaID`) REFERENCES `praktikajuhendaja` (`praktikajuhendajaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
