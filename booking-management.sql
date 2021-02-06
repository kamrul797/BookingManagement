-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 01:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frontdesk_users`
--

INSERT INTO `tbl_frontdesk_users` (`id`, `username`, `pwd`, `bdate`) VALUES
(16, 'Md. Selim', '12345', '2020-12-29 13:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2021-01-01', 'Weekly Holiday', '2020-12-29 15:10:53'),
(6, '2022-01-02', 'Weekly Holiday', '2020-12-29 15:11:04'),
(7, '2021-01-08', 'Weekly Holiday', '2020-12-29 15:11:18'),
(8, '2021-01-09', 'Weekly Holiday', '2020-12-29 15:11:30'),
(9, '2021-01-15', 'Weekly Holiday', '2020-12-29 15:11:44'),
(10, '2021-01-16', 'Weekly Holiday', '2020-12-29 15:11:50'),
(11, '2021-01-22', 'Weekly Holiday', '2020-12-29 15:12:01'),
(12, '2021-01-23', 'Weekly Holiday', '2020-12-29 15:12:07'),
(13, '2021-01-29', 'Weekly Holiday', '2020-12-29 15:12:15'),
(14, '2021-01-30', 'Weekly Holiday', '2020-12-29 15:12:25'),
(15, '2021-01-02', 'Weekly Holiday', '2020-12-29 15:12:48'),
(16, '2021-02-05', 'Weekly Holiday', '2020-12-29 15:13:15'),
(17, '2021-12-06', 'Weekly Holiday', '2020-12-29 15:13:26'),
(18, '2021-02-12', 'Weekly Holiday', '2020-12-29 15:13:37'),
(19, '2021-02-13', 'Weekly Holiday', '2020-12-29 15:14:00'),
(20, '2021-02-06', 'Weekly Holiday', '2020-12-29 15:14:15'),
(21, '2021-02-19', 'Weekly Holiday', '2020-12-29 15:14:29'),
(22, '2021-02-20', 'Weekly Holiday', '2020-12-29 15:14:49'),
(23, '2021-02-26', 'Weekly Holiday', '2020-12-29 15:15:02'),
(24, '2021-02-27', 'Weekly Holiday', '2020-12-29 15:15:10'),
(25, '2021-03-05', 'Weekly Holiday', '2020-12-29 15:15:32'),
(26, '2021-03-06', 'Weekly Holiday', '2020-12-29 15:15:40'),
(27, '2021-03-12', 'Weekly Holiday', '2020-12-29 15:15:47'),
(28, '2021-03-13', 'Weekly Holiday', '2020-12-29 15:16:12'),
(29, '2021-03-19', 'Weekly Holiday', '2020-12-29 15:16:40'),
(30, '2021-03-20', 'Weekly Holiday', '2020-12-29 15:16:47'),
(31, '2021-03-26', 'Weekly Holiday', '2020-12-29 15:16:59'),
(32, '2021-03-27', 'Weekly Holiday', '2020-12-29 15:17:09'),
(33, '2021-04-02', 'Weekly Holiday', '2020-12-29 15:17:32'),
(34, '2021-04-03', 'Weekly Holiday', '2020-12-29 15:17:37'),
(35, '2021-04-09', 'Weekly Holiday', '2020-12-29 15:17:47'),
(36, '2021-04-10', 'Weekly Holiday', '2020-12-29 15:17:57'),
(37, '2020-12-04', 'Weekly Holiday', '2020-12-29 16:36:24'),
(38, '2020-12-05', 'Weekly Holiday', '2020-12-29 16:36:33'),
(39, '2020-12-11', 'Weekly Holiday', '2020-12-29 16:36:48'),
(40, '2020-12-12', 'Weekly Holiday', '2020-12-29 16:36:59'),
(42, '2020-12-19', 'Weekly Holiday', '2020-12-29 16:37:46'),
(43, '2020-12-18', 'Weekly Holiday', '2020-12-29 16:37:52'),
(45, '2020-12-26', 'Weekly Holiday', '2020-12-29 16:38:09'),
(46, '2020-12-16', 'Victory Day', '2020-12-29 17:26:19'),
(47, '2020-12-25', 'Christmas', '2020-12-29 17:27:01'),
(48, '2021-02-21', 'International Mother Language Day', '2021-02-06 02:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(46, 34, 301, '2021-02-07 12:00', 'APPROVED', 'Lab', '2021-02-06 17:36:20'),
(47, 29, 303, '2021-02-10 10:00', 'PENDING', 'Theory', '2021-02-06 17:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(15, 'admin', 'admin', 'No Course', '01781179711', 'khasan550@gmail.com', 'admin', 'active', '2016-12-20 10:00:08'),
(28, 'MSAK - MITM305', '12345', 'MITM305', '01234567890', 'shafiul@iit.du.ac.bd', 'teacher', 'active', '2020-12-29 17:22:12'),
(29, 'KMS - MITM402', '12345', 'MITM402', '01234567890', 'sakib@iit.du.ac.bd', 'teacher', 'active', '2020-12-29 17:23:37'),
(30, 'BMMH - MITM401', '12345', 'MITM401', '01234567890', 'mainul@iit.du.ac.bd', 'teacher', 'active', '2020-12-29 17:24:47'),
(34, 'MAJ - MITM402', '12345', 'MITM402', '01234567890', 'joarder@iit.du.ac.bd', 'teacher', 'active', '2021-02-06 17:29:21'),
(35, 'CR-MITM305', '12345', 'MITM305', '01234567890', 'crmitm305@gmail.com', 'student', 'active', '2021-02-06 17:29:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tbl_users` ADD FULLTEXT KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
