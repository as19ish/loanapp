-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 07:35 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loan`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` bigint(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `email`, `mobile`, `password`, `date`, `status`, `type`) VALUES
(5, 'Vinay Singh Rawat', 'vinay.purpleleap@gmail.com', '1', '123456', '2018-10-11 22:21:08', 'inactive', '1'),
(6, 'vinay', 'admin@gmail.com', '1', '1234', '2018-10-11 22:22:38', 'active', '1'),
(8, 'Ashish', 'as19ish@gmail.com', '1', '123', '2018-10-12 16:25:37', 'inactive', '1');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_updated_date` datetime NOT NULL,
  `status` varchar(8) NOT NULL,
  `employee_id` bigint(20) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `mobile`, `creation_date`, `last_updated_date`, `status`, `employee_id`) VALUES
(1, 'ASHISH', '8979836671', '2018-10-15 11:05:17', '2018-10-15 11:05:17', 'new', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
