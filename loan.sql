-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2018 at 09:09 PM
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
CREATE DATABASE `loan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loan`;
--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `firm` varchar(150) NOT NULL,
  `revenue` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `comment` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `last_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `lead_id`, `employee_id`, `comment`, `creation_date`, `last_updated_date`) VALUES
(1, 5, 2, 'hi..', '2018-11-18 01:34:21', '2018-11-17 20:04:21'),
(2, 5, 1, 'We can not find the page you\'re looking for. \nReturn home or try the search bar below.', '2018-11-18 01:36:00', '2018-11-17 20:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'amul'),
(2, 'Google'),
(3, 'Microsoft');

-- --------------------------------------------------------

--
-- Table structure for table `ecards`
--

CREATE TABLE `ecards` (
  `id` bigint(20) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `issuing_bank` varchar(200) DEFAULT NULL,
  `card_limit` int(11) DEFAULT NULL,
  `card_used` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecards`
--

INSERT INTO `ecards` (`id`, `lead_id`, `issuing_bank`, `card_limit`, `card_used`) VALUES
(1, 3, 'Bank of Baroda', 50000, 3000),
(2, 2, 'Indian Overseas Bank', 50000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `eloans`
--

CREATE TABLE `eloans` (
  `id` bigint(20) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `type` varchar(12) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `emi` varchar(20) NOT NULL,
  `company` varchar(100) NOT NULL,
  `tenure` int(11) DEFAULT NULL,
  `repayment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eloans`
--

INSERT INTO `eloans` (`id`, `lead_id`, `type`, `amount`, `emi`, `company`, `tenure`, `repayment`) VALUES
(1, 3, 'Personal', '4000', '3000', 'pnb', 25, 5);

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
(1, 'Admin', 'test@gmail.com', '8979836671', 'test', '2018-11-14 22:18:38', 'active', 'admin'),
(2, 'Atif', 'atif@gmail.com', '7562413589', 'atif', '2018-11-14 22:21:11', 'active', 'employee'),
(3, 'Dev', 'dev@gmail.com', '8567421365', 'dev', '2018-11-15 15:55:42', 'active', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `excel_sheet`
--

CREATE TABLE `excel_sheet` (
  `id` int(11) NOT NULL,
  `file_name` varchar(256) NOT NULL,
  `file_hash` varchar(256) NOT NULL,
  `total_added` bigint(20) NOT NULL,
  `sheet_type` enum('lead','company') NOT NULL,
  `errors` text NOT NULL,
  `creation_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `excel_sheet`
--

INSERT INTO `excel_sheet` (`id`, `file_name`, `file_hash`, `total_added`, `sheet_type`, `errors`, `creation_date`, `expire_date`) VALUES
(4, 'Book.xlsx', '9bad25bb3b6d6881242cb5b77db61c31', 5, 'lead', '[{}]', '2018-11-15 22:32:53', '2018-11-15 22:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` bigint(20) NOT NULL,
  `lead_id` bigint(20) NOT NULL,
  `company_name` varchar(256) NOT NULL,
  `salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `lead_id`, `company_name`, `salary`) VALUES
(1, 5, 'Microsoft', 40000),
(2, 4, 'ss', 4000),
(3, 3, 'Microsoft', 4000),
(4, 2, 'amul', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alternate_mobile` varchar(12) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `last_updated_date` datetime NOT NULL,
  `status_id` int(2) NOT NULL,
  `assigned` tinyint(1) NOT NULL DEFAULT '0',
  `employee_id` bigint(20) DEFAULT NULL,
  `next_call` datetime DEFAULT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `mobile`, `email`, `alternate_mobile`, `occupation_id`, `creation_date`, `last_updated_date`, `status_id`, `assigned`, `employee_id`, `next_call`, `remark`) VALUES
(1, 'HANISH GUPTA', '9868167544', NULL, NULL, NULL, '2018-11-14 22:56:23', '2018-11-14 22:56:23', 1, 0, NULL, NULL, NULL),
(2, 'MAHESH SHARMA', '9810594570', '', '', 1, '2018-11-14 22:56:23', '2018-11-18 01:38:14', 2, 1, 2, '2018-11-22 01:35:00', ''),
(3, 'NAVEET MEHERA', '9654996235', '', '', 1, '2018-11-14 22:56:23', '2018-11-15 19:03:06', 2, 1, 2, '2018-11-24 15:35:00', ''),
(5, 'ghgghghgh', '8979836671', '', '', 1, '2018-11-14 22:56:23', '2018-11-15 17:50:27', 2, 1, 2, '2018-11-16 14:30:00', ''),
(9, 'ANAND KUMAR PANDEY', '9013553384', NULL, NULL, NULL, '2018-11-15 22:32:52', '2018-11-15 22:32:52', 1, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `name`) VALUES
(1, 'job'),
(2, 'business');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'new'),
(2, 'interested'),
(3, 'not interested'),
(4, 'out of coverage area'),
(5, 'switched off'),
(7, 'invalid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lead_id` (`lead_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lead` (`lead_id`),
  ADD KEY `fk_employee` (`employee_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecards`
--
ALTER TABLE `ecards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_leads_id` (`lead_id`);

--
-- Indexes for table `eloans`
--
ALTER TABLE `eloans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id_foreign` (`lead_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `excel_sheet`
--
ALTER TABLE `excel_sheet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_hash` (`file_hash`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `Fk_Status_id` (`status_id`),
  ADD KEY `fk_employee_id` (`employee_id`),
  ADD KEY `fk_occupation_id` (`occupation_id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ecards`
--
ALTER TABLE `ecards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eloans`
--
ALTER TABLE `eloans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `excel_sheet`
--
ALTER TABLE `excel_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `fk_lead_id` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_lead` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ecards`
--
ALTER TABLE `ecards`
  ADD CONSTRAINT `fk_leads_id` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eloans`
--
ALTER TABLE `eloans`
  ADD CONSTRAINT `lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `Fk_Status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_occupation_id` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
