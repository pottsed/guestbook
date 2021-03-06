-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 05:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(100) NOT NULL,
  `booking` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `k` varchar(20) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `jab` varchar(40) NOT NULL,
  `satker` varchar(40) NOT NULL,
  `jk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `booking`, `date`, `k`, `nama`, `email`, `tel`, `jab`, `satker`, `jk`) VALUES
(5, 'A0515000000000000', '2019-05-15 01:10:44', 'A', 'Aa', 'a@a.a', '000000000000', 'Pilot', 'Anti-standard', 'laki'),
(6, 'A0610089875416544', '2019-06-10 02:14:30', 'A', 'Elin Maulida', 'E@M.lida', '089875416544', 'Warga Sipil', 'Korwil 4', 'perempuan'),
(7, 'A0611087575787', '2019-06-11 02:00:16', 'A', 'zxc', 'asdfghj@gmail.com', '087575787', 'qwerty', 'qwer', 'perempuan'),
(8, 'A0611089451522441', '2019-06-11 02:34:24', 'A', 'popo', 'p@p.c', '089451522441', 'Staff', 'Keuangan', 'laki'),
(2, 'B0509060606060606', '2019-05-09 02:21:41', 'B', 'Maelee', 'premanterkuat@bumi.ini', '060606060606', 'Preman', 'Satgas Preman', 'laki'),
(3, 'B05130122548645', '2019-05-13 05:54:33', 'B', 'Van Beukering', 'VB@ned.nl', '0122548645', 'Stiker', 'Timnas', 'laki'),
(1, 'C0508087485124458', '2019-05-08 07:06:13', 'C', 'Juji in de dak', 'juji@inde.dak', '087485124458', 'Penyanyi', '-', 'laki'),
(4, 'D0515087584224511', '2019-05-15 01:04:23', 'D', 'Yulia', 'YuliaC@gmail.com', '087584224511', 'Internship', 'Keuangan', 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `tgl_book` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `booking` varchar(20) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `jab` varchar(40) NOT NULL,
  `satker` varchar(40) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`tgl_book`, `booking`, `nama`, `email`, `tel`, `jab`, `satker`, `jk`, `masuk`) VALUES
('2019-05-15 01:10:44', 'A0515000000000000', 'Aa', 'a@a.a', '000000000000', 'Pilot', 'Anti-standard', 'laki', '2019-05-15 07:42:36'),
('2019-06-10 02:14:30', 'A0610089875416544', 'Elin Maulida', 'E@M.lida', '089875416544', 'Warga Sipil', 'Korwil 4', 'perempuan', '2019-06-10 03:08:32'),
('2019-06-11 02:00:16', 'A0611087575787', 'zxc', 'asdfghj@gmail.com', '087575787', 'qwerty', 'qwer', 'perempuan', '2019-06-11 02:03:57'),
('2019-06-11 02:34:24', 'A0611089451522441', 'popo', 'p@p.c', '089451522441', 'Staff', 'Keuangan', 'laki', '2019-06-11 02:35:53'),
('2019-05-13 05:54:33', 'B05130122548645', 'Van Beukering', 'VB@ned.nl', '0122548645', 'Stiker', 'Timnas', 'laki', '2019-05-23 08:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `valid`
--

CREATE TABLE `valid` (
  `k_validasi` varchar(100) NOT NULL,
  `k_booking` varchar(100) NOT NULL,
  `masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_book` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valid`
--

INSERT INTO `valid` (`k_validasi`, `k_booking`, `masuk`, `tgl_book`, `img`) VALUES
('20190515094236A0515000000000000OK', 'A0515000000000000', '2019-05-21 06:22:34', '2019-05-15 01:10:44', 'img2019-5-21 9.50.8.jpg'),
('20190610050832A0610089875416544OK', 'A0610089875416544', '2019-06-10 03:08:32', '2019-06-10 02:14:30', 'img2135.jpg'),
('20190611040357A0611087575787OK', 'A0611087575787', '2019-06-11 02:03:57', '2019-06-11 02:00:16', 'img2060.jpg'),
('20190611043553A0611089451522441OK', 'A0611089451522441', '2019-06-11 02:35:53', '2019-06-11 02:34:24', 'img2123.jpg'),
('20190523100527B05130122548645OK', 'B05130122548645', '2019-05-23 08:05:27', '2019-05-13 05:54:33', 'img2019-5-23 11.44.9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`booking`),
  ADD UNIQUE KEY `masuk` (`masuk`);

--
-- Indexes for table `valid`
--
ALTER TABLE `valid`
  ADD PRIMARY KEY (`k_booking`),
  ADD UNIQUE KEY `k_validasi` (`k_validasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
