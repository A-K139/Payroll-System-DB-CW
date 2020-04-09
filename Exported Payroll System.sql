-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2020 at 02:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrollsystem2`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_ID` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_ID`, `phone`, `email`, `employee_ID`) VALUES
(1, '07930111362', 'mclovin@gmail.com', 1),
(2, '08950264788', 'superbad1@hotmail.com', 1),
(3, '07453525787', 'nick.g@ucl.ac.uk', 2),
(4, '07654263338', 'nick@gmail.com', 2),
(5, '07412369635', 'ishaan.utta@yahoo.com', 3),
(6, '07996531587', 'j.smith@gmail.com', 4),
(7, '07841245364', 'danhill@aol.com', 5),
(8, '07648513491', 'alex.kulig@hotmail.com', 6),
(9, '07998564248', 'finnalex2000@gmail.com', 7),
(10, '07985468471', 'andywarhol@campbellssoup.com', 8),
(11, '07453665428', 'Tasos@olympiakos.com.gr', 9),
(12, '07487593114', 'akaash.sadhwani@thegym.com.es', 10),
(13, '07841054631', 'chase.mcoy@gmail.com', 11),
(14, '07741324568', 'Ben2014@yahoo.com', 12),
(15, '07415413269', 'Yogesh@aol.com', 13),
(16, '07484852136', 'juanhernandez888@gmail.com', 14),
(17, '00798752007', 'bond007@mi5.co.uk', 15);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_ID` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `years_at_company` int(11) NOT NULL,
  `nin` varchar(9) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_ID`, `f_name`, `surname`, `address`, `city`, `years_at_company`, `nin`, `username`, `password`) VALUES
(1, 'Mc', 'Lovin', '892 Momona St', 'Honolulu', 5, 'YZ534729P', 'Mc151', 'abc321123'),
(2, 'Nick', 'Gurney', '361 Paris Road', 'Paris', 2, 'UZ373916U', 'Nick182', 'water256'),
(3, 'Ishaan', 'Uttam', '48 Avenue Close', 'London', 3, 'UT695406M', 'Ishaan173', 'HKLO2000'),
(4, 'James', 'Smith', '23 Woburn Place', 'London', 1, 'ZR599916F', 'James194', 'password123'),
(5, 'Dan', 'Hill', '7 Baker Street', 'London', 6, 'YA913148O', 'Dan145', '12345678'),
(6, 'Alex', 'Kulig', '29 Maiden Lane', 'London', 6, 'SX628513P', 'Alex146', 'speeeeed9000'),
(7, 'Alex', 'Finn', '84 Champ elysees', 'Paris', 2, 'WD533740B', 'Alex187', 'bike002'),
(8, 'Andy', 'Warhol', '41 Art Street', 'Paris', 4, 'XV986377H', 'Andy168', 'art00iscool'),
(9, 'Tasos', 'Anastasiadis', '48 Berkley Sq', 'London', 1, 'RE702328M', 'Tasos199', '9765165853'),
(10, 'Akaash', 'Sadhwani', '1 Luxborough St', 'London', 2, 'FE240543B', 'Akaash1810', 'malaga223'),
(11, 'Chase ', 'McCoy', '21 Pomono Drive', 'Honolulu', 8, 'II943664H', 'Chase1211', 'Denver777'),
(12, 'Ben', 'Denver', '15 Jamie Drive', 'Honolulu', 3, 'RJ386768X', 'Ben1712', 'dog77832'),
(13, 'Yogesh', 'Chutneypuri', '23 France Street', 'Paris', 4, 'JR844463Z', 'Yogesh1613', 'viratkohli'),
(14, 'Juan', 'Hernandez', '1441 Kapiolani Blvd', 'Honolulu', 1, 'VG827021X', 'Juan1914', 'Messiiiiii'),
(15, 'James', 'Bond', '10 Downing Street', 'London', 5, 'IY384215F', 'James1515', 'stiritpls');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_ID` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_grade` int(1) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL,
  `overtime_rate` decimal(11,2) NOT NULL,
  `job_start_date` date NOT NULL,
  `job_end_date` date DEFAULT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_ID`, `job_title`, `job_grade`, `hourly_rate`, `overtime_rate`, `job_start_date`, `job_end_date`, `employee_ID`) VALUES
