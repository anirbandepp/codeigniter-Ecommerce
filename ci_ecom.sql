-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 03:55 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `cid` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `pid`, `cid`, `qty`, `price`) VALUES
(17, '7', '1', 2, '9000.00'),
(18, '4', '1', 1, '900.00'),
(19, '6', '1', 5, '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `parent_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`, `parent_id`) VALUES
(1, 'Man', 0),
(2, 'Women', 0),
(3, 'Electronics', 0),
(5, 'Mobile', 3),
(6, 'Monitor', 3),
(7, 'T-shirt', 1),
(8, 'Pant', 1),
(9, 'Saree', 2),
(10, 'Kurte', 2),
(11, 'Beauty', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `email`, `password`) VALUES
(1, 'partho', 'p@gmail.com', 'p1234'),
(2, 'anirban', 'a@gmail.com', 'a1234');

-- --------------------------------------------------------

--
-- Table structure for table `main_order`
--

CREATE TABLE `main_order` (
  `id` int(11) NOT NULL,
  `bn` varchar(255) NOT NULL,
  `bp` varchar(255) NOT NULL,
  `ba` varchar(500) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `sp` varchar(255) NOT NULL,
  `sa` varchar(500) NOT NULL,
  `cid` varchar(100) NOT NULL,
  `paymentID` varchar(100) NOT NULL,
  `paymentStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_order`
--

INSERT INTO `main_order` (`id`, `bn`, `bp`, `ba`, `sn`, `sp`, `sa`, `cid`, `paymentID`, `paymentStatus`) VALUES
(1, 'Partho Sir', '123456789', '1B, Paramhansa Deb Road KMCP SCHOOL', 'Partho Sir', '123456789', '1B, Paramhansa Deb Road KMCP SCHOOL', '2', 'pay_ICdWsCgTFvUsPJ', 'complete'),
(2, 'Anirban', '98008873979', '1B, Paramhansa Deb Road KMCP SCHOOL', 'Anirban', '98008873979', '1B, Paramhansa Deb Road KMCP SCHOOL', '2', 'pay_ICdYzPmyhnAUD9', 'complete'),
(3, 'Alpha', '9804866565', '1B, Paramhansa Deb Road KMCP SCHOOL', 'Alpha', '9804866565', '1B, Paramhansa Deb Road KMCP SCHOOL', '1', 'pay_IDofw8z2wxSKgR', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `pimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `cat`, `pname`, `price`, `pimg`) VALUES
(3, '7', 'Cutton Shirt', '700', 'shirt1.jpeg'),
(4, '8', 'Jeans pant', '900', 'jeans_pant1.jpg'),
(5, '9', 'Saree', '700', 'saree1.jpeg'),
(6, '5', 'Asus Zenfone ', '6000', 'mobile1.jpeg'),
(7, '6', 'AOC Monitor', '9000', 'monitor1.jpg'),
(8, '5', 'Redmi 90S', '6000', 'mobile2.png'),
(9, '9', 'Saree', '9000', 'saree1.jpg'),
(10, '6', 'ASUS', '9000', 'monitor2.png');

-- --------------------------------------------------------

--
-- Table structure for table `sub_table`
--

CREATE TABLE `sub_table` (
  `id` int(11) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `cid` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `order_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_table`
--

INSERT INTO `sub_table` (`id`, `pid`, `cid`, `qty`, `price`, `order_ID`) VALUES
(1, '3', '2', 1, '700.00', '1'),
(2, '5', '2', 1, '700.00', '1'),
(3, '6', '2', 1, '6000.00', '2'),
(4, '3', '1', 2, '700.00', '3'),
(5, '4', '1', 1, '900.00', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `main_order`
--
ALTER TABLE `main_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sub_table`
--
ALTER TABLE `sub_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_order`
--
ALTER TABLE `main_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_table`
--
ALTER TABLE `sub_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
