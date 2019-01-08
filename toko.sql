-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Des 2018 pada 16.36
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(11) NOT NULL,
  `harga_jual` varchar(10) NOT NULL,
  `jml_beli` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `harga_jual`, `jml_beli`) VALUES
('B01', 'Tv Panasonic 31\'inc', 'Televisi', '1500000', '3'),
('B02', 'Speaker Robot', 'Speaker', '120000', '1'),
('B03', 'Kipas Miyako', 'Kipas Angin', '240000', '2'),
('B05', 'Rinso', 'Detergen', '6500', '2'),
('B06', 'TV LED Sumsang', 'Televisi', '3000000', '5'),
('B09', 'Zinc', 'Sampo', '6000', '1'),
('B10', 'Ciptaden', 'Sikat Gigi', '3500', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `kode_cus` varchar(6) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kode_cus`, `nama`) VALUES
('C001', 'Reza'),
('C002', 'Agung'),
('C003', 'Rika'),
('C004', 'Mentari'),
('C005', 'Yogi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `no_jual` int(4) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `kode_cus` varchar(6) NOT NULL,
  `total_harga` int(7) NOT NULL,
  `total_kem` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`no_jual`, `kode_barang`, `kode_cus`, `total_harga`, `total_kem`) VALUES
(1, 'B01', 'C002', 0, 0),
(2, 'B03', 'C003', 0, 0),
(3, 'B02', 'C001', 0, 0),
(4, 'B01', 'C003', 0, 0),
(5, 'B01', 'C004', 0, 0),
(6, 'B10', 'C002', 0, 0),
(7, 'B09', 'C005', 0, 0),
(8, 'B02', 'C001', 0, 0),
(9, 'B05', 'C002', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_cus`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`no_jual`),
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `kode_cus` (`kode_cus`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jual`
--
ALTER TABLE `jual`
  MODIFY `no_jual` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD CONSTRAINT `jual_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`),
  ADD CONSTRAINT `jual_ibfk_2` FOREIGN KEY (`kode_cus`) REFERENCES `customer` (`kode_cus`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
