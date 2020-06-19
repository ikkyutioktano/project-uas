-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 01:28 AM
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
(11, 'Jus Alpukat', 'Jus buah alpukat disebut mengandung lemak tak jenuh sehingga aman untuk dikonsumsi secara rutin. Tak hanya lemak baik, minuman yang satu ini juga kaya nutrisi, seperti vitamin A,B,C,E, dan K serta karbohidrat, protein, folat, hingga magnesium.', 'Minuman', 10000, 20, 'jus_alpukat.jpg'),
(12, 'Es Jeruk', 'Salah satu minuman yang sering diandalkan saat cuaca panas adalah es jeruk. Rasanya yang asam segar dengan tambahan bulir-bulir jeruk, dipercaya bisa menjadi pelepas dahaga.', 'Minuman', 5000, 10, 'es_jeruk.jpg'),
(13, 'Jus Jambu', 'Manfaat jus jambu merah untuk kesehatan dapat mencegah berbagai macam penyakit. Apalagi, Jambu merah adalah salah satu buah yang paling populer di Indonesia dan sangat mudah ditemukan. Rasanya yang manis membuat jambu biji semakin digemari.', 'Minuman', 10000, 10, 'jus_jambu.jpg'),
(14, 'Sop Ayam', 'Sup ayam adalah sup yang terbuat dari ayam, yang dicampur dengan berbagai bahan makanan lainnya. Sup ayam klasik terdiri dari kaldu encer, yang dimasukkan potongan ayam atau sayuran; umumnya ditambahkan dengan pasta (biasanya mi, meskipun berbagai jenis lainnya dapat digunakan).', 'Makanan Kuah', 12000, 10, 'sop_ayam.jpg'),
(15, 'Capcai', 'Capcai adalah nama hidangan khas Tionghoa yang populer yang khas karena dimasak dari banyak macam sayuran. Jumlah sayuran tidak tentu, tetapi banyak yang salah kaprah mengira bahwa capcai harus mengandung 10 macam sayuran karena secara harfiah adalah berarti \"sepuluh sayur\"', 'Makanan Kuah', 12000, 10, 'capcai.jpg'),
(16, 'Rawon', 'Rawon adalah masakan Indonesia berupa sup daging berkuah hitam sebagai campuran bumbu khas yang menggunakan kluwek. Rawon, meskipun dikenal sebagai masakan khas Jawa Timur, dikenal pula oleh masyarakat Jawa Tengah sebelah timur (daerah Surakarta). ', 'Makanan Kuah', 15000, 10, 'rawon.jpg'),
(17, 'Rica-rica', 'Rica-Rica atau terkadang hanya disebut rica adalah jenis bumbu pedas yang ditemukan di masakan Manado dari Sulawesi Utara, Indonesia. Rica-Rica banyak menggunakan potongan cabai, cabai rawit, bawang merah, bawang putih, jahe, garam, dan gula. Semua bahan-bahan tersebut dimasak denga minyak kelapa dan dicampur dengan daun jeruk, serai, dan air jeruk nipis. ', 'Makanan Kuah', 12000, 10, 'rica.jpg'),
(18, 'Dendeng Sapi', 'Dendeng adalah daging yang dipotong tipis menjadi serpihan yang lemaknya dipangkas, dibumbui dengan saus asam, asin atau manis dengan dikeringkan dengan api kecil atau diasinkan dan dijemur. Hasilnya adalah daging yang asin dan setengah manis dan tidak perlu disimpan di lemari es. Dendeng adalah contoh makanan yang diawetkan. ', 'Makanan Kering', 10000, 15, 'dendeng.jpg'),
(19, 'Bebek Goreng', 'Bebek goreng adalah daging bebek yang digoreng dan dihidangkan dengan lalapan (sayuran segar). Bebek goreng dapat ditemui di warung-warung kaki lima sampai di restoran dan hotel mewah. Karena bebek goreng biasanya dimakan dengan nasi, maka penjual bebek goreng kaki lima menuliskan menu bebek goreng dengan spanduk bertuliskan \"Nasi Bebek\". ', 'Makanan Kering', 15000, 15, 'bebek.jpg'),
(20, 'Tempe Goreng', 'Tempe merupakan hasil olahan kedelai melalui proses fermentasi. Selama proses fermentasi berlangsung, kedelai akan mengalami perubahan nilai gizi dan tekstur.', 'Makanan Kering', 2500, 20, 'tempe.jpg'),
(21, 'Bakwan', 'Bakwan adalah jenis gorengan berbahan dasar tepung ditambah beberapa jenis sayuran, seperti kubis, kecambah, dan wortel yang terlebih dulu dipotong kecil-kecil.', 'Makanan Kering', 2500, 20, 'bakwan.jpg');

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
  MODIFY `id_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
