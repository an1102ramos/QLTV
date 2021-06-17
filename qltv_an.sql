-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: qltv_an
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `qltv_an`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `qltv_an` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `qltv_an`;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `category_id` int(50) NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `book_copies` int(11) NOT NULL,
  `book_pub` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `publisher_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `isbn` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `copyright_year` int(11) NOT NULL,
  `date_receive` varchar(20) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (37,'Lập trình hướng đối tượng',7,'Trần Văn An',8,'Hà Nội','NXB Giáo Dục','0-13-154317-66',2015,'','2021-06-01 14:29:35','Kho'),(38,'Lịch sử thế giới',9,'Trần Văn An',7,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-01 14:30:05','Sách cũ'),(39,'Kinh tế đại cương',4,'Nguyễn Phú Trọng',8,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-01 14:31:04','Kho'),(40,'Lập trình C nâng cao',8,'Thanh Tân',7,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-08 21:36:32','Sách mới'),(41,'Toán',1,'Trần Văn An',8,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-15 17:07:23','Đã mất'),(42,'Anh',2,'Trần Văn An',7,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-15 17:10:57','Sách cũ'),(43,'Tiếng  anh chuyên ngành CNPM',3,'Thanh Tân',8,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-15 17:12:44','Sách mới'),(44,'Văn\'',1,'Trần Văn An\'',8,'Hà Nội\'','NXB Giáo Dục\'','0-13-154317-6\'',2015,'','2021-06-15 17:13:10','Kho'),(45,'Lập trình Python',8,'Phương Văn Cảnh',7,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-16 21:39:05','Thay thế'),(46,'Tư tưởng Hồ Chí Minh',3,'Thanh Tân',8,'Hà Nội','NXB Giáo Dục','0-13-154317-6',2015,'','2021-06-16 21:41:44','Sách hỏng'),(47,'Giáo trình đường lối cách mạng của Đảng cộng sản Việt Nam',3,'Bộ giáo dục và đào tạo',8,'Hà Nội','Nxb.Chính trị quốc gia','9786045704820',2011,'','2021-06-16 21:57:44','Sách mới'),(48,'Kiến thức cơ bản nâng cao Vật lý PTTH Tập III',7,'Vũ Thanh Khiết',8,'Hà Nội','Nxb. Hà Nội','530',2003,'','2021-06-16 21:59:11','Sách mới'),(49,'100 điều nên biết về cách mạng tháng tám năm 1945',9,'Hà Nguyễn',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048049423',2020,'','2021-06-16 22:00:59','Sách mới'),(50,'Kỹ năng giao tiếp tiếng Anh thương mại A',3,'Sarah Jones',8,'Hà Nội','Nxb.Thanh Niên','420',2004,'','2021-06-16 22:01:55','Sách mới'),(51,'Toán học rời rạc',7,'Trần Thị Minh Thu',8,'Hà Nội','Bách khoa Hà Nội','511',2015,'','2021-06-16 22:02:51','Sách cũ'),(52,'Thiết kế phần điện nhà máy điện và trạm biến áp',7,'Phạm Văn Hòa',8,'Hà Nội','Nxb.Khoa học Kỹ thuật','621.302 8',2007,'','2021-06-16 22:03:34','Sách mới'),(53,'100 điều nên biết về đại thắng mùa xuân 1975',9,'Hà Nguyễn',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048049430',2020,'','2021-06-16 22:04:27','Sách mới'),(54,'Logistics trong thương mại điện tử tại Việt Nam',4,'Trịnh Thị Thu Hương',8,'Hà Nội','Nxb. Công Thương','9786049913860',2020,'','2021-06-16 22:05:03','Sách mới'),(55,'Phát triển thị trường vũng dân tộc thiểu số & miền núi',1,'Trịnh Thị Thanh Thủy',8,'Hà Nội','Nxb. Công Thương','9786049913884',2020,'','2021-06-16 22:05:59','Sách mới'),(56,'An toàn thông tin khi sử dụng mạng xã hội',2,'Phạm Duy Trung',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048050412',2020,'','2021-06-16 22:06:52','Sách mới'),(57,'Em phải đến HARVARD học kinh tế Tập 1',4,'Lưu Vệ Hoa',8,'Hà Nội','Nxb.Hồng Đức','002',2009,'','2021-06-16 22:08:00','Sách cũ'),(58,'Siêu kinh tế học hài hước Stenen D. Levitt',4,'Nguyễn Kim Ngọc',8,'Hà Nội','Nxb.Thế giới','330',2010,'','2021-06-16 22:08:57','Sách cũ'),(59,'Phần điện trong nhà máy điện và trạm biến áp',7,'Đào Quang Thạch',8,'Hà Nội','Nxb.Khoa học và Kỹ thuật','621.302 8',2005,'','2021-06-16 22:09:53','Sách hỏng'),(60,'5 đường mòn Hồ Chí Minh',9,'Đặng Phong',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048049461',2020,'','2021-06-16 22:11:01','Sách mới'),(61,'Các tổng bí thư thế hệ tiền bối của Đảng ta (1930-1990)',9,'Lê Văn Yên',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048049454',2020,'','2021-06-16 22:11:36','Sách mới'),(62,'Kĩ thuật điện Tập 1',7,'Trần Minh Sơ',8,'Hà Nội','Nxb.Đại học Sư phạm','621.302 8',2009,'','2021-06-16 22:12:38','Sách cũ'),(63,'Nhiệt động lực học kỹ thuật',7,'Hoàng Đình Tín',8,'Hà Nội','Nxb. Khoa học và kỹ thuật','621.5',1997,'','2021-06-16 22:13:18','Sách hỏng'),(64,'Giáo trình điện tử công suất',7,'Trần Trọng Minh',8,'Hà Nội','Nxb.Giáo dục Việt Nam',' 621.381',2015,'','2021-06-16 22:14:06','Sách cũ'),(65,'Rèn luyện thể chất cho thanh thiếu nhi',1,'Hoàng Công Dân',8,'Hà Nội','Nxb. thể thao và du lịch','9786048508715',2020,'','2021-06-16 22:14:52','Sách mới'),(66,'Yoga và du lịch',1,'Vũ Trọng Lợi',8,'Hà Nội','Nxb.Thể thao và du lịch','9786048508739',2020,'','2021-06-16 22:15:43','Sách mới'),(67,'Chị Minh Khai Truyện ký',9,'Nguyệt Tú',8,'Hà Nội','Nxb. Phụ Nữ Việt Nam','9786045684900',2020,'','2021-06-16 22:16:25','Sách mới'),(68,'Hồ Chí Minh biểu tượng của thời đại',9,'Đỗ Hoàng Linh',8,'Hà Nội','Nxb. Thông tin và Truyền thông','9786048040796',2019,'','2021-06-16 22:22:03','Sách mới'),(69,'Nhập môn học máy',8,'Hoàng Trung Nam',0,'Hà Nội','Nxb. Hà Nội','64821465412',2021,'','2021-06-17 10:33:10','Sách mới');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(50) NOT NULL,
  `date_borrow` varchar(100) NOT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`borrow_id`),
  KEY `borrowerid` (`member_id`),
  KEY `borrowid` (`borrow_id`)
) ENGINE=MyISAM AUTO_INCREMENT=503 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (498,71,'2021-06-17 10:02:38','27/06/2021'),(499,72,'2021-06-17 10:02:46','26/06/2021'),(500,75,'2021-06-17 10:02:57','28/06/2021'),(501,72,'2021-06-17 10:42:15','28/06/2021'),(502,79,'2021-06-17 10:43:42','26/06/2021');
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowdetails`
--

