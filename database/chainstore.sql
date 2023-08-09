-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 04:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chainstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `established_at` datetime DEFAULT current_timestamp(),
  `city` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `established_at`, `city`) VALUES
(1, 'branch1', '2023-08-09 17:54:55', 'tehran'),
(2, 'branch2', '2023-08-09 17:54:55', 'shiraz'),
(3, 'branch3', '2023-08-09 17:54:55', 'mashhad'),
(4, 'branch4', '2023-08-09 17:54:55', 'abadan'),
(5, 'branch5', '2023-08-09 17:54:55', 'isfahan');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `Name`, `duty`, `branch_id`) VALUES
(1, 'department1', 'duty1', 1),
(2, 'department2', 'duty2', 1),
(3, 'department3', 'duty3', 2),
(4, 'department4', 'duty4', 3),
(5, 'department5', 'duty5', 3),
(6, 'department6', 'duty6', 4),
(7, 'department7', 'duty7', 4),
(8, 'department8', 'duty8', 5),
(9, 'department9', 'duty9', 5),
(10, 'department10', 'duty10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `age`, `salary`, `department_id`) VALUES
(25, 'Ali', 21, 1200, 1),
(26, 'Ali2', 22, 2400, 1),
(27, 'Ali3', 23, 1500, 2),
(28, 'Ali4', 24, 3600, 2),
(29, 'Ali5', 25, 4800, 2),
(30, 'Ali6', 26, 5200, 3),
(31, 'Ali7', 27, 500, 3),
(32, 'Ali8', 28, 200, 3),
(33, 'Ali9', 29, 10000, 4),
(34, 'Ali10', 30, 1200, 5),
(35, 'Ali11', 31, 5500, 4),
(36, 'Ali12', 32, 4800, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
