-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 06:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doa`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `nic` varchar(12) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `farmname` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`nic`, `Name`, `email`, `farmname`, `address`, `password`) VALUES
('750051588v', 'Test', 'test@test.com', 'farm', 'test', 'test'),
('200032500348', 'tt', 'tt@tt.com', 'farm', 'No 4', 'tt');

-- --------------------------------------------------------

--
-- Table structure for table `keelsdoa`
--

CREATE TABLE `keelsdoa` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `organize` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keelsdoa`
--

INSERT INTO `keelsdoa` (`name`, `email`, `nic`, `organize`, `password`) VALUES
('keelsuser', 'keels@keels.com', '200132500348', 'Keels', 'keels'),
('doa', 'doa@doa.com', '200232500348', 'DOA', 'doa');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `Id` int(11) NOT NULL,
  `F_NIC` varchar(10) NOT NULL,
  `F_House_Name` varchar(100) NOT NULL,
  `F_Crop_Type` varchar(100) NOT NULL,
  `F_Image` longblob DEFAULT NULL,
  `F_Crop_MFG` varchar(50) NOT NULL,
  `F_Crop_EXP` varchar(50) NOT NULL,
  `F_Address` varchar(1000) DEFAULT NULL,
  `Latitude` decimal(12,9) DEFAULT NULL,
  `Longitude` decimal(12,9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`Id`, `F_NIC`, `F_House_Name`, `F_Crop_Type`, `F_Image`, `F_Crop_MFG`, `F_Crop_EXP`, `F_Address`, `Latitude`, `Longitude`) VALUES
(1, '976421175v', 'Fresh Fruits Farm Shop', 'Fruits', '', '01/01/2021', '12/01/2021', '', '0.000000000', '0.000000000'),
(2, '528542514V', 'Fresh Vegetables Farm Shop', 'Vegetables', '', '05/01/2021', '15/01/2021', '', '0.000000000', '0.000000000'),
(3, '976421175v', 'Fresh Vegetables Farm Shop', 'Vegetables', 0x3f3f3f3f00104a464946000101000001000100003f3f003f000906071313121512121316161517181a1a191818191f1a201a1d20201d1a1d201b201a1e2820201f251b1b1825312225292b2e2e2e1a1f3338332c37282d2f2b010d0a0d0a0d0a0e0d0a0e1b10101b3526202632302f322d352b2d38312f2f2d2f2d2d3232322d2d2f2d312d2f2d2f2d352d2d2d2d2d2d2d2f352d2f2d2d2f2d2d2d2d2f2d3f3f001108003f0132030122000211010311013f3f001c00000202030101000000000000000000000506040700020301083f3f003f10000201020404040305060602030101000102110321000412310522415106136171323f3f0723423f3f14523f3f3f3f153362723f3f433f24533f3f163f3f001b010003010101010100000000000000000003040502010006073f3f0033110001040004030702060301010000000001000203110412213141513f05132261713f3f3f3f14233f3f3f3f32526215423f3f000c03010002110311003f005c3f1e2d3f454a54773f4909552b0b3f3f620e3f4e3f595b583f39710e373f3f5441483f293f3506003f7064323f3f0362543f437030203f0c4a3f3f0c6e3a6a1e3f3f3f78693f34051a693f7c3f50080f3f51486d3f3f59204f433f1b3f4102511c7e303f7d705e3f3f3f61283f056b66156b3f3f604a153f083f2a095237583f01300e383f783f3f3f3f4b5547400d0ad3a635d9b43f3f64c289001f3f481b3f2f163fd0ac03d5814e3f3f45186a37333acab7613f113f3f3f753f023f7f173f15453157563f603f52ca814401620d0a3f3f16103f3f3f133f515a75cf97353f683f4c3f3f4d5b301d2a3f3f483f3a08074e3f5f3f463f04773f3f3450543f3f5e653f31293f15003f0b3f3f3a595b3f3f003f3f033f386e514d2d6d3f3f3f57593f3f2e3f20013f3f23543f3f153f6a593f253f6a47033f233f453f3f0247323f6730663f3f3f1b493f6513474e5e3f373f3f3f5a2fc5b53f263f597305c9a63f03363f343f353f016058c691205b1e3f3f2d3f3f67293f743f3f3f6dca842540207e0708473f377c043f153f3f2c003f343f14d4a4173f5507423f453f3f613f6d3f193f333f153f33093f3f393f3f4d1e003f5574323f5a193f243f27574c7b216b433f3f553f3f1a290c6e0e1c123f3f3f1160763f3c3f3f59330c3f233f05003f003f373f3f3f3f0e783f3f365e3f3f34d9a83f243f3f3c3f186a6f3f4a340e683f3f3f3f3f00553f3f783f273f432d3f58333f61761e2d5f3f2a3f3f762a113f3f6c3f3f3f2f51293d4a6b283f6a3f593f583f1f3f3f3f710f5b3f6001603f3f440b773f3f000c723fd5a940003e253f753f3f3f073f3f3f713f383f3f22363f161f3f533f613f3f663f32443f3f2b553f123f3f693f303f3f40513f3f2c191e483f3f, '08/01/2021', '18/01/2021', '', '0.000000000', '0.000000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
