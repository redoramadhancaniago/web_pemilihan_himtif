-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2021 pada 04.57
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilihanbem`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `level` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
('admin', 'admin', 'admin'),
('pengawaskita', 'pengawaskita', 'pengawas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemilih`
--

CREATE TABLE `tb_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `ktp` varchar(16) NOT NULL,
  `nama_pemilih` varchar(64) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pass` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pemilih`
--

INSERT INTO `tb_pemilih` (`id_pemilih`, `ktp`, `nama_pemilih`, `alamat`, `pass`) VALUES
(10, '181011401640', 'ALEX SAPUTRA', '', '401640'),
(9, '181011401687', 'AHMAD MUZAKI', '', '401687'),
(8, '181011401669', 'AGIL MUHAMMAD', '', '401669'),
(11, '181011401677', 'ANDRIAN FAKHRIZAL', '', '401677'),
(12, '181011402675', 'ARWIN WINA SAPUTRA', '', '402675'),
(13, '181011401635', 'DIAS SUGI RAHAYU', '', '401635'),
(14, '181011402774', 'DILAN TRI OVANDI', '', '402774'),
(15, '181011401634', 'EKA RAHMAT MAULUDDIN', '', '401634'),
(33, '181011401702', 'TAOFIK HIDAYAT', '', '401702'),
(17, '181011400840', 'FAHMI KHUDORI', '', '400840'),
(18, '181011401680', 'HADI ISWANTO', '', '401680'),
(19, '181011401678', 'ISA HERMAWAN', '', '401678'),
(20, '181011401675', 'LUSTIAR TAMBUNAN', '', '401675'),
(21, '181011401691', 'M FIKRY WINARDY', '', '401691'),
(22, '181011401665', 'MOHAMMAD ALDIANSYAH', '', '401665'),
(23, '181011401652', 'NAHROWI', '', '401652'),
(24, '181011401699', 'NANDA NOVERDI RUZIKI', '', '401699'),
(25, '181011401684', 'RAFSHANZANI SUHADA', '', '401684'),
(26, '181011401894', 'RAHAYUNINGSIH', '', '401894'),
(27, '181011400218', 'REGY SATRIA RAMADHAN', '', '400218'),
(28, '181011401698', 'RENDI ARIF HERMAWAN', '', '401698'),
(29, '181011402453', 'REYNALDI TRI DEWANTORO', '', '402453'),
(30, '181011401650', 'RIKA NURSAFITRI', '', '401650'),
(31, '181011401700', 'RIKI FIRMANSYAH TANJUNG', '', '401700'),
(32, '181011401641', 'RIZKI GUSTIANTO SIDI', '', '401641'),
(34, '181011401636', 'WAHYUDI', '', '401636'),
(35, '181011400959', 'YASINTA DEWI', '', '400959'),
(36, '181011401649', 'ZISKA ANDRIS', '', '401649');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pencalon`
--

CREATE TABLE `tb_pencalon` (
  `id_pencalon` int(11) NOT NULL,
  `kode_pencalon` varchar(16) NOT NULL,
  `nama_pencalon` varchar(64) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pencalon`
--

INSERT INTO `tb_pencalon` (`id_pencalon`, `kode_pencalon`, `nama_pencalon`, `gambar`, `keterangan`) VALUES
(9, '1', 'Eko Suroso', '6029eko-removebg-preview.png', ''),
(10, '2', 'Redo Ramadhan Chaniago', '8321redo__2_-removebg-preview.png', ''),
(11, '3', 'Taufik Surya', '1611tofik-removebg-preview.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pilih`
--

CREATE TABLE `tb_pilih` (
  `ID` int(11) NOT NULL,
  `id_pencalon` int(16) NOT NULL,
  `id_pemilih` int(16) NOT NULL,
  `tanda_terima` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pilih`
--

INSERT INTO `tb_pilih` (`ID`, `id_pencalon`, `id_pemilih`, `tanda_terima`) VALUES
(4, 9, 10, '4TBMOXWGUY'),
(5, 10, 19, '5UGZSCOVQE'),
(6, 9, 31, '6NKHRCQPIE');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indeks untuk tabel `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  ADD PRIMARY KEY (`id_pemilih`);

--
-- Indeks untuk tabel `tb_pencalon`
--
ALTER TABLE `tb_pencalon`
  ADD PRIMARY KEY (`id_pencalon`,`kode_pencalon`);

--
-- Indeks untuk tabel `tb_pilih`
--
ALTER TABLE `tb_pilih`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_pencalon`
--
ALTER TABLE `tb_pencalon`
  MODIFY `id_pencalon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_pilih`
--
ALTER TABLE `tb_pilih`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
