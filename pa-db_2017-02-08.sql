-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2017 at 03:07 PM
-- Server version: 5.6.34
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa`
--

-- --------------------------------------------------------

--
-- Table structure for table `pressione`
--

CREATE TABLE `pressione` (
  `id` int(10) UNSIGNED NOT NULL,
  `sistolica` int(10) UNSIGNED NOT NULL,
  `diastolica` int(10) UNSIGNED NOT NULL,
  `datamisurazione` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `peso` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pressione`
--

INSERT INTO `pressione` (`id`, `sistolica`, `diastolica`, `datamisurazione`, `peso`) VALUES
(118, 55, 55, '2017-02-08 22:00:00', '55'),
(120, 120, 60, '2017-01-31 22:00:00', '87'),
(121, 120, 80, '2017-02-02 22:00:00', '98'),
(130, 120, 72, '2017-02-21 22:00:00', '62'),
(132, 130, 77, '2017-02-12 22:00:00', '59'),
(133, 100, 90, '2017-02-27 22:00:00', '80'),
(134, 120, 65, '2017-02-09 22:00:00', '70'),
(135, 120, 50, '2017-02-08 22:00:00', '60'),
(136, 120, 55, '2017-02-03 22:00:00', '68');

-- --------------------------------------------------------

--
-- Table structure for table `temperatura`
--

CREATE TABLE `temperatura` (
  `id` int(10) UNSIGNED NOT NULL,
  `valore` int(10) UNSIGNED NOT NULL,
  `datamisurazione` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temperatura`
--

INSERT INTO `temperatura` (`id`, `valore`, `datamisurazione`) VALUES
(3, 39, '2017-02-08 13:39:33'),
(4, 35, '2017-02-08 13:39:33'),
(5, 34, '2017-02-08 13:39:42'),
(6, 38, '2017-02-08 13:39:42'),
(7, 36, '2017-02-08 13:39:52'),
(8, 37, '2017-02-08 13:39:52'),
(9, 35, '2017-02-08 13:40:08'),
(10, 38, '2017-02-08 13:40:08'),
(11, 38, '2017-02-08 13:40:19'),
(13, 27, '2017-02-16 22:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pressione`
--
ALTER TABLE `pressione`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperatura`
--
ALTER TABLE `temperatura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pressione`
--
ALTER TABLE `pressione`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `temperatura`
--
ALTER TABLE `temperatura`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
