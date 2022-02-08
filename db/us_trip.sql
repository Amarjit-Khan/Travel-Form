-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Aug 27, 2021 at 05:03 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `us_trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `Sl no.` int(3) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Other` text NOT NULL,
  `DT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`Sl no.`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `Other`, `DT`) VALUES
(1, '\r\nAMARJIT KHAN', 65, 'male', 'sabdkKBK@gmail.com', '9874563210', 'asdfghjkl', '2021-05-21 15:43:24'),
(2, '\r\njksbf,jFB', 65, 'female', 'dark098456@gmail.com', '4569872365', 'ata ta yreavfdsh', '2021-05-21 15:44:19'),
(3, '\r\nAMARJIT', 65, 'male', 'btheory994@gmail.com', '8509630663', 'wertyuiolkjhgfdsazxcvbnm,', '2021-05-21 15:45:04'),
(4, '\r\nmadhav', 20, 'male', 'madhav32sinha@gmail.co', '9326598749', 'I want to go', '2021-05-21 20:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`Sl no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `Sl no.` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
