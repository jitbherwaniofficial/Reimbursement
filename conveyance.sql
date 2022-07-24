-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 05:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `conveyance`
--

CREATE TABLE `conveyance` (
  `id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `_From` varchar(20) NOT NULL,
  `_To` varchar(20) NOT NULL,
  `Purpose` varchar(20) NOT NULL,
  `Mode` varchar(20) NOT NULL,
  `KM` int(6) NOT NULL,
  `InvNo` int(10) NOT NULL,
  `Amt` int(8) NOT NULL,
  `Attachment` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conveyance`
--

INSERT INTO `conveyance` (`id`, `Date`, `_From`, `_To`, `Purpose`, `Mode`, `KM`, `InvNo`, `Amt`, `Attachment`) VALUES
(1, '2022-07-22', 'Khar', 'Andheri', 'Market Visit', 'Bike', 22, 245156, 500, ''),
(2, '2022-07-23', 'bandra', 'borivali', 'other city travel', 'bus', 40, 784456, 700, ''),
(3, '2022-07-23', 'grant road', 'mahim', 'office visit', 'taxi', 12, 145214, 100, ''),
(4, '2022-07-24', 'mumbai', 'palghar', 'Training', 'train', 90, 94515, 1000, ''),
(5, '2022-07-24', 'bandra', 'virar', 'other', 'auto', 80, 8548124, 2000, ''),
(6, '2022-07-22', 'dadar', 'bandra', 'office visit', 'train', 8, 2525445, 10, ''),
(7, '2022-07-22', 'dadar', 'bandra', 'office visit', 'train', 8, 2525445, 10, ''),
(8, '2022-07-21', 'churchgate', 'andheri', 'office visit', 'train', 25, 2525445, 200, ''),
(9, '2022-07-21', 'churchgate', 'andheri', 'office visit', 'train', 25, 2525445, 200, ''),
(10, '0000-00-00', '', '', '', '', 20, 885546, 200, ''),
(11, '2022-07-21', 'virar', 'churchgate', 'other', 'train', 55, 88556, 2200, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conveyance`
--
ALTER TABLE `conveyance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conveyance`
--
ALTER TABLE `conveyance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
