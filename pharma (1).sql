-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2020 pada 08.40
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharma`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_production`
--

CREATE TABLE `status_production` (
  `nobatch` varchar(15) NOT NULL,
  `NoPO` varchar(15) NOT NULL,
  `posisi` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_production`
--

INSERT INTO `status_production` (`nobatch`, `NoPO`, `posisi`, `status`, `date`) VALUES
('A00001', 'PO0001', 10, 1, '2020-09-04'),
('A00001', 'PO0001', 14, 2, '2020-09-08'),
('B00001', 'PO0002', 10, 1, '2020-09-04'),
('A00001', 'PO0001', 13, 3, '2020-09-11'),
('A00001', 'PO0001', 14, 4, '2020-09-15'),
('A00001', 'PO0001', 10, 5, '2020-09-17'),
('A00001', 'PO0001', 12, 6, '2020-09-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableapotek`
--

CREATE TABLE `tableapotek` (
  `idapotek` varchar(4) NOT NULL,
  `apotekname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `status` int(1) NOT NULL,
  `idaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tableapotek`
--

INSERT INTO `tableapotek` (`idapotek`, `apotekname`, `address`, `status`, `idaddress`) VALUES
('A1', 'Apotek Century ITC Permata Hijau', 'Grand ITC Permata Hijau Kantor Emerald No. 26, Jl. Raya Permata Hijau, Grogol Utara, Kebayoran Lama, RT.11/RW.10, Grogol Utara, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12210', 1, '177QbpjwmTeFRfkCdHmVkiZQH4WnMhYUPRS7jf'),
('2', 'K24 Pharmacy', 'Jl. Tanjung Duren Raya No.431B, RT.10/RW.2, Tj. Duren Sel., Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledelivery`
--

CREATE TABLE `tabledelivery` (
  `iddelivery` varchar(15) NOT NULL,
  `idexpedisi` varchar(15) NOT NULL,
  `iddeliveryorder` varchar(15) NOT NULL,
  `qty` int(8) NOT NULL,
  `dateofreceipt` date NOT NULL,
  `dateofdelivery` date NOT NULL,
  `dateofreceiptconsumen` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabledelivery`
--

INSERT INTO `tabledelivery` (`iddelivery`, `idexpedisi`, `iddeliveryorder`, `qty`, `dateofreceipt`, `dateofdelivery`, `dateofreceiptconsumen`, `status`) VALUES
('SE001', '1', 'DO001', 100, '2020-11-22', '0000-00-00', '0000-00-00', 1),
('SE002', '1', 'DO002', 1000, '0000-00-00', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledeliveryindustry`
--

CREATE TABLE `tabledeliveryindustry` (
  `iddelivery` varchar(15) NOT NULL,
  `idexpedisi` varchar(15) NOT NULL,
  `iddeliveryorder` varchar(15) NOT NULL,
  `qty` int(8) NOT NULL,
  `dateofreceipt` date NOT NULL,
  `dateofdelivery` date NOT NULL,
  `dateofreceiptconsumen` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabledeliveryindustry`
--

INSERT INTO `tabledeliveryindustry` (`iddelivery`, `idexpedisi`, `iddeliveryorder`, `qty`, `dateofreceipt`, `dateofdelivery`, `dateofreceiptconsumen`, `status`) VALUES
('SE001', '1', 'DO001', 2000, '2020-11-19', '2020-11-22', '0000-00-00', 3),
('SE002', '1', 'DO002', 2000, '2020-11-22', '2020-11-22', '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledeliveryorder`
--

CREATE TABLE `tabledeliveryorder` (
  `iddeliveryorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofcreate` date NOT NULL,
  `dateofQC` date NOT NULL,
  `dateofdelivery` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idexpedisi` int(1) NOT NULL,
  `dateofapotek` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabledeliveryorder`
--

INSERT INTO `tabledeliveryorder` (`iddeliveryorder`, `idorder`, `nobatch`, `idcompany`, `dateofcreate`, `dateofQC`, `dateofdelivery`, `qty`, `idexpedisi`, `dateofapotek`, `status`) VALUES
('DO001', 'PO001', '', 'D1', '2020-11-22', '2020-11-22', '2020-11-22', '100', 1, '0000-00-00', 3),
('DO002', 'PO002', '', 'D1', '2020-11-22', '2020-11-22', '2020-11-22', '1000', 1, '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledeliveryorderindustry`
--

CREATE TABLE `tabledeliveryorderindustry` (
  `iddeliveryorder` varchar(25) NOT NULL,
  `idorder` varchar(15) NOT NULL,
  `idcompany` varchar(15) NOT NULL,
  `nobatch` varchar(15) NOT NULL,
  `noreg` varchar(50) NOT NULL,
  `dateofcreate` date NOT NULL,
  `dateofdelivery` date NOT NULL,
  `qty` int(11) NOT NULL,
  `idexpedisi` varchar(5) NOT NULL,
  `dateofpbf` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabledeliveryorderindustry`
--

INSERT INTO `tabledeliveryorderindustry` (`iddeliveryorder`, `idorder`, `idcompany`, `nobatch`, `noreg`, `dateofcreate`, `dateofdelivery`, `qty`, `idexpedisi`, `dateofpbf`, `status`) VALUES
('DO001', 'PO001', 'D1', 'A00001', 'DKL9521618017B1', '2020-11-19', '2020-11-19', 2000, '1', '0000-00-00', 2),
('DO002', 'PO002', 'D1', 'A00001', 'DKL9521618017B1', '2020-11-22', '2020-11-22', 2000, '1', '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledetailpopbf`
--

CREATE TABLE `tabledetailpopbf` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofreceipt` date NOT NULL,
  `dari` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabledrug`
--

CREATE TABLE `tabledrug` (
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosageform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `composition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `packaging` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idregistrant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idproduced` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dateofissue` date NOT NULL,
  `validityperiod` date NOT NULL,
  `classofdrugs` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabledrug`
--

INSERT INTO `tabledrug` (`noreg`, `productid`, `productname`, `dosageform`, `composition`, `brand`, `packaging`, `idregistrant`, `idproduced`, `Dateofissue`, `validityperiod`, `classofdrugs`, `status`) VALUES
('DKL9521618017B1', 'RE000001', 'RECHOL 10', 'TABLET SALUT SELAPUT; 10 MG', 'SIMVASTATIN', '-', 'DUS, 3 BLISTER @ 10 TABLET SALUT SELAPUT', 'PHAROS INDONESIA', 'PRIMA MEDIKA LABORATORIES', '2020-07-27', '2021-09-12', 'Obat', 1),
('DKL1021638529A1', 'ME000001', 'MERTUS', 'KRIM; 21.5 MG', 'MUPIROCIN CALCIUM', '-', 'DUS, 1 TUBE @ 10 G', 'PHAROS INDONESIA', 'PHAROS INDONESIA', '2020-07-07', '2025-07-07', 'Obat', 1),
('', 'OZ0001', 'OZEN', 'TABLET SALUT SELAPUT; 10 MG', 'CETIRIZINE DIHYDROCHLORIDE', '-', 'DUS, 3 BLISTER @ 10 TABLET SALUT SELAPUT', 'PHAROS INDONESIA', 'PRIMA MEDIKA LABORATORIES', '2020-06-06', '2020-07-31', 'Obat', 0),
('DBL7821628101A1', 'POL0001', 'POLYSILANE JUNIOR', 'KAPSUL; 40 MG', 'DIMETICONE', '-', 'DUS, 1 BOTOL @ 60 KAPSUL', 'PT PHAROS INDONESIA', 'PT PHAROS INDONESIA', '2020-03-11', '2021-11-28', 'Obat', 1),
('DBL7821628101A1', 'POL0001', 'POLYSILANE JUNIOR', 'KAPSUL; 40 MG', 'DIMETICONE', '-', 'DUS, 1 BOTOL @ 60 KAPSUL', 'PT PHAROS INDONESIA', 'PT PHAROS INDONESIA', '2020-03-11', '2021-11-28', 'Obat', 1),
('DBL7821624233A1', 'POLYS001', 'POLYSILANE', 'SUSPENSI; 200/200/80 PER 5 ML', '- ALUMINIUM HYDROXIDE\r\n- MAGNESIUM HYDROXIDE\r\n- SIMETHICONE', '-', 'BOTOL PLASTIK @ 180 ML', 'PT PHAROS INDONESIA', 'FARATU', '2020-01-10', '2024-12-10', 'Obat', 1),
('DKL1321643082A1', 'VO0001', 'VOMARIN', 'TABLET CEPAT LARUT; 10,000 MG', 'DOMPERIDONE', '-', 'DUS, 5 BLISTER @ 10 TABLET CEPAT LARUT', 'PT PHAROS INDONESIA', 'PT PHAROS INDONESIA', '2020-01-19', '2025-01-19', 'Obat', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableexpedisi`
--

CREATE TABLE `tableexpedisi` (
  `idexpedisi` int(1) NOT NULL,
  `expedisiname` varchar(40) NOT NULL,
  `Alamat` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tableexpedisi`
--

INSERT INTO `tableexpedisi` (`idexpedisi`, `expedisiname`, `Alamat`, `status`) VALUES
(1, 'PT. Lestari Jaya Raya', ' Ruko Taman Modern, Blok R5 No.3-5, RT.1/RW.6, Ujung Menteng, Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13960', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablehospital`
--

CREATE TABLE `tablehospital` (
  `idrs` varchar(15) NOT NULL,
  `hospitalname` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `idaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tablehospital`
--

INSERT INTO `tablehospital` (`idrs`, `hospitalname`, `address`, `status`, `idaddress`) VALUES
('H1', 'Hospital1', 'Jakarta', 1, '1YGZMFLKi7D5uS9AC94m5R14fzJV6enexcLUpt'),
('H2', 'Hospital2', 'jakarta', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableindustry`
--

CREATE TABLE `tableindustry` (
  `idindustry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industryname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tableindustry`
--

INSERT INTO `tableindustry` (`idindustry`, `industryname`, `address`, `propinsi`, `city`, `email`, `notelp`, `idaddress`) VALUES
('I1', 'PT.Pharos Indonesia', 'Permata Hijau', 'Jakarta', 'Jakarta barat', 'Pharos@gmail.com', '1234566', '1Fcx6N5xvtEXj9NR1PZB2WngNJCMrvez4eSNGL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableorderall`
--

CREATE TABLE `tableorderall` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablepbf`
--

CREATE TABLE `tablepbf` (
  `idpbf` varchar(25) NOT NULL,
  `NamaPBF` varchar(50) NOT NULL,
  `Alamat` text NOT NULL,
  `status` int(1) NOT NULL,
  `idaddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tablepbf`
--

INSERT INTO `tablepbf` (`idpbf`, `NamaPBF`, `Alamat`, `status`, `idaddress`) VALUES
('D1', 'PT. Century Franchisindo Utama', 'Jl. Limo No.45, RT.10/RW.9, Grogol Sel., Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220', 1, '1BjG8j4eXs1tNnixGfGUHogyAcjnd9aXuJTZRX'),
('2', 'PT. Anugerah Pharmindo Lestari', 'Tj. Duren Sel., Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablepo`
--

CREATE TABLE `tablepo` (
  `NoPO` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_admin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daterequest` date NOT NULL,
  `status` int(1) NOT NULL,
  `dateconfirmation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablepoindustry`
--

CREATE TABLE `tablepoindustry` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idindustry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpbf` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tablepoindustry`
--

INSERT INTO `tablepoindustry` (`idorder`, `noreg`, `idindustry`, `idpbf`, `orderdate`, `dateofreceipt`, `qty`, `status`) VALUES
('PO001', 'DKL9521618017B1', 'i1', 'D1', '2020-11-19', '2020-11-19', '2000', 2),
('PO002', 'DKL9521618017B1', 'i1', 'D1', '2020-11-22', '2020-11-22', '2000', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablepopbf`
--

CREATE TABLE `tablepopbf` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idindustry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idpbf` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameorder` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tablepopbf`
--

INSERT INTO `tablepopbf` (`idorder`, `noreg`, `idindustry`, `idpbf`, `nameorder`, `orderdate`, `dateofreceipt`, `qty`, `status`) VALUES
('PO001', 'DKL9521618017B1', 'PHAROS INDONESIA', 'D1', 'A1', '2020-11-22', '2020-11-22', '100', 2),
('PO002', 'DKL9521618017B1', 'PHAROS INDONESIA', 'D1', 'A1', '2020-11-22', '2020-11-22', '1000', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableproduction`
--

CREATE TABLE `tableproduction` (
  `nobatch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoPO` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productiondate` date NOT NULL,
  `expiredate` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_admin` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daterequest` date NOT NULL,
  `datefinish` date NOT NULL,
  `status` int(1) NOT NULL,
  `Statusmultichain` int(1) NOT NULL,
  `datetransfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tableproduction`
--

INSERT INTO `tableproduction` (`nobatch`, `noreg`, `NoPO`, `productiondate`, `expiredate`, `qty`, `id_admin`, `daterequest`, `datefinish`, `status`, `Statusmultichain`, `datetransfer`) VALUES
('A00001', 'DKL9521618017B1', 'PO0001', '2020-09-04', '2022-01-31', '10000', '9', '2020-09-04', '2020-09-18', 6, 0, '0000-00-00'),
('B00001', 'DKL1021638529A1', 'PO0002', '2020-09-04', '2021-08-06', '20000', '9', '2020-09-04', '0000-00-00', 0, 0, '0000-00-00'),
('C00001', 'DKL1321643082A1', 'PO0003', '2020-09-02', '2021-09-02', '20000', '9', '2020-09-02', '0000-00-00', 0, 0, '0000-00-00'),
('D00001', 'DBL7821628101A1', 'PO0004', '2020-09-07', '2021-09-07', '5000', '12', '2020-09-05', '0000-00-00', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tableregis`
--

CREATE TABLE `tableregis` (
  `noreg` varchar(15) NOT NULL,
  `productid` varchar(8) NOT NULL,
  `dateregis` date NOT NULL,
  `datecomfirm` date NOT NULL,
  `status` int(2) NOT NULL,
  `Statusmultichain` int(11) NOT NULL,
  `datetransfer` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tableregis`
--

INSERT INTO `tableregis` (`noreg`, `productid`, `dateregis`, `datecomfirm`, `status`, `Statusmultichain`, `datetransfer`) VALUES
('DKL9521618017B1', 'RE000001', '2020-06-27', '2020-07-27', 1, 1, '2020-07-28'),
('DKL1021638529A1', 'ME000001', '2020-06-07', '2020-07-07', 1, 0, ''),
('DKL1321643082A1', 'VO0001', '2019-12-19', '2020-01-19', 1, 0, ''),
('DBL7821628101A1', 'POL0001', '2020-02-11', '2020-03-11', 1, 0, ''),
('DBL7821624233A1', 'POLYS001', '2019-11-10', '2020-01-10', 1, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablestockapotik`
--

CREATE TABLE `tablestockapotik` (
  `idstock` varchar(50) NOT NULL,
  `idorder` varchar(50) NOT NULL,
  `iddeliveryorder` varchar(50) NOT NULL,
  `iddelivery` varchar(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `dateofreceive` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablestockindustri`
--

CREATE TABLE `tablestockindustri` (
  `NoPO` varchar(50) NOT NULL,
  `nobatch` varchar(50) NOT NULL,
  `noreg` varchar(50) NOT NULL,
  `datereceive` date NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tablestockpbf`
--

CREATE TABLE `tablestockpbf` (
  `idstock` varchar(50) NOT NULL,
  `idorder` varchar(50) NOT NULL,
  `iddeliveryorder` varchar(50) NOT NULL,
  `iddelivery` varchar(50) NOT NULL,
  `nobatch` varchar(25) NOT NULL,
  `qty` int(10) NOT NULL,
  `dateofreceive` date NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tablestockpbf`
--

INSERT INTO `tablestockpbf` (`idstock`, `idorder`, `iddeliveryorder`, `iddelivery`, `nobatch`, `qty`, `dateofreceive`, `status`) VALUES
('ST001', 'PO002', 'DO002', 'SE002', 'A00001', 2000, '2020-11-22', 0),
('ST002', 'PO001', 'DO001', 'SE001', 'A00001', 2000, '2020-11-22', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabletransactall`
--

CREATE TABLE `tabletransactall` (
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddeliveryorder` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `froms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabletransactall`
--

INSERT INTO `tabletransactall` (`nobatch`, `noreg`, `idorder`, `iddeliveryorder`, `dateofreceipt`, `qty`, `froms`, `tos`, `level`) VALUES
('A00001', 'DKL9521618017B1', 'PO001', 'DO001', '0000-00-00', '2000', '1Fcx6N5xvtEXj9NR1PZB2WngNJCMrvez4eSNGL', '1BjG8j4eXs1tNnixGfGUHogyAcjnd9aXuJTZRX', 0),
('A00001', 'DKL9521618017B1', 'PO002', 'DO002', '0000-00-00', '2000', '1Fcx6N5xvtEXj9NR1PZB2WngNJCMrvez4eSNGL', '1BjG8j4eXs1tNnixGfGUHogyAcjnd9aXuJTZRX', 0),
('', '', 'PO002', 'DO002', '0000-00-00', '1000', '', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabletransactallindustry`
--

CREATE TABLE `tabletransactallindustry` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddeliveryorder` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofcreate` date NOT NULL,
  `dateofdelivery` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressindustry` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresspbf` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabletransactallpbf`
--

CREATE TABLE `tabletransactallpbf` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddeliveryorder` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addresspbf` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressretail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabletransactallretail`
--

CREATE TABLE `tabletransactallretail` (
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(2) NOT NULL,
  `nama_admin` varchar(25) NOT NULL,
  `email_admin` varchar(40) NOT NULL,
  `pass_admin` varchar(40) NOT NULL,
  `level_admin` enum('Admin','Super Admin') NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `email_admin`, `pass_admin`, `level_admin`, `Address`) VALUES
(1, 'admin', 'admin@yahoo.com', 'admin', 'Admin', ''),
(3, 'Supplier', 'Supplier@yahoo.com', 'Supplier', 'Admin', '1ahuJZx4pWZMMYNDPZyy2usDokgGhr7pybb3wS'),
(4, 'Wholesaler ', 'Wholesaler@yahoo.com', 'Wholesaler ', 'Admin', '1TCZSt6D5vZ3e6vMiaSsMLZ39umwRGJVbj7U2Z'),
(5, 'Drug Store', 'Drug Store@yahoo.com', 'Drug Store', 'Admin', '177QbpjwmTeFRfkCdHmVkiZQH4WnMhYUPRS7jf'),
(6, 'Wholesaler', 'Wholesaler@yahoo.com', 'Wholesaler', '', '1TCZSt6D5vZ3e6vMiaSsMLZ39umwRGJVbj7U2Z'),
(5, 'Drug Store', 'Drug Store@yahoo.com', 'Drug Store', 'Admin', '177QbpjwmTeFRfkCdHmVkiZQH4WnMhYUPRS7jf'),
(6, 'Hospital', 'Hospital@yahoo.com', 'Wholesaler', '', '1YGZMFLKi7D5uS9AC94m5R14fzJV6enexcLUpt'),
(7, 'Consumen ', 'Consumen@yahoo.com', 'Consumen ', 'Admin', '1GKkwSFs92174KZef37DibNx5b8ee4Wix1vhZS'),
(8, 'Pharmaceutical', 'Pharmaceutical@yahoo.com', 'Pharmaceutical', 'Admin', '1N1Jcv3TsUSuYWkADUtNKVeigdrpUKititqtab'),
(9, 'PPIC', 'PPIC@yahoo.com', 'PPIC ', 'Admin', '15dKNuZjFj6UGH94VmCkDqpv7dXMvM7rimtmBD'),
(10, 'BPO ', 'BPO@yahoo.com', 'BPO ', 'Admin', '1BWmKxVGB8kdcrjumSuLqRdtksyUTZPXtdFK5i'),
(11, 'R&D', 'R&D@yahoo.com', 'R&D', 'Admin', '1DM5Mwxyw69Gkrphwx13h9gLwzTwmwHezMqQLJ'),
(12, 'GOJ', 'GOJ@yahoo.com', 'GOJ', 'Admin', '1KgRDqe8MB81LGd2X1H8BrhpZq1iRXWaDPdesi'),
(13, 'PO', 'PO@yahoo.com', 'PO', 'Admin', '1Qu4CN5nuokxCFSRCMKSEW888jk8Ncpftj4Fr7'),
(14, 'QC/QA', 'QC/QA@yahoo.com', 'QC/QA', 'Admin', '14TWwJyYWKUJ7jHjvZ82NRWomeNB1nqraTbf5u'),
(2, 'superadmin', 'superadmin@yahoo.com', 'superadmin', 'Super Admin', 'a'),
(15, 'QC/QA', 'QC/QA1@yahoo.com', 'QC/QA', 'Admin', 'xxxx'),
(16, 'Logistik', 'Logistik@yahoo.com', 'Logistik', 'Admin', 'xxxx'),
(17, 'Marketing', 'Marketing@yahoo.com', 'Marketing', 'Admin', 'xxxx');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
