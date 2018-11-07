-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 12:16 PM
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

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'amul'),
(2, 'Google'),
(3, 'Microsoft');

--
-- Dumping data for table `ecards`
--

INSERT INTO `ecards` (`id`, `leads_id`, `issuing_bank`, `card_limit`, `card_used`) VALUES
(1, 5, 'Personal', 0, 0);

--
-- Dumping data for table `eloans`
--

INSERT INTO `eloans` (`id`, `leads_id`, `type`, `amount`, `emi`, `company`, `tenure`, `repayment`) VALUES
(12, 5, 'Personal', '40000', '4000', 'hdfc', 45, 5),
(13, 5, 'Personal', '40000', '4000', 'hdfc', 45, 5);

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `email`, `mobile`, `password`, `date`, `status`, `type`) VALUES
(5, 'Vinay Singh Rawat', 'vinay.purpleleap@gmail.com', '1', '123456', '2018-10-11 22:21:08', 'active', '1'),
(6, 'vinay', 'admin@gmail.com', '1', '1234', '2018-10-11 22:22:38', 'active', '1'),
(8, 'Ashish', 'as19ish@gmail.com', '1', '123', '2018-10-12 16:25:37', 'inactive', '1'),
(9, 'Ashish', 'ashu101k@gmail.com', '89799765241', '$2a$10$UUpGRWGxgPOnv0Th5fgfzuc3UDsP2ld.pvxc4BFE7kb4dBo1rFA56', '2018-10-19 15:39:00', 'active', 'admin'),
(10, 'Rohit', 'rohit@gmail.com', '1234567895', '$2a$10$.NT.DheZqh/UnGxvt7q5Xuqdp/QypVH120KIaeGvISMCweun05uzS', '2018-10-19 15:44:26', 'active', 'admin'),
(11, 'Mohit', 'mohit@gmail.com', '4567890987', '$2a$10$Yb74R4K2jPduiT4IAy.YLOBeZ3ye.oow7xEwIJ.kba4ubkN83/DES', '2018-10-19 15:52:06', 'active', 'employee'),
(12, 'ashish', 'ashish@gmail.com', '1234567890', '$2a$10$eOcOOc4F/S1f7qCZZ969WebBDG3xhNVAD3h1C6ngeJ7dH6T3jD8Ei', '2018-10-19 16:55:34', 'active', 'admin'),
(13, 'test@gmail.com', 'test@gmail.com', '1234567890', '$2a$10$KTqLRFiDMUXp5.js0D.C9OfNFxWgP0uY/eDvsFuKGeSHJ1cQD28L.', '2018-10-19 18:31:05', 'active', 'admin'),
(14, 'Employee', 'emp@gmail.com', '1234567890', '$2a$10$7Uz63e69IQRaB05NssJLgufBmr9bdbbqJRU5ffni4H2D6dbIH5az6', '2018-10-19 22:44:05', 'active', 'employee'),
(15, 'Atif', 'atif@gmail.com', '8979836671', '$2a$10$hLxiGlF6biUZo.Azbsx6q.o91zVK8HXtTTk4IG/Us4Fe8PLtcV3nC', '2018-10-26 16:53:37', 'active', 'employee'),
(16, 'Ashu', 'ashu@gmail.com', '8293718262', '$2a$10$7lAAR2YIS158.oh1i0OfregxaX2cr/0s3tPlh7KHC/0VuOk.6NaCm', '2018-10-26 16:57:58', 'active', 'employee');

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `mobile`, `email`, `company`, `salary`, `alternate_mobile`, `creation_date`, `last_updated_date`, `status_id`, `assigned`, `employee_id`, `remark`) VALUES
(1, 'HANISH GUPTA', '9868167544', NULL, NULL, NULL, NULL, '2018-11-07 11:55:30', '2018-11-07 11:55:30', 1, 1, 15, NULL),
(2, 'MAHESH SHARMA', '9810594570', NULL, NULL, NULL, NULL, '2018-11-07 11:55:30', '2018-11-07 16:25:46', 7, 1, 15, ''),
(3, 'NAVEET MEHERA', '9654996235', NULL, NULL, NULL, NULL, '2018-11-07 11:55:30', '2018-11-07 12:41:07', 5, 1, 15, ''),
(4, 'ANAND KUMAR PANDEY', '9013553384', NULL, NULL, NULL, NULL, '2018-11-07 11:55:30', '2018-11-07 12:40:58', 4, 1, 15, ''),
(5, 'ghgghghgh', '8979836671', '', 'Google', '40000', '', '2018-11-07 11:55:30', '2018-11-07 12:40:48', 2, 1, 15, NULL);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
