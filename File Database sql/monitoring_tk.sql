-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 04:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring_tk`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_penghubung`
--

CREATE TABLE `buku_penghubung` (
  `ID_Buku` varchar(100) NOT NULL,
  `ID_Kelas` varchar(100) NOT NULL,
  `NIS_Murid` varchar(100) NOT NULL,
  `ID_Pelajaran` varchar(100) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `Evaluasi_OrangTua` text DEFAULT NULL,
  `Catatan_Guru` text DEFAULT NULL,
  `Main_Course` varchar(100) DEFAULT NULL,
  `Snack` varchar(100) DEFAULT NULL,
  `Absen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_penghubung`
--

INSERT INTO `buku_penghubung` (`ID_Buku`, `ID_Kelas`, `NIS_Murid`, `ID_Pelajaran`, `tanggal`, `Evaluasi_OrangTua`, `Catatan_Guru`, `Main_Course`, `Snack`, `Absen`) VALUES
('BP20230103M20210014K20200031', 'K20200031', 'M20210014', 'PE002', '2023-01-03', 'Terima kasih', 'Sudah belajar dengan baik', 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230103M20210025K20200031', 'K20200031', 'M20210025', 'PE002', '2023-01-03', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230103M20210034K20200031', 'K20200031', 'M20210034', 'PE002', '2023-01-03', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230103M20210046K20200031', 'K20200031', 'M20210046', 'PE002', '2023-01-03', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230104M20210014K20200031', 'K20200031', 'M20210014', 'PE002', '2023-01-04', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230104M20210025K20200031', 'K20200031', 'M20210025', 'PE002', '2023-01-04', NULL, 'Sudah Belajar dengan baik', 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230104M20210034K20200031', 'K20200031', 'M20210034', 'PE002', '2023-01-04', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir'),
('BP20230104M20210046K20200031', 'K20200031', 'M20210046', 'PE002', '2023-01-04', NULL, NULL, 'Nasi Goreng', 'Kentang Goreng', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `ID_Kelas` varchar(100) NOT NULL,
  `NIP_Pengajar` varchar(100) DEFAULT NULL,
  `Tingkat_Kelas` varchar(11) DEFAULT NULL,
  `Nama_Kelas` varchar(100) DEFAULT NULL,
  `Tahun_Masuk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`ID_Kelas`, `NIP_Pengajar`, `Tingkat_Kelas`, `Nama_Kelas`, `Tahun_Masuk`) VALUES
('K0001', 'P001', 'Nol Kecil', 'A-1', 2022),
('K0002', 'P002', 'Nol Besar', 'B-1', 2021),
('K20200031', 'P003', 'Nol Kecil', 'A-2', 2020),
('K20200044', 'P004', 'Nol Kecil', 'A-3', 2020),
('K20200052', 'P005', 'Nol Besar', 'B-2', 2020),
('K20200062', 'P006', 'Nol Besar', 'B-3', 2020),
('K20200072', 'P007', 'Nol Kecil', 'C-1', 2020),
('K20200089', 'P008', 'Nol Kecil', 'C-2', 2020),
('K20200091', 'P009', 'Nol Besar', 'C-3', 2020),
('K20200104', 'P010', 'Nol Besar', 'C-4', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `NIS_Murid` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `ID_Kelas` varchar(100) NOT NULL,
  `Nama_Murid` varchar(100) DEFAULT NULL,
  `Nama_OrangTua` varchar(100) DEFAULT NULL,
  `Jenis_Kelamin` varchar(10) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`NIS_Murid`, `username`, `ID_Kelas`, `Nama_Murid`, `Nama_OrangTua`, `Jenis_Kelamin`, `Tanggal_Lahir`) VALUES
('M0001', 'karenM0001', 'K0001', 'Karen', 'Budi', 'Laki-Laki', '2017-01-03'),
('M0002', 'AndiM0002', 'K0001', 'Andi', 'Luna', 'Laki-Laki', '2017-03-02'),
('M20200018', 'DanielM20200018', 'K0001', 'Daniel', 'Damon', 'Laki-laki', '2016-03-01'),
('M20200026', 'KarinaM20200026', 'K0001', 'Karina', 'Estes', 'Perempuan', '2016-06-16'),
('M20200036', 'NataliaM20200036', 'K0001', 'Natalia', 'Oliver', 'Perempuan', '2017-10-05'),
('M20200041', 'OmenM20200041', 'K0002', 'Omen', 'Andi', 'Laki-laki', '2016-03-27'),
('M20200053', 'NevanM20200053', 'K0002', 'Nevan', 'Karen', 'Laki-laki', '2017-01-23'),
('M20200061', 'JesseM20200061', 'K0002', 'Jesse', 'Dina', 'Perempuan', '2017-03-11'),
('M20200075', 'JadeM20200075', 'K0002', 'Jade', 'Udin', 'Perempuan', '2017-06-18'),
('M20200097', 'UdinM20200097', 'K20200052', 'Udin', 'Doni', 'Laki-laki', '2016-09-20'),
('M20200108', 'IreneM20200108', 'K20200052', 'Irene', 'Dimas', 'Perempuan', '2016-05-15'),
('M20200116', 'DodiM20200116', 'K20200052', 'Dodi', 'Thor', 'Laki-laki', '2016-02-09'),
('M20200123', 'UdinM20200123', 'K0001', 'Udin', 'Oliver', 'Laki-laki', '2017-02-02'),
('M20200136', 'GinaM20200136', 'K20200052', 'Gina', 'Andi', 'Perempuan', '2017-02-01'),
('M20200141', 'CarlaM20200141', 'K20200089', 'Carla', 'Damon', 'Perempuan', '2017-10-10'),
('M20210014', 'CarlaM20210014', 'K20200031', 'Carla', 'Blue', 'Perempuan', '2018-06-13'),
('M20210025', 'JasonM20210025', 'K20200031', 'Jason', 'James', 'Laki-laki', '2017-07-31'),
('M20210034', 'JohnM20210034', 'K20200031', 'John', 'Reedman', 'Laki-laki', '2018-10-29'),
('M20210046', 'MirandaM20210046', 'K20200031', 'Miranda', 'Flower', 'Perempuan', '2018-08-30'),
('M20210055', 'DonaldM20210055', 'K20200044', 'Donald', 'Cordle', 'Laki-laki', '2017-08-14'),
('M20210066', 'LilianaM20210066', 'K20200044', 'Liliana', 'Brim', 'Perempuan', '2017-06-27'),
('M20210077', 'PeteM20210077', 'K20200044', 'Pete', 'Andi', 'Laki-laki', '2018-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `ID_Pelajaran` varchar(100) NOT NULL,
  `Nama_Pelajaran` varchar(100) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`ID_Pelajaran`, `Nama_Pelajaran`, `Deskripsi`) VALUES
('PE001', 'Berhitung', 'Mempelajari Operasi Perhitungan'),
('PE002', 'Membaca', 'Mempelajari cara membaca tulisan'),
('PE003', 'Menggambar', 'Menggambar objek tertentu'),
('PE004', 'Menulis', 'Menulis Kata'),
('PE005', 'Math', '1+1=2');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `NIP_Pengajar` varchar(100) NOT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Nama_Pengajar` varchar(100) DEFAULT NULL,
  `Jenis_Kelamin` varchar(10) DEFAULT NULL,
  `NO_Telepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`NIP_Pengajar`, `Username`, `Nama_Pengajar`, `Jenis_Kelamin`, `NO_Telepon`) VALUES
('P001', 'gustiP001', 'Gusti', 'Laki-Laki', '812555738192'),
('P002', 'DianP002', 'Dian', 'Perempuan', '812532734192'),
('P003', 'BaimP003', 'Baim', 'Laki-laki', '089520433824'),
('P004', 'DaffaP004', 'Daffa', 'Perempuan', '084722409406'),
('P005', 'DhiaP005', 'Dhia', 'Perempuan', '082983177007'),
('P006', 'RenataP006', 'Renata', 'Perempuan', '082806188612'),
('P007', 'KevinP007', 'Kevin', 'Laki-laki', '083594534197'),
('P008', 'DyvanoP008', 'Dyvano', 'Laki-laki', '087025825588'),
('P009', 'DenitoP009', 'Denito', 'Laki-laki', '088457219562'),
('P010', 'KathP010', 'Kath', 'Perempuan', '085769288996'),
('P011', 'DoniP011', 'Doni', 'Laki-laki', '1234567890098');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `role`) VALUES
('AndiM0002', 'AndiM0002', 'Murid'),
('BaimP003', 'BaimP003', 'Pengajar'),
('CarlaM20200141', 'CarlaM20200141', 'Murid'),
('CarlaM20210014', 'CarlaM20210014', 'Murid'),
('DaffaP004', 'DaffaP004', 'Pengajar'),
('DanielM20200018', 'DanielM20200018', 'Murid'),
('DenitoP009', 'Denito12345', 'Pengajar'),
('DhiaP005', 'DhiaP005', 'Pengajar'),
('DianP002', 'DianP002', 'Pengajar'),
('DodiM20200116', 'DodiM20200116', 'Murid'),
('DonaldM20210055', 'DonaldM20210055', 'Murid'),
('DoniP011', 'DoniP011', 'Pengajar'),
('DyvanoP008', 'DyvanoP008', 'Pengajar'),
('GinaM20200136', 'GinaM20200136', 'Murid'),
('gustiP001', '123456', 'Pengajar'),
('IreneM20200108', 'IreneM20200108', 'Murid'),
('JadeM20200075', 'JadeM20200075', 'Murid'),
('JasonM20210025', 'JasonM20210025', 'Murid'),
('JesseM20200061', 'JesseM20200061', 'Murid'),
('JohnM20210034', 'JohnM20210034', 'Murid'),
('karenM0001', 'karenM0001', 'Murid'),
('KarinaM20200026', 'KarinaM20200026', 'Murid'),
('KathP010', 'KathP010', 'Pengajar'),
('KevinP007', 'KevinP007', 'Pengajar'),
('LilianaM20210066', 'LilianaM20210066', 'Murid'),
('MirandaM20210046', 'MirandaM20210046', 'Murid'),
('NataliaM20200036', 'NataliaM20200036', 'Murid'),
('NevanM20200053', 'NevanM20200053', 'Murid'),
('OmenM20200041', 'OmenM20200041', 'Murid'),
('PeteM20210077', 'PeteM20210077', 'Murid'),
('RenataP006', 'RenataP006', 'Pengajar'),
('UdinM20200097', 'UdinM20200097', 'Murid'),
('UdinM20200123', 'UdinM20200123', 'Murid'),
('vinchen996', 'Super123', 'Super Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_penghubung`
--
ALTER TABLE `buku_penghubung`
  ADD PRIMARY KEY (`ID_Buku`),
  ADD KEY `NIP_Walikelas` (`ID_Kelas`),
  ADD KEY `NIS_Murid` (`NIS_Murid`),
  ADD KEY `ID_Pelajaran` (`ID_Pelajaran`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`ID_Kelas`),
  ADD KEY `NIP_Pengajar` (`NIP_Pengajar`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`NIS_Murid`),
  ADD KEY `username` (`username`),
  ADD KEY `ID_Kelas` (`ID_Kelas`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`ID_Pelajaran`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`NIP_Pengajar`),
  ADD KEY `Username` (`Username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku_penghubung`
--
ALTER TABLE `buku_penghubung`
  ADD CONSTRAINT `buku_penghubung_ibfk_2` FOREIGN KEY (`NIS_Murid`) REFERENCES `murid` (`NIS_Murid`),
  ADD CONSTRAINT `buku_penghubung_ibfk_3` FOREIGN KEY (`ID_Pelajaran`) REFERENCES `pelajaran` (`ID_Pelajaran`),
  ADD CONSTRAINT `buku_penghubung_ibfk_4` FOREIGN KEY (`ID_Kelas`) REFERENCES `kelas` (`ID_Kelas`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`NIP_Pengajar`) REFERENCES `pengajar` (`NIP_Pengajar`);

--
-- Constraints for table `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `murid_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `murid_ibfk_2` FOREIGN KEY (`ID_Kelas`) REFERENCES `kelas` (`ID_Kelas`);

--
-- Constraints for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD CONSTRAINT `pengajar_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
