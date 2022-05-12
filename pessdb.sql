-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 08:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(0, 'QX4321R', '2022-05-12 13:48:30', NULL, '2022-05-12 13:49:06'),
(12, 'QX2222G', '2014-05-29 11:51:15', NULL, '2014-05-29 10:53:41'),
(13, 'QX2222G', '2014-05-29 11:59:42', NULL, NULL),
(14, 'QX4444P', '2014-05-29 11:10:57', NULL, '2022-05-12 13:34:30'),
(15, 'QX4444P', '2022-03-10 13:46:00', NULL, '2022-03-10 14:08:00'),
(24, 'QX4444P', '2022-05-12 14:03:44', NULL, '2022-05-12 14:04:12'),
(25, 'QX9999H', '2022-05-12 14:10:30', NULL, '2022-05-12 14:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(6, 'PETER LEOW', '12345678', '010', 'Junction of North Bridge Rd and Middle Rd', 'A bus collided with a Taxi.2 injuries', '1', '2022-03-02 11:56:03'),
(8, 'qwerty', '98765432', '030', 'cck', 'qwerty', '3', '2022-03-02 11:56:03'),
(9, 'Peter Leow', '81234567', '', 'Junction of North Bridge Road and Middle Road', 'A bus collided with a taxi, 2 injuries', '3', '2022-03-10 14:13:55'),
(10, 'amira', '12345678', '060', 'jelapang rd', 'csaxz', '2', '2022-05-05 14:08:46'),
(11, 'amira', '12345678', '050', 'jelapang rd', 'xasx', '2', '2022-05-05 14:09:58'),
(12, 'amira', '12345678', '050', 'jelapang rd', 'hgf', '2', '2022-05-05 14:10:38'),
(13, 'amira', '12345678', '020', 'jelapang rd', 'dqas', '2', '2022-05-05 14:12:34'),
(14, 'amira', '12345678', '060', 'jelapang rd', 'xZxs', '2', '2022-05-05 14:19:17'),
(15, 'amira', '12345678', '040', 'jelapang rd', 'huj', '2', '2022-05-05 14:23:49'),
(16, 'amira', '12345678', '040', 'jelapang rd', 'gesdfz', '2', '2022-05-06 10:26:54'),
(17, 'amira', '12345678', '040', 'jelapang rd', 'fighting', '2', '2022-05-06 10:27:38'),
(18, 'amira', '12345678', '030', 'jelapang rd', 'someone went in took my money from my room', '2', '2022-05-06 10:28:15'),
(19, 'amira', '12345678', '060', 'jelapang rd', 'hi', '2', '2022-05-06 11:14:13'),
(20, 'amira', '12345678', '040', 'jelapang rd', 'fightings', '2', '2022-05-11 10:11:34'),
(21, 'amira', '12345678', '040', 'jelapang rd', 'jh,b', '2', '2022-05-12 13:22:08'),
(22, 'amira', '12345678', '030', 'Ang Mo Kio', 'hi', '2', '2022-05-12 13:39:04'),
(23, 'doyoung', '98691914', '010', 'Seoul Korea', 'huge fire in YG Entertainment !!', '2', '2022-05-12 13:44:35'),
(24, 'park jihoon', '97281712', '040', 'Busan', 'for being so pushy', '2', '2022-05-12 14:03:44'),
(25, 'kim junkyu', '09876543', '070', 'Iksan Seoul', 'stealing people heart', '2', '2022-05-12 14:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Bulglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1234', '4'),
('QX4321R', '3'),
('QX4444P', '3'),
('QX45545', '2'),
('QX9999H', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
