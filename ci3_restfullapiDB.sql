-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2023 at 12:17 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci3_restfullapiDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_customers`
--

CREATE TABLE `tb_customers` (
  `idCustomer` int NOT NULL,
  `nik` varchar(250) NOT NULL,
  `nama_customer` varchar(250) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `dusun` varchar(250) NOT NULL,
  `rt` varchar(50) NOT NULL,
  `rw` varchar(50) NOT NULL,
  `kelurahan` varchar(250) NOT NULL,
  `kecamatan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_customers`
--

INSERT INTO `tb_customers` (`idCustomer`, `nik`, `nama_customer`, `telepon`, `dusun`, `rt`, `rw`, `kelurahan`, `kecamatan`) VALUES
(1, '3404130602610001', 'CHOLID RIYADI', '0', 'Kadisobo I', '1', '1', 'Trimulyo', 'Sleman'),
(2, '3404131710950002', 'MARYANTO', '0', 'Kadisobo I', '3', '2', 'Trimulyo', 'Sleman'),
(3, '3404134803850003', 'FATKHUL YASIN', '085328017712', 'Kadisobo I', '3', '2', 'Trimulyo', 'Sleman'),
(4, '3404137010020001', 'RUDIANTO', '081804257720', 'Kadisobo I', '1', '3', 'Trimulyo', 'Sleman'),
(5, '3404130209950004', 'ISTIYANTO', '0', 'Kadisobo I', '1', '3', 'Trimulyo', 'Sleman'),
(6, '3404130812830002', 'FIRMAN', '081804093203', 'Ngemplak Polowidi', '4', '6', 'Trimulyo', 'Sleman'),
(7, '3404132805800002', 'HERU PRASETYO', '0', '-', '2', '7', 'Trimulyo', 'Sleman'),
(8, '3404130306800003', 'KAMAN', '085693141422', '-', '2', '7', 'Trimulyo', 'Sleman'),
(9, '3404130909780006', 'ZAMYANI', '085601975654', '-', '4', '8', 'Trimulyo', 'Sleman'),
(10, '3404131210800002', 'SUGIYANTO', '085942580919', 'Pendeman', '1', '9', 'Trimulyo', 'Sleman'),
(11, '3404133007000002', 'WAHYUDIN', '0', 'Jogokerten', '1', '13', 'Trimulyo', 'Sleman'),
(12, '3404132706780003', 'SUGIYARTO', '0', 'Jogokerten', '3', '14', 'Trimulyo', 'Sleman'),
(13, '3404130907800003', 'NURI HANDOKO', '087825488996', 'Jogokerten', '3', '14', 'Trimulyo', 'Sleman'),
(14, '3404130808540003', 'SITI ZUBAIDAH', '085701212370', 'Balong', '2', '11', 'Trimulyo', 'Sleman'),
(15, '3404130504980002', 'RITA LESTARI', '0', 'Balong', '0', '0', 'Trimulyo', 'Sleman'),
(16, '3404130901860002', 'ANI MURWANTINI', '0', 'Blunyah', '3', '16', 'Trimulyo', 'Sleman'),
(17, '3404132602860002', 'TRI HARSANA', '0', 'Karang Kepanjen', '2', '19', 'Trimulyo', 'Sleman'),
(18, '3404131509970003', 'TRI HARTONO', '0', 'Karang Kepanjen', '1', '19', 'Trimulyo', 'Sleman'),
(19, '3404131307040002', 'SUKRIYADI', '0', 'Sidomulyo', '1', '26', 'Trimulyo', 'Sleman'),
(20, '3404136701790002', 'SUYONO', '0', 'Sidomulyo', '5', '27', 'Trimulyo', 'Sleman'),
(21, '3404051108690003', 'TUKIDI', '08121551047', 'Jamblangan', '5', '27', 'Margomulyo', 'Seyegan'),
(22, '3404051202640001', 'MUJIANA', '08121551047', 'Jamblangan', '3', '26', 'Margomulyo', 'Seyegan'),
(23, '3404052006680004', 'SUBARYANTO', '08121551047', 'Jamblangan', '4', '26', 'Margomulyo', 'Seyegan'),
(24, '3404055612700002', 'SAMIRAH', '08121551047', 'Jamblangan', '2', '26', 'Margomulyo', 'Seyegan'),
(25, '3404052609150001', 'AZKA ARZENIO ALVARO', '082234888366', '-', '1', '19', 'Margomulyo', 'Seyegan'),
(26, '3404051403800001', 'BUDIYONO', '082234888366', '-', '2', '19', 'Margomulyo', 'Seyegan'),
(27, '3404054607480002', 'MARDI WIYONO. NY.', '082234888366', '-', '1', '19', 'Margomulyo', 'Seyegan'),
(28, '3304124704930001', 'IKLIMAH', '0', '-', '2', '19', 'Margomulyo', 'Seyegan'),
(29, '3404050304890002', 'EKO HADI SUSANTO', '0', 'Jamblangan', '1', '26', 'Margomulyo', 'Seyegan'),
(30, '3209092303560002', 'MUH. ASMUNI', '087839183455', 'Sompokan', '4', '12', 'Margomulyo', 'Seyegan'),
(31, '3404055304750003', 'TRI WIRANTI', '085336575548', 'Kadipiro', '4', '20', 'Margodadi', 'Seyegan'),
(32, '3404059898850002', 'RISMAN', '0', 'Beran', '3', '2', 'Margodadi', 'Seyegan'),
(33, '3404055503630001', 'TUBINEM', '0', 'Beran', '2', '1', 'Margodadi', 'Seyegan'),
(34, '3404051908620001', 'PARJONO', '085729697650', 'Beran', '2', '1', 'Margodadi', 'Seyegan'),
(35, '3404052902900003', 'SUBANDI', '0', 'Beran', '2', '1', 'Margodadi', 'Seyegan'),
(36, '3404050803830002', 'EKO SUPARYANTO', '0', 'Beran', '1', '1', 'Margodadi', 'Seyegan'),
(37, '3404056801860003', 'JUMILAH', '0', 'Kandangan', '2', '1', 'Margodadi', 'Seyegan'),
(38, '3404054711750009', 'SURYANTI', '0', 'Kandangan', '2', '1', 'Margodadi', 'Seyegan'),
(39, '3404050107740009', 'YULIANTO', '0', 'Kandangan', '6', '5', 'Margodadi', 'Seyegan'),
(40, '3404052902800003', 'SUBANDI', '0', 'Kandangan', '5', '5', 'Margodadi', 'Seyegan'),
(41, '3404053112300032', 'TARJO', '0', 'Kandangan', '3', '3', 'Margodadi', 'Seyegan'),
(42, '3404056003630001', 'SUPARMI', '0', 'Kandangan', '2', '3', 'Margodadi', 'Seyegan'),
(43, '3404054603550002', 'REMPEYEK/ NGATIJAH', '083869664968', 'Barak II', '3', '16', 'Margoluwih', 'Seyegan'),
(44, '3404052808870001', 'THOMAS PURNOMO', '0', 'Barak II', '3', '16', 'Margoluwih', 'Seyegan'),
(45, '3404054205530001', 'BAKPIA 007/ KRISTINA', '082323868429', 'Barak II', '4', '17', 'Margoluwih', 'Seyegan'),
(46, '3404057112620193', 'SARIYEM', '0', 'Barak II', '5', '17', 'Margoluwih', 'Seyegan'),
(47, '3404056908630001', 'KARTINI', '0', 'Barak II', '5', '17', 'Margoluwih', 'Seyegan'),
(48, '3404054405700003', 'JUARIYAH', '0', 'Barak II', '5', '17', 'Margoluwih', 'Seyegan'),
(49, '3404052304710003', 'SUNARYO', '081903918709', 'Klaci I', '2', '8', 'Margoluwih', 'Seyegan'),
(50, '3404050906800001', 'BEKTI', '081215494112', 'Klaci I', '5', '9', 'Margoluwih', 'Seyegan'),
(51, '3404052009800002', 'PAIMAN', '087729313258', 'Klaci I', '5', '9', 'Margoluwih', 'Seyegan'),
(52, '3404051805470001', 'TUGIMAN', '081915325307', 'Klinyo', '1', '1', 'Margoluwih', 'Seyegan'),
(53, '3404055904730003', 'DARISAH', '081931701875', 'Klinyo', '6', '2', 'Margoluwih', 'Seyegan'),
(54, '3404053112390058', 'KAMTO DINOMO', '087739882500', 'Klangkapan I', '1', '3', 'Margoluwih', 'Seyegan'),
(55, '3404052301840001', 'ARIF RIYANTO', '087838412171', 'Klangkapan I', '2', '3', 'Margoluwih', 'Seyegan'),
(56, '3404055102780001', 'SUNARTI', '087739667178', 'Klangkapan I', '2', '3', 'Margoluwih', 'Seyegan'),
(57, '3404057112420156', 'NGATINI', '087838404300', 'Klangkapan I', '2', '3', 'Margoluwih', 'Seyegan'),
(58, '3404053008410001', 'GINO', '08989272402', 'Klangkapan I', '3', '3', 'Margoluwih', 'Seyegan'),
(59, '3404056802740001', 'NGATINEM', '0821376621123', 'Klangkapan I', '3', '3', 'Margoluwih', 'Seyegan'),
(60, '3404055503580002', 'SUHARNI', '087844105505', 'Klangkapan I', '4', '4', 'Margoluwih', 'Seyegan'),
(61, '3404050607740001', 'SUMARMAN', '081804035393', 'Klangkapan I', '5', '4', 'Margoluwih', 'Seyegan'),
(62, '3402166501880003', 'LISNA NUR H', '089531240916', 'Klangkapan I', '6', '4', 'Margoluwih', 'Seyegan'),
(63, '1871025009680007', 'Heni Tri Supeni', '087777360958', 'Gamol', '0', '0', 'Balecatur', 'Gamping'),
(64, '3404074908890003', 'Marlinda Kunikas Muyija Ra\'uf Tanjung', '082243574309', 'Gambretan', '1', '8', 'Umbulharjo', 'Cangkringan'),
(65, '3404115910770002', 'Kanti Wahyuni', '082126979701', 'Murangan VIII', '', '', 'Triharjo', 'Sleman'),
(66, '3404114605780001', 'Istri Handayani', '089604128776', 'Blotan', '', '', 'Wedomartani', 'Ngemplak'),
(67, '3314104405940002', 'Malinda Wahyu Utami', '08121318022', 'Jongke Tengah', '8', '24', 'Sendangadi', 'Mlati'),
(68, '3404134306800004', 'Sukma Wijayanti', '087871474786', 'Terwilen', '3', '29', 'Margodadi', 'Seyegan'),
(69, '3404016904760001', 'Susantini', '083840678638', 'Pereng Dawe', '10', '46', 'Balecatur', 'Gamping'),
(70, '3404070711940001', 'G. Prasetyo Jati Nugroho', '081225700458', 'Sambilegi Lor', '5', '54', 'Maguwoharjo', 'Depok'),
(71, '3404096312820004', 'Sri Rahayu', '087839888840', 'Gatak', '3', '9', 'Bokoharjo', 'Prambanan'),
(72, '1604104305830010', 'Verra Veronika', '085268553550', 'Jetis', '13', '62', 'Wedomartani', 'Ngemplak'),
(73, '3404064710940001', 'Natasha Winona Sulistio', '085105832255', 'Kutu Dukuh', '3', '28', 'Sinduadi', 'Mlati'),
(74, '3308205807870007', 'ARUM MITA MULYASARI', '081804295446', 'Sleman III', '2', '7', 'Triharjo', 'Sleman'),
(75, '3216062905640007', 'Bambang Utarya N', '08159735130', 'Bantulan', '6', '4', 'Sidoarum', 'Godean'),
(76, '3402155304810007', 'Africha Lia Tanjung', '081392488994', 'Kaliajir Lor', '3', '11', 'Kalitirto', 'Berbah'),
(77, '3402126602840002', 'Hana Anggraeni', '081802748984', 'Tanjung', '', '', 'Kalitirto', 'Berbah'),
(78, '3404070707770014', 'Nugroho', '81328858588', 'Tambakbayan', '5', '2', 'Caturtunggal', 'Depok'),
(79, '3404071103810010', 'Rebo', '085292086426', 'Sambilegi Kidul', '4', '60', 'Maguwoharjo', 'Depok'),
(80, '3314044107800000', 'Anita Yuli Hastuti', '081216388535', 'Banjeng', '', '', 'Maguwoharjo', 'Depok'),
(81, '3404076004710006', 'Titik Paryanti', '08121560847', 'Jenengan', '2', '7', 'Maguwoharjo', 'Depok'),
(82, '3404011701840004', 'Fajar Triyanto', '081915240818', 'Karang Wetan', '14', '15', 'Nogotirto', 'Gamping'),
(83, '3404016608830002', 'Budi Wahyuni', '082138072362', 'Kronggahan II', '', '', 'Trihanggo', 'Gamping'),
(84, '3404022005680003', 'Wahyono', '087738114211', 'Kramat', '1', '19', 'Sidoarum', 'Godean'),
(85, '3404024204880002', 'Siti Rokhimah / Shinta', '082325364045', 'Bantulan', '5', '4', 'Sidoarum', 'Godean'),
(86, '3404102912880001', 'Agung Perdana Putra', '083820737101', 'Nologaten', '', '', 'Caturtunggal', 'Depok'),
(87, '3404045705780005', 'Rini Widyastuti', '081529053986', 'Ngijon', '', '', 'Sendangarum', 'Minggir'),
(88, '3404130301800003', 'Gunaryoto / Aria Wahyu', '081804154153', 'Mlati Glodong', '5', '28', 'Sendangadi', 'Mlati'),
(89, '3309054911710002', 'Supriyati / Yanti', '085228083225', 'Duwet', '32', '6', 'Sendangadi', 'Mlati'),
(90, '3404035306770001', 'Nensi Silviandari', '087848483938', 'Gemawang', '6', '45', 'Sinduadi', 'Mlati'),
(91, '3471037103900002', 'Amalia Rahmawati', '085878981194', 'Purwosari', '3', '59', 'Sinduadi', 'Mlati'),
(92, '3404065002810006', 'Ubiet Cuhilla', '081295646516', 'Pundong I', '', '', 'Tirtoadi', 'Mlati'),
(93, '3471016211650001', 'Hilda Novita Ali', '087878535588', 'Cebongan Kidul', '', '', 'Tlogoadi', 'Mlati'),
(94, '3404031911680002', 'Nurzazid', '089686848573', 'Turgenen', '38', '1', 'Sumberagung', 'Moyudan'),
(95, '3404126209770005', 'Amelia Guestya Herliani', '082219180121', 'Ngemplak', '', '', 'Donoharjo', 'Ngaglik'),
(96, '3404125304660002', 'Dra. Titik Nurchasanah', '0811257519', 'Blekik', '2', '28', 'Sardonoharjo', 'Ngaglik'),
(97, '3404124111800003', 'Visia Endita Kirana', '0817278882', 'Plumbon', '7', '29', 'Sardonoharjo', 'Ngaglik'),
(98, '3404122207960005', 'Arya Khoirul Hammam', '081215747023', 'Kalijeruk II', '1', '4', 'Widodomartani', 'Ngemplak'),
(99, '3404121807910004', 'Brawijaya Maha Ksatria Yuda', '089606651643', 'Purworejo', '9', '16', 'Sukoharjo', 'Ngaglik'),
(100, '3209041411960009', 'Mohamad Joko Firdaus', '085728007690', 'Ngemplak Nganti', '4', '8', 'Sendangadi', 'Mlati'),
(101, '3319026809690002', 'Agnes Wiwik Wigati', '081804265584', 'Jetis', '28', '72', 'Wedomartani', 'Ngemplak'),
(102, '3404015012790003', 'Sutanti', '087835111616', 'Kajor', '10', '3', 'Nogotirto', 'Gamping'),
(103, '3404064801910002', 'Gratia Prima Christiana', '081268941943', 'Sanggrahan', '11', '33', 'Tlogoadi', 'Mlati'),
(104, '3404171508660002', 'Suryono', '082226609227', 'Gondang', '4', '44', 'Wukirsari', 'Cangkringan'),
(105, '3303030701900001', 'Bambang Pranoto Bayuaji', '0816652714', 'Rewulu Kulon', '2', '22', 'Sidokarto', 'Godean'),
(106, '3404117105810005', 'Sri Sudiartanti', '081804033198', 'Ngalian', '3', '22', 'Widodomartani', 'Ngemplak'),
(107, '3402172801730002', 'Dwi Hartanto', '08121588660', 'Jlopo', '', '', 'Pondokrejo', 'Tempel'),
(108, '3404072804800026', 'Felix Ferdian', '08122881022', 'Ringinsari', '5', '50', 'Maguwoharjo', 'Depok'),
(109, '3578225210850002', 'Anneke Putri Purwidyantari', '08157929213', 'Ngabean Kulon', '7', '36', 'Sinduharjo', 'Ngaglik'),
(110, '3404065907820001', 'Yuliana Fitri', '087738512212', 'Klakah', '16', '0', 'Sendangtirto', 'Berbah'),
(111, '3404065907650004', 'Rahayu Dwiastuti', '081903707192', 'Pogung Lor', '8', '50', 'Sinduadi', 'Mlati'),
(112, '3309032306910001', 'Rudi Hermawan', '082134540880', 'Ngebo', '2', '19', 'Sukoharjo', 'Ngaglik'),
(113, '3404087110740001', 'Anis Riyati Primastuti', '08122957658', 'Maredan', '4', '40', 'Sendangtirto', 'Berbah'),
(114, '3404177101970001', 'Anisa Romadhoni', '081225101950', 'Sawungan', '4', '4', 'Hargobinangun', 'Pakem'),
(115, '3175014102630002', 'Ariana Restu Handari', '088224916440', 'Tinjon', '3', '30', 'Madurejo', 'Prambanan'),
(116, '3471035107820001', 'Anastasia Turin Damayanti', '0817273132', 'Ngropoh', '10', '62', 'Condongcatur', 'Depok'),
(117, '3404156203770001', 'Suharni', '083104714208', 'Nganggring', '1', '3', 'Girikerto', 'Turi'),
(118, '3404122307660002', 'Mohamad Lamsuri', '081227295680', 'Plosokuning II', '15', '6', 'Minomartani', 'Ngaglik'),
(119, '3673015307830003', 'Rina Fitria Sari', '0818658883', 'Tempel', '0', '0', 'Caturtunggal', 'Depok'),
(120, '3273076804740002', 'Leni Marlina', '081910106691', 'Kwarasan', '4', '6', 'Nogotirto', 'Gamping'),
(121, '3404070710860005', 'Dewanto Rahadmoyo Nugroho', '08112645656', 'Modinan', '0', '0', 'Banyuraden', 'Gamping'),
(123, '1111111111111112', 'Bintang', '083726452637', 'rajawali', '02', '04', 'caturtunggal', 'sleman'),
(125, '1111111111111114', 'Bintang 2', '083726452637', 'rajawali', '05', '11', 'caturtunggal', 'sleman'),
(126, '1111111111111115', 'DBP', '083726452637', 'rajawali', '05', '11', 'caturtunggal', 'sleman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customers`
--
ALTER TABLE `tb_customers`
  ADD PRIMARY KEY (`idCustomer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_customers`
--
ALTER TABLE `tb_customers`
  MODIFY `idCustomer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
