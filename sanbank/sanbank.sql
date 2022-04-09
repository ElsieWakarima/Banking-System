-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 03:25 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `acc_id`, `cust_id`, `acc_type`, `balance`) VALUES
(1, 'A0001', 'CS001', 'Saving', 4077),
(2, 'A0002', 'CS002', 'Saving', 13900),
(3, 'A0003', 'CS004', 'Saving', 4400),
(4, 'A0004', 'CS005', 'Saving', 4600),
(11, 'A0005', 'CS006', 'Saving', 0),
(12, 'A0006', 'CS006', 'Saving', 400);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`) VALUES
(1, 'badulla'),
(2, 'colombo'),
(3, 'chennai');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `cust_id` varchar(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` int(11) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `firstname`, `lastname`, `street`, `city`, `branch`, `phone`) VALUES
(2, 'CS002', 'sathis', 'thevaraj', 'colombo', 'colombo', 2, 24234234),
(3, 'CS003', 'dsfd', 'dsfsd', 'sdfsd', 'sdsad', 1, 344234),
(4, 'CS004', 'devakumar', 'vkumar', 'main road', 'chennai', 2, 775487240),
(21, 'CS005', 'Elsie', 'elsie', 'mvkd', 'vfmekg', 1, 1234),
(22, 'CS006', 'Joe', 'joe', 'fmqeigmke', 'gmegt', 1, 1737463);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `deposit`) VALUES
(1, 'A0001', 'CS001', '2019/02/05', 2977, 1000),
(2, 'A0001', 'CS001', '2019/02/05', -923, 1000),
(3, 'A0001', 'CS001', '2019/02/05', 77, 1000),
(4, 'A0001', 'CS001', '2019/02/05', 577, 1000),
(5, 'A0003', 'CS004', '2019/02/05', 2000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`) VALUES
(2, 'A0001', 'A0002', 500),
(5, 'A0001', 'A0002', 500),
(6, 'A0001', 'A0002', 400),
(7, 'A0001', 'A0002', 1000),
(16, 'A0004', 'A0006', 400);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'kobi', '123'),
(2, 'ram', '321'),
(3, 'John', 'John'),
(4, 'groupI', 'Admin'),
(5, 'groups', 'groupI'),
(6, 'elsie', 'joan'),
(7, 'elise', 'wakarima'),
(8, 'Wakarima', 'elise');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `cust_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(2, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(3, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(4, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(5, 'A0001', 'CS001', '2019/02/04', 5000, 233),
(6, 'A0001', 'CS001', '2019/02/04', 5000, 4000),
(7, 'A0001', 'CS001', '2019/02/04', 1000, 100),
(8, 'A0001', 'CS001', '2019/02/04', 1000, 400),
(9, 'A0001', 'CS001', '2019/02/04', 1000, 200),
(10, 'A0001', 'CS001', '2019/02/04', 1000, 200),
(11, 'A0001', 'CS001', '2019/02/04', 1000, 233),
(12, 'A0001', 'CS001', '2019/02/04', 1000, 233),
(13, 'A0001', 'CS001', '2019/02/04', 1000, 2),
(14, 'A0001', 'CS001', '2019/02/04', 1000, 223),
(15, 'A0001', 'CS001', '2019/02/04', 977, 233),
(16, 'A0001', 'CS001', '2019/02/04', 977, 233),
(17, 'A0001', 'CS001', '2019/02/04', 977, 1000),
(18, 'A0001', 'CS001', '2019/02/04', 1977, 1000),
(26, 'A0007', 'CS007', '2020/06/17', 10000, 2000),
(27, 'A0008', 'CS008', '2022/04/07', 1200, 600),
(28, 'A0007', 'CS008', '2022/04/08', 7800, 800),
(29, 'A0007', 'CS008', '2022/04/08', 7000, 600),
(30, 'A0007', 'CS008', '2022/04/08', 7000, 600),
(31, 'A0006', 'CS007', '2022/04/08', 22800, 800),
(32, 'A0004', 'CS005', '09/04/22 10:04:98', 5600, 600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
