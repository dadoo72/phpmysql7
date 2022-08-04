-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Ago 04, 2022 alle 12:08
-- Versione del server: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- Versione PHP: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ijdb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `author`
--

INSERT INTO `author` (`id`, `name`, `email`) VALUES
(1, 'Kevin Yank', 'thatguy@kevinyank.com'),
(2, 'Tom Butler', 'tom@r.je');

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Knock-knock'),
(2, 'Cross the road'),
(3, 'Lawyers'),
(4, 'Walk the bar'),
(5, 'Light bulb');

-- --------------------------------------------------------

--
-- Struttura della tabella `joke`
--

CREATE TABLE `joke` (
  `id` int(11) NOT NULL,
  `joketext` text DEFAULT NULL,
  `jokedate` date DEFAULT NULL,
  `authorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `joke`
--

INSERT INTO `joke` (`id`, `joketext`, `jokedate`, `authorid`) VALUES
(1, 'A programmer was found dead in the shower. The instructions read: lather, rinse, repeat.', '2021-04-01', 1),
(2, '!false - it\'s funny because it\'s true', '2022-07-30', 1),
(3, 'A programmer\'s wife tells him to go to the store and \"get a gallon of milk, and if they have eggs, get a dozen.\" He returns with 13 gallons of milk.', '2021-04-01', 1),
(4, 'How many programmers does it take to screw in a lightbulb? None. It\'s a hardware problem.', '2022-08-02', 1),
(5, 'Why was the empty array stuck outside? It didn\'t have any keys', '2022-08-02', 2),
(6, 'Why did the programmer quit his job? He didn\'t get arrays', '2022-08-02', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `jokecategory`
--

CREATE TABLE `jokecategory` (
  `jokeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `jokecategory`
--
ALTER TABLE `jokecategory`
  ADD PRIMARY KEY (`jokeid`,`categoryid`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `joke`
--
ALTER TABLE `joke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
