-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 06:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_jenis`
--

CREATE TABLE `t_jenis` (
  `id_jenis` int(10) NOT NULL,
  `nama_jenis` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jenis`
--

INSERT INTO `t_jenis` (`id_jenis`, `nama_jenis`, `status`) VALUES
(1, 'Bebek', 'Aktif'),
(2, 'Matik', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `t_kendaraan`
--

CREATE TABLE `t_kendaraan` (
  `id_kendaraan` int(10) NOT NULL,
  `nama_kendaraan` varchar(100) NOT NULL,
  `aktif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kendaraan`
--

INSERT INTO `t_kendaraan` (`id_kendaraan`, `nama_kendaraan`, `aktif`) VALUES
(1, 'Motor', 1),
(2, 'Mobil', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_mesin`
--

CREATE TABLE `t_mesin` (
  `id_mesin` int(10) NOT NULL,
  `nama_mesin` varchar(50) NOT NULL,
  `kendaran_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_mesin`
--

INSERT INTO `t_mesin` (`id_mesin`, `nama_mesin`, `kendaran_id`) VALUES
(1, 'Jepang', 1),
(2, 'China', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_type`
--

CREATE TABLE `t_type` (
  `id_type` int(10) NOT NULL,
  `nama_type` varchar(100) NOT NULL,
  `mesin_id` int(50) NOT NULL,
  `jenis_id` int(50) NOT NULL,
  `kendaraan_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_type`
--

INSERT INTO `t_type` (`id_type`, `nama_type`, `mesin_id`, `jenis_id`, `kendaraan_id`) VALUES
(1, '123s', 1, 1, 2),
(2, '321h', 1, 1, 2),
(3, '232i', 2, 2, 2),
(4, 'uer2', 2, 2, 1),
(5, '231h', 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_jenis`
--
ALTER TABLE `t_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `t_kendaraan`
--
ALTER TABLE `t_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `t_mesin`
--
ALTER TABLE `t_mesin`
  ADD PRIMARY KEY (`id_mesin`);

--
-- Indexes for table `t_type`
--
ALTER TABLE `t_type`
  ADD PRIMARY KEY (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
