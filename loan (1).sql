-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2018 at 05:52 AM
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
  `password` varchar(60) DEFAULT NULL,
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
(8, 'Ashish', 'as19ish@gmail.com', '1', '123', '2018-10-12 16:25:37', 'inactive', '1'),
(9, 'Ashish', 'ashu101k@gmail.com', '89799765241', '$2a$10$UUpGRWGxgPOnv0Th5fgfzuc3UDsP2ld.pvxc4BFE7kb4dBo1rFA56', '2018-10-19 15:39:00', 'active', 'admin'),
(10, 'Rohit', 'rohit@gmail.com', '1234567895', '$2a$10$.NT.DheZqh/UnGxvt7q5Xuqdp/QypVH120KIaeGvISMCweun05uzS', '2018-10-19 15:44:26', 'active', 'admin'),
(11, 'Mohit', 'mohit@gmail.com', '4567890987', '$2a$10$Yb74R4K2jPduiT4IAy.YLOBeZ3ye.oow7xEwIJ.kba4ubkN83/DES', '2018-10-19 15:52:06', 'active', 'employee'),
(12, 'ashish', 'ashish@gmail.com', '1234567890', '$2a$10$eOcOOc4F/S1f7qCZZ969WebBDG3xhNVAD3h1C6ngeJ7dH6T3jD8Ei', '2018-10-19 16:55:34', 'active', 'admin'),
(13, 'test@gmail.com', 'test@gmail.com', '1234567890', '$2a$10$KTqLRFiDMUXp5.js0D.C9OfNFxWgP0uY/eDvsFuKGeSHJ1cQD28L.', '2018-10-19 18:31:05', 'active', 'admin'),
(14, 'Employee', 'emp@gmail.com', '1234567890', '$2a$10$7Uz63e69IQRaB05NssJLgufBmr9bdbbqJRU5ffni4H2D6dbIH5az6', '2018-10-19 22:44:05', 'active', 'employee');

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
  `status` varchar(20) NOT NULL,
  `assigned` tinyint(1) NOT NULL DEFAULT '0',
  `employee_id` bigint(20) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `mobile`, `creation_date`, `last_updated_date`, `status`, `assigned`, `employee_id`) VALUES
(1, 'HANISH GUPTA', '9868', '2018-10-19 19:36:57', '2018-10-19 19:36:57', 'ined', 1, 13),
(2, 'MAHESH SHARMA', '9810594570', '2018-10-19 19:36:57', '2018-10-19 19:36:57', 'new', 1, 13),
(3, 'JAI PRAKASH', '8979836671', '2018-10-19 22:46:00', '2018-10-19 22:46:00', 'not intrested', 0, 14);

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
  MODIFY `employee_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
