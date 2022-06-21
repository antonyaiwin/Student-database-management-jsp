-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2022 at 08:59 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE IF NOT EXISTS `programme` (
  `Pcode` varchar(5) NOT NULL,
  `ProgrammeName` text NOT NULL,
  `Duration` text NOT NULL,
  `Fee` float NOT NULL,
  PRIMARY KEY (`Pcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`Pcode`, `ProgrammeName`, `Duration`, `Fee`) VALUES
('BBA', 'Bachelor of Business Administration', '3 years', 52000),
('BCA', 'Bachelor of Computer Application', '3 years', 42000),
('MBA', 'Master of Business Administration', '2 - years', 50000),
('MCA', 'Master of Computer Application', '2 - years', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `SID` int(11) NOT NULL,
  `name` text NOT NULL,
  `highest qualification` text NOT NULL,
  `Pcode` varchar(5) NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `Pcode` (`Pcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `name`, `highest qualification`, `Pcode`) VALUES
(101, 'Henry Thomas', 'Plus Two', 'BCA'),
(102, 'Titus Antony', 'BTech', 'BCA'),
(103, 'Jude John', 'Bachelor Degree', 'MCA'),
(104, 'Nikhil Joji', 'Plus Two', 'BCA'),
(105, 'Anjaly Thomas', 'Bachelor Degree', 'MBA'),
(106, 'Sebin Sabu', 'Bachelor Degree', 'MCA'),
(107, 'Hari P K', 'BTech', 'MCA'),
(108, 'Sibin S', 'Plus Two', 'BBA'),
(109, 'Dikson P', 'Plus Two', 'BBA'),
(110, 'Ancy V C', 'Bachelor Degree', 'MBA'),
(111, 'Jain T K', 'Bachelor Degree', 'MBA'),
(112, 'Nikhil Joshy', 'Plus Two', 'BBA');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Pcode` FOREIGN KEY (`Pcode`) REFERENCES `programme` (`Pcode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
