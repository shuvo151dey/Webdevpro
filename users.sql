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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'puneet', '123'),
(2, 'puneet', '123'),
(3, 'puneet', 'a'),
(4, 'puneet', 'a'),
(5, 'springfest', '12'),
(6, 'springfest', '12'),
(7, 'vandana', 'mom'),
(8, 'puneet', '123'),
(9, 'puneet', '1234'),
(10, 'badal', 'best'),
(11, 'puneet', '123'),
(12, 'puneet', '123'),
(13, 'puneet', '123'),
(14, 'puneet', '456'),
(15, 'puneet', '789'),
(16, 'Puneet Khandelwal', '123'),
(17, 'puneeter', 'ws'),
(18, 'mony', 'cdfd'),
(19, 'puneet', '123'),
(20, 'Puneet Khandelwal', '120'),
(21, 'shuvo', '14'),
(22, 'yash', '14'),
(23, 'as', 'as'),
(24, 'as', '13'),
(25, 'yash', '14'),
(26, '', ''),
(27, '', ''),
(28, '', ''),
(29, 'puneet', '14'),
(30, 'puneet', '14'),
(31, 'puneet', '45'),
(32, 'puneet', '45'),
(33, 'springfest', 'sdf'),
(34, 'puneet', 'asd'),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(39, '', ''),
(40, '', ''),
(41, '', ''),
(42, 'dfsg', 'df'),
(43, 'puneet', '23'),
(44, '', ''),
(45, 'puneet', '23'),
(46, 'puneet', '23'),
(47, 'puneet', '23'),
(48, 'puneet', '23'),
(49, '23r', 'qw'),
(50, '23r', 'qw'),
(51, '23r', 'qw'),
(52, '23r', 'qw'),
(53, '23r', 'qw'),
(54, '23r', 'qw'),
(55, '23r', 'qw'),
(56, '23r', 'qw'),
(57, '23r', 'qw'),
(58, '23r', 'qw'),
(59, '23r', 'qw'),
(60, '23r', 'qw'),
(61, '475', 'aesd'),
(62, 'puneet', 'qw'),
(63, 'vandana', 'asd'),
(64, 'vandana', 'asd'),
(65, 'vandana', 'asd'),
(66, 'vandana', '3w4e'),
(67, 'vandana', '3w4e'),
(68, 'puneet', 'ssfd'),
(69, 'vandana', 'waesfgf'),
(70, 'puneet', 'qw'),
(71, 'puneet', 'sads'),
(72, 'puneet', 'asdf'),
(73, 'springfest', 'ndfgh'),
(74, 'badal', 'sdfgh'),
(75, 'puneet', '45'),
(76, 'puneet', '456'),
(77, 'puneet', '12'),
(78, 'shuvo', '13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
