-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 10:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `je_kategori` varchar(30) NOT NULL,
  `kame_kategori` varchar(100) NOT NULL,
  `kd_kategori` varchar(10) NOT NULL,
  `spek_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`je_kategori`, `kame_kategori`, `kd_kategori`, `spek_kategori`) VALUES
('DSLR', 'Canon 550', '080', '16MP, 8GB, lensa kit'),
('Mirrorless', 'Sony A6300', '090', '16 MP, 10GB, Lensa Kiit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kembali`
--

CREATE TABLE `tbl_kembali` (
  `nm_kategori` varchar(100) NOT NULL,
  `ala_kategori` varchar(200) NOT NULL,
  `no_kategori` varchar(20) NOT NULL,
  `kame_kategori` varchar(100) NOT NULL,
  `kd_kategori` varchar(30) NOT NULL,
  `sewa_kategori` varchar(100) NOT NULL,
  `kembali_kategori` varchar(200) NOT NULL,
  `lambat_kategori` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kembali`
--

INSERT INTO `tbl_kembali` (`nm_kategori`, `ala_kategori`, `no_kategori`, `kame_kategori`, `kd_kategori`, `sewa_kategori`, `kembali_kategori`, `lambat_kategori`) VALUES
('Andika W.K', 'Solo RT02/06', '0879800006', 'Sony A6300', '090', '12 Juli 2019', '14 Juli 2019', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sewa`
--

CREATE TABLE `tbl_sewa` (
  `nm_kategori` varchar(100) NOT NULL,
  `ala_kategori` varchar(50) NOT NULL,
  `no_kategori` varchar(20) NOT NULL,
  `jamin_kategori` varchar(100) NOT NULL,
  `kame_kategori` varchar(20) NOT NULL,
  `kd_kategori` varchar(30) NOT NULL,
  `sewa_kategori` varchar(100) NOT NULL,
  `lam_kategori` int(200) NOT NULL,
  `kembali_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sewa`
--

INSERT INTO `tbl_sewa` (`nm_kategori`, `ala_kategori`, `no_kategori`, `jamin_kategori`, `kame_kategori`, `kd_kategori`, `sewa_kategori`, `lam_kategori`, `kembali_kategori`) VALUES
('Wahyu A', 'Solo RT01/06', '08210000001', 'BPKB', 'Fujifilm GX7', '093', '13 Juli 2019', 4, '18 Juli 2019'),
('Jojo', 'Solo RT09/9', '08179090000', 'SIM', 'Sony A6000', '091', '20 Juli 2019', 2, '22 Juli 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `nm_kategori` varchar(100) NOT NULL,
  `kame_kategori` varchar(100) NOT NULL,
  `kd_kategori` varchar(30) NOT NULL,
  `lama` int(100) NOT NULL,
  `biaya` int(100) NOT NULL,
  `telat` int(100) NOT NULL,
  `denda` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `uang` int(100) NOT NULL,
  `kembalian` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`nm_kategori`, `kame_kategori`, `kd_kategori`, `lama`, `biaya`, `telat`, `denda`, `total`, `uang`, `kembalian`) VALUES
('Andika', 'Sony A6000', '090', 2, 20000, 2, 10000, 60000, 100000, 40000),
('Wahyu', 'Sony A7ii', '080', 2, 20000, 3, 10000, 70000, 100000, 30000),
('Sasa', 'Canon M10', '091', 3, 20000, 1, 10000, 70000, 100000, 30000),
('Nasrul', 'Sony A6600', '090', 2, 20000, 2, 10000, 60000, 100000, 40000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `tbl_kembali`
--
ALTER TABLE `tbl_kembali`
  ADD KEY `kd_kategori` (`kd_kategori`);

--
-- Indexes for table `tbl_sewa`
--
ALTER TABLE `tbl_sewa`
  ADD KEY `kd_kategori` (`kd_kategori`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD KEY `kd_kategori` (`kd_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
