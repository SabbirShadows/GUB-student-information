-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2024 at 09:17 PM
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
-- Database: `bdims_donorlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `ID` int(11) NOT NULL,
  `Student_Id` int(9) DEFAULT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BloodGroup` varchar(3) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `ImagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`ID`, `Student_Id`, `Username`, `Password`, `Name`, `DOB`, `Gender`, `BloodGroup`, `Mobile`, `Email`, `City`, `ImagePath`) VALUES
(1, 221002309, 'Sabbir', 'sh123', 'Md. Sabbir Hossain', '1999-12-05', 'Male', 'AB-', '01409413206', 'gub.sabbir@gmail.com', 'Dhaka', 'uploads/IMG_4139.jpg'),
(2, 221002357, 'Emon', 'em123', 'Emon Talukder', '2000-11-12', 'Male', 'A+', '01301322723', 'emon@gmail.com', 'Dhaka', 'uploads/emon.jpg'),
(3, 221002316, 'Sakib', 'sk123', 'Rejoyan Sakib', '2001-02-01', 'Male', 'A-', '01401954325', 'sakib@gmail.com', 'Dhaka', 'uploads/sakib.jpg'),
(4, 221002304, 'Sayed', 'ts', 'Sayed Hasan Tusher', '1998-04-06', 'Male', 'O-', '01955748154', 'sayed@gmail.com', 'Khulna', 'uploads/Sayed.jpg'),
(5, 221002455, 'Shopnil', 'af', 'Afnan khan Shopnil', '1998-03-10', 'Male', 'O+', '01988389260', 'shopnil@gmail.com', 'Dhaka', 'uploads/shopnil.jpg'),
(6, 221003456, 'Maria ', 'mr123', 'Maria Rahman', '1999-02-05', 'Female', 'A+', '01856789234', 'maria.rahman@gmail.com', 'Chattogram', 'uploads/israt.jpg'),
(7, 221004567, 'Rifat ', 'rh123', 'Rifat Hossain	', '2000-10-01', 'Male', 'B-', '01998765432	', 'rifat.h@gmail.com', 'Sylhet', 'uploads/fahim.jpg'),
(8, 221005678, 'Nuzhat ', 'nj123', 'Nuzhat Jahan', '1999-12-31', 'Female', 'AB-', '01776895412', 'nuzhatj@gmail.com', 'Khulna', 'uploads/eva.jpg'),
(9, 221006189, 'Tanvir ', 'ta123', 'Tanvir Ahmed', '2000-02-02', 'Male', 'O-', '01678903456', 'tanvir.ahmed@gmail.com', 'Rajshahi', 'uploads/rahi.jpg'),
(10, 221007890, 'Sabrina', 'si123', 'Sabrina Islam', '1998-05-11', 'Female', 'A-', '01823456789', 'sabrina.i@gmail.com', 'Barishal', 'uploads/israt.jpg'),
(11, 221008901, 'Ziku', 'ai123', 'Ashik Arman Zuku', '2000-06-07', 'Male', 'B+', '01967890123', 'ziku@gmail.com', 'Rangpur', 'uploads/ziku.jpg'),
(12, 221009012, 'Nusrat', 'nf123', 'Nusrat Faria', '2000-11-11', 'Female', 'AB-', '01712345678', 'nusrat.faria@gmail.com', 'Mymensingh', 'uploads/nusrat.jpg'),
(13, 221010123, 'Monirul', 'mi123', 'Monirul Islam', '2000-02-01', 'Male', 'O+', '01798765123', 'monirul@gmail.com', 'Dhaka', 'uploads/monirul.jpg'),
(14, 221011234, 'Opu', 'tr123', 'Tanjil Rahman Opu', '1999-02-03', 'Male', 'A+', '01865439876', 'opu@gmail.com', 'Chattogram', 'uploads/opu.jpg'),
(15, 221003457, 'Milon', 'mh123', 'M H Milon', '1999-05-06', 'Male', 'O+', '01856789245', 'milon@gmail.com', 'Dhaka', 'uploads/milon.jpg'),
(16, 221002678, 'Shihab', 'as123', 'AH Shihab', '2000-03-03', 'Male', 'AB+', '01778903456', 'shihab@gmail.com', 'Khulna', 'uploads/shihab.jpg'),
(17, 221002678, 'Zahidul', 'si123', 'Zahidul Islam', '1999-03-05', 'Male', 'B-', '01776895357', 'zahidul@gmail.com', 'Dhaka', 'uploads/zahidul.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
