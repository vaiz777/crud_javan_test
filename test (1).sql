-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 03:02 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `alokasi_ppb`
--

CREATE TABLE `alokasi_ppb` (
  `id` int(5) NOT NULL,
  `ppb_nomor` varchar(20) NOT NULL,
  `tanggal_ppb` date NOT NULL,
  `nomor_spd` varchar(22) NOT NULL,
  `petugas_pptk` varchar(100) NOT NULL,
  `kegiatan` varchar(200) NOT NULL,
  `data_dibuat` date NOT NULL,
  `data_diubah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alokasi_ppb`
--

INSERT INTO `alokasi_ppb` (`id`, `ppb_nomor`, `tanggal_ppb`, `nomor_spd`, `petugas_pptk`, `kegiatan`, `data_dibuat`, `data_diubah`) VALUES
(1, '00001/NPJ/2160100/20', '2021-11-22', '111/111/111.1.1/1111', '2001', '21603', '2022-11-21', '2022-11-21'),
(2, '00002/NPJ/2160100/20', '2021-11-22', '121/212/121.2.1/2121', '2001', '21603', '2022-11-21', '2022-11-21'),
(3, '00003/NPJ/2160100/20', '2021-11-22', '121/212/121.2.1/2121', '2001', '21605', '2022-11-21', '2022-11-21'),
(4, '00004/NPJ/2160100/20', '2021-11-22', '222/234/333.3.3/2022', '2001', '21603', '2022-11-21', '2022-11-21');

-- --------------------------------------------------------

--
-- Table structure for table `alokasi_ppb_detail`
--

CREATE TABLE `alokasi_ppb_detail` (
  `id` int(5) NOT NULL,
  `alokasi_ppb_id` varchar(22) NOT NULL,
  `item_rincian` varchar(100) NOT NULL,
  `volume` float NOT NULL,
  `harga` int(12) NOT NULL,
  `data_dibuat` date NOT NULL,
  `data_diubah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(3) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `konten`, `gambar`, `date_created`, `date_updated`) VALUES
(1, 'What is ASDF?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum @#$%^&&!*!(!!\r\n', 'asset/images/upload/carousel1.jpg', '2022-12-05', '2022-12-05'),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'asset/images/upload/carousel2.jpg', '2022-12-05', '2022-12-05'),
(3, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'asset/images/upload/carousel3.jpg', '2022-12-05', '2022-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` varchar(11) NOT NULL,
  `program_id` int(5) NOT NULL,
  `kegiatan_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `program_id`, `kegiatan_nama`) VALUES
('2160320209', 21603, 'Pengembangan aplikasi dan proses bisnis pemerintahan berbasis elektronik'),
('2160420210', 21604, 'Penyelenggaraan sistem komunikasi intra pemerintahan daerah'),
('2160520211', 21605, 'Pengelolaan pusat data pemerintahan');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `id` int(3) NOT NULL,
  `parent` int(3) DEFAULT NULL,
  `child` int(3) DEFAULT NULL,
  `grandchild` int(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluarga`
--

INSERT INTO `keluarga` (`id`, `parent`, `child`, `grandchild`, `name`) VALUES
(1, 1, 0, 0, 'Bani'),
(2, 1, 1, 0, 'Budi'),
(3, 1, 1, 0, 'Nida'),
(4, 1, 1, 0, 'Ardi'),
(5, 1, 1, 0, 'Sigit'),
(6, 0, 2, 1, 'Hari'),
(7, 0, 2, 1, 'Siti'),
(8, 0, 3, 1, 'Bila'),
(9, 0, 3, 1, 'Lesti'),
(10, 0, 4, 1, 'Diki'),
(11, 0, 5, 1, 'Doni'),
(12, 0, 5, 1, 'Toni'),
(13, 1, 0, 0, 'Indah');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(4) NOT NULL,
  `nim` bigint(10) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `masuk` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `kota`, `masuk`, `created_at`, `updated_at`) VALUES
(1, 221170001, 'Alif', 'Surabaya', 2022, '2022-12-01 00:00:00', '2022-12-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` int(4) NOT NULL,
  `petugas_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `petugas_nama`) VALUES
(2001, 'Eka Yuliani, S. Sos'),
(2002, 'Dwi Agustin, S. Kom'),
(2003, 'Tri Yudianto, S. Tr. Kom');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(5) DEFAULT NULL,
  `program_nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `program_nama`) VALUES
(21603, 'Program Aplikasi Informatika'),
(21604, 'Program Infrastruktur Jaringan'),
(21605, 'Program Data Statistika');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alokasi_ppb`
--
ALTER TABLE `alokasi_ppb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alokasi_ppb_detail`
--
ALTER TABLE `alokasi_ppb_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD UNIQUE KEY `unique_id` (`id`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alokasi_ppb`
--
ALTER TABLE `alokasi_ppb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alokasi_ppb_detail`
--
ALTER TABLE `alokasi_ppb_detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keluarga`
--
ALTER TABLE `keluarga`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
