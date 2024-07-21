-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 21, 2024 alle 11:29
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poste`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `destinazione`
--

CREATE TABLE `destinazione` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `indirizzo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `destinazione`
--

INSERT INTO `destinazione` (`id`, `nome`, `indirizzo`) VALUES
(1, 'Londra spa', 'Via Della Foresta');

-- --------------------------------------------------------

--
-- Struttura della tabella `destinazione_pacco`
--

CREATE TABLE `destinazione_pacco` (
  `id` int(11) NOT NULL,
  `destinazione_id` int(11) DEFAULT NULL,
  `pacco_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `pacco`
--

CREATE TABLE `pacco` (
  `id` int(11) NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  `mittente` varchar(255) NOT NULL,
  `destinatario` varchar(255) NOT NULL,
  `data_spedizione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `pacco`
--

INSERT INTO `pacco` (`id`, `peso`, `mittente`, `destinatario`, `data_spedizione`) VALUES
(1, 10.00, 'Hogwarts', 'Londra spa', '2024-07-24');

-- --------------------------------------------------------

--
-- Struttura della tabella `pianotariffario`
--

CREATE TABLE `pianotariffario` (
  `id` int(11) NOT NULL,
  `nome_azienda` varchar(255) NOT NULL,
  `nome_piano` varchar(255) NOT NULL,
  `max_peso` decimal(5,2) NOT NULL,
  `max_pacchi` int(11) NOT NULL,
  `max_distanza` int(11) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `pianotariffario`
--

INSERT INTO `pianotariffario` (`id`, `nome_azienda`, `nome_piano`, `max_peso`, `max_pacchi`, `max_distanza`, `prezzo`) VALUES
(1, 'Topix', 'allTopax', 25.00, 5, 15, 30.00);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `destinazione`
--
ALTER TABLE `destinazione`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `destinazione_pacco`
--
ALTER TABLE `destinazione_pacco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinazione_id` (`destinazione_id`),
  ADD KEY `pacco_id` (`pacco_id`);

--
-- Indici per le tabelle `pacco`
--
ALTER TABLE `pacco`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pianotariffario`
--
ALTER TABLE `pianotariffario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `destinazione`
--
ALTER TABLE `destinazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `destinazione_pacco`
--
ALTER TABLE `destinazione_pacco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pacco`
--
ALTER TABLE `pacco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `pianotariffario`
--
ALTER TABLE `pianotariffario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `destinazione_pacco`
--
ALTER TABLE `destinazione_pacco`
  ADD CONSTRAINT `destinazione_pacco_ibfk_1` FOREIGN KEY (`destinazione_id`) REFERENCES `destinazione` (`id`),
  ADD CONSTRAINT `destinazione_pacco_ibfk_2` FOREIGN KEY (`pacco_id`) REFERENCES `pacco` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
