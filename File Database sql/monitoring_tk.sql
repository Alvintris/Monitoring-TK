-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 09:05 AM
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
  `Status_Mcourse` int(11) DEFAULT NULL,
  `Status_Snack` int(11) DEFAULT NULL,
  `Absen` varchar(10) NOT NULL,
  `Grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_penghubung`
--

INSERT INTO `buku_penghubung` (`ID_Buku`, `ID_Kelas`, `NIS_Murid`, `ID_Pelajaran`, `tanggal`, `Evaluasi_OrangTua`, `Catatan_Guru`, `Main_Course`, `Snack`, `Status_Mcourse`, `Status_Snack`, `Absen`, `Grade`) VALUES
('BP20200119M0001K0001', 'K0001', 'M0001', 'PE001', '2020-01-19', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190018K0001', 'K0001', 'M20190018', 'PE001', '2020-01-19', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190024K0001', 'K0001', 'M20190024', 'PE001', '2020-01-19', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190033K0001', 'K0001', 'M20190033', 'PE001', '2020-01-19', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190049K0001', 'K0001', 'M20190049', 'PE001', '2020-01-19', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200120M0001K0001', 'K0001', 'M0001', 'PE004', '2020-01-20', NULL, 'Semoga lekas sembuh', 'Nasi Kuning', 'Kentang Goreng', -1, -1, 'Sakit', 'C'),
('BP20200120M20190018K0001', 'K0001', 'M20190018', 'PE004', '2020-01-20', NULL, 'Semoga besok sudah bisa masuk', 'Nasi Kuning', 'Kentang Goreng', -1, -1, 'Izin', 'C'),
('BP20200120M20190024K0001', 'K0001', 'M20190024', 'PE004', '2020-01-20', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Kuning', 'Kentang Goreng', 1, 1, 'Hadir', 'A'),
('BP20200120M20190033K0001', 'K0001', 'M20190033', 'PE004', '2020-01-20', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Kuning', 'Kentang Goreng', 1, 1, 'Hadir', 'A'),
('BP20200120M20190049K0001', 'K0001', 'M20190049', 'PE004', '2020-01-20', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Kuning', 'Kentang Goreng', 1, 1, 'Hadir', 'A'),
('BP20200121M0001K0001', 'K0001', 'M0001', 'PE003', '2020-01-21', NULL, 'Semoga besok sudah bisa masuk', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Izin', 'C'),
('BP20200121M20190018K0001', 'K0001', 'M20190018', 'PE003', '2020-01-21', NULL, 'Semoga lekas sembuh', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Sakit', 'C'),
('BP20200121M20190024K0001', 'K0001', 'M20190024', 'PE003', '2020-01-21', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Uduk', 'Sosis Goreng', 1, 1, 'Hadir', 'A'),
('BP20200121M20190033K0001', 'K0001', 'M20190033', 'PE003', '2020-01-21', NULL, 'Semoga besok sudah bisa masuk', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Izin', 'C'),
('BP20200121M20190049K0001', 'K0001', 'M20190049', 'PE003', '2020-01-21', NULL, 'Sudah Belajar Dengan Baik', 'Nasi Uduk', 'Sosis Goreng', 1, 1, 'Hadir', 'A'),
('BP20200119M20190058K20190031', 'K20190031', 'M20190058', 'PE004', '2020-01-19', NULL, 'Sudah belajar dengan baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190067K20190031', 'K20190031', 'M20190067', 'PE004', '2020-01-19', NULL, 'Sudah belajar dengan baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190077K20190031', 'K20190031', 'M20190077', 'PE004', '2020-01-19', NULL, 'Sudah belajar dengan baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190085K20190031', 'K20190031', 'M20190085', 'PE004', '2020-01-19', NULL, 'Sudah belajar dengan baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200119M20190092K20190031', 'K20190031', 'M20190092', 'PE004', '2020-01-19', NULL, 'Sudah belajar dengan baik', 'Nasi Goreng', 'Keripik Singkong', 1, 1, 'Hadir', 'A'),
('BP20200120M20190058K20190031', 'K20190031', 'M20190058', 'PE002', '2020-01-20', NULL, 'Sudah belajar dengan baik', 'Nasi Kuning', 'Kentang Goreng', 1, 1, 'Hadir', 'A'),
('BP20200120M20190067K20190031', 'K20190031', 'M20190067', 'PE002', '2020-01-20', NULL, 'Semoga lekas sembuh', 'Nasi Kuning', 'Kentang Goreng', -1, -1, 'Sakit', 'C'),
('BP20200120M20190077K20190031', 'K20190031', 'M20190077', 'PE002', '2020-01-20', NULL, 'Semoga lekas sembuh', 'Nasi Kuning', 'Kentang Goreng', -1, -1, 'Sakit', 'C'),
('BP20200120M20190085K20190031', 'K20190031', 'M20190085', 'PE002', '2020-01-20', NULL, 'Sudah belajar dengan baik', 'Nasi Kuning', 'Kentang Goreng', 1, 1, 'Hadir', 'A'),
('BP20200120M20190092K20190031', 'K20190031', 'M20190092', 'PE002', '2020-01-20', NULL, 'Kenapa hari ini tidak masuk?', 'Nasi Kuning', 'Kentang Goreng', -1, -1, 'Alpa', 'C'),
('BP20200121M20190058K20190031', 'K20190031', 'M20190058', 'PE005', '2020-01-21', NULL, 'Semoga lekas sembuh', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Sakit', 'C'),
('BP20200121M20190067K20190031', 'K20190031', 'M20190067', 'PE005', '2020-01-21', NULL, 'Sudah belajar dengan baik', 'Nasi Uduk', 'Sosis Goreng', 1, 1, 'Hadir', 'A'),
('BP20200121M20190077K20190031', 'K20190031', 'M20190077', 'PE005', '2020-01-21', NULL, 'Semoga lekas sembuh', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Sakit', 'C'),
('BP20200121M20190085K20190031', 'K20190031', 'M20190085', 'PE005', '2020-01-21', NULL, 'Semoga besok sudah bisa masuk', 'Nasi Uduk', 'Sosis Goreng', -1, -1, 'Izin', 'C'),
('BP20200121M20190092K20190031', 'K20190031', 'M20190092', 'PE005', '2020-01-21', NULL, 'Sudah belajar dengan baik', 'Nasi Uduk', 'Sosis Goreng', 1, 1, 'Hadir', 'A');

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
('K0001', 'P001', 'Nol Kecil', 'A-1', 2019),
('K20200025', 'P002', 'Nol Besar', 'A-2', 2020),
('K20190031', 'P003', 'Nol Kecil', 'B-1', 2019),
('K20200042', 'P004', 'Nol Besar', 'B-2', 2020),
('K20190059', 'P005', 'Nol Kecil', 'C-1', 2019),
('K20200065', 'P006', 'Nol Besar', 'C-2', 2020),
('K20190076', 'P007', 'Nol Kecil', 'D-1', 2019),
('K20200087', 'P008', 'Nol Besar', 'D-2', 2020),
('K20190092', 'P009', 'Nol Kecil', 'E-1', 2019),
('K20200105', 'P010', 'Nol Besar', 'E-2', 2020);

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
('M0001', 'ZalindraM0001', 'K0001', 'Zalindra', 'Lailasari', 'Perempuan', '2015-03-19'),
('M20190018', 'AyuM20190018', 'K0001', 'Ayu', 'Yuniar', 'Perempuan', '2015-02-25'),
('M20190024', 'MichelleM20190024', 'K0001', 'Michelle', 'Fujiati', 'Perempuan', '2015-08-15'),
('M20190033', 'KardiM20190033', 'K0001', 'Kardi', 'Natsir', 'Laki-laki', '2015-09-26'),
('M20190049', 'IkaM20190049', 'K0001', 'Ika', 'Uyainah', 'Perempuan', '2015-06-05'),
('M20200016', 'JarwaM20200016', 'K20200025', 'Jarwa', 'Nainggolan', 'Laki-laki', '2014-08-05'),
('M20200029', 'ZeldaM20200029', 'K20200025', 'Zelda', 'Wahyuni', 'Perempuan', '2014-06-01'),
('M20200034', 'UlvaM20200034', 'K20200025', 'Ulva', 'Susanti', 'Perempuan', '2014-11-27'),
('M20200049', 'JaswadiM20200049', 'K20200025', 'Jaswadi', 'Prasetya', 'Laki-laki', '2014-09-07'),
('M20200054', 'ZulfaM20200054', 'K20200025', 'Zulfa', 'Nasyiah', 'Perempuan', '2014-04-11'),
('M20190058', 'PrasetyaM20190058', 'K20190031', 'Prasetya', 'Sirait', 'Laki-laki', '2014-04-10'),
('M20190067', 'FarhunnisaM20190067', 'K20190031', 'Farhunnisa', 'Lestari', 'Perempuan', '2015-01-23'),
('M20190077', 'AjimatM20190077', 'K20190031', 'Ajimat', 'Pranowo', 'Laki-laki', '2016-08-05'),
('M20190085', 'YonoM20190085', 'K20190031', 'Yono', 'Tarihoran', 'Laki-laki', '2016-10-06'),
('M20190092', 'HafshahM20190092', 'K20190031', 'Hafshah', 'Zulaika', 'Perempuan', '2015-11-20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `murid_terbaik`
-- (See below for the actual view)
--
CREATE TABLE `murid_terbaik` (
`NIS_Murid` varchar(100)
,`Nama_Murid` varchar(100)
,`Total_A` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `murid_terburuk`
-- (See below for the actual view)
--
CREATE TABLE `murid_terburuk` (
`NIS_Murid` varchar(100)
,`Nama_Murid` varchar(100)
,`Total_C` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `murid_termuda_tertua`
-- (See below for the actual view)
--
CREATE TABLE `murid_termuda_tertua` (
`NIS_Murid` varchar(100)
,`username` varchar(100)
,`ID_Kelas` varchar(100)
,`Nama_Murid` varchar(100)
,`Nama_OrangTua` varchar(100)
,`Jenis_Kelamin` varchar(10)
,`Tanggal_Lahir` date
,`umur` int(6)
);

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
('P001', 'DianP001', 'Dian', 'Perempuan', '021 4214 6394'),
('P002', 'EkoP002', 'Eko', 'Laki-laki', '(+62) 867 795 551'),
('P003', 'CayadiP003', 'Cayadi', 'Laki-laki', '(+62) 625 4771 600'),
('P004', 'NoviP004', 'Novi', 'Perempuan', '(+62) 23 2948 6552'),
('P005', 'HariP005', 'Hari', 'Laki-laki', '(+62) 427 6157 9299'),
('P006', 'AgnesP006', 'Agnes', 'Perempuan', '(+62) 823 2956 7241'),
('P007', 'ZahraP007', 'Zahra', 'Perempuan', '(+62) 206 5963 7956'),
('P008', 'RaditP008', 'Radit', 'Laki-laki', '(+62) 844 0323 5756'),
('P009', 'VictoriaP009', 'Victoria', 'Perempuan', '(+62) 821 8611 5684'),
('P010', 'GambiraP010', 'Gambira', 'Laki-laki', '0336 2686 141');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_jk_pengajar`
-- (See below for the actual view)
--
CREATE TABLE `total_jk_pengajar` (
`Jenis_Kelamin` varchar(10)
,`Total` bigint(21)
);

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
('DimasP0031', 'DimasP0031', 'Pengajar'),
('RahmadM0009', 'RahmadM0009', 'Murid'),
('vinchen996', 'Super123', 'Super Admin'),
('EkoP002', 'EkoP002', 'Pengajar'),
('CayadiP003', 'CayadiP003', 'Pengajar'),
('NoviP004', 'NoviP004', 'Pengajar'),
('HariP005', 'HariP005', 'Pengajar'),
('AgnesP006', 'AgnesP006', 'Pengajar'),
('ZahraP007', 'ZahraP007', 'Pengajar'),
('RaditP008', 'RaditP008', 'Pengajar'),
('VictoriaP009', 'VictoriaP009', 'Pengajar'),
('GambiraP010', 'GambiraP010', 'Pengajar'),
('AyuM20190018', 'AyuM20190018', 'Murid'),
('MichelleM20190024', 'MichelleM20190024', 'Murid'),
('KardiM20190033', 'KardiM20190033', 'Murid'),
('IkaM20190049', 'IkaM20190049', 'Murid'),
('JarwaM20200016', 'JarwaM20200016', 'Murid'),
('ZeldaM20200029', 'ZeldaM20200029', 'Murid'),
('UlvaM20200034', 'UlvaM20200034', 'Murid'),
('JaswadiM20200049', 'JaswadiM20200049', 'Murid'),
('ZulfaM20200054', 'ZulfaM20200054', 'Murid'),
('PrasetyaM20190058', 'PrasetyaM20190058', 'Murid'),
('FarhunnisaM20190067', 'FarhunnisaM20190067', 'Murid'),
('AjimatM20190077', 'AjimatM20190077', 'Murid'),
('YonoM20190085', 'YonoM20190085', 'Murid'),
('HafshahM20190092', 'HafshahM20190092', 'Murid'),
('DianP001', 'DianP001', 'Pengajar');

-- --------------------------------------------------------

--
-- Structure for view `murid_terbaik`
--
DROP TABLE IF EXISTS `murid_terbaik`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `murid_terbaik`  AS SELECT `murid`.`NIS_Murid` AS `NIS_Murid`, `murid`.`Nama_Murid` AS `Nama_Murid`, count(`bk`.`Grade`) AS `Total_A` FROM (`buku_penghubung` `bk` join `murid` on(`murid`.`NIS_Murid` = `bk`.`NIS_Murid`)) WHERE `bk`.`Grade` = 'A' GROUP BY `murid`.`Nama_Murid` ORDER BY count(`bk`.`Grade`) DESC LIMIT 0, 11  ;

-- --------------------------------------------------------

--
-- Structure for view `murid_terburuk`
--
DROP TABLE IF EXISTS `murid_terburuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `murid_terburuk`  AS SELECT `murid`.`NIS_Murid` AS `NIS_Murid`, `murid`.`Nama_Murid` AS `Nama_Murid`, count(`bk`.`Grade`) AS `Total_C` FROM (`buku_penghubung` `bk` join `murid` on(`murid`.`NIS_Murid` = `bk`.`NIS_Murid`)) WHERE `bk`.`Grade` = 'C' GROUP BY `murid`.`Nama_Murid` ORDER BY count(`bk`.`Grade`) DESC LIMIT 0, 11  ;

-- --------------------------------------------------------

--
-- Structure for view `murid_termuda_tertua`
--
DROP TABLE IF EXISTS `murid_termuda_tertua`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `murid_termuda_tertua`  AS SELECT `murid`.`NIS_Murid` AS `NIS_Murid`, `murid`.`username` AS `username`, `murid`.`ID_Kelas` AS `ID_Kelas`, `murid`.`Nama_Murid` AS `Nama_Murid`, `murid`.`Nama_OrangTua` AS `Nama_OrangTua`, `murid`.`Jenis_Kelamin` AS `Jenis_Kelamin`, `murid`.`Tanggal_Lahir` AS `Tanggal_Lahir`, 2023 - year(`murid`.`Tanggal_Lahir`) AS `umur` FROM `murid` WHERE `murid`.`Tanggal_Lahir` = (select min(`murid`.`Tanggal_Lahir`) from `murid`) OR `murid`.`Tanggal_Lahir` = (select max(`murid`.`Tanggal_Lahir`) from `murid`)  ;

-- --------------------------------------------------------

--
-- Structure for view `total_jk_pengajar`
--
DROP TABLE IF EXISTS `total_jk_pengajar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_jk_pengajar`  AS SELECT `pengajar`.`Jenis_Kelamin` AS `Jenis_Kelamin`, count(0) AS `Total` FROM `pengajar` WHERE `pengajar`.`Jenis_Kelamin` = 'Laki-Laki' OR `pengajar`.`Jenis_Kelamin` = 'Perempuan' GROUP BY `pengajar`.`Jenis_Kelamin``Jenis_Kelamin`  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
