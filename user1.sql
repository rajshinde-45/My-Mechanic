-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 12:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'raj', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `four_wheeler`
--

CREATE TABLE `four_wheeler` (
  `id` int(11) NOT NULL,
  `namef` text NOT NULL,
  `contactf` varchar(10) NOT NULL,
  `emailf` text NOT NULL,
  `servicef` text NOT NULL,
  `service_datef` date NOT NULL,
  `location_latitudef` double NOT NULL,
  `location_longitudef` double NOT NULL,
  `timef` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `city` text NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `email`, `pass`, `latitude`, `longitude`, `city`, `phone`) VALUES
(3, 'Lava Center', 'lava@gmail.com', '1234', 16.852398, 74.581474, 'Sangli', '9658742392'),
(4, 'TVS Services', 'tvs@gmail.com', '1234', 17.691401, 74.000938, 'Satara', '8542682100'),
(17, 'Siddhivinayak services', 'shaeadpawar@gmail.com', '1234', 18.1792, 74.6078, 'Baramati', '975986741'),
(18, 'Royal Services', 'ratan@gmail.com', '1234', 17.65992, 75.906387, 'Solapur', '976598674'),
(20, 'Samrudhi Services', 'samrudhi@gmail.com', '1234', 19.07609, 72.877426, 'Mumbai', '7785664258'),
(21, 'Maruti service center', 'maruti@gmail.com', '1234', 18.516726, 73.856255, 'Pune', '9123145678'),
(22, 'Shahu Services', 'shahu@gmail.com', '1234', 16.704987, 74.243256, 'Kolhapur', '9517538521');

-- --------------------------------------------------------

--
-- Table structure for table `service_center`
--

CREATE TABLE `service_center` (
  `cust_name` text NOT NULL,
  `service_req` text NOT NULL,
  `lat` double NOT NULL,
  `longi` double NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service_centerf`
--

CREATE TABLE `service_centerf` (
  `cust_namef` int(11) NOT NULL,
  `service_reqf` int(11) NOT NULL,
  `longif` int(11) NOT NULL,
  `latf` int(11) NOT NULL,
  `contactf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `two_wheeler`
--

CREATE TABLE `two_wheeler` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `service` text NOT NULL,
  `service_date` date NOT NULL,
  `location_latitude` double NOT NULL,
  `location_longitude` double NOT NULL,
  `timet` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `two_wheeler`
--

INSERT INTO `two_wheeler` (`id`, `name`, `contact_no`, `email`, `service`, `service_date`, `location_latitude`, `location_longitude`, `timet`) VALUES
(117, 'Pranav', '9254654215', 'pranav@gmail.com', 'Tires Replacement', '2023-01-19', 21.1458004, 79.0881546, '09-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_pass`, `user_email`) VALUES
(0, 'raj', '1234', 'shinderajvardhan17@gmail.com'),
(1, 'raj', '1234', 's@gmail.com'),
(0, 'rohan', '123', 'rohan@gmail.com'),
(0, 'abhi', '1234', 'abhi@gmail.com'),
(0, 'xyz', 'asdf', 'email4@gmail.com'),
(0, 'ro', 'rohan', 'ro@gmail.com'),
(0, 'shinde', '1234', 'sh@gmail.com'),
(0, 'my', 'abc', 'mevh@gmail.com'),
(0, 'Raj', 'lkklj', 'rajvardhanshinde45@gmail.com'),
(0, 'Rohit', '1234', 'rohit@gmail.com'),
(0, 'Rajvardhan Shinde', '1234', 'emai4@gmail.com'),
(0, 'Rajvardhan Shinde', '1234', 'shinde123@gmail.com'),
(0, 'abs', '1234', 'abs_cse@adcet.in'),
(0, 'Sangram', '1234', 'sangram@gmail.com'),
(0, 'Abhi', '1234', 'abhi1@gmail.com'),
(0, 'pranav', '1234', 'pranav@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `four_wheeler`
--
ALTER TABLE `four_wheeler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_wheeler`
--
ALTER TABLE `two_wheeler`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `four_wheeler`
--
ALTER TABLE `four_wheeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `two_wheeler`
--
ALTER TABLE `two_wheeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
