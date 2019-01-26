-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 10:52 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wander-hack36`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(256) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `DOB`, `Gender`, `Email`, `Password`) VALUES
(1, 'prateek', '1999-04-17', 'M', 'iec2017029@iiita.ac.in', '123'),
(3, 'her shit', '1975-01-26', 'M', 'lit2017002@iiitl.ac.in', '123'),
(4, 'ajay kudal', '1975-01-26', 'M', 'iec2017075@iiita.ac.in', '123');

-- --------------------------------------------------------

--
-- Table structure for table `wander_history`
--

CREATE TABLE `wander_history` (
  `id` int(11) NOT NULL,
  `where_to` varchar(256) NOT NULL,
  `where_from` varchar(256) NOT NULL,
  `end` date NOT NULL,
  `num_of_people` int(11) NOT NULL,
  `start` date NOT NULL,
  `Details` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wander_history`
--

INSERT INTO `wander_history` (`id`, `where_to`, `where_from`, `end`, `num_of_people`, `start`, `Details`, `user_id`) VALUES
(2, 'ald', 'rnc', '2019-01-19', 3, '2019-01-17', '', 1),
(3, 'rnc', 'ald', '2019-01-20', 2, '2019-01-13', 'going for no reason', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wander_history`
--
ALTER TABLE `wander_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wander_history`
--
ALTER TABLE `wander_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