DROP TABLE IF EXISTS `borrowdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrowdetails` (
  `borrow_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `borrow_id` int(11) NOT NULL,
  `borrow_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `date_return` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`borrow_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowdetails`
--

LOCK TABLES `borrowdetails` WRITE;
/*!40000 ALTER TABLE `borrowdetails` DISABLE KEYS */;
INSERT INTO `borrowdetails` VALUES (169,37,489,'Đã trả','2021-06-08 20:44:29'),(170,39,490,'Đã trả','2021-06-08 20:44:27'),(171,38,491,'đã trả','2021-06-01 22:37:59'),(172,37,492,'Đã trả','2021-06-08 20:44:31'),(173,38,493,'Đã trả','2021-06-08 21:49:07'),(174,38,494,'Đã trả','2021-06-17 10:00:27'),(175,42,495,'đang mượn',''),(176,38,496,'Đã trả','2021-06-16 17:17:12'),(177,42,497,'đang mượn',''),(178,38,498,'đang mượn',''),(179,40,499,'đang mượn',''),(180,45,500,'đang mượn',''),(181,45,501,'đang mượn',''),(182,38,502,'đang mượn',''),(183,40,502,'đang mượn',''),(184,42,502,'Đã trả','2021-06-17 10:54:57');
/*!40000 ALTER TABLE `borrowdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `classname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_id` (`category_id`),
  KEY `classid` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Báo chí'),(2,'Khoa học công nghệ'),(3,'Khoa học giáo dục'),(4,'Kinh tế học'),(5,'Tâm lý học'),(6,'Công nghệ sinh học'),(7,'Khoa học kỹ thuật'),(8,'Công nghệ thông tin'),(9,'Lịch sử học');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lost_book`
--

DROP TABLE IF EXISTS `lost_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lost_book` (
  `Book_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` int(11) NOT NULL,
  `Member_No` varchar(50) NOT NULL,
  `Date Lost` date NOT NULL,
  PRIMARY KEY (`Book_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lost_book`
--

LOCK TABLES `lost_book` WRITE;
/*!40000 ALTER TABLE `lost_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `lost_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `year_level` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (71,'Long','Nguyễn','Nam','Vĩnh Phúc','0123456789','Sinh viên','Năm 3','Bị cấm'),(72,'Văn Hiệp','Phùng','Nam','Vĩnh Phúc','0123456789','Sinh viên','Năm 3','Hoạt động'),(73,'Long Hiệp','Nguyễn','Nam','Vĩnh Phúc','0123456789','Sinh viên','Năm 3','Hoạt động'),(75,'Văn Cảnh','Phương','Nam','Hà Nội','0321654987','Giảng viên','Giảng dạy','Hoạt động'),(76,'Phú Trọng','Nguyễn','Nam','Hà Nội','0123456789','Sinh viên','Năm 3','Hoạt động'),(77,'Xuân Phúc','Nguyễn','Nam','Hà Nội','0999999999','Giảng viên','Giảng dạy','Hoạt động'),(79,'Văn An','Trần','Nam','Hà Nội','0326222511','Sinh viên','Năm 4','Hoạt động'),(80,'Mạnh Dũng','Nguyễn','Nam','Bắc Giang','0111111111','Sinh viên','Năm 3','Hoạt động'),(81,'Ronaldo','Cristiano','Nam','Portugal','0888888888','Sinh viên','Năm 4','Bị cấm'),(82,'Messi','Leo','Nam','ARG','0222222222','Sinh viên','Năm 4','');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrowertype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `borrowertype` (`borrowertype`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (2,'Teacher'),(20,'Employee'),(21,'Non-Teaching'),(22,'Student'),(32,'Contruction');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (10,'hiep','1','Hiệp','Phùng'),(12,'admin','1','Trần','An');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 10:56:43
