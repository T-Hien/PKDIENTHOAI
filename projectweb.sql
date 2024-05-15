-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: projectweb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitietgiohang`
--

DROP TABLE IF EXISTS `chitietgiohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietgiohang` (
  `MAGIOHANG` varchar(255) NOT NULL,
  `MASANPHAM` varchar(255) NOT NULL,
  `SOLUONG` int DEFAULT NULL,
  PRIMARY KEY (`MAGIOHANG`,`MASANPHAM`),
  KEY `FK_bemytdypaxu6rnnyomfoueyj2` (`MASANPHAM`),
  CONSTRAINT `FK_4m4b4g98rlkjlva47ofjg4ebq` FOREIGN KEY (`MAGIOHANG`) REFERENCES `giohang` (`MAGIOHANG`),
  CONSTRAINT `FK_bemytdypaxu6rnnyomfoueyj2` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietgiohang`
--

LOCK TABLES `chitietgiohang` WRITE;
/*!40000 ALTER TABLE `chitietgiohang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietgiohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietphieunhap` (
  `MASANPHAM` varchar(255) NOT NULL,
  `MAPHIEUNHAP` varchar(255) NOT NULL,
  `GIANHAP` double DEFAULT NULL,
  `SOLUONG` int DEFAULT NULL,
  PRIMARY KEY (`MASANPHAM`,`MAPHIEUNHAP`),
  KEY `FK_aoel1dqw3albdug4730qxd2cd` (`MAPHIEUNHAP`),
  CONSTRAINT `FK_aoel1dqw3albdug4730qxd2cd` FOREIGN KEY (`MAPHIEUNHAP`) REFERENCES `phieunhap` (`MAPHIEUNHAP`),
  CONSTRAINT `FK_oo9pbtu9kbm9qjudp04e2awjo` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietphieunhap`
--

LOCK TABLES `chitietphieunhap` WRITE;
/*!40000 ALTER TABLE `chitietphieunhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietphieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `MACHUCVU` varchar(10) NOT NULL,
  `TENCHUCVU` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MACHUCVU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES ('1','ADMIN'),('2','USER'),('employee','EMPLOYEE');
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhmuc` (
  `MADANHMUC` varchar(10) NOT NULL,
  `TENDANHMUC` varchar(50) DEFAULT NULL,
  `TRANGTHAI` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MADANHMUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhmuc`
--

LOCK TABLES `danhmuc` WRITE;
/*!40000 ALTER TABLE `danhmuc` DISABLE KEYS */;
INSERT INTO `danhmuc` VALUES ('1','Tai nghe',_binary '\0'),('2','Ơp lưng',_binary ''),('3','Dây sạc',_binary ''),('4','A',_binary ''),('5','B',_binary ''),('6','C',_binary ''),('7','D',_binary ''),('8','E',_binary '');
/*!40000 ALTER TABLE `danhmuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohang` (
  `MAGIOHANG` varchar(10) NOT NULL,
  `MAKHACHHANG` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MAGIOHANG`),
  KEY `FK_g1gsak8tssxtw3yn7rfehwq08` (`MAKHACHHANG`),
  CONSTRAINT `FK_g1gsak8tssxtw3yn7rfehwq08` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
INSERT INTO `giohang` VALUES ('1','1');
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinhthucthanhtoan`
--

DROP TABLE IF EXISTS `hinhthucthanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinhthucthanhtoan` (
  `MATHANHTOAN` varchar(10) NOT NULL,
  `KIEUTHANHTOAN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MATHANHTOAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinhthucthanhtoan`
--

LOCK TABLES `hinhthucthanhtoan` WRITE;
/*!40000 ALTER TABLE `hinhthucthanhtoan` DISABLE KEYS */;
INSERT INTO `hinhthucthanhtoan` VALUES ('1','Sau khi nhận hàng'),('2','Chuyển tiền trước');
/*!40000 ALTER TABLE `hinhthucthanhtoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MAKHACHHANG` varchar(10) NOT NULL,
  `DIACHI` varchar(20) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `ANHDAIDIEN` varchar(20) DEFAULT NULL,
  `TEN` varchar(20) DEFAULT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `HO` varchar(20) DEFAULT NULL,
  `TENTAIKHOANG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MAKHACHHANG`),
  KEY `FK_jw1makbpx1f2frywu57fbxvg8` (`TENTAIKHOANG`),
  CONSTRAINT `FK_jw1makbpx1f2frywu57fbxvg8` FOREIGN KEY (`TENTAIKHOANG`) REFERENCES `taikhoang` (`TENTAIKHOANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES ('1','Châu Thành','2023-01-01',NULL,'Hien','0366256344','Nguyen','hien123'),('2','HHHH','2023-01-03',NULL,'H','HHHHH','Nguyá»n','hien123q'),('3','Ho Chi Minh','2023-05-02',NULL,'Hung','0145785124','Nguyen Van','hungee'),('4','112 HCM','2023-05-01',NULL,'HH','0547851245','Nguyen Minh H','hhh123'),('5','Dong Nai','2023-05-02',NULL,'TOI','0547851245','TOI','toi123'),('6','Ho Chi Minh','2023-05-11',NULL,'Nhan','05784562145','Nguyen Trong','nhan123');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MANHACUNGCAP` varchar(10) NOT NULL,
  `DIACHI` varchar(100) DEFAULT NULL,
  `TENNHACUNGCAP` varchar(50) DEFAULT NULL,
  `SDT` varchar(11) DEFAULT NULL,
  `TRANGTHAI` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MANHACUNGCAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MANV` varchar(10) NOT NULL,
  `DIACHI` varchar(30) DEFAULT NULL,
  `CMND` varchar(12) DEFAULT NULL,
  `NGAYSINH` date DEFAULT NULL,
  `GIOITINH` varchar(10) DEFAULT NULL,
  `ANH` varchar(50) DEFAULT NULL,
  `TEN` varchar(30) DEFAULT NULL,
  `SDT` varchar(11) DEFAULT NULL,
  `HO` varchar(30) DEFAULT NULL,
  `TENTAIKHOANG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MANV`),
  KEY `FK_j5bafiveu6dbn9fahr9plfnvs` (`TENTAIKHOANG`),
  CONSTRAINT `FK_j5bafiveu6dbn9fahr9plfnvs` FOREIGN KEY (`TENTAIKHOANG`) REFERENCES `taikhoang` (`TENTAIKHOANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES ('1','HCM','145624785412','2000-02-02','Nam',NULL,'Quynh','0254785421','Nguyễn Trần','quynh123'),('2','HCCM','123543456554','1987-05-05','Nam',NULL,'Hung','2576236562','Nguyễn Văn','hung123');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudat`
--

DROP TABLE IF EXISTS `phieudat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudat` (
  `MAPHIEUDAT` int NOT NULL AUTO_INCREMENT,
  `NGAYLAP` date DEFAULT NULL,
  `MAGIOHANG` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MATHANHTOAN` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MANV` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `MAKHACHHANG` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TRANGTHAI` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MAPHIEUDAT`,`MATHANHTOAN`),
  KEY `FK_c3bd6v453f9sqapsu5qa89yi3` (`MATHANHTOAN`),
  KEY `FK_66xp1cmkx1tpkrw3lyfyeby4q` (`MAKHACHHANG`),
  KEY `FK_mj6ib3g300th22oltn0dwji6x` (`MAGIOHANG`),
  KEY `FK_jujvdrk3p74agbncl5wo6wvsx` (`MANV`),
  CONSTRAINT `FK_jujvdrk3p74agbncl5wo6wvsx` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  CONSTRAINT `FK_mj6ib3g300th22oltn0dwji6x` FOREIGN KEY (`MAGIOHANG`) REFERENCES `giohang` (`MAGIOHANG`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudat`
--

LOCK TABLES `phieudat` WRITE;
/*!40000 ALTER TABLE `phieudat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieudat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `MAPHIEUNHAP` varchar(10) NOT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `MANV` varchar(10) DEFAULT NULL,
  `MANHACUNGCAP` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MAPHIEUNHAP`),
  KEY `FK_byv71nofdiudb5puydtk15k2m` (`MANV`),
  KEY `FK_c12qwyr3lahgv1eu4ujsv56at` (`MANHACUNGCAP`),
  CONSTRAINT `FK_byv71nofdiudb5puydtk15k2m` FOREIGN KEY (`MANV`) REFERENCES `nhanvien` (`MANV`),
  CONSTRAINT `FK_c12qwyr3lahgv1eu4ujsv56at` FOREIGN KEY (`MANHACUNGCAP`) REFERENCES `nhacungcap` (`MANHACUNGCAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MASANPHAM` varchar(10) NOT NULL,
  `MOTA` varchar(5000) DEFAULT NULL,
  `HINHANH` varchar(200) DEFAULT NULL,
  `TENSANPHAM` varchar(100) DEFAULT NULL,
  `SOLUONGTON` int DEFAULT NULL,
  `GIA` double DEFAULT NULL,
  `TRANGTHAI` int DEFAULT NULL,
  `MADANHMUC` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MASANPHAM`),
  KEY `FK_dbsgs81nibbavtitbugslw12x` (`MADANHMUC`),
  CONSTRAINT `FK_dbsgs81nibbavtitbugslw12x` FOREIGN KEY (`MADANHMUC`) REFERENCES `danhmuc` (`MADANHMUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES ('1','MỘT SẢN PHẨM CỦA OPPO','oppo.jpg','Ốp lưng JIUMOO  cho OPPO A38',23,45000,1,'3'),('2','1. Vật liệu TPU mạ điện hàng không, thời trang và chống sốc. 2. Nó bảo vệ đầy đủ các thiết bị khỏi các vết trầy xước bình thường, bụi bẩn, rách và hao mòn. 3. Với chiếc nhẫn, bạn có thể sử dụng điện thoại của mình mà không cần phải giữ chặt và bảo vệ điện thoại khỏi tay bạn. 4. Giao diện sạc dành riêng, không cần tháo rời khi sạc, tiện lợi và nhanh chóng. 5. Đơn giản và dễ dàng, thoải mái, dễ mang theo.','iphone1.jpg','Ốp lưng điện thoại TPU mờ điện thoại cho iphone 12 pro max',20,50000,1,'1'),('SP10','Thiết bị cải tiến âm thanh 3D công nghệ công nghệ Dolby Head TrackingTM cho chất lượng âm thanh sống động, tai nghe còn trang bị chống nước IPX7, kết nối thông minh giữa các thiết bị Samsung.','samsum2.jpg','Tai nghe Bluetooth Samsung Galaxy Buds Pro SM-R190',23,3900000,1,'2'),('SP11','Thiết kế nhỏ nhẹ, đệm tai êm, đeo dễ chịu. Trang bị jack 3.5 mm thông dụng, dây dài 1.2 m. Âm thanh chi tiết, sinh động. Có mic thoại, nút chuyển bài, dừng/chơi nhạc, tăng/giảm âm lượng, nhận cuộc gọi.','samsum3.jpg','Tai nghe Có Dây Samsung IG935 ',35,300000,1,'2'),('sp12','Samsung đã có nhiều tiến bộ hơn khi sạc A30| A30S có hỗ trợ sạc nhanh với chuẩn Type C. Mua bộ cáp sạc nhanh Samsung A30| A30S chính hãng tại Shop phụ kiện Samsung. Thay vì sạc 4 tiếng giờ đây bạn chỉ cần sạc 2 tiếng. Cam kết 100% chính hãng, bảo hành 06 tháng. Bộ sạc Galaxy A30| A30S chính hãng chuẩn Type C, giá tốt nhất, chế độ bảo hành tốt.','samsum4.jpg',' Bộ sạc nhanh Samsung A30| A30S chính hãng',67,100000,1,'2'),('SP4','Dành Cho Ốp Xiaomi Redmi Note 9 Ốp Điện Thoại Doraemon Hoạt Hình 3D Blu-ray Thời Trang Dễ Thương Có Giá Đỡ & Dây Đeo Chéo Có Thể Điều Chỉnh Vỏ TPU Mềm Ốp Lưng Nữ Nữ','vivo1.jpg','Ốp lưng Điện Thoại Vivo Y20 Y20i Y20S',12,83000,1,'8'),('SP5','JIUMOO Ốp Lưng Cho Samsung Galaxy M51 Ốp Lưng Điện Thoại CẠNH VUÔNG Thiết Kế Mới Dây Đeo Cổ Tay Màu Trắng Ốp Lưng Silicon Chống Sốc Mạ Họa Tiết Gấu Hoạt Hình Thời Trang Ốp Lưng Mềm Bảo Vệ Vỏ Bọc Toàn Bộ Máy Ảnh','samsum5.jpg','Ốp  Lưng JIUMOO Cho Samsung Galaxy M51',56,56000,1,'2'),('SP6','Những chiếc ốp lưng không chỉ bảo vệ điện thoại gập lại của bạn mà còn phải có một mức giá cả phải chăng lẫn sự tin tưởng trong việc chất lượng. Ngay cả khi thiết bị có khả năng chống nước IPX8, thì thiết bị này vẫn có thiết kế khá phức tạp và tạo thêm một phong cá nhân cho mỗi người sử dụng.','samsum7.jpg','Ốp lưng Samsung Galaxy Z Flip 3',19,150000,1,'2'),('SP7','Trong sự kiện ra mắt vừa qua, ngoài tâm điểm là chiếc Galaxy S8 với vẻ ngoài mê hoặc, người dùng có thể sẽ quan tâm hơn đến phụ kiện kèm theo','samsum8.jpg','Tai nghe AKG kèm Galaxy S8',20,550000,1,'2'),('SP8','Ngày nay, việc sở hữu riêng cho mình một chiếc smartphone màn hình cảm ứng đã không còn là vấn đề khó khăn gì nữa. Phần lớn các thao tác trong qua trình sử dụng đều qua màn hình. Cho nên việc sử dụng kính cường lực/miếng dán cường lực để bảo vệ màn hình khỏi những tác hại từ bên ngoài là vô cùng cần thiết.','samsum9.jpg','Miếng dán Kính Cường Lực cho Samsung Galaxy A50S',21,22000,1,'2'),('SP9','Độ cứng 9H cho khả năng chịu lực cao, bảo vệ màn hình mạnh mẽ trước các va đập, cọ xát. Kính có độ trong đạt chuẩn HD, cho chất lượng hình ảnh cực kỳ sắc nét và đẹp như hình gốc. Không ảnh hưởng đến độ nhạy của cảm ứng. Chống bám vân tay trong quá trình sử dụng. Chống chói, giúp bạn có thể nhìn rõ màn hình ngay cả khi ở ngoài trời.','samsum10.jpg','Miếng dán cường lực cho SAMSUNG GALAXY A32',22,45000,1,'2');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoang`
--

DROP TABLE IF EXISTS `taikhoang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoang` (
  `TENTAIKHOANG` varchar(50) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `MATKHAU` varchar(100) DEFAULT NULL,
  `TRANGTHAI` int DEFAULT NULL,
  `MACHUCVU` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TENTAIKHOANG`),
  KEY `FK_gcpxl6s4vte6x4huos9upuajb` (`MACHUCVU`),
  CONSTRAINT `FK_gcpxl6s4vte6x4huos9upuajb` FOREIGN KEY (`MACHUCVU`) REFERENCES `chucvu` (`MACHUCVU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoang`
--

LOCK TABLES `taikhoang` WRITE;
/*!40000 ALTER TABLE `taikhoang` DISABLE KEYS */;
INSERT INTO `taikhoang` VALUES ('hhh123','du221@gmail.com','$2a$10$zxMtfxLEZeC2Ppx.6.08SOgMQXSjzOhCKCpCZbFoWBw1cYmAaktJ2',1,'2'),('hien123','du221@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'2'),('hien123q','sss@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'2'),('hung123','toibiet2000@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'employee'),('hung1234','hienhien123hien@gmail.com','123456',1,NULL),('hungee','toibiet2000@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'2'),('nhan123','quynh123@gmail.com','$2a$10$6tHIimC34qEZ/vQFCHRdjuyJyf5TZkVU8J5LUIvVpUFhaI99XUr96',1,'2'),('quynh123','quynh123@gmail.com','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1,'1'),('toi123','du221@gmail.com','$2a$10$5NpOyU8IkjnW.943x7kCFuSMlfyQWLJuBYhRRwj74yClOlL4eGHue',1,'2');
/*!40000 ALTER TABLE `taikhoang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `userid` varchar(10) NOT NULL,
  `MAKHACHHANG` varchar(10) NOT NULL,
  `MACHUCVU` varchar(10) NOT NULL,
  KEY `FK_i991gydj71q8eh0ja406st83e` (`MAKHACHHANG`),
  KEY `FK_jwv62hhuqojjk7pot7kaex3e1` (`userid`),
  KEY `FK_bvjjksj6mpriw6n4k4r19k0en` (`MACHUCVU`),
  CONSTRAINT `FK_bvjjksj6mpriw6n4k4r19k0en` FOREIGN KEY (`MACHUCVU`) REFERENCES `chucvu` (`MACHUCVU`),
  CONSTRAINT `FK_i991gydj71q8eh0ja406st83e` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `chucvu` (`MACHUCVU`),
  CONSTRAINT `FK_jwv62hhuqojjk7pot7kaex3e1` FOREIGN KEY (`userid`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 11:59:53
