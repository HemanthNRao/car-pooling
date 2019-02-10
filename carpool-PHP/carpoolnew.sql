-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2017 at 12:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpoolnew`
--
CREATE DATABASE carpoolnew;
-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `slno` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `comment` text NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `slno` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `from` varchar(250) NOT NULL,
  `to` varchar(250) NOT NULL,
  `uptime` datetime NOT NULL,
  `downtime` datetime NOT NULL,
  `people` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `vehicle` varchar(250) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `uid`, `from`, `to`, `uptime`, `downtime`, `people`, `price`, `vehicle`, `description`) VALUES
(1, 1, 'Banglore', 'Manglore', '2017-02-25 15:47:46', '0000-00-00 00:00:00', 4, 500, 'car', ''),
(2, 2, 'Rajajinagar', 'Banglore', '2017-03-04 18:03:06', '0000-00-00 00:00:00', 4, 200, 'car', ''),
(3, 2, 'Banglore', 'Manglore', '2017-03-06 18:09:35', '0000-00-00 00:00:00', 4, 200, 'car', ''),
(4, 1, 'Banglore', 'Hubli', '2017-03-15 17:39:09', '0000-00-00 00:00:00', 4, 350, 'taxi', ''),
(5, 1, 'Banglore', 'Manglore', '2017-03-14 13:00:00', '0000-00-00 00:00:00', 6, 400, 'car', '');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `routeid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `place` varchar(250) NOT NULL,
  `serialno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`routeid`, `cid`, `place`, `serialno`) VALUES
(1, 1, 'Banglore', 1),
(2, 1, 'Manglore', 2),
(3, 2, 'Rajajinagar', 1),
(4, 2, 'Banglore', 2),
(5, 3, 'Banglore', 1),
(6, 3, 'Manglore', 2),
(7, 4, 'Banglore', 1),
(8, 4, 'Hubli', 2),
(9, 5, 'Banglore', 1),
(10, 5, 'Manglore', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `random` varchar(6) NOT NULL,
  `hash` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contactno` bigint(50) NOT NULL,
  `description` text,
  `credits` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `random`, `hash`, `email`, `gender`, `contactno`, `description`, `credits`) VALUES
(1, 'admin', '8sepf', '8saln6NG/5C0k', 'dharani3012@gmail.com', 'M', 9988776655, 'NONE', 0),
(2, 'Dharani', 'gnhhq', 'gneyeOR/7wxAk', 'ganesh@gmail.com', 'M', 8553538835, '', 0),
(3, 'nishu', 'jbxm6', 'jbDTINR8ScRB.', 'nishu@gmail.com', 'M', 9980889900, '', 0),
(4, 'kiran', '1dsgh', '1dJ4fKTNfX5ec', 'kiran@gmail.com', 'M', 9988998899, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`routeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `routeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
