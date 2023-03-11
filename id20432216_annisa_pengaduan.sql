-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 06:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_kel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` int(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
(1, 'a', 'A', 'A', 1),
(432, 'Annisa Syafira', 'syafiraa', 'firaaa', 3214567),
(875, 'Annisa Syafira', 'fira', 'syafirannisa', 2147483647),
(3434, 'nisqa', 'nisqachya', 'rdy', 20305),
(12321, 'Defrian', 'rian', '123', 9867755),
(50807, 'Dimas', 'dimas', 'dimas5', 2147483647),
(80705, 'Desi', 'desi', 'desi8', 2147483647),
(245445, 'rian', 'rian', '123', 9765),
(553214, 'Budi', 'budi', 'budi55', 123432153),
(997856, 'Hasna', 'hasna', 'hasnaa', 347685902),
(4456372, 'Yahya', 'yahya', 'yahyaaa', 345678097),
(876675234, 'ujeeGG', 'm hasan', '250205', 2147483647),
(987654321, 'Defrian', 'Defrian', '123', 97865467),
(2147483647, 'sister', 'sister', '778899', 94943847);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(12) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` int(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `photo`, `status`) VALUES
(14, '2023-02-27', 50807, 'Terjadinya kebakaran di Jakarta', 'kebakaran.jpg', 'selesai'),
(15, '2023-02-27', 553214, 'Terjadinya gempa di Cianjur', 'gempa.jpg', 'selesai'),
(16, '2023-02-27', 997856, 'Terjadinya banjir di daerah Bogor karena cuaca hujan yang sangat deras', 'Banjir.jpg', 'selesai'),
(17, '2023-02-27', 4456372, 'Terjadi longsor di perbukitan tinggi di daerah magelang', 'Longsor.jpg', 'selesai'),
(18, '2023-02-27', 80705, 'Terjadinya macet di daerah Bandung ', 'macet.jpg', 'selesai'),
(19, '2023-02-27', 432, 'Terjadinya banjir', '', 'proses'),
(20, '2023-02-27', 432, '', '', '0'),
(21, '2023-02-27', 12321, 'banjir di sangkuriang', 'Banjir.jpg', 'proses'),
(22, '2023-02-27', 3434, 'gempa', 'gempa.jpg', 'proses'),
(23, '2023-02-27', 2147483647, 'gempa bumi', 'gempa.jpg', 'selesai'),
(24, '2023-02-27', 3434, 'kebakaran', 'kebakaran.jpg', 'proses'),
(25, '2023-02-27', 3434, 'macet', 'macet.jpg', 'selesai'),
(26, '2023-02-27', 876675234, '', '', '0'),
(27, '2023-02-27', 876675234, 'kebakaran', 'kebakaran.jpg', '0'),
(28, '2023-02-27', 3434, 'kebakaran', '', '0'),
(29, '2023-02-27', 3434, 'banjir', 'Banjir.jpg', 'selesai'),
(30, '2023-02-27', 3434, '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(15) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` int(15) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(9, 'a', 'a', 'a', 9, 'admin'),
(22, 'petugas', 'petugas', 'petugas', 12345, 'petugas'),
(24, 'admin', 'admin', 'admin', 1234, 'admin'),
(26, 'ujee', 'admin', 'admin', 2147483647, 'petugas'),
(27, 'ratna', 'admin', 'admin', 20305, 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(12, 14, '2023-02-27', 'Baik, terimakasih sudah melaporkan', 24),
(13, 15, '2023-02-27', 'Terimakasih anda sudah melaporkan', 24),
(14, 16, '2023-02-27', 'Terimakasih sudah melaporkan', 24),
(15, 17, '2023-02-27', 'Terimakasih anda sudah melaporkannya', 24),
(16, 18, '2023-02-27', 'Baik, terimakasih anda sudah melaporkan', 24),
(17, 23, '2023-02-27', 'terima kasih sudah melapor', 24),
(18, 25, '2023-02-27', 'terimakasih', 24),
(19, 29, '2023-02-27', 'terimakasih anda sudah melapor', 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `nik` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
