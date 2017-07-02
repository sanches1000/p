-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lip 2017, 11:23
-- Wersja serwera: 10.1.22-MariaDB
-- Wersja PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kamienie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokalizacje`
--

CREATE TABLE `lokalizacje` (
  `Id` int(11) NOT NULL,
  `Miejsce` text COLLATE utf8_polish_ci NOT NULL,
  `Szerokosc` double NOT NULL,
  `Dlugosc` double NOT NULL,
  `Zrodlo` text COLLATE utf8_polish_ci,
  `Komentarz` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `lokalizacje`
--

INSERT INTO `lokalizacje` (`Id`, `Miejsce`, `Szerokosc`, `Dlugosc`, `Zrodlo`, `Komentarz`) VALUES
(1, 'Wezuwiusz', 40.822384, 14.428906, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d181766.540417471!2d14.268775896784916!3d40.832344215270076!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133ba508f1413feb%3A0x9cbfa7aa9376793d!2sWezuwiusz!5e1!3m2!1spl!2sus!4v1498730040389\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL),
(3, 'Krzelów', 51.444491, 16.491881, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m24!1m12!1m3!1d5587.8167372143635!2d16.494517266095016!3d51.44519517260174!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m9!3e6!4m3!3m2!1d51.444426!2d16.4919026!4m3!3m2!1d51.444426!2d16.4919026!5e1!3m2!1spl!2sus!4v1498730548510\" width=\"400\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykaz`
--

CREATE TABLE `wykaz` (
  `Id` int(11) NOT NULL,
  `Nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `Sklad_chemiczny` text COLLATE utf8_polish_ci NOT NULL,
  `Kolor` text COLLATE utf8_polish_ci NOT NULL,
  `Pochodzenie_id` int(11) NOT NULL,
  `Znaleziono` date NOT NULL,
  `Cena` int(11) NOT NULL,
  `Pudelko` text COLLATE utf8_polish_ci NOT NULL,
  `Nabyto` text COLLATE utf8_polish_ci NOT NULL,
  `Zakupiono_id` int(11) NOT NULL,
  `W_zbiorze_od` date NOT NULL,
  `Zdjecie_id` int(11) NOT NULL,
  `Komentarz` text COLLATE utf8_polish_ci NOT NULL,
  `Aktualizacja` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=COMPACT;

--
-- Zrzut danych tabeli `wykaz`
--

INSERT INTO `wykaz` (`Id`, `Nazwa`, `Sklad_chemiczny`, `Kolor`, `Pochodzenie_id`, `Znaleziono`, `Cena`, `Pudelko`, `Nabyto`, `Zakupiono_id`, `W_zbiorze_od`, `Zdjecie_id`, `Komentarz`, `Aktualizacja`) VALUES
(1, 'Tuf wulkaniczny', '', '', 1, '0000-00-00', 0, '', 'znalazłem', 0, '2000-06-01', 1, 'dokładna data znalezienia nie znana', '2017-04-12'),
(2, 'Turkus', 'CuAl6(PO4)4(OH)8 – 4H2O + Fe', 'Turkusowy', 0, '0000-00-00', 0, '', 'kupiłem', 0, '2000-06-01', 2, 'dokładna data kupienia nie znana', '2017-04-12'),
(3, 'Ametyst', 'odmiana kwarcu mlecznego (SiO2)', '', 0, '0000-00-00', 0, '', 'kupiłem', 0, '2000-06-01', 3, 'dokładna data kupienia nie znana', '2017-04-12'),
(4, 'Talk', 'Mg3(OH)2Si4O10', '', 0, '0000-00-00', 0, '', 'dostałem', 0, '2000-06-01', 4, 'dokładna data dostania nie znana', '2017-04-12'),
(5, 'Kwarc', '', '', 0, '0000-00-00', 0, '', 'dostałem', 0, '2000-06-01', 5, 'dokładna data dostania nie znana', '2017-04-12'),
(6, 'Rubin', '', '', 0, '0000-00-00', 0, '', 'dostałem', 0, '2000-06-01', 6, 'dokładna data dostania nie znana', '2017-04-12'),
(7, 'Meteoryt żelazny', '', '', 3, '0000-00-00', 0, '', 'znalazłem', 0, '2000-06-01', 7, 'dokładna data znalezienia nie znana', '2017-04-12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `Id` int(11) NOT NULL,
  `Nazwa` varchar(260) COLLATE utf8_polish_ci NOT NULL,
  `Komentarz` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`Id`, `Nazwa`, `Komentarz`) VALUES
(1, '1.jpg', NULL),
(2, '2.jpg', NULL),
(3, '3.jpg', NULL),
(4, '4.jpg', NULL),
(5, '5.jpg', NULL),
(6, '6.jpg', NULL),
(7, '7.jpg', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `lokalizacje`
--
ALTER TABLE `lokalizacje`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `wykaz`
--
ALTER TABLE `wykaz`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `lokalizacje`
--
ALTER TABLE `lokalizacje`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `wykaz`
--
ALTER TABLE `wykaz`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
