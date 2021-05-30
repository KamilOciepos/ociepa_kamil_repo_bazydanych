-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbazydanych`
--

-- --------------------------------------------------------

--
-- Table structure for table `gracz`
--

CREATE TABLE `gracz` (
  `id_gracz` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(50) NOT NULL,
  `punkty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gracz`
--

INSERT INTO `gracz` (`id_gracz`, `nazwa`, `email`, `haslo`, `punkty`) VALUES
(1, 'Kamillo', 'kapeciu45@gmail.com', '534993fc4955eb98a89a0beb4e8a92e2\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategoria`
--

CREATE TABLE `kategoria` (
  `id_kategoria` int(11) NOT NULL,
  `kategoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategoria`
--

INSERT INTO `kategoria` (`id_kategoria`, `kategoria`) VALUES
(1, 'modyfikowanie tabeli'),
(2, 'użytkownik'),
(3, 'administrowanie danymi'),
(4, 'teoria');

-- --------------------------------------------------------

--
-- Table structure for table `odpowiadanie`
--

CREATE TABLE `odpowiadanie` (
  `id_odpowiadanie` int(11) NOT NULL,
  `id_pytanie` int(11) NOT NULL,
  `id_gracz` int(11) NOT NULL,
  `odpowiedz` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `odpowiadanie`
--

INSERT INTO `odpowiadanie` (`id_odpowiadanie`, `id_pytanie`, `id_gracz`, `odpowiedz`) VALUES
(1, 12, 1, '3'),
(2, 4, 1, '1'),
(3, 11, 1, '3'),
(4, 19, 1, '4'),
(5, 16, 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `pytania`
--

CREATE TABLE `pytania` (
  `id_pytanie` int(11) NOT NULL,
  `pytanie` varchar(150) NOT NULL,
  `id_kategoria` int(11) NOT NULL,
  `odpowiedz1` varchar(150) NOT NULL,
  `odpowiedz2` varchar(150) NOT NULL,
  `odpowiedz3` varchar(150) NOT NULL,
  `odpowiedz4` varchar(150) NOT NULL,
  `prawidlowaodpowiedz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id_pytanie`, `pytanie`, `id_kategoria`, `odpowiedz1`, `odpowiedz2`, `odpowiedz3`, `odpowiedz4`, `prawidlowaodpowiedz`) VALUES
(1, 'Jakiego polecenia użyjemy żeby zmodyfikować tabele?', 1, 'MODIFY', 'EDIT', 'ALTER', 'ATLER', 3),
(2, 'Jakiego polecenia użyjemy aby dodać do tabeli nową kolumne?', 1, 'INCREASE', 'ADD', 'DODAJ', 'PLUS', 2),
(3, 'Jakiego polecenia użyjemy aby zmienić typ pola?', 1, 'MODIFY', 'EDIT', 'CHANGE', 'ZMIEŃ', 1),
(4, 'Aby usunąć pole użyjemy polecenia:', 1, 'DROP', 'USUŃ', 'DELETE', 'DECREASE', 1),
(5, 'Żeby stworzyć tabelę użyjemy polecenia:', 3, 'START', 'STWORZ', 'CREATE', 'MAKE', 3),
(6, 'Aby odwołać się do tabeli użyjemy polecenia', 3, 'ODWOLAJ', 'REFERENCE', 'TO', 'THIS', 2),
(7, 'Aby usunąć dane z tabeli użyjemy polecenia:', 3, 'DROP', 'WYCZYSC', 'USUN', 'DELETE', 4),
(8, 'Jeśli chcemy zapewnić użytkownikowi wszystkie uprawnienia użyjemy polecenia:', 2, 'GIVE ADMIN', 'GIVE ALL PRIVILEGES', 'GRANT ALL PRIVILEGES', 'GRANT ADMIN', 3),
(9, 'By zabrać użytkownikowi uprawnienia użyjemy polecenia:', 2, 'TAKE BACK', 'DELETE PRIVILEGE', 'ZABIERZ', 'REVOKE', 4),
(10, 'Jakiego polecenia użyjesz gdy chcesz wprowadzić dane do tabeli?', 1, 'INSERT ', 'ADD', 'PUT', 'SELECT', 1),
(11, 'Jakiego polecenia użyjemy żeby sprawdzić dane wprowadzone do tabeli?', 3, 'TAKE', 'GET', 'SELECT', 'POKAZ', 3),
(12, 'Jaki jest najlepszy nauczyciel baz danych?', 4, 'Stelmaszyk Adam', 'Adam Stelmaszyk ', 'Wszystkie odpowiedzi są poprawne', 'Autor aplikacji na telefon CKZiU Elektryk', 3),
(13, 'Jak nazywa się program który umożliwia korzystanie z phpMyAdmin?', 4, 'XAMP', 'XAMPP', 'XMAPP', 'MAXPP', 2),
(14, 'Który z typów zmiennych pozwoli nam przechować tylko i wyłącznie liczby?', 4, 'VARCHAR', 'DATE', 'TEXT', 'INT', 4),
(15, 'Jaki klucz musi zawierać każda tabela?', 4, 'Klucz obcy', 'Klucz podstawowy', 'Klucz ważny', 'Klucz fajny', 2),
(16, 'Co pozwoli nam przechować zmienna DATE?', 4, 'Pozwoli nam przechować tekst', 'Pozwoli nam przechować liczby', 'Pozwoli nam przechować pieniądze', 'Pozwoli nam przechować datę', 4),
(17, 'Aby stworzyć tabelę użyjemy polecenia:', 4, 'CREATE TABLE', 'ADD TABLE', 'NEW TABLE', 'STWORZ TABELE', 1),
(18, 'Aby stworzyć bazę danych użyjemy polecenia:', 4, 'CREATE BASE', 'CREATE DATABASE', 'NEW DATABASE', 'ADD DATABASE', 2),
(19, 'By stworzyć nowego użytkownika użyjemy polecenia:', 2, 'USER CREATE', 'NEW USER', 'ADD USER', 'CREATE USER', 4),
(20, 'Jakiego języka używa się by tworzyć bazy danych?', 4, 'C++', 'SQL', 'PYTHON', 'JAVA', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gracz`
--
ALTER TABLE `gracz`
  ADD PRIMARY KEY (`id_gracz`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategoria`);

--
-- Indexes for table `odpowiadanie`
--
ALTER TABLE `odpowiadanie`
  ADD PRIMARY KEY (`id_odpowiadanie`),
  ADD KEY `id_pytanie` (`id_pytanie`),
  ADD KEY `id_gracz` (`id_gracz`);

--
-- Indexes for table `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id_pytanie`),
  ADD KEY `id_kategoria` (`id_kategoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gracz`
--
ALTER TABLE `gracz`
  MODIFY `id_gracz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `odpowiadanie`
--
ALTER TABLE `odpowiadanie`
  MODIFY `id_odpowiadanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id_pytanie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `odpowiadanie`
--
ALTER TABLE `odpowiadanie`
  ADD CONSTRAINT `odpowiadanie_ibfk_1` FOREIGN KEY (`id_pytanie`) REFERENCES `pytania` (`id_pytanie`),
  ADD CONSTRAINT `odpowiadanie_ibfk_2` FOREIGN KEY (`id_gracz`) REFERENCES `gracz` (`id_gracz`);

--
-- Constraints for table `pytania`
--
ALTER TABLE `pytania`
  ADD CONSTRAINT `pytania_ibfk_1` FOREIGN KEY (`id_kategoria`) REFERENCES `kategoria` (`id_kategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
