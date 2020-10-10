-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 07:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `b_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pbname` varchar(50) NOT NULL,
  `pbdate` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `edition` varchar(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `ncopy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`b_id`, `name`, `pbname`, `pbdate`, `sub`, `edition`, `isbn`, `ncopy`) VALUES
(7, 'harry potter', 'jk rowling', 'donuld trump', 'histry', '5', 123, 99);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_borrow`
--

CREATE TABLE `tbl_borrow` (
  `b_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `cd` date NOT NULL,
  `rd` date NOT NULL,
  `ncopy` int(11) NOT NULL,
  `returned_on` date NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_borrow`
--

INSERT INTO `tbl_borrow` (`b_id`, `userid`, `isbn`, `cd`, `rd`, `ncopy`, `returned_on`, `fine`) VALUES
(13, 6, '123', '2020-11-01', '2020-12-10', 1, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `mobile` int(15) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `address`, `mobile`, `street`, `city`, `age`, `pass`) VALUES
(1, 'mj', 'mj@gmail.com', 'jjfbdb', 145625666, 'jjfbdb', 'gkkjs', '20', 'mj1526'),
(3, 'dgdrg', 'sgdfg@gmail.com', 'efaefa', 0, 'df', 'afasf', '22', 'asfsdfeg'),
(4, 'md.salahuddin', '', '', 0, '', '', '', ''),
(5, 'md. salah uddin', 'md97salauddin@gmail.com', 'fqefefe', 132435, '232', 'fsfdf', '22', 'dgerh'),
(6, 'ador', 'a@mail.com', '123,fhediji', 1223343, '1213', 'dfsg', '22', 'asfeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_borrow`
--
ALTER TABLE `tbl_borrow`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_borrow`
--
ALTER TABLE `tbl_borrow`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
