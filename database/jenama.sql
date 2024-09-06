-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2024 pada 18.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jenama`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detailbarang`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detailbarang` (
`kd_barang` varchar(7)
,`nama_barang` varchar(40)
,`kd_merek` varchar(7)
,`kd_distributor` varchar(7)
,`tanggal_masuk` date
,`harga_barang` int(7)
,`stok_barang` int(4)
,`gambar` varchar(255)
,`keterangan` varchar(200)
,`merek` varchar(30)
,`foto_merek` varchar(50)
,`nama_distributor` varchar(40)
,`no_telp` varchar(13)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `detailtransaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `detailtransaksi` (
`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`kd_barang` varchar(11)
,`jumlah` int(4)
,`sub_total` int(8)
,`nama_barang` varchar(40)
,`harga_barang` int(7)
,`jumlah_beli` int(4)
,`total_harga` int(8)
,`tanggal_beli` date
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_barang`
--

CREATE TABLE `table_barang` (
  `kd_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `kd_merek` varchar(7) NOT NULL,
  `kd_distributor` varchar(7) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_barang` int(7) NOT NULL,
  `stok_barang` int(4) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_barang`
--

INSERT INTO `table_barang` (`kd_barang`, `nama_barang`, `kd_merek`, `kd_distributor`, `tanggal_masuk`, `harga_barang`, `stok_barang`, `gambar`, `keterangan`) VALUES
('BR001', 'Nutrisari', 'ME002', 'DS002', '2024-09-04', 1500, 0, '1537785469748.jpg', 'Tersedia'),
('BR002', 'Ayam Geprek', 'ME001', 'DS002', '2024-09-04', 500, 68, '1725457134345.jpg', 'Tersedia'),
('BR003', 'americano coffee', 'ME003', 'DS002', '2024-09-04', 2500, 14, '1725457201563.jpeg', 'Tersedia'),
('BR004', 'Es Campur', 'ME002', 'DS001', '2024-09-04', 500, 5, '1725457365586.jpeg', 'Tersedia'),
('BR005', 'Kentang Goreng', 'ME006', 'DS003', '2024-09-04', 200, 2, '1725457428163.jpeg', 'poster terbaru'),
('BR006', ' Espresso Roast', 'ME003', 'DS002', '2024-09-04', 30001, 63, '1725453980103.jpg', 'Espreso adalah jenis kopi yang dihasilkan dengan mengekstraksi biji kopi yang sudah digiling dengan menyemburkan air panas di bawah tekanan tinggi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_distributor`
--

CREATE TABLE `table_distributor` (
  `kd_distributor` varchar(7) NOT NULL,
  `nama_distributor` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_distributor`
--

INSERT INTO `table_distributor` (`kd_distributor`, `nama_distributor`, `alamat`, `no_telp`) VALUES
('DS001', 'Cahyono', 'Tajur Bogor', '081288819999'),
('DS002', 'Susanti', 'Bogor', '083812991999'),
('DS003', 'Rifaldy', 'Sumedang', '08965502900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_merek`
--

CREATE TABLE `table_merek` (
  `kd_merek` varchar(7) NOT NULL,
  `merek` varchar(30) NOT NULL,
  `foto_merek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_merek`
--

INSERT INTO `table_merek` (`kd_merek`, `merek`, `foto_merek`) VALUES
('ME001', 'Makanan', '1725594714493.jpg'),
('ME002', 'Minuman', '172559477666.jpeg'),
('ME003', 'Kopi', '1725594814723.jpg'),
('ME004', 'Camilan', '1725594855302.jpeg'),
('ME005', 'Makan Malam', '1725594896659.jpg'),
('ME006', 'Sarapan', '1725594932257.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pretransaksi`
--

CREATE TABLE `table_pretransaksi` (
  `kd_pretransaksi` varchar(7) NOT NULL,
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_barang` varchar(11) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `sub_total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_pretransaksi`
--

INSERT INTO `table_pretransaksi` (`kd_pretransaksi`, `kd_transaksi`, `kd_barang`, `jumlah`, `sub_total`) VALUES
('AN001', 'TR001', 'BR001', 2, 3000),
('AN002', 'TR001', 'BR002', 6, 1500),
('AN003', 'TR002', 'BR003', 2, 5000),
('AN004', 'TR002', 'BR002', 2, 1000),
('AN005', 'TR003', 'BR002', 2, 1000),
('AN006', 'TR003', 'BR003', 2, 5000),
('AN007', 'TR004', 'BR001', 9, 10500),
('AN008', 'TR005', 'BR002', 5, 2500),
('AN009', 'TR006', 'BR001', 32, 9000),
('AN010', 'TR006', 'BR003', 46, 57500),
('AN012', 'TR007', 'BR001', 1, 1500),
('AN013', 'TR007', 'BR002', 4, 1500),
('AN014', 'TR008', 'BR001', 5, 3000),
('AN015', 'TR008', 'BR002', 5, 1500),
('AN016', 'TR009', 'BR003', 2, 5000),
('AN017', 'TR010', 'BR002', 3, 1500),
('AN018', 'TR011', 'BR004', 2, 1000),
('AN019', 'TR012', 'BR001', 1, 1500),
('AN020', 'TR012', 'BR004', 3, 1500),
('AN021', 'TR013', 'BR003', 4, 7500),
('AN022', 'TR013', 'BR006', 2, 60002),
('AN023', 'TR013', 'BR002', 5, 2500);

--
-- Trigger `table_pretransaksi`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah
WHERE kd_barang = OLD.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi` AFTER INSERT ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang - new.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_beli` AFTER UPDATE ON `table_pretransaksi` FOR EACH ROW UPDATE table_barang SET
stok_barang = stok_barang + OLD.jumlah - NEW.jumlah
WHERE kd_barang = new.kd_barang
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_transaksi`
--

CREATE TABLE `table_transaksi` (
  `kd_transaksi` varchar(7) NOT NULL,
  `kd_user` varchar(7) NOT NULL,
  `jumlah_beli` int(4) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_transaksi`
--

INSERT INTO `table_transaksi` (`kd_transaksi`, `kd_user`, `jumlah_beli`, `total_harga`, `tanggal_beli`) VALUES
('TR006', 'US003', 78, 66500, '2024-08-30'),
('TR007', 'US003', 5, 3000, '2024-08-30'),
('TR008', 'US003', 10, 4500, '2024-08-31'),
('TR009', 'US003', 2, 5000, '2024-08-31'),
('TR010', 'US003', 3, 1500, '2024-09-02'),
('TR011', 'US003', 2, 1000, '2024-09-03'),
('TR012', 'US003', 4, 3000, '2024-09-04'),
('TR013', 'US003', 11, 70002, '2024-09-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_user`
--

CREATE TABLE `table_user` (
  `kd_user` varchar(7) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `foto_user` varchar(50) NOT NULL,
  `level` enum('Admin','Kasir','Manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `table_user`
--

INSERT INTO `table_user` (`kd_user`, `nama_user`, `username`, `password`, `foto_user`, `level`) VALUES
('US001', 'Rifal-xbox', 'manager', 'bWFuYWdlcjEyMw==', '1538303665653.png', 'Manager'),
('US002', 'Insa', 'admin123', 'YWRtaW4xMjM=', '1725457587388.png', 'Admin'),
('US003', 'Rifaldy', 'kasir123', 'a2FzaXIxMjM=', '1537840377928.png', 'Kasir');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `transaksi` (
`kd_pretransaksi` varchar(7)
,`kd_transaksi` varchar(7)
,`kd_barang` varchar(11)
,`jumlah` int(4)
,`sub_total` int(8)
,`nama_barang` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `transaksi_terbaru`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `transaksi_terbaru` (
`kd_transaksi` varchar(7)
,`kd_user` varchar(7)
,`jumlah_beli` int(4)
,`total_harga` int(8)
,`tanggal_beli` date
,`nama_user` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `detailbarang`
--
DROP TABLE IF EXISTS `detailbarang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailbarang`  AS SELECT `table_barang`.`kd_barang` AS `kd_barang`, `table_barang`.`nama_barang` AS `nama_barang`, `table_barang`.`kd_merek` AS `kd_merek`, `table_barang`.`kd_distributor` AS `kd_distributor`, `table_barang`.`tanggal_masuk` AS `tanggal_masuk`, `table_barang`.`harga_barang` AS `harga_barang`, `table_barang`.`stok_barang` AS `stok_barang`, `table_barang`.`gambar` AS `gambar`, `table_barang`.`keterangan` AS `keterangan`, `table_merek`.`merek` AS `merek`, `table_merek`.`foto_merek` AS `foto_merek`, `table_distributor`.`nama_distributor` AS `nama_distributor`, `table_distributor`.`no_telp` AS `no_telp` FROM ((`table_barang` join `table_merek` on(`table_barang`.`kd_merek` = `table_merek`.`kd_merek`)) join `table_distributor` on(`table_barang`.`kd_distributor` = `table_distributor`.`kd_distributor`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `detailtransaksi`
--
DROP TABLE IF EXISTS `detailtransaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailtransaksi`  AS SELECT `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`, `table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`, `table_pretransaksi`.`kd_barang` AS `kd_barang`, `table_pretransaksi`.`jumlah` AS `jumlah`, `table_pretransaksi`.`sub_total` AS `sub_total`, `table_barang`.`nama_barang` AS `nama_barang`, `table_barang`.`harga_barang` AS `harga_barang`, `table_transaksi`.`jumlah_beli` AS `jumlah_beli`, `table_transaksi`.`total_harga` AS `total_harga`, `table_transaksi`.`tanggal_beli` AS `tanggal_beli` FROM ((`table_pretransaksi` join `table_barang` on(`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`)) join `table_transaksi` on(`table_transaksi`.`kd_transaksi` = `table_pretransaksi`.`kd_transaksi`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `transaksi`
--
DROP TABLE IF EXISTS `transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi`  AS SELECT `table_pretransaksi`.`kd_pretransaksi` AS `kd_pretransaksi`, `table_pretransaksi`.`kd_transaksi` AS `kd_transaksi`, `table_pretransaksi`.`kd_barang` AS `kd_barang`, `table_pretransaksi`.`jumlah` AS `jumlah`, `table_pretransaksi`.`sub_total` AS `sub_total`, `table_barang`.`nama_barang` AS `nama_barang` FROM (`table_pretransaksi` join `table_barang` on(`table_pretransaksi`.`kd_barang` = `table_barang`.`kd_barang`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `transaksi_terbaru`
--
DROP TABLE IF EXISTS `transaksi_terbaru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transaksi_terbaru`  AS SELECT `table_transaksi`.`kd_transaksi` AS `kd_transaksi`, `table_transaksi`.`kd_user` AS `kd_user`, `table_transaksi`.`jumlah_beli` AS `jumlah_beli`, `table_transaksi`.`total_harga` AS `total_harga`, `table_transaksi`.`tanggal_beli` AS `tanggal_beli`, `table_user`.`nama_user` AS `nama_user` FROM (`table_transaksi` join `table_user` on(`table_transaksi`.`kd_user` = `table_user`.`kd_user`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`kd_barang`),
  ADD KEY `kd_distributor` (`kd_distributor`),
  ADD KEY `kd_merek` (`kd_merek`);

--
-- Indeks untuk tabel `table_distributor`
--
ALTER TABLE `table_distributor`
  ADD PRIMARY KEY (`kd_distributor`);

--
-- Indeks untuk tabel `table_merek`
--
ALTER TABLE `table_merek`
  ADD PRIMARY KEY (`kd_merek`);

--
-- Indeks untuk tabel `table_pretransaksi`
--
ALTER TABLE `table_pretransaksi`
  ADD PRIMARY KEY (`kd_pretransaksi`);

--
-- Indeks untuk tabel `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD PRIMARY KEY (`kd_transaksi`),
  ADD KEY `kd_user` (`kd_user`);

--
-- Indeks untuk tabel `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_transaksi`
--
ALTER TABLE `table_transaksi`
  ADD CONSTRAINT `table_transaksi_ibfk_1` FOREIGN KEY (`kd_user`) REFERENCES `table_user` (`kd_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
