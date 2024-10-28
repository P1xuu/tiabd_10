-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 28, 2024 at 08:21 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zajeciadodatkowe`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `PESEL` bigint(20) NOT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `imie` varchar(15) DEFAULT NULL,
  `miejscowosc` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`PESEL`, `nazwisko`, `imie`, `miejscowosc`) VALUES
(1301144688, 'Nowak', 'Anna', 'Warszawa'),
(85072424812, 'Wi?niewski', 'Piotr', 'Krak?w'),
(87081422449, 'W?jcik', 'Ewa', 'Pozna?'),
(91050723800, 'Kowalski', 'Jan', 'Gliwice'),
(95060762785, 'Jankowski', 'Marek', 'Wroc?aw'),
(96021654296, 'Mazur', 'Maria', 'Gliwice');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr_aktywnosci`
--

CREATE TABLE `rejestr_aktywnosci` (
  `DATA` date NOT NULL,
  `godzina_rozpoczecia` time NOT NULL,
  `godzina_zakonczenia` time DEFAULT NULL,
  `id_aktywnosci` int(11) NOT NULL,
  `pesel` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rejestr_aktywnosci`
--

INSERT INTO `rejestr_aktywnosci` (`DATA`, `godzina_rozpoczecia`, `godzina_zakonczenia`, `id_aktywnosci`, `pesel`) VALUES
('2018-07-05', '17:00:00', '18:30:00', 2, 1301144688),
('2018-07-06', '19:00:00', '21:00:00', 11, 1301144688),
('2018-07-05', '18:00:00', '19:00:00', 3, 85072424812),
('2018-07-06', '19:00:00', '19:45:00', 7, 85072424812),
('2018-07-06', '20:00:00', '21:00:00', 8, 85072424812),
('2018-07-07', '18:45:00', '19:45:00', 14, 85072424812),
('2018-07-07', '18:45:00', '20:45:00', 22, 85072424812),
('2018-07-08', '18:45:00', '19:45:00', 2, 87081422449),
('2018-07-05', '20:30:00', '22:30:00', 4, 87081422449),
('2018-07-08', '16:00:00', '17:00:00', 5, 87081422449),
('2018-07-07', '18:00:00', '19:30:00', 16, 87081422449),
('2018-07-07', '20:00:00', '21:15:00', 20, 87081422449),
('2018-07-07', '17:15:00', '18:15:00', 25, 87081422449),
('2018-07-05', '18:45:00', '20:45:00', 1, 91050723800),
('2018-07-08', '16:00:00', '17:30:00', 3, 91050723800),
('2018-07-08', '16:30:00', '17:30:00', 6, 91050723800),
('2018-07-06', '19:45:00', '21:45:00', 13, 91050723800),
('2018-07-07', '18:00:00', '20:00:00', 17, 91050723800),
('2018-07-07', '16:00:00', '18:00:00', 21, 91050723800),
('2018-07-07', '20:30:00', '21:30:00', 24, 91050723800),
('2018-07-07', '20:30:00', '22:30:00', 26, 91050723800),
('2018-07-08', '20:30:00', '22:30:00', 1, 95060762785),
('2018-07-08', '18:00:00', '19:30:00', 4, 95060762785),
('2018-07-06', '16:00:00', '18:00:00', 6, 95060762785),
('2018-07-06', '18:45:00', '20:45:00', 9, 95060762785),
('2018-07-06', '19:00:00', '19:45:00', 12, 95060762785),
('2018-07-07', '20:00:00', '21:00:00', 15, 95060762785),
('2018-07-07', '16:00:00', '17:00:00', 18, 95060762785),
('2018-07-07', '20:00:00', '21:30:00', 23, 95060762785),
('2018-07-06', '18:45:00', '19:45:00', 5, 96021654296),
('2018-07-06', '17:00:00', '18:00:00', 10, 96021654296),
('2018-07-07', '17:00:00', '17:45:00', 19, 96021654296);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaj_aktywnosci`
--

CREATE TABLE `rodzaj_aktywnosci` (
  `id_aktywnosci` int(11) NOT NULL,
  `nazwa_aktywnosci` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rodzaj_aktywnosci`
--

INSERT INTO `rodzaj_aktywnosci` (`id_aktywnosci`, `nazwa_aktywnosci`) VALUES
(1, 'Si?ownia'),
(2, 'Joga'),
(3, '?cianka wspinaczkowa'),
(4, 'Masa?'),
(5, 'P?ywanie'),
(6, 'Bieganie'),
(7, 'Pilates'),
(8, 'Aerobik'),
(9, 'Zumba'),
(10, 'Tenis'),
(11, 'Koszyk?wka'),
(12, 'Pi?ka no?na'),
(13, 'Jazda na rowerze'),
(14, 'Crossfit'),
(15, 'Kickboxing'),
(16, 'Boks'),
(17, 'Salsa'),
(18, 'Taniec towarzyski'),
(19, 'Jogging'),
(20, 'Squash'),
(21, 'Badminton'),
(22, 'Stretching'),
(23, 'Trening si?owy'),
(24, 'Lekcje boksu'),
(25, 'Zaj?cia grupowe'),
(26, 'Indywidualne treningi');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`PESEL`);

--
-- Indeksy dla tabeli `rejestr_aktywnosci`
--
ALTER TABLE `rejestr_aktywnosci`
  ADD PRIMARY KEY (`pesel`,`id_aktywnosci`,`DATA`,`godzina_rozpoczecia`);

--
-- Indeksy dla tabeli `rodzaj_aktywnosci`
--
ALTER TABLE `rodzaj_aktywnosci`
  ADD PRIMARY KEY (`id_aktywnosci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
