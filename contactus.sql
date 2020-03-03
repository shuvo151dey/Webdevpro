-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 03, 2020 at 08:22 PM
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
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `phone`, `email`, `comment`, `website`) VALUES
(1, 'tyu', 1234567890, 'tyugii', 'qewretr', 'rtyu'),
(2, 'tyu', 1234567890, 'tyugii', 'qewretr', 'rtyu'),
(3, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', 'ascvf', 'https://ytyt.com'),
(4, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', 'ascvf', 'https://ytyt.com'),
(5, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', 'asdgm', 'https://ytyt.com'),
(6, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', 'dfd', 'https://ytyt.com'),
(7, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', '122', 'https://ytyt.com'),
(8, 'puneet3476', 1234567890, 'puneet3476@yahoo.com', 'sdfgfhj', 'https://ytyt.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
