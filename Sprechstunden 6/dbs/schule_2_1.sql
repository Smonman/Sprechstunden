-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Feb 2018 um 16:20
-- Server-Version: 10.1.22-MariaDB
-- PHP-Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `schule_2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lehrer`
--

CREATE TABLE `lehrer` (
  `SprechNr` int(3) NOT NULL,
  `LehrerNr` int(3) NOT NULL,
  `Vorname` varchar(30) NOT NULL,
  `Nachname` varchar(30) NOT NULL,
  `Kuerzel` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `lehrer`
--

INSERT INTO `lehrer` (`SprechNr`, `LehrerNr`, `Vorname`, `Nachname`, `Kuerzel`) VALUES
(16, 1, 'Angelika', 'ACHILLES', 'ACH'),
(25, 2, 'Cornelia', 'ALON', 'ALO'),
(21, 4, 'Irma', 'BIERBAUMER', 'BIE'),
(23, 6, 'Monika', 'BINDER', 'BIN'),
(9, 7, 'Doris', 'HEINISSER', 'BOR'),
(31, 9, 'G?nther', 'CHROMECEK', 'CHR'),
(2, 10, 'Ferdinand', 'CZOKLITS', 'CZO'),
(6, 11, 'Brigitte', 'ERHARD', 'ERH'),
(30, 12, 'Rainer', 'FATZI', 'FAT'),
(22, 13, 'Maria-Elisabeth', 'FEUCHTM?LLER', 'FEU'),
(16, 14, 'Edith', 'FLOSZMANN', 'FLO'),
(11, 16, 'Birgit', 'GOLLMANN', 'GOL'),
(7, 21, 'Michaela', 'HOFMACHER', 'HOF'),
(29, 23, 'Karl', 'INHOF', 'INH'),
(14, 24, 'Gabriele', 'JELENCSICS', 'JEL'),
(13, 26, 'Anike', 'KERSCHBAUM', 'KER'),
(10, 31, 'Petra', 'LACKNER', 'LAC'),
(6, 32, 'Brigitte', 'LEITNER', 'LEI'),
(12, 33, 'Regina', 'LETTNER', 'LET'),
(30, 34, 'Gerhard', 'MACHO', 'MAC'),
(8, 36, 'Rosa', 'MISTELBAUER', 'MIS'),
(1, 37, 'Karl-Heinz', 'NAIMER', 'NAI'),
(7, 39, 'Zbigniew', 'PILARSKY', 'PIL'),
(8, 41, 'Walter', 'RADICS', 'RAD'),
(14, 45, 'Astrid', 'SCHARTNER', 'SAR'),
(1, 49, 'Brigitte', 'SCHOPF', 'SOP'),
(24, 51, 'Lisa', 'ST?GM?LLER', 'STM'),
(8, 52, 'Michaela', 'SPERRER', 'SPE'),
(16, 54, 'Siegmar', 'TESCH', 'TES'),
(16, 57, 'Doris', 'WIMMER', 'WID'),
(8, 58, 'Johannes', 'WITTICH', 'WIT'),
(16, 59, 'Herta', 'W?HRER-ONDRACEK', 'W?H'),
(3, 61, 'Sonja', 'WUKITSEVITS', 'WUK'),
(24, 62, 'Birgitt', 'ZEROBIN', 'ZER'),
(24, 64, 'Nicole', 'HAHNL', 'HNL'),
(13, 70, 'Christiane', 'GROLLER-SCHNEIKART', 'GRO'),
(18, 73, 'Magdalena', 'REIDINGER', 'REI'),
(30, 86, 'Matthias', 'KONZETT', 'KOM'),
(13, 91, 'Nicole', 'FRONEK', 'FRO'),
(8, 92, 'Daniel', 'H?MMERLE', 'H?M'),
(15, 93, 'Katrin', 'NUREDINI', 'NUR'),
(27, 96, 'Isabella', 'PESSL', 'PES'),
(28, 107, 'Christian', 'GR?NEIS', 'GR?'),
(20, 108, 'Lothar', 'KOTTNIG', 'KOT'),
(0, 110, 'Clemens', 'ALLESCH', 'ALE'),
(1, 112, 'Karoline', 'PRINZ-CENCIC', 'PRI'),
(16, 114, 'Lisa-Sophie', 'TONKOVITSCH', 'TON'),
(31, 122, 'Barbara', 'WILLIM', 'WIB'),
(25, 124, 'Franziska', 'FEUERSTEIN-ANTARA', 'FEF'),
(16, 127, 'Rapahael', 'PROTIWENSKY-SCHENK', 'PRO'),
(15, 128, 'Emriye', 'SOMUNCU-DOKUR', 'SOM'),
(19, 136, 'Iman', 'MANDO', 'MAN'),
(9, 140, 'Angela', 'HUBINGER', 'HUB'),
(5, 144, 'Caroline', 'POLLATZK', 'POL'),
(4, 145, 'Christoph', 'TEUFEL', 'TEU'),
(26, 150, 'Petra', 'PUCHBERGER', 'PUC'),
(9, 152, 'Dominik', 'HAMP', 'HAD'),
(17, 156, 'Johannes', 'BILGERI', 'BIJ'),
(24, 157, 'Daniel', 'STIFTER', 'STD');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sprechstunde`
--

CREATE TABLE `sprechstunde` (
  `SprechIndex` int(3) NOT NULL,
  `Wochentag` varchar(30) NOT NULL,
  `Stunde` varchar(5) NOT NULL,
  `Anfang` varchar(5) NOT NULL,
  `Ende` varchar(5) NOT NULL,
  `Ort` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `sprechstunde`
--

INSERT INTO `sprechstunde` (`SprechIndex`, `Wochentag`, `Stunde`, `Anfang`, `Ende`, `Ort`) VALUES
(0, 'Montag', '2', '08:55', '09:45', 'Konferenzzimmer'),
(1, 'Montag', '3', '10:00', '10:50', 'Konferenzzimmer'),
(2, 'Montag', '4', '10:55', '11:45', 'Konferenzzimmer'),
(3, 'Montag', '5', '11:55', '12:45', 'Konferenzzimmer'),
(4, 'Montag', '6', '12:50', '13:40', 'Konferenzzimmer'),
(5, 'Montag', '7', '13:50', '14:40', 'Konferenzzimmer'),
(6, 'Dienstag', '2', '08:55', '09:45', 'Konferenzzimmer'),
(7, 'Dienstag', '3', '10:00', '10:50', 'Bibliothek'),
(8, 'Dienstag', '3', '10:00', '10:50', 'Konferenzzimmer'),
(9, 'Dienstag', '4', '10:55', '11:45', 'Konferenzzimmer'),
(10, 'Dienstag', '5', '11:55', '12:45', 'Konferenzzimmer'),
(11, 'Dienstag', '6', '12:50', '13:40', 'Konferenzzimmer'),
(12, 'Dienstag', '10', '16:20', '17:10', 'Konferenzzimmer'),
(13, 'Mittwoch', '3', '10:00', '10:50', 'Konferenzzimmer'),
(14, 'Mittwoch', '4', '10:55', '11:45', 'Konferenzzimmer'),
(15, 'Mittwoch', '5', '11:55', '12:45', 'Konferenzzimmer'),
(16, 'Mittwoch', '6', '12:50', '13:40', 'Konferenzzimmer'),
(17, 'Mittwoch', '6,5', '13:10', '13:40', 'Konferenzzimmer'),
(18, 'Mittwoch', '7', '13:50', '14:40', 'Konferenzzimmer'),
(19, 'Mittwoch', '7,5', '14:10', '14:40', 'Konferenzzimmer'),
(20, 'Mittwoch', '8', '14:40', '15:30', 'Konferenzzimmer'),
(21, 'Donnerstag', '1', '08:00', '08:50', 'Administration'),
(22, 'Donnerstag', '2', '08:55', '09:45', 'Konferenzzimmer'),
(23, 'Donnerstag', '3', '10:00', '10:50', 'Bibliothek'),
(24, 'Donnerstag', '4', '10:55', '11:45', 'Konferenzzimmer'),
(25, 'Donnerstag', '5', '11:55', '12:45', 'Konferenzzimmer'),
(26, 'Donnerstag', '6', '12:50', '13:40', 'Konferenzzimmer'),
(27, 'Donnerstag', '7', '13:50', '14:40', 'Konferenzzimmer'),
(28, 'Freitag', '2', '08:55', '09:45', 'Konferenzzimmer'),
(29, 'Freitag', '3', '10:00', '10:50', 'Konferenzzimmer'),
(30, 'Freitag', '4', '10:55', '11:45', 'Konferenzzimmer'),
(31, 'Freitag', '5', '11:55', '12:45', 'Konferenzzimmer');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `lehrer`
--
ALTER TABLE `lehrer`
  ADD PRIMARY KEY (`LehrerNr`);

--
-- Indizes für die Tabelle `sprechstunde`
--
ALTER TABLE `sprechstunde`
  ADD PRIMARY KEY (`SprechIndex`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
