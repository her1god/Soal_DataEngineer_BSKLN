-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2024 at 07:17 AM
-- Server version: 8.0.36-2ubuntu3
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soal_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `Negara`
--

CREATE TABLE `Negara` (
  `Kode_Negara` char(3) NOT NULL,
  `Negara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Negara`
--

INSERT INTO `Negara` (`Kode_Negara`, `Negara`) VALUES
('IDN', 'INDONESIA'),
('MYS', 'MALAYSIA'),
('THA', 'THAILAND');

-- --------------------------------------------------------

--
-- Table structure for table `Perdagangan`
--

CREATE TABLE `Perdagangan` (
  `ID_Trx` varchar(10) NOT NULL,
  `Kode_Negara` char(3) NOT NULL,
  `HsCode` varchar(15) NOT NULL,
  `Sektor` varchar(50) DEFAULT NULL,
  `Bulan` int DEFAULT NULL,
  `Tahun` int DEFAULT NULL,
  `Nilai` decimal(15,2) DEFAULT NULL
) ;

--
-- Dumping data for table `Perdagangan`
--

INSERT INTO `Perdagangan` (`ID_Trx`, `Kode_Negara`, `HsCode`, `Sektor`, `Bulan`, `Tahun`, `Nilai`) VALUES
('T001', 'IDN', '0301.11.92', 'PERIKANAN', 2, 2024, 1500.00),
('T002', 'IDN', '902.1', 'PERKEBUNAN', 2, 2024, 1100.00),
('T003', 'MYS', '301.11', 'PERIKANAN', 3, 2024, 900.00),
('T004', 'MYS', '302.36.00', 'PERIKANAN', 3, 2024, 1600.00),
('T005', 'THA', '902.3', 'PERKEBUNAN', 4, 2024, 1300.00),
('T006', 'THA', '902.1', 'PERKEBUNAN', 5, 2024, 1350.00),
('T007', 'IDN', '901.11.20', 'PERKEBUNAN', 5, 2024, 1250.00);

-- --------------------------------------------------------

--
-- Table structure for table `Produk`
--

CREATE TABLE `Produk` (
  `HsCode` varchar(15) NOT NULL,
  `Label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Produk`
--

INSERT INTO `Produk` (`HsCode`, `Label`) VALUES
('0301.11.92', 'IKAN MAS KOKI'),
('301.11', 'IKAN AIR TAWAR'),
('302.36.00', 'TUNA SIRIP BIRU SELATAN'),
('901.11.20', 'ARABIKA'),
('902.1', 'TEH HIJAU'),
('902.3', 'TEH HITAM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Negara`
--
ALTER TABLE `Negara`
  ADD PRIMARY KEY (`Kode_Negara`);

--
-- Indexes for table `Perdagangan`
--
ALTER TABLE `Perdagangan`
  ADD PRIMARY KEY (`ID_Trx`),
  ADD KEY `Kode_Negara` (`Kode_Negara`),
  ADD KEY `HsCode` (`HsCode`);

--
-- Indexes for table `Produk`
--
ALTER TABLE `Produk`
  ADD PRIMARY KEY (`HsCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Perdagangan`
--
ALTER TABLE `Perdagangan`
  ADD CONSTRAINT `Perdagangan_ibfk_1` FOREIGN KEY (`Kode_Negara`) REFERENCES `Negara` (`Kode_Negara`),
  ADD CONSTRAINT `Perdagangan_ibfk_2` FOREIGN KEY (`HsCode`) REFERENCES `Produk` (`HsCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
