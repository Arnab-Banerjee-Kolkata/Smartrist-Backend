-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb25.awardspace.net
-- Generation Time: Jul 19, 2020 at 03:09 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2963472_organisationalcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `Attendence`
--

CREATE TABLE `Attendence` (
  `candidateId` bigint(20) NOT NULL,
  `startTime` time NOT NULL,
  `classDate` date NOT NULL,
  `classSubject` varchar(50) DEFAULT NULL,
  `attendenceStatus` varchar(10) DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `department` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Attendence`
--

INSERT INTO `Attendence` (`candidateId`, `startTime`, `classDate`, `classSubject`, `attendenceStatus`, `endTime`, `grade`, `department`) VALUES
(12100116050, '10:50:00', '2019-03-24', 'os', 'Present', '11:40:00', 3, 'cse'),
(12100116050, '10:00:00', '2019-03-24', 'os lab', 'Present', '11:40:00', 3, 'cse'),
(12100116050, '11:40:00', '2019-03-24', 'multimedia', 'Present', '13:20:00', 3, 'cse'),
(12100116050, '14:00:00', '2019-03-24', 'mul lab', 'Present', '15:40:00', 3, 'cse'),
(12100116050, '11:40:00', '2019-03-17', 'biomeds', 'Present', '13:20:00', 2, 'bt'),
(12100116050, '12:30:00', '2019-03-25', 'dbms', 'Present', '14:50:00', 3, 'cse'),
(12100116050, '10:00:00', '2019-03-26', 'phy', 'Present', '12:30:00', 3, 'cse'),
(12100116062, '10:00:00', '2019-03-26', 'phy', 'Present', '12:30:00', 3, 'cse'),
(12100116062, '12:30:00', '2019-03-26', 'chem', 'Present', '13:20:00', 3, 'cse'),
(12100116050, '10:00:00', '2019-03-19', 'phy', 'Present', '11:40:00', 3, 'cse'),
(12100116062, '10:00:00', '2019-03-18', 'phy', 'Present', '11:40:00', 3, 'cse'),
(12100116062, '12:30:00', '2019-03-24', 'dbms lab', 'Present', '14:50:00', 3, 'cse'),
(12100116050, '10:50:00', '2019-03-12', 'phy', 'Present', '12:30:00', 3, 'cse'),
(12100116062, '10:00:00', '2019-03-25', 'computer', 'Present', '10:50:00', 3, 'cse'),
(12100116021, '14:00:00', '2019-03-28', 'mcmp', 'Present', '15:40:00', 3, 'ece'),
(12100116021, '11:40:00', '2019-03-27', 'digital', 'Present', '12:30:00', 3, 'ece'),
(12100116038, '11:40:00', '2019-03-29', 'dbms', 'Present', '14:50:00', 3, 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `BookDetails`
--

CREATE TABLE `BookDetails` (
  `bookId` bigint(20) NOT NULL,
  `bookName` varchar(100) DEFAULT NULL,
  `bookSubject` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `availableState` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `BookRequisition`
--

CREATE TABLE `BookRequisition` (
  `candidateId` bigint(20) NOT NULL,
  `subjectName` varchar(50) NOT NULL,
  `bookName` varchar(200) NOT NULL,
  `authorName` varchar(200) NOT NULL,
  `reqDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `CandidateDetails`
--

CREATE TABLE `CandidateDetails` (
  `Id` bigint(20) NOT NULL,
  `personName` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `orgWalletVal` int(11) DEFAULT NULL,
  `activeState` tinyint(1) DEFAULT NULL,
  `OTP` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CandidateDetails`
--

INSERT INTO `CandidateDetails` (`Id`, `personName`, `grade`, `department`, `orgWalletVal`, `activeState`, `OTP`) VALUES
(12100116050, 'Arnab Banerjee', 3, 'cse', 1387, 1, 2656),
(12100116051, 'Arghya dutta', 3, 'cse', 500, 0, 4567),
(12100116040, 'Devjyoti saha', 3, 'ece', 5000, 1, 9482),
(12100116044, 'debapratim chakraborty', 3, 'bt', 80, 1, 1234),
(12100116039, 'Dibosh ghosh', 2, 'ece', 0, 1, 1234),
(91, 'Arnita Banerjee', 1, 'ece', 90, 1, 8718),
(12100116005, 'Sriama Ghosh', 3, 'cse', 5000, 1, 1234),
(12100116013, 'Sayonton Banerjee', 3, 'bt', 400, 1, 1234),
(12100116028, 'Niloy Dasgupta', 3, 'it', 500, 1, 1234),
(12100116049, 'Arunima Chakroborty', 1, 'bt', 900, 1, 1234),
(12100116054, 'Anisha Bhowmick', 3, 'ece', 500, 1, 1234),
(12100116052, 'Aranyak Maity', 3, 'cse', 5000, 1, 1234),
(12100116062, 'Abhijit Dey', 3, 'cse', 831, 1, 1983),
(12100116019, 'Manisha Singh', 3, 'ece', 20000, 1, 4312),
(12100116020, 'Manisha Singh', 3, 'ece', 20, 1, 6627),
(12100116021, 'Manisha Singh', 3, 'ece', 448, 1, 6901),
(12100445232, 'Tony Stark', 2, 'cse', 600, 1, 1234),
(9856321, 'Rdj', 4, 'it', 6523, 1, 1234),
(12100116038, 'Anupam Chatterjee', 3, 'cse', 20, 1, 5875),
(123456789123, 'Arnita Banerjee', 3, 'ece', 500, 1, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `Canteen`
--

CREATE TABLE `Canteen` (
  `orderId` bigint(20) NOT NULL,
  `candidateId` bigint(20) DEFAULT NULL,
  `foodOrder` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Canteen`
--

INSERT INTO `Canteen` (`orderId`, `candidateId`, `foodOrder`, `quantity`, `price`) VALUES
(135, 12100116050, 'bread omlette', 1, 20),
(134, 12100116050, 'coffee', 1, 5),
(131, 12100116062, 'coke', 4, 12),
(130, 12100116062, 'coffee', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `grade` int(11) NOT NULL,
  `department` varchar(20) NOT NULL,
  `classSubject` varchar(50) DEFAULT NULL,
  `classDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time DEFAULT NULL,
  `classGroup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Class`
--

INSERT INTO `Class` (`grade`, `department`, `classSubject`, `classDate`, `startTime`, `endTime`, `classGroup`) VALUES
(3, 'cse', 'dbms lab', '2019-03-24', '12:30:00', '14:50:00', 2),
(3, 'cse', 'dbms lab', '2019-03-25', '12:30:00', '14:50:00', 2),
(3, 'cse', 'phy', '2019-03-18', '10:00:00', '11:40:00', 2),
(3, 'cse', 'phy', '2019-03-19', '10:00:00', '11:40:00', 2),
(3, 'cse', 'chem', '2019-03-26', '12:30:00', '13:20:00', 2),
(3, 'ece', 'phy', '2019-03-26', '10:00:00', '12:30:00', 2),
(3, 'cse', 'phy', '2019-03-26', '10:00:00', '12:30:00', 2),
(1, 'cse', 'dbms', '2019-03-26', '11:40:00', '12:30:00', 3),
(3, 'cse', 'dbms', '2019-03-25', '12:30:00', '14:50:00', 3),
(1, 'it', 'jakhusi', '2019-03-25', '11:40:00', '12:30:00', 2),
(1, 'cse', 'yeh', '2019-03-07', '11:40:00', '14:50:00', 2),
(3, 'cse', 'dipa', '0000-00-00', '14:00:00', '15:40:00', 3),
(2, 'bt', 'biomeds', '2019-03-17', '11:40:00', '13:20:00', 3),
(3, 'cse', 'mul lab', '2019-03-24', '14:00:00', '15:40:00', 2),
(3, 'cse', 'multimedia', '2019-03-24', '11:40:00', '13:20:00', 3),
(2, 'bt', 'biomeds', '2019-03-24', '11:40:00', '13:20:00', 3),
(3, 'cse', 'os lab', '2019-03-24', '10:00:00', '11:40:00', 2),
(3, 'cse', 'os', '2019-03-24', '10:50:00', '11:40:00', 3),
(3, 'cse', 'dbms', '2019-03-24', '10:00:00', '11:40:00', 3),
(3, 'cse', 'dbms', '2019-03-15', '11:40:00', '13:20:00', 3),
(3, 'cse', 'phy', '2019-03-12', '10:50:00', '12:30:00', 2),
(3, 'cse', 'computer', '2019-03-25', '10:00:00', '10:50:00', 3),
(3, 'ece', 'mcmp', '2019-03-28', '12:30:00', '14:50:00', 3),
(3, 'ece', 'mcmp', '2019-03-28', '14:00:00', '15:40:00', 3),
(3, 'ece', 'digital', '2019-03-27', '11:40:00', '12:30:00', 3),
(3, 'ece', 'mcmp', '2019-03-26', '10:00:00', '11:40:00', 3),
(3, 'cse', 'dbms', '2019-03-29', '11:40:00', '14:50:00', 3),
(3, 'cse', 'mul', '2019-03-29', '10:00:00', '11:40:00', 3),
(3, 'cse', 'dbms', '2019-03-27', '12:30:00', '13:20:00', 3),
(3, 'cse', 'ggg', '2020-01-22', '11:40:00', '13:20:00', 3),
(3, 'cse', 'physics', '2020-03-12', '12:30:00', '15:40:00', 3),
(3, 'cse', 'ds', '2020-03-12', '10:00:00', '11:40:00', 3),
(4, 'cse', 'system design', '2020-07-19', '12:30:00', '14:50:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Document`
--

CREATE TABLE `Document` (
  `documentId` bigint(20) NOT NULL,
  `documentLink` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Library`
--

CREATE TABLE `Library` (
  `candidateId` bigint(20) DEFAULT NULL,
  `bookId` bigint(20) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Library`
--

INSERT INTO `Library` (`candidateId`, `bookId`, `fromDate`, `toDate`) VALUES
(12100116050, 25874, '2020-07-18', '2020-08-02'),
(12100116021, 653245, '2019-03-28', '2019-04-12'),
(12100116050, 98745, '2020-07-18', '2020-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `Menu`
--

CREATE TABLE `Menu` (
  `itemId` bigint(20) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `itemName` varchar(50) DEFAULT NULL,
  `availableState` tinyint(1) DEFAULT NULL,
  `imageUrl` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Menu`
--

INSERT INTO `Menu` (`itemId`, `price`, `itemName`, `availableState`, `imageUrl`) VALUES
(1, 5, 'coffee', 1, 'https://cdnimg.webstaurantstore.com/images/products/large/41444/851779.jpg'),
(2, 12, 'coke', 1, 'https://i.ebayimg.com/images/g/NlkAAOSw3jBaoSti/s-l300.jpg'),
(3, 5, 'paratha', 0, 'https://www.vegrecipesofindia.com/wp-content/uploads/2010/06/plain-paratha-recipe-1.jpg'),
(4, 6, 'dum aloo', 1, 'https://www.vegrecipesofindia.com/wp-content/uploads/2012/12/dum-aloo-recipe-5-500x500.jpg'),
(5, 35, 'fish meal combo', 1, 'https://media-cdn.tripadvisor.com/media/photo-s/0d/d9/26/5a/fish-thali-for-lunch.jpg'),
(6, 25, 'egg meal combo', 0, 'https://5.imimg.com/data5/XP/ME/GLADMIN-15805743/egg-thali-500x500.png'),
(7, 30, 'chilli chicken', 1, 'http://ksmartstatic.sify.com/cmf-1.0.0/appflow/bawarchi.com/Image/oesvhWjcgjdaj_bigger.jpg'),
(8, 80, 'polau chicken combo', 1, 'https://www.boldsky.com/img/2015/07/17-1437114192-shutterstock-155422469.jpg'),
(9, 30, 'chowmein', 1, 'https://www.bbcgoodfood.com/sites/default/files/recipe_images/chow-mein.jpg'),
(10, 20, 'bread omlette', 1, 'https://3.bp.blogspot.com/-bDZLd1vt96U/WGECHMjlvEI/AAAAAAAASJU/XjNmEHfdUlwUvbLACfVmPueeBqxayrJvQCPcB/s1600/bread%2Bomelet.jpg'),
(11, 40, 'dosa', 1, 'https://www.thespruceeats.com/thmb/GGZ1lBJa_xcJxBbVdhVy0ZrHvwg=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-make-dosa-1957716-Hero-5b59e84346e0fb0071e637c5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Office`
--

CREATE TABLE `Office` (
  `workId` bigint(20) NOT NULL,
  `examFee` int(11) DEFAULT NULL,
  `reviewFee` int(11) DEFAULT NULL,
  `documentId` bigint(20) DEFAULT NULL,
  `candidateId` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PendingOrders`
--

CREATE TABLE `PendingOrders` (
  `orderId` bigint(20) NOT NULL,
  `itemName` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `customerId` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `staffId` bigint(20) NOT NULL,
  `staffName` varchar(50) DEFAULT NULL,
  `staffDesignation` varchar(100) DEFAULT NULL,
  `staffDepartment` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`staffId`, `staffName`, `staffDesignation`, `staffDepartment`) VALUES
(1, 'Anand Agarwal', 'Teacher', 'CSE'),
(2, 'Mayank Sharma', 'Teacher', 'IT'),
(3, 'Neha Tripathi', 'Teacher', 'CE'),
(4, 'Rachna Chakraborty', 'Canteen Staff', 'Canteen');

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE `Transaction` (
  `transId` bigint(20) NOT NULL,
  `candidateId` bigint(20) DEFAULT NULL,
  `transType` varchar(10) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  `transDate` date DEFAULT NULL,
  `transTime` time DEFAULT NULL,
  `balance` int(11) NOT NULL,
  `transAmt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Transaction`
--

INSERT INTO `Transaction` (`transId`, `candidateId`, `transType`, `details`, `transDate`, `transTime`, `balance`, `transAmt`) VALUES
(3, 12100116050, 'debit', 'Canteen Food', '2019-03-23', '11:20:20', 2780, 120),
(2, 12100116050, 'credit', 'Office Deposit', '2019-03-23', '11:12:38', 2900, 300),
(4, 91, 'credit', 'Office Deposit', '2019-03-23', '11:00:00', 5000, 20),
(5, 12100116050, 'debit', 'Canteen Food', '2019-03-23', '12:18:07', 2720, 60),
(6, 12100116062, 'debit', 'Canteen Food', '2019-03-24', '11:25:40', 20, 30),
(7, 12100116062, 'debit', 'Canteen Food', '2019-03-24', '11:43:55', 15, 5),
(8, 12100116062, 'debit', 'Canteen Food', '2019-03-24', '12:02:11', 10, 5),
(9, 12100116050, 'credit', 'Office Deposit', '2019-03-25', '14:52:32', 3220, 500),
(10, 12100116050, 'debit', 'Canteen Food', '2019-03-25', '14:55:36', 3180, 40),
(11, 12100116062, 'debit', 'Canteen Food', '2019-03-26', '11:57:40', 0, 10),
(12, 12100116062, 'credit', 'Office Deposit', '2019-03-26', '11:58:36', 1000, 1000),
(13, 12100116050, 'credit', 'Office Deposit', '2019-03-26', '11:59:22', 1510, 1500),
(14, 12100116050, 'debit', 'Canteen Food', '2019-03-26', '13:59:07', 1447, 63),
(15, 12100116062, 'debit', 'Canteen Food', '2019-03-26', '14:23:18', 971, 29),
(16, 12100116062, 'debit', 'Canteen Food', '2019-03-26', '14:40:11', 869, 102),
(17, 12100116062, 'debit', 'Canteen Food', '2019-03-26', '19:24:36', 708, 161),
(18, 12100116062, 'credit', 'Office Deposit', '2019-03-26', '19:30:59', 831, 123),
(19, 12100116021, 'credit', 'Office Deposit', '2019-03-28', '17:35:53', 520, 500),
(20, 12100116021, 'debit', 'Canteen Food', '2019-03-28', '17:37:41', 448, 72),
(21, 12100445232, 'credit', 'Opening Amount', '2019-03-29', '08:53:23', 600, 600),
(22, 9856321, 'credit', 'Opening Amount', '2019-03-29', '08:54:35', 6523, 6523),
(23, 12100116038, 'credit', 'Opening Amount', '2019-03-29', '21:36:40', 20, 20),
(24, 123456789123, 'credit', 'Opening Amount', '2020-07-18', '20:14:48', 500, 500),
(25, 12100116050, 'debit', 'Canteen Food', '2020-07-18', '21:15:48', 1387, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Attendence`
--
ALTER TABLE `Attendence`
  ADD PRIMARY KEY (`candidateId`,`startTime`,`classDate`);

--
-- Indexes for table `BookDetails`
--
ALTER TABLE `BookDetails`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `BookRequisition`
--
ALTER TABLE `BookRequisition`
  ADD PRIMARY KEY (`candidateId`,`subjectName`,`bookName`,`authorName`,`reqDate`);

--
-- Indexes for table `CandidateDetails`
--
ALTER TABLE `CandidateDetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Canteen`
--
ALTER TABLE `Canteen`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `candidateId` (`candidateId`);

--
-- Indexes for table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`grade`,`department`,`classDate`,`startTime`,`classGroup`);

--
-- Indexes for table `Document`
--
ALTER TABLE `Document`
  ADD PRIMARY KEY (`documentId`);

--
-- Indexes for table `Library`
--
ALTER TABLE `Library`
  ADD PRIMARY KEY (`bookId`),
  ADD KEY `candidateId` (`candidateId`);

--
-- Indexes for table `Menu`
--
ALTER TABLE `Menu`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `Office`
--
ALTER TABLE `Office`
  ADD PRIMARY KEY (`workId`),
  ADD KEY `documentId` (`documentId`),
  ADD KEY `candidateId` (`candidateId`);

--
-- Indexes for table `PendingOrders`
--
ALTER TABLE `PendingOrders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`staffId`);

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`transId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Canteen`
--
ALTER TABLE `Canteen`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `PendingOrders`
--
ALTER TABLE `PendingOrders`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `Transaction`
--
ALTER TABLE `Transaction`
  MODIFY `transId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
