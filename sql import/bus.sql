-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 06:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--
CREATE DATABASE IF NOT EXISTS `bus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bus`;
-- --------------------------------------------------------

--
-- Table structure for table `requestbus`
--

CREATE TABLE `requestbus` (
  `requestid` int(11) NOT NULL,
  `username` varchar(10) NOT NULL DEFAULT '',
  `seat` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(15) NOT NULL DEFAULT '',
  `setbus_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setbus`
--

CREATE TABLE `setbus` (
  `id` int(11) NOT NULL,
  `operator` varchar(30) NOT NULL,
  `dtime` varchar(10) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `dropoff` varchar(30) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL DEFAULT '',
  `usertype` varchar(6) NOT NULL DEFAULT '',
  `fullname` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(50) DEFAULT NULL,
  `image` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `usertype`, `fullname`, `email`, `image`) VALUES
('q', 'q', 'client', 'Mr Queue', NULL, 'default.jpg'),
('admin', 'q', 'admin', 'Mr. ADMIN bin', NULL, 'images/test.png'),
('Ajam', '123', 'client', 'Ahmad Azamuddin', 'azamhasni7@gmail.com', 'images/test.png'),
('test', '1234', 'client', 'Ahmad Azamuddin', 'azam@gmail.com', 'images/test.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requestbus`
--
ALTER TABLE `requestbus`
  ADD PRIMARY KEY (`requestid`);

--
-- Indexes for table `setbus`
--
ALTER TABLE `setbus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requestbus`
--
ALTER TABLE `requestbus`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `setbus`
--
ALTER TABLE `setbus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
