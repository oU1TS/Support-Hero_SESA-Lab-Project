-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2025 at 11:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `user_id` int(50) NOT NULL,
  `type` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `password`, `username`, `user_id`, `type`) VALUES
('gsmurady123@gmail.com', '1234', 'Gaus', 5, 'provider'),
('gsmurady123@gmail.com', '1234', 'Gaus', 6, 'provider'),
('gsmurady123@gmail.com', '1234', 'Gaus', 7, 'consumer'),
('gsmurady123@gmail.com', '1234', 'Gaus', 8, 'provider');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(100) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_type` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `deadline` date NOT NULL,
  `details` text NOT NULL,
  `compensation` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_type`, `username`, `email`, `deadline`, `details`, `compensation`) VALUES
(1, 'dfdsfdsfdsfdsf', 'request', 'fsdfdsf', 'gsmurady123@gmail.com', '2025-10-31', 'dfsdfds', 100),
(2, 'dfdsfdsfdsfdsf', 'request', 'fsdfdsf', 'gsmurady123@gmail.com', '2025-10-31', 'gfgdsgfds', 100),
(3, 'dfdsfdsfdsfdsf', 'request', 'fsdfdsf', 'gsmurady123@gmail.com', '2025-10-31', 'gfgdsgfds', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
