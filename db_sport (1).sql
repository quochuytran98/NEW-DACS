
;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: db_sport
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_admin
--

CREATE TABLE tbl_admin (
  admin_User varchar(255) NOT NULL,
  admin_Name varchar(255) NOT NULL,
  admin_Email varchar(255) NOT NULL,
  admin_Pass varchar(255) NOT NULL,
  levelss int(11) NOT NULL
) 

--
-- Đang đổ dữ liệu cho bảng tbl_admin
--

INSERT INTO tbl_admin (admin_User, admin_Name, admin_Email, admin_Pass, levelss) VALUES
('admin', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 0),
('admin2', 'huyyyy', 'thththth', 'c4ca4238a0b923820dcc509a6f75849b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_brand
--

CREATE TABLE tbl_brand (
  brandId int(11)  PRIMARY KEY NOT NULL,
  brandName varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_brand
--

INSERT INTO tbl_brand (brandId, brandName) VALUES
(1, 'Puma'),
(4, 'Nike'),
(5, 'Adidas'),
(7, 'Converse'),
(16, 'Vans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_cart
--

CREATE TABLE tbl_cart (
  cartId int(11) NOT NULL,
  productName varchar(255) NOT NULL,
  ssId varchar(255) NOT NULL,
  price int(11) NOT NULL,
  size varchar(20) NOT NULL,
  quantity int(11) NOT NULL,
  image varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_cart
--

INSERT INTO tbl_cart (cartId, productName, ssId, price, size, quantity, image) VALUES
(116, 'Converse Chuck Taylor All Star Archival Print Camo', 'rgvd53j0e1f25qbum8n0ap2n1f', 1500000, '41', 2, '916b2ff1fd.jpg'),
(118, 'Converse Chuck Taylor All Star VLTG', 't5sdmk8k8ho0prulv01celjq96', 1400000, '36', 1, 'f638380fa4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_category
--

CREATE TABLE tbl_category (
  catId int(11) NOT NULL,
  catName varchar(255) NOT NULL,
  catSize varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_category
--

INSERT INTO tbl_category (catId, catName, catSize) VALUES
(12, 'Quần', '28'),
(13, 'Quần', '29'),
(14, 'Quần', '30'),
(15, 'Quần', '31'),
(16, 'Quần', '32'),
(17, 'Quần', '33'),
(18, 'Quần', '34'),
(19, 'Quần', '35'),
(20, 'Quần', '36'),
(21, 'Áo', 'S'),
(22, 'Áo', 'M'),
(23, 'Áo', 'L'),
(24, 'Áo', 'XL'),
(25, 'Áo', 'XXL'),
(26, 'Giày', '35'),
(27, 'Giày', '36'),
(28, 'Giày', '37'),
(29, 'Giày', '38'),
(30, 'Giày', '39'),
(31, 'Giày', '40'),
(32, 'Giày', '41'),
(33, 'Giày', '42'),
(34, 'Giày', '43'),
(35, 'Giày', '44'),
(36, 'Giày', '45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_city
--

CREATE TABLE tbl_city (
  matp varchar(5) CHARACTER SET utf8 NOT NULL,
  name varchar(100) CHARACTER SET utf8 NOT NULL,
  type varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng tbl_city
--

INSERT INTO tbl_city (matp, name, type) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_customer
--

CREATE TABLE tbl_customer (
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  nameCus varchar(255) NOT NULL,
  emailCus varchar(255) NOT NULL,
  city varchar(11) NOT NULL,
  district varchar(11) NOT NULL,
  address varchar(255) NOT NULL,
  phone int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_customer
--

INSERT INTO tbl_customer (username, password, nameCus, emailCus, city, district, address, phone) VALUES
('1', 'c4ca4238a0b923820dcc509a6f75849b', 'value-3', 'value-4', '02', '027', 'value-7', 8),
('2', 'c81e728d9d4c2f636f067f89cc14862c', 'Hoài Thương', 'thuongkhung2020@gmail.com', '83', '831', 'Xã Tân Hào', 377755750),
('ltht1999', 'c4ca4238a0b923820dcc509a6f75849b', 'Trần Quốc Huy', 'ltht1999@gmail.com', '83', '834', 'Hưng Nhượng', 337865781);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_district
--

CREATE TABLE tbl_district (
  maqh varchar(5) CHARACTER SET utf8 NOT NULL,
  name varchar(100) CHARACTER SET utf8 NOT NULL,
  type varchar(30) CHARACTER SET utf8 NOT NULL,
  matp varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng tbl_district
--

INSERT INTO tbl_district (maqh, name, type, matp) VALUES
('001', 'Quận Ba Đình', 'Quận', '01'),
('002', 'Quận Hoàn Kiếm', 'Quận', '01'),
('003', 'Quận Tây Hồ', 'Quận', '01'),
('004', 'Quận Long Biên', 'Quận', '01'),
('005', 'Quận Cầu Giấy', 'Quận', '01'),
('006', 'Quận Đống Đa', 'Quận', '01'),
('007', 'Quận Hai Bà Trưng', 'Quận', '01'),
('008', 'Quận Hoàng Mai', 'Quận', '01'),
('009', 'Quận Thanh Xuân', 'Quận', '01'),
('016', 'Huyện Sóc Sơn', 'Huyện', '01'),
('017', 'Huyện Đông Anh', 'Huyện', '01'),
('018', 'Huyện Gia Lâm', 'Huyện', '01'),
('019', 'Quận Nam Từ Liêm', 'Quận', '01'),
('020', 'Huyện Thanh Trì', 'Huyện', '01'),
('021', 'Quận Bắc Từ Liêm', 'Quận', '01'),
('024', 'Thành phố Hà Giang', 'Thành phố', '02'),
('026', 'Huyện Đồng Văn', 'Huyện', '02'),
('027', 'Huyện Mèo Vạc', 'Huyện', '02'),
('028', 'Huyện Yên Minh', 'Huyện', '02'),
('029', 'Huyện Quản Bạ', 'Huyện', '02'),
('030', 'Huyện Vị Xuyên', 'Huyện', '02'),
('031', 'Huyện Bắc Mê', 'Huyện', '02'),
('032', 'Huyện Hoàng Su Phì', 'Huyện', '02'),
('033', 'Huyện Xín Mần', 'Huyện', '02'),
('034', 'Huyện Bắc Quang', 'Huyện', '02'),
('035', 'Huyện Quang Bình', 'Huyện', '02'),
('040', 'Thành phố Cao Bằng', 'Thành phố', '04'),
('042', 'Huyện Bảo Lâm', 'Huyện', '04'),
('043', 'Huyện Bảo Lạc', 'Huyện', '04'),
('044', 'Huyện Thông Nông', 'Huyện', '04'),
('045', 'Huyện Hà Quảng', 'Huyện', '04'),
('046', 'Huyện Trà Lĩnh', 'Huyện', '04'),
('047', 'Huyện Trùng Khánh', 'Huyện', '04'),
('048', 'Huyện Hạ Lang', 'Huyện', '04'),
('049', 'Huyện Quảng Uyên', 'Huyện', '04'),
('050', 'Huyện Phục Hoà', 'Huyện', '04'),
('051', 'Huyện Hoà An', 'Huyện', '04'),
('052', 'Huyện Nguyên Bình', 'Huyện', '04'),
('053', 'Huyện Thạch An', 'Huyện', '04'),
('058', 'Thành Phố Bắc Kạn', 'Thành phố', '06'),
('060', 'Huyện Pác Nặm', 'Huyện', '06'),
('061', 'Huyện Ba Bể', 'Huyện', '06'),
('062', 'Huyện Ngân Sơn', 'Huyện', '06'),
('063', 'Huyện Bạch Thông', 'Huyện', '06'),
('064', 'Huyện Chợ Đồn', 'Huyện', '06'),
('065', 'Huyện Chợ Mới', 'Huyện', '06'),
('066', 'Huyện Na Rì', 'Huyện', '06'),
('070', 'Thành phố Tuyên Quang', 'Thành phố', '08'),
('071', 'Huyện Lâm Bình', 'Huyện', '08'),
('072', 'Huyện Nà Hang', 'Huyện', '08'),
('073', 'Huyện Chiêm Hóa', 'Huyện', '08'),
('074', 'Huyện Hàm Yên', 'Huyện', '08'),
('075', 'Huyện Yên Sơn', 'Huyện', '08'),
('076', 'Huyện Sơn Dương', 'Huyện', '08'),
('080', 'Thành phố Lào Cai', 'Thành phố', '10'),
('082', 'Huyện Bát Xát', 'Huyện', '10'),
('083', 'Huyện Mường Khương', 'Huyện', '10'),
('084', 'Huyện Si Ma Cai', 'Huyện', '10'),
('085', 'Huyện Bắc Hà', 'Huyện', '10'),
('086', 'Huyện Bảo Thắng', 'Huyện', '10'),
('087', 'Huyện Bảo Yên', 'Huyện', '10'),
('088', 'Huyện Sa Pa', 'Huyện', '10'),
('089', 'Huyện Văn Bàn', 'Huyện', '10'),
('094', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('095', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('096', 'Huyện Mường Nhé', 'Huyện', '11'),
('097', 'Huyện Mường Chà', 'Huyện', '11'),
('098', 'Huyện Tủa Chùa', 'Huyện', '11'),
('099', 'Huyện Tuần Giáo', 'Huyện', '11'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '01'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '01'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '01'),
('271', 'Huyện Ba Vì', 'Huyện', '01'),
('272', 'Huyện Phúc Thọ', 'Huyện', '01'),
('273', 'Huyện Đan Phượng', 'Huyện', '01'),
('274', 'Huyện Hoài Đức', 'Huyện', '01'),
('275', 'Huyện Quốc Oai', 'Huyện', '01'),
('276', 'Huyện Thạch Thất', 'Huyện', '01'),
('277', 'Huyện Chương Mỹ', 'Huyện', '01'),
('278', 'Huyện Thanh Oai', 'Huyện', '01'),
('279', 'Huyện Thường Tín', 'Huyện', '01'),
('280', 'Huyện Phú Xuyên', 'Huyện', '01'),
('281', 'Huyện Ứng Hòa', 'Huyện', '01'),
('282', 'Huyện Mỹ Đức', 'Huyện', '01'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R\'Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_order
--

CREATE TABLE tbl_order (
  order_Id int(11) NOT NULL,
  date timestamp NOT NULL DEFAULT current_timestamp(),
  buyer varchar(255) NOT NULL,
  receiver varchar(255) NOT NULL,
  phone int(11) NOT NULL,
  email varchar(255) NOT NULL,
  city int(10) NOT NULL,
  district int(10) NOT NULL,
  address varchar(255) NOT NULL,
  totalprice bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_order
--

INSERT INTO tbl_order (order_Id, date, buyer, receiver, phone, email, city, district, address, totalprice) VALUES
(65, '2020-05-11 14:54:10', '2', 'Hoài Thương', 377755750, 'thuongkhung2020@gmail.com', 83, 831, 'Xã Tân Hào', 1400000),
(66, '2020-05-11 15:50:12', '2', 'Hoài Thương', 377755750, 'thuongkhung2020@gmail.com', 83, 831, 'Xã Tân Hào', 1350000),
(67, '2020-05-11 15:58:20', '2', 'Hoài Thương', 377755750, 'thuongkhung2020@gmail.com', 83, 831, 'Xã Tân Hào', 1500000),
(68, '2020-05-11 16:03:23', '2', 'Quốc Huy', 377755750, 'ahihi', 83, 831, 'Xã Tân Hào', 1350000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_orderdetails
--

CREATE TABLE tbl_orderdetails (
  id int(11) NOT NULL,
  id_order int(11) NOT NULL,
  productName varchar(255) NOT NULL,
  size varchar(20) NOT NULL,
  quantity int(11) NOT NULL,
  image varchar(255) NOT NULL,
  price bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_orderdetails
--

INSERT INTO tbl_orderdetails (id, id_order, productName, size, quantity, image, price) VALUES
(34, 65, 'Converse Chuck Taylor All Star VLTG', '35', 1, 'ef8c2f8dc9.jpg', 1400000),
(35, 66, 'Converse Chuck Taylor All Star Cheerful', '40', 1, '01b2a936b7.jpg', 1350000),
(36, 67, 'Converse Chuck Taylor All Star Archival Print Camo', '41', 1, '916b2ff1fd.jpg', 1500000),
(37, 68, 'Converse Chuck Taylor All Star Cheerful', '40', 1, '01b2a936b7.jpg', 1350000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng tbl_product
--

CREATE TABLE tbl_product (
  productId int(11) NOT NULL,
  productName varchar(255) NOT NULL,
  catId int(11) NOT NULL,
  brandId int(11) NOT NULL,
  size varchar(20) NOT NULL,
  price varchar(255) NOT NULL,
  image varchar(255) NOT NULL,
  type int(11) NOT NULL,
  description longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng tbl_product
--

INSERT INTO tbl_product (productId, productName, catId, brandId, size, price, image, type, description) VALUES
(16, 'Converse Chuck Taylor All Star VLTG', 26, 7, '36', '1400000', 'f638380fa4.jpg', 1, '<p><span>Ấn tượng bởi những đường Chevron xếp chồng l&ecirc;n nhau với đầy đủ m&agrave;u sắc nổi bật. Converse Chuck Taylor All Star VLTG - Back To Earth chất vải Canvas v&agrave; chất liệu in cao cấp, chắc chắn sẽ mang đến cho bạn một item chất lượng từ trong ra ngo&agrave;i</span></p>'),
(17, 'Converse Chuck Taylor All Star VLTG ', 26, 7, '37', '1400000', '90fe87a241.jpg', 1, '<p><span>Ấn tượng bởi những đường Chevron xếp chồng l&ecirc;n nhau với đầy đủ m&agrave;u sắc nổi bật. Converse Chuck Taylor All Star VLTG - Back To Earth chất vải Canvas v&agrave; chất liệu in cao cấp, chắc chắn sẽ mang đến cho bạn một item chất lượng từ trong ra ngo&agrave;i</span></p>'),
(18, 'Converse Chuck Taylor All Star Archival Print Camo', 26, 7, '41', '1500000', '916b2ff1fd.jpg', 1, '<div class=\"short-description\">L&agrave; nh&acirc;n tố tạo n&ecirc;n sức h&uacute;t cho bộ sưu tập lần n&agrave;y, khi sử dụng gam m&agrave;u đen cổ điển nhấn nh&aacute; th&ecirc;m một miếng tape camo nối liền với logo kinh điển.</div>'),
(19, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '40', '1350000', '01b2a936b7.jpg', 1, '<p>H&uacute;t mắt với h&igrave;nh ảnh mặt cười ngộ nghĩnh được biến tấu dưới dạng chữ Converse cực xịn x&ograve;. Gam m&agrave;u xanh &ldquo;so fresh&rdquo; mix c&ugrave;ng form d&aacute;ng cổ cao năng động cho bạn c&oacute; được những outfit thời trang.</p>'),
(21, 'Chuck Taylor All Star 1970s Sunflower ', 26, 7, '41', '1800000', '376414ad5f.jpg', 0, '<div class=\"short-description\">Được đ&aacute;nh gi&aacute; l&agrave; một trong những đ&ocirc;i gi&agrave;y Converse được giới trẻ y&ecirc;u th&iacute;ch nhất hiện nay bởi phối m&agrave;u v&agrave;ng trendy thời thượng c&ugrave;ng thiết kế cổ cao c&aacute; t&iacute;nh. B&ecirc;n cạnh đ&oacute;, phần đ&ecirc;́ giày với chất liệu cao su cao cấp được phủ m&ocirc;̣t lớp bóng tạo đi&ecirc;̉m nh&acirc;́n ri&ecirc;ng cho dòng 1970s. Đặc biệt chất vải Canvas mềm mại, kh&ocirc;ng chỉ khiến đ&ocirc;i ch&acirc;n của bạn lu&ocirc;n cảm thấy thoải m&aacute;i m&agrave; c&ograve;n gi&uacute;p những outfit của bạn trở n&ecirc;n cuốn h&uacute;t v&agrave; highfashion hơn đấy nh&eacute;.</div>\r\n<div id=\"product\">&nbsp;</div>'),
(26, 'Chuck Taylor All Star 1970s Sunflower ', 26, 7, '42', '1800000', 'ac61f689af.jpg', 0, '<div class=\"short-description\">Được đ&aacute;nh gi&aacute; l&agrave; một trong những đ&ocirc;i gi&agrave;y Converse được giới trẻ y&ecirc;u th&iacute;ch nhất hiện nay bởi phối m&agrave;u v&agrave;ng trendy thời thượng c&ugrave;ng thiết kế cổ cao c&aacute; t&iacute;nh. B&ecirc;n cạnh đ&oacute;, phần đ&ecirc;́ giày với chất liệu cao su cao cấp được phủ m&ocirc;̣t lớp bóng tạo đi&ecirc;̉m nh&acirc;́n ri&ecirc;ng cho dòng 1970s. Đặc biệt chất vải Canvas mềm mại, kh&ocirc;ng chỉ khiến đ&ocirc;i ch&acirc;n của bạn lu&ocirc;n cảm thấy thoải m&aacute;i m&agrave; c&ograve;n gi&uacute;p những outfit của bạn trở n&ecirc;n cuốn h&uacute;t v&agrave; highfashion hơn đấy nh&eacute;.</div>\r\n<div id=\"product\">&nbsp;</div>'),
(27, 'CORE 18 CLIMALITE POLO SHIRT', 21, 5, 'L', '800000', '2fb849ce61.png', 1, '<h5>CHIẾC &Aacute;O POLO D&Agrave;NH CHO NHỮNG CẦU THỦ TẬN TỤY VỚI B&Oacute;NG Đ&Aacute;.</h5>\r\n<p>Chơi b&oacute;ng như một &ocirc;ng chủ. C&oacute; được vẻ ngo&agrave;i như một &ocirc;ng chủ. Chiếm lĩnh s&acirc;n cỏ với chiếc &aacute;o polo đ&aacute; b&oacute;ng d&agrave;nh cho nam n&agrave;y. Vải c&ocirc;ng nghệ Climalite thấm h&uacute;t mồ h&ocirc;i tr&ecirc;n da gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o tr&ecirc;n mỗi bước chạy. &Aacute;o d&aacute;ng &ocirc;m s&aacute;t mang lại cho bạn một phạm vi chuyển động tự do tr&ecirc;n s&acirc;n cỏ.</p>'),
(32, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '41', '1200000', '6fcf6c9422.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(33, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', 'de912a686d.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(34, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', '2c1c8f8048.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(35, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', 'b8de4c8292.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(36, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', 'f06ae66519.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(37, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', '7f1bfad592.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(38, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', '2342762a76.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(39, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', 'b9fa2033f4.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(40, 'Converse Chuck Taylor All Star Cheerful', 26, 7, '37', '1200000', '29d9e22f79.jpg', 1, 'Gam màu đỏ “bỏng mắt” kết hợp cùng chất liệu vải canvas thoáng nhẹ. Chi tiết mặt cười độc đáo với tạo hình của dòng chữ Converse cùng họa tiết ngôi sao tạo nên điểm nhấn đắt giá cho dòng sản phẩm.'),
(41, 'CORE 18 CLIMALITE POLO SHIRT', 21, 5, 'XXL', '800000', '3252c88dd2.png', 1, '<h5>CHIẾC &Aacute;O POLO D&Agrave;NH CHO NHỮNG CẦU THỦ TẬN TỤY VỚI B&Oacute;NG Đ&Aacute;.</h5>\r\n<p>Chơi b&oacute;ng như một &ocirc;ng chủ. C&oacute; được vẻ ngo&agrave;i như một &ocirc;ng chủ. Chiếm lĩnh s&acirc;n cỏ với chiếc &aacute;o polo đ&aacute; b&oacute;ng d&agrave;nh cho nam n&agrave;y. Vải c&ocirc;ng nghệ Climalite thấm h&uacute;t mồ h&ocirc;i tr&ecirc;n da gi&uacute;p bạn lu&ocirc;n kh&ocirc; r&aacute;o tr&ecirc;n mỗi bước chạy. &Aacute;o d&aacute;ng &ocirc;m s&aacute;t mang lại cho bạn một phạm vi chuyển động tự do tr&ecirc;n s&acirc;n cỏ.</p>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng tbl_admin
--
ALTER TABLE tbl_admin
  ADD PRIMARY KEY (admin_User) USING BTREE;

--
-- Chỉ mục cho bảng tbl_brand
--
ALTER TABLE tbl_brand
  ADD PRIMARY KEY (brandId);

--
-- Chỉ mục cho bảng tbl_cart
--
ALTER TABLE tbl_cart
  ADD PRIMARY KEY (cartId);

--
-- Chỉ mục cho bảng tbl_category
--
ALTER TABLE tbl_category
  ADD PRIMARY KEY (catId);

--
-- Chỉ mục cho bảng tbl_city
--
ALTER TABLE tbl_city
  ADD PRIMARY KEY (matp);

--
-- Chỉ mục cho bảng tbl_customer
--
ALTER TABLE tbl_customer
  ADD PRIMARY KEY (username),
  ADD KEY city (city),
  ADD KEY district (district);

--
-- Chỉ mục cho bảng tbl_district
--
ALTER TABLE tbl_district
  ADD PRIMARY KEY (maqh),
  ADD KEY matp (matp);

--
-- Chỉ mục cho bảng tbl_order
--
ALTER TABLE tbl_order
  ADD PRIMARY KEY (order_Id);

--
-- Chỉ mục cho bảng tbl_orderdetails
--
ALTER TABLE tbl_orderdetails
  ADD PRIMARY KEY (id),
  ADD KEY id_order (id_order);

--
-- Chỉ mục cho bảng tbl_product
--
ALTER TABLE tbl_product
  ADD PRIMARY KEY (productId),
  ADD KEY catId (catId),
  ADD KEY brandId (brandId);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng tbl_brand
--
ALTER TABLE tbl_brand
  MODIFY brandId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng tbl_cart
--
ALTER TABLE tbl_cart
  MODIFY cartId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng tbl_category
--
ALTER TABLE tbl_category
  MODIFY catId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng tbl_order
--
ALTER TABLE tbl_order
  MODIFY order_Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng tbl_orderdetails
--
ALTER TABLE tbl_orderdetails
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng tbl_product
--
ALTER TABLE tbl_product
  MODIFY productId int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng tbl_customer
--
ALTER TABLE tbl_customer
  ADD CONSTRAINT tbl_customer_ibfk_1 FOREIGN KEY (city) REFERENCES tbl_city (matp) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT tbl_customer_ibfk_2 FOREIGN KEY (district) REFERENCES tbl_district (maqh) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng tbl_district
--
ALTER TABLE tbl_district
  ADD CONSTRAINT tbl_district_ibfk_1 FOREIGN KEY (matp) REFERENCES tbl_city (matp) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng tbl_orderdetails
--
ALTER TABLE tbl_orderdetails
  ADD CONSTRAINT tbl_orderdetails_ibfk_1 FOREIGN KEY (id_order) REFERENCES tbl_order (order_Id) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng tbl_product
--
ALTER TABLE tbl_product
  ADD CONSTRAINT tbl_product_ibfk_1 FOREIGN KEY (catId) REFERENCES tbl_category (catId) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT tbl_product_ibfk_2 FOREIGN KEY (brandId) REFERENCES tbl_brand (brandId) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