(1, 'Trainee Waiter', 1, '8.00', '12.00', '2020-02-03', NULL, 1),
(2, 'Head Chef', 3, '16.00', '24.00', '2020-02-03', NULL, 2),
(3, 'General Manager', 3, '22.00', '33.00', '2020-02-03', NULL, 3),
(4, 'Head Waiter', 3, '12.00', '18.00', '2020-02-03', NULL, 4),
(5, 'Front Waiter', 2, '10.00', '15.00', '2020-02-03', NULL, 10),
(6, 'Sous Chef', 2, '14.00', '21.00', '2020-02-03', NULL, 9),
(7, 'Pastry Chef', 1, '12.00', '18.00', '2020-02-03', NULL, 7),
(8, 'Front Waiter', 2, '10.00', '15.00', '2020-02-03', NULL, 11),
(9, 'Back Waiter', 2, '10.00', '15.00', '2020-02-03', NULL, 14),
(10, 'Pastry Chef', 1, '12.00', '18.00', '2020-02-03', NULL, 12),
(11, 'Head Manager', 2, '18.00', '30.00', '2020-02-03', NULL, 13),
(12, 'Restaurant Manager', 1, '14.00', '21.00', '2020-02-03', NULL, 5),
(13, 'Commis Chef', 1, '12.00', '18.00', '2020-02-03', NULL, 6),
(14, 'Back Waiter', 2, '10.00', '15.00', '2020-02-03', NULL, 8),
(15, 'Trainee Waiter', 1, '8.00', '12.00', '2020-02-03', '2020-02-07', 15),
(16, 'Front Waiter', 2, '10.00', '15.00', '2020-02-10', NULL, 15);

-- --------------------------------------------------------

--
-- Table structure for table `payslip`
--

