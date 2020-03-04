-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2020 at 09:25 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(7) UNSIGNED NOT NULL,
  `loginuser` varchar(30) NOT NULL,
  `note` varchar(100) NOT NULL,
  `time_mark` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `loginuser`, `note`, `time_mark`) VALUES
(41, 'puneet', 'sexytime', '00:03:14'),
(42, 'puneet', 'ghj', '00:00:00'),
(43, '', '', '00:00:00'),
(44, 'puneet', 'e4ty', '00:00:00'),
(45, 'puneet', 'rtyu', '00:00:00'),
(46, 'badal', 'asd', '00:00:00'),
(47, 'puneet', 'fg', '00:00:00'),
(48, 'puneet', 'dfghj', '00:00:00'),
(49, 'puneet', 'fgh', '00:00:00'),
(50, 'puneet', 'dfghj', '00:00:00'),
(51, 'puneet', 'sdfghjk asdfghj sdfghjkl', '00:00:00'),
(52, 'puneet', 'sry uyfyufy yfififfkfi iugogogog oogogogogog gogogogo', '00:00:00'),
(53, 'puneet', 'dyddju ysuji diddifi ifiifogo fifififii ufiadgiagdiv8 dugidgavdig gadviacyd', '00:08:37'),
(54, 'badal', 'my crush', '00:00:00'),
(55, 'puneet', 'dfghj', '00:00:00'),
(56, 'puneet', 'wert', '00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
