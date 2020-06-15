-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 04:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warteg`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_makanan` int(11) NOT NULL,
  `nama_makanan` varchar(120) CHARACTER SET latin1 NOT NULL,
  `keterangan` varchar(5000) CHARACTER SET latin1 NOT NULL,
  `kategori` varchar(60) CHARACTER SET latin1 NOT NULL,
  `harga` int(11) NOT NULL,
  `persediaan` int(4) NOT NULL,
  `gambar` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_makanan`, `nama_makanan`, `keterangan`, `kategori`, `harga`, `persediaan`, `gambar`) VALUES
(1, 'Sayur Asem', 'masakan sejenis sayur yang khas Indonesia. Ada banyak variasi lokal sayur asam seperti sayur asam Jakarta (variasi dari orang Betawi di Jakarta), sayur asam kangkung (variasi yang menggunakan kangkung), dan sayur asam ikan asin.', 'Makanan Kuah', 10000, 5, 'sayurasem.jpg'),
(2, 'Sayur bayem', 'Bayam (Amaranthus)adalah tumbuhan yang biasa ditanam untuk dikonsumsi daunnya sebagai sayuran hijau. Tumbuhan ini berasal dari Amerika tropik namun sekarang tersebar ke seluruh dunia. Tumbuhan ini dikenal sebagai sayuran sumber zat besi yang penting bagi tubuh.', 'Makanan Kuah', 10000, 10, 'bayem.jpg'),
(3, 'Soto', 'Soto adalah makanan khas Indonesia seperti sop yang terbuat dari kaldu daging dan sayuran. Daging yang paling sering digunakan adalah daging sapi dan ayam, tetapi ada pula yang menggunakan daging babi atau kambing.', 'Makanan Kuah', 15000, 10, 'soto.jpg'),
(4, 'Sayur kangkung', 'Kangkung adalah tumbuhan yang termasuk jenis sayur-sayuran dan ditanam sebagai makanan. Kangkung banyak dijual di pasar-pasar. Kangkung banyak terdapat di kawasan Asia dan merupakan tumbuhan yang dapat dijumpai hampir di mana-mana terutama di kawasan berair', 'Makanan Kuah', 10000, 10, 'kangkung.jpg'),
(5, 'Pergedel', 'Perkedel adalah makanan yang terbuat dari kentang yang telah digoreng atau direbus sebelum dilumatkan, lalu dicampur dengan daging cincang, irisan daun bawang serta daun seledri dan bumbu, dibentuk bulat-bulat gepeng, dicelupkan ke dalam kocokan telur ayam lalu digoreng. ', 'Makanan Kering', 7000, 7, 'bergedel.jpg'),
(6, 'Orek Tempe', 'makanan tradisional yang mudah dibuat di rumah. Berasal dari tanah Jawa, ini adalah olahan tempe yang dipotong-potong kecil dan dimasak dengan gula serta kecap. Tak ayal, rasa manis mendominasi.', 'Makanan Kering', 10000, 6, 'orek.jpg'),
(7, 'Ayam Goreng', 'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas.', 'Makanan Kering', 15000, 8, 'goreng.jpg'),
(8, 'Ikan Tongkol', 'teknik memasak khas Minangkabau dengan cara menumis cabe giling dengan berbagai rempah, biasanya bawang merah, bawang putih, jeruk nipis. Berbeda dengan sambal lain yang hanya menggunakan cabe giling sebagai pendamping makanan dengan cara dicelup.', 'Makanan Kering', 20000, 19, 'tongkol.jpg'),
(10, 'Es teh', 'Es teh adalah minuman yang sering diminum saat siang hari karena suhu udara yang panas. Di warteg, es teh sering diminum selain air dingin.', 'Minuman', 5000, 20, 'es_teh.jpg'),
(11, 'Jus Alpukat', 'Jus buah alpukat disebut mengandung lemak tak jenuh sehingga aman untuk dikonsumsi secara rutin. Tak hanya lemak baik, minuman yang satu ini juga kaya nutrisi, seperti vitamin A,B,C,E, dan K serta karbohidrat, protein, folat, hingga magnesium.', 'Minuman', 10000, 20, 'jus_alpukat.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_makanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
