-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2015 at 08:21 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL,
  `lecturer` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `name`, `mobile`, `email`, `course`, `lecturer`, `time`) VALUES
(1, 'manoj', 'dmhjgdhj', 'haripavan@yahoo.com', 'Adv Comp Netwrkng & Security', 'Majid Saadatmanesh', 'Class 12:20 pm-3:00 pm Wednesday '),
(2, 'manoj', 'dmhjgdhj', 'haripavan@yahoo.com', 'Adv Comp Netwrkng & Security', 'Majid Saadatmanesh', 'Class 12:20 pm-3:00 pm Wednesday '),
(3, 'manoj', 'lkDGBK>', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'Majid Saadatmanesh', 'Class 12:20 pm-3:00 pm Wednesday '),
(4, 'manoj', 'lkDGBK>', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'Majid Saadatmanesh', 'Class 12:20 pm-3:00 pm Wednesday '),
(5, 'cjx', '7777777777', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'Ahmad Y Rawashdeh', 'Class 02:20 pm-05:00 pm Saturday'),
(6, 'cjx', '7777777777', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'Dr. Xiaodong Yue', 'Class 08:40 am-11:20 am Tuesday'),
(7, 'cjx', '7777777777', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'Hyungbae Park', 'Class 03:10 pm-05:50 pm Wednesday'),
(8, 'soujan reddy', '09908600777', 'kottam.soujan@gmail.com', 'Adv Comp Netwrkng & Security', 'Hang Chen', 'Class 12:20 pm-03:00 pm Tuesday'),
(9, 'manoj', '700635028', 'pmanoj731@gmail.com', 'Database Theory & Apps', 'Songlin Tian', 'Class 8:40 am-11:20 pm Tuesday'),
(10, 'manoj55', ' 700635028', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'yhien liang', ''),
(11, 'manoj55', '700635028', 'pmanoj731@gmail.com', 'Adv Comp Netwrkng & Security', 'yhien liang', ''),
(12, 'sandeep', '700635028', 'pmanoj731@gmail.com', 'Adv Algorithms & Data Structrs', 'Sunae Shin', 'Class 03:10 pm-05:50 pm Tuesday'),
(13, 'manoj', 'xZZC', 'haripavan@yahoo.com', 'Adv Comp Netwrkng & Security', 'yhien liang', ''),
(14, 'ravali', '700641004', 'rxg10040@gmail.com', 'Adv Comp Netwrkng & Security', 'Zhiyong Shan', 'Class 12:20 pm-03:00 pm Tuesday '),
(15, 'ravali', '700641004', 'rxg10040@gmail.com', 'Adv Comp Netwrkng & Security', 'Zhiyong Shan', 'Class 12:20 pm-03:00 pm Tuesday '),
(16, 'manoj', '9908587775', '', 'Adv Comp Netwrkng & Security', 'yhien liang', ''),
(17, 'manoj', '7000635028', 'aredlasandeepreddy@gmail.com', 'Database Theory & Apps', 'Songlin Tian', 'Class 8:40 am-11:20 pm Tuesday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
