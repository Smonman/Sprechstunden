-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Feb 2018 um 19:44
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `Vorname` varchar(30) NOT NULL,
  `Nachname` varchar(30) NOT NULL,
  `Kuerzel` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `lehrer`
--

INSERT INTO `lehrer` (`SprechNr`, `Vorname`, `Nachname`, `Kuerzel`) VALUES
(0, 'Angelika', 'ACHILLES', 'ACH'),
(0, 'Clemens', 'ALLESCH', 'ALE'),
(25, 'Cornelia', 'ALON', 'ALO'),
(21, 'Irma', 'BIERBAUMER', 'BIE'),
(17, 'Johannes', 'BILGERI', 'BIJ'),
(23, 'Monika', 'BINDER', 'BIN'),
(31, 'Günther', 'CHROMECEK', 'CHR'),
(2, 'Ferdinand', 'CZOKLITS', 'CZO'),
(6, 'Brigitte', 'ERHARD', 'ERH'),
(30, 'Rainer', 'FATZI', 'FAT'),
(22, 'Maria-Elisabeth', 'FEUCHTMÜLLER', 'FEU'),
(25, 'Franziska', 'FEUERSTEIN-ANTARA', 'FEF'),
(16, 'Edith', 'FLOSZMANN', 'FLO'),
(13, 'Nicole', 'FRONEK', 'FRO'),
(11, 'Birgit', 'GOLLMANN', 'GOL'),
(13, 'Christiane', 'GROLLER-SCHNEIKART', 'GRO'),
(28, 'Christian', 'GRÜNEIS', 'GRÜ'),
(24, 'Nicole', 'HAHNL', 'HNL'),
(8, 'Daniel', 'HÄMMERLE', 'HÄM'),
(9, 'Dominik', 'HAMP', 'HAD'),
(9, 'Doris', 'HEINISSER', 'BOR'),
(7, 'Michaela', 'HOFMACHER', 'HOF'),
(9, 'Angela', 'HUBINGER', 'HUB'),
(29, 'Karl', 'INHOF', 'INH'),
(14, 'Gabriele', 'JELENCSICS', 'JEL'),
(13, 'Anike', 'KERSCHBAUM', 'KER'),
(30, 'Matthias', 'KONZETT', 'KOM'),
(20, 'Lothar', 'KOTTNIG', 'KOT'),
(10, 'Petra', 'LACKNER', 'LAC'),
(6, 'Brigitte', 'LEITNER', 'LEI'),
(12, 'Regina', 'LETTNER', 'LET'),
(30, 'Gerhard', 'MACHO', 'MAC'),
(19, 'Iman', 'MANDO', 'MAN'),
(8, 'Rosa', 'MISTELBAUER', 'MIS'),
(1, 'Karl-Heinz', 'NAIMER', 'NAI'),
(15, 'Katrin', 'NUREDINI', 'NUR'),
(27, 'Isabella', 'PESSL', 'PES'),
(7, 'Zbigniew', 'PILARSKY', 'PIL'),
(5, 'Caroline', 'POLLATZK', 'POL'),
(1, 'Karoline', 'PRINZ-CENCIC', 'PRI'),
(16, 'Rapahael', 'PROTIWENSKY-SCHENK', 'PRO'),
(26, 'Petra', 'PUCHBERGER', 'PUC'),
(8, 'Walter', 'RADICS', 'RAD'),
(18, 'Magdalena', 'REIDINGER', 'REI'),
(14, 'Astrid', 'SCHARTNER', 'SAR'),
(1, 'Brigitte', 'SCHOPF', 'SOP'),
(15, 'Emriye', 'SOMUNCU-DOKUR', 'SOM'),
(8, 'Michaela', 'SPERRER', 'SPE'),
(24, 'Daniel', 'STIFTER', 'STD'),
(24, 'Lisa', 'STÖGMÜLLER', 'STM'),
(16, 'Siegmar', 'TESCH', 'TES'),
(4, 'Christoph', 'TEUFEL', 'TEU'),
(16, 'Lisa-Sophie', 'TONKOVITSCH', 'TON'),
(31, 'Barbara', 'WILLIM', 'WIB'),
(16, 'Doris', 'WIMMER', 'WID'),
(8, 'Johannes', 'WITTICH', 'WIT'),
(16, 'Herta', 'WÖHRER-ONDRACEK', 'WÖH'),
(3, 'Sonja', 'WUKITSEVITS', 'WUK'),
(24, 'Birgitt', 'ZEROBIN', 'ZER');

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
-- Indizes für die Tabelle `sprechstunde`
--
ALTER TABLE `sprechstunde`
  ADD PRIMARY KEY (`SprechIndex`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
