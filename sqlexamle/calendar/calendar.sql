-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Mai 2024 um 16:07
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `calendar`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `testkalendar`
--

CREATE TABLE `testkalendar` (
  `datum_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `verwendung_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `testkalendar`
--

INSERT INTO `testkalendar` (`datum_id`, `datum`, `title`, `text`, `verwendung_id`) VALUES
(1, '2020-12-10 00:00:00', 'Ugabuga', NULL, 3),
(4, '2021-04-01 00:00:00', 'Hallo', NULL, 2),
(12, '2021-04-12 00:00:00', 'Hi', NULL, 1),
(13, '2021-04-11 00:00:00', '38', NULL, 1),
(14, '2021-04-09 00:00:00', '27', NULL, 1),
(15, '2021-03-27 00:00:00', 'Hello', NULL, 4),
(17, '2021-08-04 00:00:00', 'Arzt', NULL, 1),
(18, '2021-04-20 00:00:00', 'Arzt Termin 16 Uhr', NULL, 3),
(19, '2021-08-20 00:00:00', 'Arzt Termin', NULL, 3),
(20, '2021-12-20 00:00:00', 'Arzt Terminn', NULL, 3),
(21, '2021-10-20 00:00:00', 'uwu', 'NULL', 2),
(24, '2021-10-23 00:00:00', 'NULL', 'NULL', 1),
(26, '2021-01-13 00:00:00', 'hi', 'NULL', 1),
(28, '2021-12-20 00:00:00', 'hi', 'NULL', 1),
(30, '2021-11-16 00:00:00', 'Wichtiges Meeting', 'NULL', 3),
(31, '2021-11-11 00:00:00', 'uwu', 'NULL', 1),
(32, '2022-03-31 00:00:00', 'Arzttermin', 'NULL', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `verwendung`
--

CREATE TABLE `verwendung` (
  `verwendung_id` int(10) NOT NULL,
  `text` varchar(20) NOT NULL,
  `farbe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `verwendung`
--

INSERT INTO `verwendung` (`verwendung_id`, `text`, `farbe`) VALUES
(1, 'Standard', '#00ff00'),
(2, 'Arbeit', '#F90'),
(3, 'Termin', '#F00'),
(4, 'Gaming', '#630'),
(5, 'Feiertage', '#9FF'),
(6, 'Ereignisse', '#FF0');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `meinkalendar`
--
ALTER TABLE `meinkalendar`
  ADD PRIMARY KEY (`datum_id`),
  ADD KEY `verwendung_id` (`verwendung_id`);

--
-- Indizes für die Tabelle `testkalendar`
--
ALTER TABLE `testkalendar`
  ADD PRIMARY KEY (`datum_id`),
  ADD KEY `verwendung_id` (`verwendung_id`);

--
-- Indizes für die Tabelle `verwendung`
--
ALTER TABLE `verwendung`
  ADD PRIMARY KEY (`verwendung_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `meinkalendar`
--
ALTER TABLE `meinkalendar`
  MODIFY `datum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT für Tabelle `testkalendar`
--
ALTER TABLE `testkalendar`
  MODIFY `datum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT für Tabelle `verwendung`
--
ALTER TABLE `verwendung`
  MODIFY `verwendung_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `meinkalendar`
--
ALTER TABLE `meinkalendar`
  ADD CONSTRAINT `meinkalendar_ibfk_1` FOREIGN KEY (`verwendung_id`) REFERENCES `verwendung` (`verwendung_id`);

--
-- Constraints der Tabelle `testkalendar`
--
ALTER TABLE `testkalendar`
  ADD CONSTRAINT `testkalendar_ibfk_1` FOREIGN KEY (`verwendung_id`) REFERENCES `verwendung` (`verwendung_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
