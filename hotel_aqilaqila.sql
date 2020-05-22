-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2020 at 12:53 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_aqilaqila`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `id_fasilitas` int(5) NOT NULL,
  `nama_fasilitas` varchar(20) NOT NULL,
  `jenis_fasilitas` varchar(20) NOT NULL,
  `id_hotel` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fasilitas_hotel`
--

INSERT INTO `fasilitas_hotel` (`id_fasilitas`, `nama_fasilitas`, `jenis_fasilitas`, `id_hotel`) VALUES
(1, 'Kolam Renang', 'Umum', 1),
(2, 'Cafe', 'Umum', 1),
(3, 'Billyard', 'Khusus', 1),
(4, 'Karaoke', 'Khusus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `harga_kamar`
--

CREATE TABLE `harga_kamar` (
  `id_harga` int(5) NOT NULL,
  `tarif` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `harga_kamar`
--

INSERT INTO `harga_kamar` (`id_harga`, `tarif`, `id_kelas`) VALUES
(1, 250000, 1),
(2, 500000, 2),
(3, 1000000, 3),
(4, 2500000, 4),
(5, 5000000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(5) NOT NULL,
  `alamat` text NOT NULL,
  `id_pegawai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `alamat`, `id_pegawai`) VALUES
(1, 'Tokyo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(5) NOT NULL,
  `id_harga` int(5) NOT NULL,
  `id_hotel` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_harga`, `id_hotel`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 2, 1),
(7, 2, 1),
(8, 2, 1),
(9, 2, 1),
(10, 3, 1),
(11, 3, 1),
(12, 3, 1),
(13, 4, 1),
(14, 4, 1),
(15, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_kamar`
--

CREATE TABLE `kelas_kamar` (
  `id_kelas` int(5) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kelas_kamar`
--

INSERT INTO `kelas_kamar` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Standard'),
(2, 'Superior'),
(3, 'Deluxe'),
(4, 'Suite'),
(5, 'Presidental');

-- --------------------------------------------------------

--
-- Table structure for table `layanan_hotel`
--

CREATE TABLE `layanan_hotel` (
  `id_layanan` int(5) NOT NULL,
  `nama_layanan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `layanan_hotel`
--

INSERT INTO `layanan_hotel` (`id_layanan`, `nama_layanan`) VALUES
(1, 'Check-In'),
(2, 'Check-Out'),
(3, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(5) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `umur` int(2) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jabatan`, `jenis_kelamin`, `umur`, `alamat`) VALUES
(1, 'Eugene Krabs', 'Kepala', 'L', 27, 'Bikini Bottom'),
(2, 'Spongebob Squarepants', 'Koki', 'L', 17, 'Bikini Bottom'),
(3, 'Patrick Stars', 'Pelayan', 'L', 17, 'Bikini Bottom'),
(4, 'Squidward Tentacles', 'Kasir', 'L', 17, 'Bikini Bottom');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(5) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `umur` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_hp`, `email`, `umur`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Naruto Uzumaki', '0812345678901', 'naruto@email.com', 17, 'L', 'Desa Konoha'),
(2, 'Haruno Sakura', '081234568901', 'sakura@email.com', 17, 'P', 'Desa Konoha'),
(3, 'Uchiha Sasuke', '0912345678901', 'sasuke@email.com', 17, 'L', 'Desa Konoha'),
(4, 'Kakashi Hatake', '0812345678901', 'kakashi@email.com', 27, 'L', 'Desa Konoha'),
(5, 'Gaara', '0812345678901', 'gaara@email.com', 17, 'L', 'Desa Suna'),
(6, 'Temari', '0812345678901', 'temari@email.com', 17, 'P', 'Desa Suna'),
(7, 'Kankuro', '0812345678901', 'kankuro@email.com', 17, 'L', 'Desa Suna');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(5) NOT NULL,
  `id_kamar` int(5) NOT NULL,
  `id_pelanggan` int(5) DEFAULT NULL,
  `id_layanan` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `id_kamar`, `id_pelanggan`, `id_layanan`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 7, NULL, NULL),
(8, 8, NULL, NULL),
(9, 9, NULL, NULL),
(10, 10, 5, 1),
(11, 11, 6, 1),
(12, 12, 7, 1),
(13, 13, NULL, NULL),
(14, 14, NULL, NULL),
(15, 15, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `harga_kamar`
--
ALTER TABLE `harga_kamar`
  ADD PRIMARY KEY (`id_harga`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_harga` (`id_harga`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indexes for table `kelas_kamar`
--
ALTER TABLE `kelas_kamar`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `layanan_hotel`
--
ALTER TABLE `layanan_hotel`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_layanan` (`id_layanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  MODIFY `id_fasilitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `harga_kamar`
--
ALTER TABLE `harga_kamar`
  MODIFY `id_harga` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelas_kamar`
--
ALTER TABLE `kelas_kamar`
  MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `layanan_hotel`
--
ALTER TABLE `layanan_hotel`
  MODIFY `id_layanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD CONSTRAINT `fasilitas_hotel_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`) ON UPDATE CASCADE;

--
-- Constraints for table `harga_kamar`
--
ALTER TABLE `harga_kamar`
  ADD CONSTRAINT `harga_kamar_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_kamar` (`id_kelas`) ON UPDATE CASCADE;

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON UPDATE CASCADE;

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_harga`) REFERENCES `harga_kamar` (`id_harga`) ON UPDATE CASCADE,
  ADD CONSTRAINT `kamar_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`) ON UPDATE CASCADE;

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservasi_ibfk_3` FOREIGN KEY (`id_layanan`) REFERENCES `layanan_hotel` (`id_layanan`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
