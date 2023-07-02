-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 02:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `aptstarttime` varchar(140) DEFAULT NULL,
  `aptendttime` varchar(140) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`aid`, `uid`, `oid`, `date`, `remark`, `aptstarttime`, `aptendttime`, `status`) VALUES
(23, 32, 33, '2022-05-14', 'hello this is bhavik', '14:08', '14:11', 'Pending'),
(24, 32, 33, '2022-05-20', 'jghrfhu gtbjjbhkijlk jgyhnkuj', '11:30', '16:07', 'Pending'),
(25, 31, 31, '2022-05-13', 'this is laukik ', '14:18', '14:19', 'Pending'),
(26, 31, 31, '2022-05-13', 'this is laukik ', '14:18', '14:19', 'Pending'),
(27, 31, 30, '2022-05-14', 'i need mymarksheet', '14:20', '14:20', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `organizerid` int(11) NOT NULL,
  `organizername` varchar(40) DEFAULT NULL,
  `sector` varchar(40) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organizers`
--

INSERT INTO `organizers` (`organizerid`, `organizername`, `sector`, `phone`, `email`, `address`, `date`, `password`) VALUES
(30, 'ModernCollege', 'Institute', 917436674394, 'modern@college.com', 'Shivajinagar pune', '2022-05-12', 'moderncolleg'),
(31, 'nexaCars', 'AutoMobile', 919847634673, 'naxa@cars.com', 'baner Pune', '2022-05-12', 'nexacars'),
(32, 'SuryaHospital', 'HealthCare', 919873256756, 'surya@hospital.com', 'Wakad Pune', '2022-05-12', 'suryahospita'),
(33, 'UnicornSellers', 'Retail', 917364656737, 'unicorn@sellers.com', 'JM Road Pune 05', '2022-05-12', 'unicornselle');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `phone`, `password`) VALUES
(29, 'purushottam', 'purushottamgutthe6767@gmail.com', 918605566761, '$2y$10$xArQXu9xs2puIDDlc20UkevE2e03tFPSDWQQ7Eqib/LKnxwBeepFK'),
(30, 'kuunalgaikwad', 'kunalgaikwad790@gmail.com', 919665700792, '$2y$10$UIEscZpg4L/gkKCt9i3jcuvg52B.pQcAv0X1Q6fTU0UmHh6bVVaYK'),
(31, 'laukikShinde', 'laukik@shinde.com', 919885776346, '$2y$10$yp2HDiLMwjTfKvp0cLJeVeJ9CXSjKm2QSITJdLq8LfU8HgF94umfG'),
(32, 'bhavik', 'bhavik@kumar.com', 918456476345, '$2y$10$Am061BUCe9ciWlcI5onp9.r0o7vGfZsASY5T0YsaZUOKA2b2MT8qC'),
(33, 'abhisheksoni', 'abhishekk@gmail.com', 918605566761, '$2y$10$scMhTUztdEAPgAuw5YkPbOFE04nLpfycEvsCWzbs383TUz.irjTpS'),
(34, 'Anuragshastri', 'anurag@shastri.com', 916354763767, '$2y$10$y6slNPo7ItNpS4gYYJUcn.hXX3ajccedge9SSjT0AmtlOrotutZOS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`organizerid`),
  ADD UNIQUE KEY `organizername` (`organizername`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `organizers`
--
ALTER TABLE `organizers`
  MODIFY `organizerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `organizers` (`organizerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
