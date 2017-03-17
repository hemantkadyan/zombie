-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2017 at 07:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zombie`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameboard`
--

CREATE TABLE `gameboard` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pl1` varchar(1000) NOT NULL,
  `pl2` varchar(1000) NOT NULL,
  `rno` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playerdb`
--

CREATE TABLE `playerdb` (
  `aid` int(10) NOT NULL,
  `string` varchar(1000) NOT NULL,
  `pname1` varchar(1000) NOT NULL,
  `collegename1` varchar(1000) NOT NULL,
  `pmobile1` varchar(1000) NOT NULL,
  `pname2` varchar(1000) NOT NULL,
  `collegename2` varchar(1000) NOT NULL,
  `pmobile2` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qno` int(10) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gameboard`
--
ALTER TABLE `gameboard`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `playerdb`
--
ALTER TABLE `playerdb`
  ADD UNIQUE KEY `a` (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD UNIQUE KEY `a` (`qno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gameboard`
--
ALTER TABLE `gameboard`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `playerdb`
--
ALTER TABLE `playerdb`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