CREATE TABLE `payslip` (
  `payslip_ID` int(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payslip_total` decimal(11,2) NOT NULL,
  `employee_ID` int(11) NOT NULL,
  `job_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payslip`
--

INSERT INTO `payslip` (`payslip_ID`, `start_date`, `end_date`, `payslip_total`, `employee_ID`, `job_ID`) VALUES
(1, '2020-02-17', '2020-03-13', '1032.00', 1, 1),
(2, '2020-02-17', '2020-03-13', '2296.00', 2, 2),
(3, '2020-02-17', '2020-03-13', '2871.00', 3, 3),
(4, '2020-02-17', '2020-03-13', '1512.00', 4, 4),
(5, '2020-02-17', '2020-03-13', '550.00', 10, 5),
(6, '2020-02-17', '2020-03-13', '2002.00', 9, 6),
(7, '2020-02-17', '2020-03-13', '1422.00', 7, 7),
(8, '2020-02-17', '2020-03-13', '1875.00', 11, 8),
(9, '2020-02-17', '2020-03-13', '1255.00', 14, 9),
(10, '2020-02-17', '2020-03-13', '1800.00', 12, 10),
(11, '2020-02-17', '2020-03-13', '3582.00', 13, 11),
(12, '2020-02-17', '2020-03-13', '2044.00', 5, 12),
(13, '2020-02-17', '2020-03-13', '924.00', 6, 13),
(14, '2020-02-17', '2020-03-13', '1015.00', 8, 14),
(15, '2020-02-17', '2020-03-13', '2772.00', 15, 16);

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `week_number_ID` int(11) NOT NULL,
  `week_number` int(11) NOT NULL,
  `week_start_date` date NOT NULL,
  `week_end_date` date NOT NULL,
  `normal_hours_worked` int(11) NOT NULL,
  `overtime_hours_worked` int(11) NOT NULL,
  `total_hours_worked` int(11) NOT NULL,
  `job_ID` int(11) NOT NULL,
  `employee_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`week_number_ID`, `week_number`, `week_start_date`, `week_end_date`, `normal_hours_worked`, `overtime_hours_worked`, `total_hours_worked`, `job_ID`, `employee_ID`) VALUES
(1, 1, '2020-02-03', '2020-02-07', 24, 7, 31, 1, 1),
(2, 2, '2020-02-10', '2020-02-14', 32, 5, 37, 1, 1),
(3, 3, '2020-02-17', '2020-02-21', 36, 5, 36, 1, 1),
(4, 4, '2020-02-24', '2020-02-28', 18, 0, 18, 1, 1),
(5, 5, '2020-03-02', '2020-03-06', 40, 9, 49, 1, 1),
(6, 6, '2020-03-09', '2020-03-13', 14, 0, 14, 1, 1),
(7, 1, '2020-02-03', '2020-02-07', 0, 0, 0, 2, 2),
(8, 2, '2020-02-03', '2020-02-07', 25, 6, 31, 2, 2),
(9, 3, '2020-02-17', '2020-02-21', 28, 0, 28, 2, 2),
(10, 4, '2020-02-24', '2020-02-28', 31, 6, 37, 2, 2),
(11, 5, '2020-03-02', '2020-03-06', 40, 12, 52, 2, 2),
(12, 6, '2020-03-09', '2020-03-13', 10, 5, 15, 2, 2),
(13, 1, '2020-02-03', '2020-02-07', 26, 0, 26, 3, 3),
(14, 2, '2020-02-10', '2020-02-14', 33, 15, 48, 3, 3),
(15, 3, '2020-02-17', '2020-02-21', 37, 0, 37, 3, 3),
(16, 4, '2020-02-24', '2020-02-28', 40, 2, 42, 3, 3),
(17, 5, '2020-03-02', '2020-03-06', 17, 7, 24, 3, 3),
(18, 6, '2020-03-09', '2020-03-13', 23, 0, 23, 3, 3),
(19, 1, '2020-02-03', '2020-02-07', 9, 0, 9, 4, 4),
(20, 2, '2020-02-10', '2020-02-14', 40, 14, 54, 4, 4),
(21, 3, '2020-02-17', '2020-02-21', 32, 0, 32, 4, 4),
(22, 4, '2020-02-24', '2020-02-28', 19, 0, 19, 4, 4),
(23, 5, '2020-03-02', '2020-03-06', 34, 11, 45, 4, 4),
(24, 6, '2020-03-09', '2020-03-13', 17, 5, 22, 4, 4),
(25, 1, '2020-02-10', '2020-02-14', 29, 18, 47, 12, 5),
(26, 2, '2020-02-17', '2020-02-21', 31, 0, 31, 12, 5),
(27, 3, '2020-02-24', '2020-02-28', 33, 11, 44, 12, 5),
(28, 4, '2020-03-02', '2020-03-06', 10, 0, 10, 12, 5),
(29, 5, '2020-03-09', '2020-03-13', 26, 10, 36, 12, 5),
(30, 6, '2020-02-03', '2020-02-07', 38, 5, 43, 12, 5),
(31, 1, '2020-02-03', '2020-02-07', 17, 0, 17, 13, 6),
(32, 2, '2020-02-10', '2020-02-14', 29, 0, 29, 13, 6),
(33, 3, '2020-02-17', '2020-02-21', 23, 4, 27, 13, 6),
(34, 4, '2020-02-24', '2020-02-28', 0, 0, 0, 13, 6),
(35, 5, '2020-03-02', '2020-03-06', 12, 2, 14, 13, 6),
(36, 6, '2020-03-09', '2020-03-13', 33, 0, 33, 13, 6),
(37, 1, '2020-02-03', '2020-02-07', 15, 0, 15, 7, 7),
(38, 2, '2020-02-10', '2020-02-14', 40, 2, 42, 7, 7),
(39, 3, '2020-02-17', '2020-02-21', 29, 0, 29, 7, 7),
(40, 4, '2020-02-24', '2020-02-28', 20, 9, 29, 7, 7),
(41, 5, '2020-03-02', '2020-03-06', 25, 0, 25, 7, 7),
(42, 6, '2020-03-09', '2020-03-13', 31, 0, 31, 7, 7),
(43, 1, '2020-02-03', '2020-02-07', 15, 0, 15, 14, 8),
(44, 2, '2020-02-10', '2020-02-14', 29, 0, 29, 14, 8),
(45, 3, '2020-02-17', '2020-02-21', 24, 6, 30, 14, 8),
(46, 4, '2020-02-24', '2020-02-28', 38, 5, 43, 14, 8),
(47, 5, '2020-03-02', '2020-03-06', 8, 0, 8, 14, 8),
(48, 6, '2020-03-09', '2020-03-13', 15, 0, 15, 14, 8),
(49, 1, '2020-02-03', '2020-02-07', 40, 4, 44, 6, 9),
(50, 2, '2020-02-10', '2020-02-14', 28, 19, 47, 6, 9),
(51, 3, '2020-02-17', '2020-02-21', 17, 3, 20, 6, 9),
(52, 4, '2020-02-24', '2020-02-28', 36, 12, 48, 6, 9),
(53, 5, '2020-03-02', '2020-03-06', 33, 7, 40, 6, 9),
(54, 6, '2020-03-09', '2020-03-13', 24, 0, 24, 6, 9),
(55, 1, '2020-02-03', '2020-02-07', 10, 0, 10, 5, 10),
(56, 2, '2020-02-10', '2020-02-14', 16, 3, 19, 5, 10),
(57, 3, '2020-02-17', '2020-02-21', 25, 0, 25, 5, 10),
(58, 4, '2020-02-24', '2020-02-28', 0, 0, 0, 5, 10),
(59, 5, '2020-03-02', '2020-03-06', 0, 0, 0, 5, 10),
(60, 6, '2020-03-09', '2020-03-13', 18, 8, 26, 5, 10),
(61, 1, '2020-02-03', '2020-02-07', 25, 0, 25, 8, 11),
(62, 2, '2020-02-10', '2020-02-14', 28, 0, 28, 8, 11),
(63, 3, '2020-02-17', '2020-02-21', 33, 21, 54, 8, 11),
(64, 4, '2020-02-24', '2020-02-28', 36, 6, 42, 8, 11),
(65, 5, '2020-03-02', '2020-03-06', 14, 0, 14, 8, 11),
(66, 6, '2020-03-09', '2020-03-13', 40, 16, 56, 8, 11),
(67, 1, '2020-02-03', '2020-02-07', 28, 0, 28, 10, 12),
(68, 2, '2020-02-10', '2020-02-14', 25, 0, 25, 10, 12),
(69, 3, '2020-02-17', '2020-02-21', 37, 8, 45, 10, 12),
(70, 4, '2020-02-24', '2020-02-28', 32, 0, 32, 10, 12),
(71, 5, '2020-03-02', '2020-03-06', 33, 4, 37, 10, 12),
(72, 6, '2020-03-09', '2020-03-13', 30, 0, 30, 10, 12),
(73, 1, '2020-02-03', '2020-02-07', 0, 0, 0, 11, 13),
(74, 2, '2020-02-10', '2020-02-14', 0, 0, 0, 11, 13),
(75, 3, '2020-02-17', '2020-02-21', 33, 0, 33, 11, 13),
(76, 4, '2020-02-24', '2020-02-28', 29, 24, 53, 11, 13),
(77, 5, '2020-03-02', '2020-03-06', 28, 8, 36, 11, 13),
(78, 6, '2020-03-09', '2020-03-13', 34, 13, 47, 11, 13),
(79, 1, '2020-02-03', '2020-02-07', 18, 0, 18, 9, 14),
(80, 2, '2020-02-10', '2020-02-14', 29, 0, 29, 9, 14),
(81, 3, '2020-02-17', '2020-02-21', 40, 5, 45, 9, 14),
(82, 4, '2020-02-24', '2020-02-28', 36, 0, 36, 9, 14),
(83, 5, '2020-03-02', '2020-03-06', 6, 0, 6, 9, 14),
(84, 6, '2020-03-09', '2020-03-13', 30, 4, 34, 9, 14),
(85, 1, '2020-02-03', '2020-02-07', 35, 0, 35, 15, 15),
(86, 2, '2020-02-10', '2020-02-14', 34, 0, 34, 15, 15),
(87, 3, '2020-02-17', '2020-02-21', 22, 11, 33, 15, 15),
(88, 4, '2020-02-24', '2020-02-28', 39, 0, 39, 15, 15),
(89, 5, '2020-03-02', '2020-03-06', 37, 5, 42, 16, 15),
(90, 6, '2020-03-09', '2020-03-13', 32, 0, 32, 16, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_ID`),
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_ID`),
  ADD KEY `employee_ID` (`employee_ID`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`payslip_ID`),
  ADD KEY `employee_ID` (`employee_ID`),
  ADD KEY `job_ID` (`job_ID`);

--
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`week_number_ID`) USING BTREE,
  ADD KEY `week_ibfk_1` (`employee_ID`),
  ADD KEY `job_ID` (`job_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `payslip_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `week`
--
ALTER TABLE `week`
  MODIFY `week_number_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`);

--
-- Constraints for table `payslip`
--
ALTER TABLE `payslip`
  ADD CONSTRAINT `payslip_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`),
  ADD CONSTRAINT `payslip_ibfk_2` FOREIGN KEY (`job_ID`) REFERENCES `job` (`job_ID`);

--
-- Constraints for table `week`
--
ALTER TABLE `week`
  ADD CONSTRAINT `week_ibfk_1` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`employee_ID`),
  ADD CONSTRAINT `week_ibfk_2` FOREIGN KEY (`job_ID`) REFERENCES `job` (`job_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
