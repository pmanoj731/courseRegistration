-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2015 at 08:19 AM
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
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int(11) NOT NULL,
  `lecturer_name` varchar(100) NOT NULL,
  `lecturer_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `lecturer_name`, `lecturer_email`) VALUES
(1, 'yhien liang', 'segrp6@ucmo.edu'),
(8, 'Zhiyong Shan', 'segrp6@gmail.com'),
(9, 'Wen Cheng', 'segrp6@gmail.com'),
(10, 'Hyungbae Park', 'segrp6@gmail.com'),
(11, 'Jun Wang', 'segrp6@gmail.com'),
(12, 'Sunae Shin', 'segrp6@gmail.com'),
(13, 'Xiaodong Yue', 'segrp6@gmail.com'),
(14, 'Songlin Tian', 'segrp6@gmail.com'),
(15, 'Kaoning Hu', 'segrp6@gmail.com'),
(16, 'Majid Saadatmanesh ', 'segrp6@gmail.com'),
(17, 'Songqing Yue', 'segrp6@gmail.com'),
(18, 'Hang Chen', 'segrp6@gmail.com'),
(19, 'Ziyuan Meng', 'segrp6@gmail.com'),
(20, 'Tianyang Wang ', 'segrp6@gmail.com'),
(21, 'Mohammad Rawashdeh ', 'segrp6@gmail.com'),
(22, 'Bo Li', 'segrp6@gmail.com'),
(23, 'Taiabul Haque', 'segrp6@gmail.com'),
(24, 'Jae Woong Lee', 'segrp6@gmail.com'),
(25, 'Ikhyun Park ', 'segrp6@gmail.com'),
(26, 'Yui Man Lui', 'segrp6@gmail.com'),
(27, 'Curtis N Cooper', 'segrp6@gmail.com'),
(28, 'Mahmoud A Yousef ', 'segrp6@gmail.com'),
(32, 'Kamal ', 'segrp6@gmail.com'),
(33, 'Cadathur V Chakravarthy ', 'segrp6@gmail.com'),
(34, 'Sam S Ramanujan ', 'segrp6@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
