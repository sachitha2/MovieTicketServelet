-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 12:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `timeslot` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `numtickets` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `userid`, `timeslot`, `total`, `numtickets`, `date`) VALUES
(3, 's@s.s', 8, 900, 2, '2021-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `director` varchar(100) NOT NULL,
  `producer` varchar(100) NOT NULL,
  `cast` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `title`, `sdate`, `edate`, `director`, `producer`, `cast`, `image`) VALUES
(40, 'Terminator: Dark Fate - 2019', '2021-05-14', '2021-05-28', 'fewf', 'sqwf', 'frewefrebfdvc', 'https://upload.wikimedia.org/wikipedia/en/5/5f/Terminator_Dark_Fate_poster.jpg'),
(41, 'wali wali', '2021-05-14', '2021-05-29', 'egvef', 'frnf', 'efew', 'https://upload.wikimedia.org/wikipedia/en/5/5f/Terminator_Dark_Fate_poster.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mtime`
--

CREATE TABLE `mtime` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `timeslot` varchar(10) NOT NULL,
  `status` int(1) NOT NULL COMMENT 'true false\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mtime`
--

INSERT INTO `mtime` (`id`, `movie_id`, `timeslot`, `status`) VALUES
(8, 40, '9:00 AM', 1),
(10, 40, '11:00 AM', 1),
(11, 40, '4:00 PM', 1),
(12, 40, '7:00 PM', 0),
(13, 40, '10:00 PM', 0),
(14, 41, '9:00 AM', 1),
(15, 41, '11:00 AM', 0),
(16, 41, '4:00 PM', 0),
(17, 41, '7:00 PM', 0),
(18, 41, '10:00 PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sheetavailability`
--

CREATE TABLE `sheetavailability` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 for booked',
  `userid` varchar(100) NOT NULL COMMENT 'booked by who ?',
  `bookingId` int(11) NOT NULL,
  `mtimeId` int(11) NOT NULL,
  `sheet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sheetavailability`
--

INSERT INTO `sheetavailability` (`id`, `date`, `status`, `userid`, `bookingId`, `mtimeId`, `sheet`) VALUES
(1, '2021-05-14', 1, '0', 19, 8, 2),
(2, '2021-05-14', 1, '0', 19, 8, 1),
(3, '2021-05-14', 1, '0', 20, 8, 13),
(4, '2021-05-14', 1, '0', 20, 8, 12),
(5, '2021-05-14', 1, '0', 20, 8, 20),
(6, '2021-05-14', 1, '0', 20, 8, 21),
(7, '2021-05-14', 1, '0', 21, 8, 43),
(8, '2021-05-14', 1, '0', 21, 8, 44),
(9, '2021-05-14', 1, '0', 22, 11, 1),
(10, '2021-05-14', 1, '0', 22, 11, 2),
(11, '2021-05-14', 1, '0', 23, 8, 19),
(12, '2021-05-14', 1, '0', 24, 8, 28),
(13, '2021-05-14', 1, '0', 24, 8, 29),
(14, '2021-05-14', 1, '0', 24, 8, 30),
(15, '2021-05-14', 1, '0', 25, 8, 3),
(16, '2021-05-14', 1, '0', 25, 8, 4),
(17, '2021-05-14', 1, '0', 26, 8, 45),
(18, '2021-05-14', 1, '0', 27, 8, 35),
(19, '2021-05-14', 1, '0', 27, 8, 36),
(20, '2021-05-14', 1, '0', 27, 8, 37),
(21, '2021-05-14', 1, '0', 27, 8, 38),
(22, '2021-05-14', 1, '0', 28, 14, 1),
(23, '2021-05-14', 1, '0', 28, 14, 2),
(24, '2021-05-14', 1, '0', 29, 14, 9),
(25, '2021-05-14', 1, '0', 29, 14, 10),
(26, '2021-05-14', 1, '0', 29, 14, 17),
(27, '2021-05-14', 1, '0', 29, 14, 18),
(28, '2021-05-14', 1, '0', 30, 13, 1),
(29, '2021-05-14', 1, '0', 30, 13, 2),
(30, '2021-05-14', 1, '0', 31, 14, 25),
(31, '2021-05-14', 1, '0', 31, 14, 26),
(32, '2021-05-14', 1, '0', 31, 14, 33),
(33, '2021-05-14', 1, '0', 31, 14, 34),
(34, '2021-05-14', 1, '0', 31, 14, 40),
(35, '2021-05-14', 1, '0', 31, 14, 41),
(36, '2021-05-14', 1, '0', 32, 14, 40),
(37, '2021-05-14', 1, '0', 33, 14, 47),
(38, '2021-05-14', 1, '0', 33, 14, 48),
(39, '2021-05-14', 1, '0', 33, 14, 39),
(40, '2021-05-14', 1, '0', 33, 14, 40),
(41, '2021-05-14', 1, 'admin@s.s', 34, 8, 4),
(42, '2021-05-14', 1, 'admin@s.s', 34, 8, 12),
(43, '2021-05-14', 1, 'admin@s.s', 34, 8, 46),
(44, '2021-05-14', 1, 'admin@s.s', 35, 14, 3),
(45, '2021-05-14', 1, 'admin@s.s', 35, 14, 4),
(46, '2021-05-14', 1, 'admin@s.s', 36, 8, 4),
(47, '2021-05-14', 1, 'admin@s.s', 36, 8, 5),
(48, '2021-05-14', 1, 'admin@s.s', 36, 8, 6),
(49, '2021-05-14', 1, 'admin@s.s', 36, 8, 12),
(50, '2021-05-14', 1, 'admin@s.s', 36, 8, 14),
(51, '2021-05-14', 1, 'admin@s.s', 37, 14, 42),
(52, '2021-05-14', 1, 'admin@s.s', 37, 14, 43),
(53, '2021-05-14', 1, 'admin@s.s', 37, 14, 35),
(54, '2021-05-14', 1, 'admin@s.s', 37, 14, 27),
(55, '2021-05-14', 1, 'admin@s.s', 37, 14, 19),
(56, '2021-05-14', 1, 'admin@s.s', 37, 14, 11),
(57, '2021-05-14', 1, 'admin@s.s', 37, 14, 12),
(58, '2021-05-14', 1, 'admin@s.s', 37, 14, 20),
(59, '2021-05-14', 1, 'admin@s.s', 37, 14, 28),
(60, '2021-05-14', 1, 'admin@s.s', 37, 14, 36),
(61, '2021-05-14', 1, 'admin@s.s', 37, 14, 44),
(62, '2021-05-14', 1, 'admin@s.s', 37, 14, 45),
(63, '2021-05-14', 1, 'admin@s.s', 37, 14, 37),
(64, '2021-05-14', 1, 'admin@s.s', 37, 14, 29),
(65, '2021-05-14', 1, 'admin@s.s', 37, 14, 21),
(66, '2021-05-14', 1, 'admin@s.s', 37, 14, 13),
(67, '2021-05-14', 1, 'admin@s.s', 37, 14, 5),
(68, '2021-05-14', 1, 'admin@s.s', 37, 14, 6),
(69, '2021-05-14', 1, 'admin@s.s', 37, 14, 14),
(70, '2021-05-14', 1, 'admin@s.s', 37, 14, 22),
(71, '2021-05-14', 1, 'admin@s.s', 37, 14, 30),
(72, '2021-05-14', 1, 'admin@s.s', 37, 14, 38),
(73, '2021-05-14', 1, 'admin@s.s', 37, 14, 46),
(74, '2021-05-14', 1, 'admin@s.s', 37, 14, 7),
(75, '2021-05-14', 1, 'admin@s.s', 37, 14, 8),
(76, '2021-05-14', 1, 'admin@s.s', 37, 14, 15),
(77, '2021-05-14', 1, 'admin@s.s', 37, 14, 16),
(78, '2021-05-14', 1, 'admin@s.s', 37, 14, 23),
(79, '2021-05-14', 1, 'admin@s.s', 37, 14, 24),
(80, '2021-05-14', 1, 'admin@s.s', 37, 14, 31),
(81, '2021-05-14', 1, 'admin@s.s', 38, 14, 32),
(82, '2021-05-25', 1, 'admin@s.s', 39, 11, 1),
(83, '2021-05-25', 1, 'admin@s.s', 39, 11, 2),
(84, '2021-05-14', 1, 'admin@s.s', 40, 8, 27),
(85, '2021-05-14', 1, 'admin@s.s', 40, 8, 11),
(86, '2021-05-14', 1, 'admin@s.s', 41, 8, 10),
(87, '2021-05-14', 1, 'admin@s.s', 41, 8, 9),
(88, '2021-05-14', 1, 'admin@s.s', 41, 8, 17),
(89, '2021-05-14', 1, 'admin@s.s', 41, 8, 18),
(90, '2021-05-14', 1, 'null', 42, 8, 26),
(91, '2021-05-14', 1, 'null', 42, 8, 25),
(92, '2021-05-17', 1, '0', 43, 8, 1),
(93, '2021-05-17', 1, '0', 43, 8, 2),
(94, '2021-05-17', 1, '0', 1, 8, 9),
(95, '2021-05-17', 1, '0', 1, 8, 10),
(96, '2021-05-17', 1, 'null', 2, 8, 17),
(97, '2021-05-17', 1, 'null', 2, 8, 18),
(98, '2021-05-17', 1, 's@s.s', 3, 8, 19),
(99, '2021-05-17', 1, 's@s.s', 3, 8, 20),
(100, '2021-05-17', 1, '0', 4, 14, 11),
(101, '2021-05-17', 1, '0', 4, 14, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tp` varchar(10) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 for admin\r\n2 for user',
  `profileImage` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `tp`, `type`, `profileImage`, `lname`, `fname`) VALUES
(1, 's@s.s', '1', '0715591137', 2, '', 'Sun', 'Sam'),
(2, 'admin@s.s', '1', '0715591137', 1, '', '', ''),
(16, 'sam@sam.sam', '1', '0771466460', 2, 'assets/profileimg.png', 'Hirushan', 'sachitha'),
(17, 'chata@gmail.com', '1', '0715591137', 2, 'assets/profileimg.png', 'Hirushan', 'sachitha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtime`
--
ALTER TABLE `mtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sheetavailability`
--
ALTER TABLE `sheetavailability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mtime`
--
ALTER TABLE `mtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sheetavailability`
--
ALTER TABLE `sheetavailability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
