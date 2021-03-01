-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2021 at 07:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlinedetail`
--

CREATE TABLE `airlinedetail` (
  `id` int(11) NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `flightname` varchar(20) NOT NULL,
  `departureairport` varchar(20) NOT NULL,
  `departuretime` time NOT NULL,
  `departuredate` date NOT NULL,
  `arrivalairport` varchar(20) NOT NULL,
  `arrivaltime` time NOT NULL,
  `arrivaldate` text NOT NULL,
  `economycapacity` int(11) NOT NULL,
  `economyprice` varchar(10) NOT NULL,
  `bussinesscapacity` int(11) NOT NULL,
  `bussinessprice` varchar(10) NOT NULL,
  `ceconomic` int(10) NOT NULL,
  `cbusiness` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlinedetail`
--

INSERT INTO `airlinedetail` (`id`, `flightno`, `flightname`, `departureairport`, `departuretime`, `departuredate`, `arrivalairport`, `arrivaltime`, `arrivaldate`, `economycapacity`, `economyprice`, `bussinesscapacity`, `bussinessprice`, `ceconomic`, `cbusiness`) VALUES
(7, 'A106', 'spicejet', 'TRIVANDRUM', '00:00:12', '2021-03-04', 'KANNUR', '00:00:12', '2021-03-04', 200, '4000', 500, '10000', 2000, 4000),
(8, 'A101', 'indigo', 'CHENNAI', '00:00:10', '2021-03-03', 'TRIVANDRUM', '00:00:00', '03-03-2021', 500, '6000', 200, '10000', 4000, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `flightname` varchar(20) NOT NULL,
  `departureairport` varchar(20) NOT NULL,
  `departuredate` date NOT NULL,
  `departuretime` time NOT NULL,
  `arrivalairport` varchar(20) NOT NULL,
  `class` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phno` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bid`, `flightno`, `flightname`, `departureairport`, `departuredate`, `departuretime`, `arrivalairport`, `class`, `name`, `age`, `gender`, `phno`, `email`) VALUES
(4, 'A110', 'AIRJET', 'BANGLOUR', '2021-03-04', '12:30:00', 'KOCHI', 'Bussiness class Rs.7000', 'ANU', 50, 'male', '78963258745', 'anu@gmail.com'),
(5, 'A101', 'INDIGO', 'TRIVANDRUM', '2021-03-16', '00:00:11', 'KANNUR', 'business class rs 3000', 'anjali', 22, 'female', '9946140926', 'anjali@gmail.com'),
(7, 'A102', 'AIRASIA', 'TRIVANDRUM', '2021-03-05', '00:00:11', 'KANNUR', 'business class rs 8000', 'nikhila', 22, 'female', '9946140925', 'nikhila@gmail.com'),
(8, 'A103', 'INDIGO', 'CHENNAI', '2021-03-23', '00:00:09', 'TRIVANDRUM', 'economic class', 'radhika', 22, 'female', '9946140924', 'radhika@gmail.com'),
(9, 'A106', 'INDIGO', 'TRIVANDRUM', '2021-03-04', '00:00:12', 'KANNUR', 'economic class', 'athulya', 22, 'female', '9946140922', 'athulya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fileupload`
--

CREATE TABLE `fileupload` (
  `id` int(11) NOT NULL,
  `file` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fileupload`
--

INSERT INTO `fileupload` (`id`, `file`, `date`) VALUES
(2, 'Free-Plane-Ticket-Template.pdf', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `utype` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `utype`) VALUES
(1, 'devis@gmail.com', '$2y$10$xyw46ubX7GOBfRXszSZepOyi82jQTWJGc8w0/ux4KfowtWRiZAgva', '1'),
(2, 'asha@gmail.com', '$2y$10$zvduLIXBuoDZFACPEAsVc.gQ1rg3nHihv832RqyTK0IfJJAF15OSm', '0'),
(3, 'arya@gmail.com', '$2y$10$n6DjoPMj.lYUS5XvAdOwp.NS/4f1WpGJsxbasAMJKlPHgJ7zuQb2a', '1'),
(4, 'anjali@gmail.com', '$2y$10$ULG77ROKV8GHzsC/5lM5HO26GI5ADlWZ0QhZhxg9ouTgOSzjOa.z6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notification` varchar(20) NOT NULL,
  `flight` varchar(20) NOT NULL,
  `currentdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notification`, `flight`, `currentdate`) VALUES
(2, 'delay', 'A103', '2021-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phno` varchar(12) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `age`, `gender`, `address`, `phno`, `loginid`) VALUES
(1, 'devi', 's', 23, 'on', '', '7689675654', 1),
(2, 'asha', 's', 23, 'female', '', '7689675654', 2),
(3, 'arya', 's', 68, 'female', 'arya bhavan', '7896325874', 3),
(4, 'anjali', 'a', 23, 'female', 'chalil veedu', '9876543213', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlinedetail`
--
ALTER TABLE `airlinedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `fileupload`
--
ALTER TABLE `fileupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlinedetail`
--
ALTER TABLE `airlinedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fileupload`
--
ALTER TABLE `fileupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
