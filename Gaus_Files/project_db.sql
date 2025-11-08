-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 06:34 AM
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
  `type` varchar(256) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email`, `password`, `username`, `user_id`, `type`, `balance`) VALUES
('gsmurady123@gmail.com', '1234', 'Gaus', 6, 'provider', 1034.00),
('masud@gmail.com', '12345', 'Masud', 9, 'consumer', 0.00),
('gaus.admin@gmail.com', 'admin1234', 'Gaus', 10, 'admin', 99.00),
('jubair.admin@gmail.com', 'admin1234', 'Jubair', 11, 'admin', 0.00),
('amit.admin@gmail.com', 'admin1234', 'Amit', 12, 'admin', 0.00),
('zani.admin@gmail.com', 'admin1234', 'Zani', 13, 'admin', 0.00),
('gaus.gs12@gmail.com', '123', 'Saraf', 14, 'consumer', 96.00);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `username` varchar(256) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `comment_text` text NOT NULL,
  `date_posted` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`username`, `subject`, `comment_text`, `date_posted`) VALUES
('Gaus', 'Homepage Comment', 'hello', '2025-11-01 13:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `user_id` int(50) NOT NULL,
  `username` varchar(256) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `date_submitted` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(100) NOT NULL,
  `user_id` int(50) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_type` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `deadline` date NOT NULL,
  `details` text NOT NULL,
  `compensation` int(10) NOT NULL,
  `status` varchar(256) NOT NULL,
  `accept_count` int(100) NOT NULL,
  `worker_limit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `user_id`, `service_name`, `service_type`, `username`, `email`, `deadline`, `details`, `compensation`, `status`, `accept_count`, `worker_limit`) VALUES
(10, 0, 'demo service to check transaction', 'request', 'Gaus', 'gaus.gs12@gmail.com', '2025-11-09', 'demo details lorem ipsum', 200, 'pending', 1, 6),
(11, 0, 'demo service  2 to check transaction', 'request', 'Saraf', 'gaus.gs12@gmail.com', '2025-11-09', '1234', 200, 'completed', 1, 1),
(12, 0, 'demo service  4 to check detail overflow', 'request', 'Saraf', 'gaus.gs12@gmail.com', '2025-11-09', 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 200, 'pending', 0, 1),
(13, 0, 'demo service  4 to check detail overflow', 'request', 'Saraf', 'gaus.gs12@gmail.com', '2025-11-09', 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 200, 'pending', 0, 1),
(14, 14, 'demo service  4 to check user_id', 'request', 'Saraf', 'gaus.gs12@gmail.com', '2025-11-09', 'fsdfdsf', 0, 'pending', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_text` text NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_text`, `is_completed`, `date_created`) VALUES
(1, 'check task list', 0, '2025-11-01 14:32:48'),
(2, 'check task list #2', 0, '2025-11-01 14:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `report` varchar(256) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `amount`, `report`) VALUES
(2, 6, 99, 'Added to Balance'),
(3, 0, 0, 'Deducted from Balance'),
(4, 0, 55, 'Deducted from Balance'),
(5, 6, 55, 'Deducted from Balance'),
(6, 14, -200, 'Funded service: demo service to check transaction'),
(7, 14, -200, 'Funded service: demo service  2 to check transaction'),
(8, 14, 400, 'Added to Balance'),
(9, 14, 500, 'Added to Balance'),
(10, 14, -4, 'Donation to Support Hero'),
(11, 14, -200, 'Funded service: demo service  4 to check detail overflow'),
(12, 14, -200, 'Funded service: demo service  4 to check detail overflow');

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
