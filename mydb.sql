-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 03, 2020 at 07:57 PM
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
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`) VALUES
(2, 'comment'),
(1, 'tfh'),
(5, 'hj'),
(24, 'sdfg'),
(35, 'ertg'),
(36, 'wre'),
(24, 'wer'),
(37, 'th'),
(36, 'ewrfw'),
(35, 'c2'),
(5, 'er'),
(36, '4ew'),
(36, '23 v'),
(24, 'sdef'),
(24, 'dsvf'),
(24, 'desf'),
(37, 'regt'),
(38, 'fg'),
(36, 'rgt'),
(24, 'rg'),
(5, 're'),
(24, ''),
(24, 'efet'),
(35, 'rt'),
(24, 'de'),
(24, 'rt'),
(36, 'er'),
(24, 'rtgh'),
(35, 'e'),
(24, 'ewf'),
(24, 'd'),
(35, 'fe'),
(24, 'ef'),
(37, 'ef'),
(24, 'sdef'),
(24, 'wqd'),
(24, 'ad'),
(35, 'tg'),
(24, '67y'),
(24, 'wd'),
(24, 'wef'),
(24, 'sd'),
(24, 'ertyg'),
(35, 'xds'),
(24, 'gfn'),
(36, 'ghj'),
(5, '8o'),
(24, 'tyu'),
(24, 'ert'),
(35, 'rty'),
(24, 'ry'),
(24, '6jui'),
(24, 'rtyh'),
(24, 'dfg'),
(38, 'gfh');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user`) VALUES
(0, 'gf'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'springfest'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'badal'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'badal'),
(0, 'puneet'),
(0, 'badal'),
(0, 'mony'),
(0, 'puneet'),
(0, 'mony'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'mony'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'mony'),
(0, 'puneet'),
(0, 'puneet'),
(0, 'puneet');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(13) NOT NULL,
  `website` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `phone`, `website`, `comment`) VALUES
('puneet3476', 'puneet3476@yahoo.com', 1234567890, 'https://ytyt.co', 'hi');

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

-- --------------------------------------------------------

--
-- Table structure for table `googleaccount`
--

