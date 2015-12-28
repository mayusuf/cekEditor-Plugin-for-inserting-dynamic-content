-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2015 at 10:41 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `select_data`
--

CREATE TABLE IF NOT EXISTS `select_data` (
  `data_index` int(200) NOT NULL,
  `data_option` varchar(100) NOT NULL,
  `data_value` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `select_data`
--

INSERT INTO `select_data` (`data_index`, `data_option`, `data_value`) VALUES
(1, 'Value - 1', 'Some data for Value - 1'),
(2, 'Value - 2', 'Some data for Value - 2'),
(3, 'Value - 3', 'Some data for Value - 3'),
(4, 'Value - 4', 'Some data for Value - 4'),
(5, 'Value - 5', 'Some data for Value - 5');

-- --------------------------------------------------------

--
-- Table structure for table `select_value`
--

CREATE TABLE IF NOT EXISTS `select_value` (
  `option_index` int(200) NOT NULL,
  `option_value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `select_value`
--

INSERT INTO `select_value` (`option_index`, `option_value`) VALUES
(1, 'Value - 1'),
(2, 'Value - 2'),
(3, 'Value - 3'),
(4, 'Value - 4'),
(5, 'Value - 5'),
(6, 'Value - 6'),
(7, 'Value - 7'),
(8, 'Value - 8'),
(9, 'Value - 9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `select_data`
--
ALTER TABLE `select_data`
  ADD PRIMARY KEY (`data_index`);

--
-- Indexes for table `select_value`
--
ALTER TABLE `select_value`
  ADD PRIMARY KEY (`option_index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `select_data`
--
ALTER TABLE `select_data`
  MODIFY `data_index` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `select_value`
--
ALTER TABLE `select_value`
  MODIFY `option_index` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
