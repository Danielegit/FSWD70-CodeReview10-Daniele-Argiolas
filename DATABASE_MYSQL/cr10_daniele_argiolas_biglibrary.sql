-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 13, 2019 alle 15:50
-- Versione del server: 10.1.38-MariaDB
-- Versione PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_daniele_argiolas_biglibrary`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `authors`
--

CREATE TABLE `authors` (
  `author_id` int(13) NOT NULL,
  `name` varchar(29) DEFAULT NULL,
  `surname` varchar(55) DEFAULT NULL,
  `biography` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `surname`, `biography`) VALUES
(1, 'Anthony', 'DeVitis', 'down a 1914 Latin edition of De Finibus which challenges McClintocks 15th century claims and suggests that the dawn of lorem ipsum was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum”.'),
(2, 'Marck', 'Cooleman', 'down a 1914 Latin edition of De Finibus which challenges McClintocks 15th century claims and suggests that the dawn of lorem ipsum was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum”.'),
(3, 'Frank', 'Junior', 'down a 1914 Latin edition of De Finibus which challenges McClintocks 15th century claims and suggests that the dawn of lorem ipsum was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum”.'),
(4, 'Endy', 'Warrolas', 'down a 1914 Latin edition of De Finibus which challenges McClintocks 15th century claims and suggests that the dawn of lorem ipsum was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum”.'),
(5, 'Marylow', 'Traschrs', 'down a 1914 Latin edition of De Finibus which challenges McClintocks 15th century claims and suggests that the dawn of lorem ipsum was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum”.');

-- --------------------------------------------------------

--
-- Struttura della tabella `media`
--

CREATE TABLE `media` (
  `media_id` int(13) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(180) DEFAULT NULL,
  `isbn` int(12) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `genre` varchar(15) DEFAULT NULL,
  `availability` varchar(15) DEFAULT 'Available',
  `FK_publisher` int(10) DEFAULT NULL,
  `FK_author` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `media`
--

INSERT INTO `media` (`media_id`, `title`, `img`, `isbn`, `short_description`, `publish_date`, `type`, `genre`, `availability`, `FK_publisher`, `FK_author`) VALUES
(4, 'How are you!!!', 'img/mu.png', 33790764, 'How are you, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '2017-06-15', 'cd', 'rock', 'Available', 1, 1),
(6, 'Story', 'img/book1.png', 24326644, 'Story, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '2019-07-03', 'book', 'romance', 'Available', 2, 2),
(7, 'Nirvana', 'img/mu.png', 2534633, 'Nirvana rock Album', '2018-02-15', 'cd', 'rock', 'Available', 3, 3),
(9, 'The Jungle', 'img/dv.png', 4432425, 'Jungle adventures psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', '2017-02-01', 'dvd', 'adventure', 'Available', 4, 4),
(10, 'Viola', 'img/mu.png', 2345366, 'Viola psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', '1999-07-22', 'cd', 'romance', 'Reserved', 1, 4),
(11, 'Vampire', 'img/dv.png', 25346, 'Vampires in psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation,psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', '2019-07-12', 'dvd', 'horror', 'Available', 1, 4),
(12, 'The Crow', 'img/dv.png', 24325646, 'Sarah, ein junges MÃ¤dchen, besucht regelmÃ¤ÃŸig den Friedhof und legt Blumen auf die GrÃ¤ber von Eric und Shelly. Shelly hat sich um Sarah gekÃ¼mmert, da Sarahs Mutter drogenabhÃ¤ngig ist und nachts mit den falschen Leuten verkehrt. Ein Jahr spÃ¤ter wird Eric von einer KrÃ¤he wiedererweckt und steigt aus seinem Grab.', '2019-07-02', 'dvd', 'horror', 'Available', 1, 3),
(13, 'Melody', 'img/mu.png', 1125343, 'Melody psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation,psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation .', '2017-01-19', 'cd', 'rock', 'Available', 4, 3),
(14, 'Football', 'img/dv.png', 4432633, 'Football, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', '2016-06-18', 'dvd', 'sport', 'Available', 2, 3),
(15, 'Very sad', 'img/book1.png', 4365478, 'Very sad, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', '2018-02-15', 'book', 'drama', 'Available', 4, 4),
(16, 'Reload', 'img/book1.png', 3432543, 'Reload, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation, psum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.', '1998-03-11', 'book', 'drama', 'Available', 2, 5),
(17, 'How are you', 'img/dv.png', 24325646, 'dasD', '2019-07-25', 'dvd', 'drama', 'Available', 1, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(13) NOT NULL,
  `name` varchar(29) DEFAULT NULL,
  `addresse` varchar(55) DEFAULT NULL,
  `size` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `addresse`, `size`) VALUES
(1, 'AtCulture.srl', 'newStreet 45, Vienna', 'big'),
(2, 'NewEditions.srl', 'neuenStrasse 23, Berlin', 'big'),
(3, 'Akmondial.srl', 'evergreenterace 122a, New York', 'big'),
(4, 'Rfedition.srl', 'larzha 44, Moskow', 'big');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indici per le tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `FK_author` (`FK_author`),
  ADD KEY `FK_publisher` (`FK_publisher`);

--
-- Indici per le tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`FK_author`) REFERENCES `authors` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`FK_publisher`) REFERENCES `publisher` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