CREATE TABLE `googleaccount` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('google','facebook','twitter','linkedin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'google',
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `S` int(10) NOT NULL,
  `M` int(10) NOT NULL,
  `L` int(10) NOT NULL,
  `XL` int(10) NOT NULL,
  `Cost` int(10) NOT NULL,
  `Image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merch`
--

INSERT INTO `merch` (`id`, `product_name`, `S`, `M`, `L`, `XL`, `Cost`, `Image`) VALUES
(1, 'T-Shirt', 91, 86, 100, 100, 200, ''),
(2, 'Zipper', 97, 99, 95, 99, 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `mycomment`
--

CREATE TABLE `mycomment` (
  `id` int(11) DEFAULT NULL,
  `commentid` int(6) UNSIGNED NOT NULL,
  `user` varchar(30) NOT NULL,
  `comment` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mycomment`
--

INSERT INTO `mycomment` (`id`, `commentid`, `user`, `comment`) VALUES
(5, 23, 'badal', 'Well done bro!'),
(5, 24, 'puneet', 'Thanks'),
(5, 25, 'puneet', 'hk'),
(39, 26, 'puneet', ''),
(39, 27, 'puneet', 'rtyh'),
(45, 28, 'badal', 'hi'),
(52, 29, 'puneet', 'dsf'),
(52, 30, 'puneet', 'dsg'),
(52, 31, 'puneet', 'dsgf'),
(52, 32, 'vandana', 'ey'),
(54, 33, 'vandana', 'thfy'),
(54, 34, 'vandana', 'rtyh'),
(56, 35, 'mony', 'HI'),
(58, 36, 'puneet', 'afss'),
(57, 37, 'puneet', 'asdf'),
(57, 38, 'puneet', 'asdf'),
(57, 39, 'puneet', 'af'),
(57, 40, 'puneet', 'asfaf'),
(55, 41, 'puneet', '<script>alert(hello)</script>'),
(55, 42, 'puneet', ''),
(55, 43, 'puneet', '<ujy'),
(55, 44, 'puneet', 'tyj'),
(55, 45, 'puneet', 'sdfg'),
(55, 46, 'puneet', 'fgh'),
(58, 47, 'puneet', 'sdfgh'),
(58, 48, 'puneet', 'ssfghjf'),
(55, 49, 'puneet', 'aesr');

-- --------------------------------------------------------

--
-- Table structure for table `myguests`
--

CREATE TABLE `myguests` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myguests`
--

INSERT INTO `myguests` (`id`, `name`, `pass`) VALUES
(47, 'puneet', 'sunny'),
(57, 'springfest', 'springfest'),
(58, 'badal', 'harshita'),
(62, 'puneet', 'sunny'),
(63, 'yash', 'refine'),
(64, 'old', 'monk'),
(65, 'old', 'monk'),
(66, 'dfsg', 'asf'),
(67, 'dfsg', 'asf'),
(68, 'df', 'df'),
(69, 'df', 'df'),
(70, 'dg', 'dg'),
(71, 'dg', 'dg'),
(72, 'vandana', 'mom'),
(73, 'vandana', 'mom'),
(74, 'soham', 'soham'),
(75, 'soham', 'soham'),
(76, 'mony', 'mony'),
(77, 'mony', 'mony'),
(78, 'aveek', 'das'),
(79, 'aveek', 'das'),
(80, 'shuvo', 'dey'),
(81, 'shuvo', 'dey'),
(82, 'puneet', 'sunny'),
(83, 'puneet', 'sunny'),
(84, 'puneet', 'sunny'),
(85, 'puneet', 'sunny'),
(86, 'puneet', 'sunny'),
(87, 'puneet', 'sunny'),
(88, 'puneet', '58'),
(89, 'puneet', '58'),
(90, 'puneet', 'qwe'),
(91, 'puneet', 'qwe'),
(92, 'puneet', '123'),
(93, 'puneet', '123'),
(94, 'puneet', 'puneet'),
(95, 'puneet', 'puneet'),
(96, 'puneet', 'puneet'),
(97, 'puneet', 'puneet'),
(98, 'puneet', '123'),
(99, 'puneet', '123'),
(100, 'puneet', 'qw'),
(101, 'puneet', 'qw');

-- --------------------------------------------------------

--
-- Table structure for table `mytopic`
--

CREATE TABLE `mytopic` (
  `id` int(11) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mytopic`
--

INSERT INTO `mytopic` (`id`, `user`, `topic`, `comment`) VALUES
(55, 'vandana', 'rsg', NULL),
(58, 'puneet', 'asdfg', NULL),
(59, 'puneet', 'ss', NULL),
(60, 'puneet', 'etyrt', NULL),
(61, 'puneet', 'sdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_new`
--

CREATE TABLE `orders_new` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `address` varchar(60) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` bigint(12) NOT NULL,
  `tshirt_S` int(4) NOT NULL,
  `tshirt_M` int(4) NOT NULL,
  `tshirt_L` int(4) NOT NULL,
  `tshirt_XL` int(4) NOT NULL,
  `Zipper_S` int(4) NOT NULL,
  `Zipper_M` int(4) NOT NULL,
  `Zipper_L` int(4) NOT NULL,
  `Zipper_XL` int(4) NOT NULL,
  `total_price` int(5) NOT NULL,
  `ctm` varchar(50) DEFAULT NULL,
  `delivery` int(11) NOT NULL DEFAULT '0',
  `payment` int(11) NOT NULL DEFAULT '0',
  `sms_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_new`
--

INSERT INTO `orders_new` (`id`, `name`, `roll`, `address`, `email`, `phone`, `tshirt_S`, `tshirt_M`, `tshirt_L`, `tshirt_XL`, `Zipper_S`, `Zipper_M`, `Zipper_L`, `Zipper_XL`, `total_price`, `ctm`, `delivery`, `payment`, `sms_status`) VALUES
(1, 'puneet', '18mi33016', 'Gokhale  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 4, 0, 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0),
(2, 'puneet', '18mi33016', 'J C Bose  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 7, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(3, 'puneet', '18mi33016', 'Madan Mohan Malviya  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(4, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(5, 'puneet', '18mi33016', 'Megnad Saha  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(6, 'puneet', '18mi33016', 'Mother Teresa  Hall test', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(7, 'puneet', '18mi33016', 'Radha Krishnan  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(8, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(9, 'puneet', '18mi33016', 'Lalbahadur Sastry  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(10, 'sadsf', '18mi33016', 'Vikram sarabhai residential complextest', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(11, 'ewr', '18mi33016', 'Rani Laxmibai  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(12, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(13, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(14, 'puneet', '18mi33016', 'Rajendra Prasad  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(15, 'ret', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(16, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(17, 'puneet', '18mi33016', 'Radha Krishnan  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(18, 'ZA', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(19, 'puneet', '18mi33016', 'Azad  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(20, 'puneet', '18mi33016', 'Nehru  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(21, 'puneet', '18mi33016', 'Radha Krishnan  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(22, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(23, 'puneet', '18mi33016', 'Patel  Hall b-402', 'shuvo151dey@gmail.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(24, 'puneet', '18mi33016', 'Madan Mohan Malviya  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 4, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(25, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(26, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 5, 0, 0, NULL, 0, 0, 0),
(27, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yaho.com', 1234567890, 0, 0, 0, 0, 0, 0, 3, 0, 0, NULL, 0, 0, 0),
(28, 'puneet', '18MI33016', 'Megnad Saha  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 6, 0, NULL, 0, 0, 0),
(29, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, 0, 0, 0),
(30, 'puneet', '18mi33016', 'Nehru  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(31, 'puneet', '18mi3fp08', 'Sir Ashutosh Mukherjee  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 6, 0, 0, NULL, 0, 0, 0),
(32, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(33, 'puneet', '18mi33016', 'Patel  Hall asdf', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(34, 'puneet', '18mi33016', 'Gokhale  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(35, 'puneet', '18mi33016', 'Madan Mohan Malviya  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 4, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(36, 'puneet', '18mi33016', 'Sir Ashutosh Mukherjee  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 3, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(37, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(38, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(39, 'puneet', '18mi33016', 'Azad  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(40, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(41, 'puneet', '18mi33016', 'Azad  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 4, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(42, 'puneet', '18mi33016', 'Radha Krishnan  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(43, 'puneet', '18mi33016', 'Radha Krishnan  Hall asdf', 'shuvo151dey@gmail.com', 1234567890, 0, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(44, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(45, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 2, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(46, 'puneet', '18mi33016', 'Rani Laxmibai  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(47, 'puneet', '18mi33016', 'Mother Teresa  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 0, 0, 0),
(48, 'puneet', '18mi33016', 'Nehru  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 2, 0, 0, 0, 0, 0, 3, 0, 0, NULL, 0, 0, 0),
(49, 'puneet', '18mi33016', 'Vikram sarabhai residential complexb-402', 'puneet3476@yahoo.com', 1234567890, 1, 0, 0, 0, 2, 0, 0, 0, 0, NULL, 0, 0, 0),
(50, 'puneet', '18mi33016', 'Megnad Saha  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 2, 2, 0, 0, 0, 1, 0, 1, 0, NULL, 0, 0, 0),
(51, 'puneet', '18mi33016', 'Rajendra Prasad  Hall test', 'puneet3476@yahoo.com', 1234567890, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 0),
(52, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(53, 'puneet', '18mi33016', 'Patel  Hall b-402', 'puneet3476@yahoo.com', 1234567890, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0),
(54, 'puneet', '18mi33016', 'B R Ambedkar  Hall 12', 'puneet3476@yahoo.com', 1234567890, 0, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sf`
--

CREATE TABLE `sf` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL,
  `hall` varchar(30) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `s` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sf`
--

INSERT INTO `sf` (`id`, `name`, `roll`, `hall`, `room`, `email`, `phone`, `s`) VALUES
(5, 'tests', 'test', 'test', 'test', 'puneeetyahoo.com', 1234567890, 0),
(6, 'tests', 'test', 'test', 'test', 'puneeetyahoo.com', 1234567890, 0),
(7, 'tests', 'test', 'test', 'test', 'puneeetyahoo.com', 1234567890, 0),
(8, 'tests', 'test', 'test', 'test', 'puneeetyahoo.com', 1234567890, 0),
(9, 'tests', 'test', 'test', 'test', 'puneeetyahoo.com', 1234567890, 0),
(10, 'tests', 'test', 'test', 'test', 'puneet3476@yahoo.com', 1234567890, 0),
(11, 'tests', 'test', 'test', 'test', 'puneet3476@yahoo.com', 1234567890, 0),
(12, 'tests', 'test', 'test', 'test', 'puneet3476@yahoo.com', 1234567890, 0),
(13, 'puneet', '18mi33016', 'Nehru Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(14, 'puneet', '18mi33016', 'Rajendra Prasad Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(15, 'puneet', '18mi33016', 'Nehru Hall', 'b-402', 'shuvo151dey@gmail.com', 1234567890, 0),
(16, 'puneet', '18mi33016', 'Radha Krishnan Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(17, 'puneet', '18mi33016', 'Radha Krishnan Hall', '', 'sgdanawe111@gmail.com', 1234567890, 0),
(18, 'puneet', '18mi33016', 'Radha Krishnan Hall', '', 'shuvo151dey@gmail.com', 1234567890, 0),
(19, 'puneet', '18mi33016', 'Patel Hall', '', 'puneet3476@yahoo.com', 1234567890, 0),
(20, 'puneet', '18mi33016', 'Patel Hall', '', 'puneet3476@yahoo.com', 1234567890, 0),
(21, 'puneet', '18mi33016', 'Patel Hall', '', 'sgdanawe111@gmail.com', 1234567890, 0),
(22, 'puneet', '18mi33016', 'Patel Hall', '', 'puneet3476@yahoo.com', 1234567890, 0),
(23, 'puneet', '18mi33016', 'Nehru Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(24, 'puneet', '18mi33016', 'Patel Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(25, 'puneet', '18mi33016', 'Megnad Saha Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(26, 'puneet', '18mi33016', 'Mother Teresa Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(27, 'puneet', '18mi33016', 'Patel Hall', 'b-402', 'puneet3476@yahoo.com', 1234567890, 0),
(28, 'hnj', '12sd34565', 'Sir Ashutosh Mukherjee Hall', 'fgh', 'fcgv@fg.com', 1234567890, 0),
(29, 'puneet', '18mi33016', 'Radha Krishnan Hall', 'b-402', 'sgdanawe111@gmail.com', 1234567890, 0),
(30, 'asfsd', '18mi33016', 'Rani Laxmibai Hall', 'b-402', 'shuvo151dey@gmail.com', 1234567890, 0);

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
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `phone_2` (`phone`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `googleaccount`
--
ALTER TABLE `googleaccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merch`
--
ALTER TABLE `merch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycomment`
--
ALTER TABLE `mycomment`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `myguests`
--
ALTER TABLE `myguests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytopic`
--
ALTER TABLE `mytopic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_new`
--
ALTER TABLE `orders_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sf`
--
ALTER TABLE `sf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
ALTER TABLE `sf` ADD FULLTEXT KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `googleaccount`
--
ALTER TABLE `googleaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merch`
--
ALTER TABLE `merch`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mycomment`
--
ALTER TABLE `mycomment`
  MODIFY `commentid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `myguests`
--
ALTER TABLE `myguests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `mytopic`
--
ALTER TABLE `mytopic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders_new`
--
ALTER TABLE `orders_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sf`
--
ALTER TABLE `sf`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
