-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: cat
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `app_admin`
--

DROP TABLE IF EXISTS `app_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `thumb` int(11) NOT NULL DEFAULT '1' COMMENT '管理员头像',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `login_time` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登录ip',
  `admin_cate_id` int(2) NOT NULL DEFAULT '1' COMMENT '管理员分组',
  `delete_password` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `admin_cate_id` (`admin_cate_id`) USING BTREE,
  KEY `nickname` (`nickname`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_admin`
--

LOCK TABLES `app_admin` WRITE;
/*!40000 ALTER TABLE `app_admin` DISABLE KEYS */;
INSERT INTO `app_admin` VALUES (1,'超级管理员','admin','972262e4efe2e00f364d979a7c6ae7ee',14,1510885948,1657075651,1678434851,'139.5.108.47',1,'0a8b18d8a9c3e59fb415cafb457e384e');
/*!40000 ALTER TABLE `app_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_admin_cate`
--

DROP TABLE IF EXISTS `app_admin_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_admin_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `permissions` text COMMENT '权限菜单',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `desc` text COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_admin_cate`
--

LOCK TABLES `app_admin_cate` WRITE;
/*!40000 ALTER TABLE `app_admin_cate` DISABLE KEYS */;
INSERT INTO `app_admin_cate` VALUES (1,'超级管理员','1,3,4,5,51,6,7,8,71,23,24,25,26,27,28,29,30,49,50,52,53,54,59,67,68,70,55,56,57,62,65,66,63,64',0,1678432056,'超级管理员，拥有最高权限！'),(26,'代理','1,6,7,23,24,49,50,52,53,54,59,67,68,70,55,56,57,62,65,66',1657890874,1658329431,'');
/*!40000 ALTER TABLE `app_admin_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_admin_log`
--

DROP TABLE IF EXISTS `app_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_menu_id` int(11) NOT NULL COMMENT '操作菜单id',
  `admin_id` int(11) NOT NULL COMMENT '操作者id',
  `ip` varchar(100) DEFAULT NULL COMMENT '操作ip',
  `operation_id` varchar(200) DEFAULT NULL COMMENT '操作关联id',
  `create_time` int(11) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4970 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_admin_log`
--

LOCK TABLES `app_admin_log` WRITE;
/*!40000 ALTER TABLE `app_admin_log` DISABLE KEYS */;
INSERT INTO `app_admin_log` VALUES (4946,50,1,'47.57.189.21','',1675842798),(4947,26,1,'47.57.189.21','38',1675842812),(4948,26,1,'47.57.189.21','37',1675842815),(4949,26,1,'47.57.189.21','36',1675842818),(4950,26,1,'47.57.189.21','35',1675842822),(4951,26,1,'47.57.189.21','32',1675842826),(4952,26,1,'47.57.189.21','31',1675842829),(4953,8,1,'47.57.189.21','',1675842845),(4954,50,1,'128.14.23.21','',1675842922),(4955,50,1,'47.57.189.21','',1675843206),(4956,54,1,'47.57.189.21','7325',1675843274),(4957,50,1,'205.185.119.103','',1678421859),(4958,50,1,'182.151.215.9','',1678431923),(4959,4,1,'182.151.215.9','71',1678432015),(4960,51,1,'182.151.215.9','',1678432037),(4961,28,1,'182.151.215.9','1',1678432056),(4962,71,1,'182.151.215.9','',1678432128),(4963,54,1,'182.151.215.9','7326',1678432647),(4964,54,1,'182.151.215.9','7327',1678432674),(4965,54,1,'182.151.215.9','7328',1678432738),(4966,50,1,'205.185.119.103','',1678434596),(4967,50,1,'139.5.108.47','',1678434852),(4968,70,1,'203.91.85.21','7334,7333,7332,7331,7330,7329',1678440137),(4969,71,1,'203.91.85.21','',1678440241);
/*!40000 ALTER TABLE `app_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_admin_menu`
--

DROP TABLE IF EXISTS `app_admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL COMMENT '模块',
  `controller` varchar(100) NOT NULL COMMENT '控制器',
  `function` varchar(100) NOT NULL COMMENT '方法',
  `parameter` varchar(50) DEFAULT NULL COMMENT '参数',
  `description` varchar(250) DEFAULT NULL COMMENT '描述',
  `is_display` int(1) NOT NULL DEFAULT '1' COMMENT '1显示在左侧菜单2只作为节点',
  `type` int(1) NOT NULL DEFAULT '1' COMMENT '1权限节点2普通节点',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级菜单0为顶级菜单',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_open` int(1) NOT NULL DEFAULT '0' COMMENT '0默认闭合1默认展开',
  `orders` int(11) NOT NULL DEFAULT '0' COMMENT '排序值，越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `module` (`module`) USING BTREE,
  KEY `controller` (`controller`) USING BTREE,
  KEY `function` (`function`) USING BTREE,
  KEY `is_display` (`is_display`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_admin_menu`
--

LOCK TABLES `app_admin_menu` WRITE;
/*!40000 ALTER TABLE `app_admin_menu` DISABLE KEYS */;
INSERT INTO `app_admin_menu` VALUES (1,'菜单配置','','','','','系统设置。',0,1,0,0,1657011896,'fa-cog',0,1),(3,'菜单管理','admin','menu','index','','系统菜单管理',1,1,1,0,1657011631,'fa-share-alt',0,2),(4,'新增/修改系统菜单','admin','menu','publish','','新增/修改系统菜单.',2,1,3,1516948769,1516948769,'',0,3),(5,'删除系统菜单','admin','menu','delete','','删除系统菜单。',2,1,3,1516948857,1516948857,'',0,4),(6,'管理员信息','','','','','个人信息管理。',1,1,0,1516949308,1657011726,'fa-user',0,6),(7,'个人信息','admin','admin','personal','','个人信息修改。',1,1,6,1516949435,1516949435,'fa-user',0,7),(8,'修改密码','admin','admin','editpassword','','管理员修改个人密码。',1,1,6,1516949702,1517619887,'fa-unlock-alt',0,8),(23,'后台管理员','','','','','系统管理员管理。',1,1,0,1516951071,1657011833,'fa-user',0,22),(24,'管理员列表','admin','admin','index','','系统管理员列表。',1,1,23,1516951163,1657011936,'fa-user',0,23),(25,'新增/修改管理员','admin','admin','publish','','新增/修改系统管理员。',2,1,24,1516951224,1516951224,'',0,24),(26,'删除管理员','admin','admin','delete','','删除管理员。',2,1,24,1516951253,1516951253,'',0,25),(27,'角色管理','admin','admin','admincate','','权限分组。',1,1,23,1516951353,1657011969,'fa-dot-circle-o',0,26),(28,'新增/修改权限组','admin','admin','admincatepublish','','新增/修改权限组。',2,1,27,1516951483,1516951483,'',0,27),(29,'删除权限组','admin','admin','admincatedelete','','删除权限组。',2,1,27,1516951515,1516951515,'',0,28),(30,'操作日志','admin','admin','log','','系统管理员操作日志。',1,1,23,1516951754,1517018196,'fa-pencil',0,29),(49,'图片上传','admin','common','upload','','图片上传。',2,1,0,1516954491,1516954491,'',0,30),(50,'管理员登录','admin','common','login','','管理员登录。',2,1,0,1516954517,1516954517,'',0,31),(51,'系统菜单排序','admin','menu','orders','','系统菜单排序。',2,1,3,1517562047,1517562047,'',0,5),(52,'用户管理','','','','','查看通讯录数据',1,1,0,1570859894,1657012043,'fa-id-card',1,32),(53,'用户列表','admin','appv1','user','','设备数据查看',1,1,52,1570860050,1657690765,'fa-user-o',0,0),(54,'删除手机用户','admin','appv1','delete','','删除手机用户',2,1,53,1570863249,1570865200,'',0,0),(55,'通讯录查看','admin','appv1','mobile','','通讯录查看',0,1,52,1570864268,1570864268,'fa-building',0,0),(56,'删除通讯录号码','admin','appv1','mobdelete','','删除通讯录号码',2,1,55,1570865183,1570865183,'',0,0),(57,'下载xls文件','admin','appv1','exportexcel','','下载xls文件',2,1,55,1570886322,1570886336,'',0,0),(59,'清空通讯录','admin','appv1','clearuser','','清空通讯录',2,1,53,1570888508,1570888508,'',0,0),(62,'短信查看','admin','appv1','sms','','短信数据查看',0,1,52,1573482452,1573488647,'fa-envelope',0,0),(63,'APP参数设置','admin','appv1','appset','','APP参数设置',1,1,52,1573482817,1573482837,'fa-cog',0,0),(64,'修改APP参数','admin','appv1','appsetpo','','修改APP参数设置',2,1,63,1573482887,1573482933,'',0,0),(65,'删除短信数据','admin','appv1','smsdelete','','删除一条短信数据',2,1,62,1573488857,1573488857,'',0,0),(66,'下载设备短信xls文件','admin','appv1','smsexcel','','下载设备短信xls文件',2,1,62,1573492495,1573492495,'',0,0),(67,'在线定位地图位置','admin','appv1','dingwei','','在线定位地图位置',2,1,53,1574004632,1657012151,'',0,0),(68,'清空短信','admin','appv1','clearsms','','清空用户所有短信',2,1,53,1574261187,1574261187,'',0,0),(70,'批量删除设备','admin','appv1','alldeletes','','批量删除清空设备用户',2,1,53,1574865425,1574865425,'',0,0),(71,'删除密码','admin','admin','editDeletePassword','','删除密码',1,1,6,1678432015,1678432015,'fa-unlock',0,9);
/*!40000 ALTER TABLE `app_admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_appconfig`
--

DROP TABLE IF EXISTS `app_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_appconfig` (
  `app` varchar(20) NOT NULL COMMENT '网站配置标识',
  `is_login` int(1) NOT NULL DEFAULT '1' COMMENT '1开启登录0关闭',
  `is_reg` int(1) NOT NULL DEFAULT '1' COMMENT '1开启注册0关闭',
  `yaoqingma` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  KEY `app` (`app`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_appconfig`
--

LOCK TABLES `app_appconfig` WRITE;
/*!40000 ALTER TABLE `app_appconfig` DISABLE KEYS */;
INSERT INTO `app_appconfig` VALUES ('appv1',1,0,0,0),('agency',1,0,471452,2),('agency',1,0,462836,3),('agency',1,0,585085,4),('agency',1,0,628263,5),('agency',1,0,593678,6),('agency',1,0,182565,7),('agency',1,0,323700,8),('agency',1,0,407099,9),('agency',1,0,902225,10),('agency',1,0,271847,11),('agency',1,0,527069,12),('agency',1,0,618032,13),('agency',1,0,423662,14),('agency',1,0,217619,15),('agency',1,0,927085,16),('agency',1,0,550978,17),('agency',1,0,861177,18),('agency',1,0,981380,19),('agency',1,0,941058,20),('agency',1,0,900417,21),('agency',1,0,617206,22),('agency',1,0,577689,23),('agency',1,0,420779,24),('agency',1,0,689298,25),('agency',1,0,951099,26),('agency',1,0,132148,27),('agency',1,0,757066,28),('agency',1,0,398364,29),('agency',1,0,146054,30),('agency',1,0,442819,31),('agency',1,0,195645,32),('agency',1,0,454656,33),('agency',1,0,622804,34),('agency',1,0,162967,35),('agency',1,0,170540,36),('agency',1,0,266499,37),('agency',1,0,853362,38),('agency',1,0,315516,39),('agency',1,0,875260,40),('agency',1,0,221517,41),('agency',1,0,838555,42),('agency',1,0,797077,43),('agency',1,0,351429,44),('agency',1,0,385749,45),('agency',1,0,257839,46),('agency',1,0,617152,47),('agency',1,0,607130,48),('agency',1,0,526391,49),('agency',1,0,986306,50),('agency',1,0,209291,51),('agency',1,0,742463,52),('agency',1,0,433166,53),('agency',1,0,622745,54),('agency',1,0,454504,55),('agency',1,0,123197,56),('agency',1,0,603565,57),('agency',1,0,666071,58),('agency',1,0,872981,59),('agency',1,0,773665,60),('agency',1,0,230928,61),('agency',1,0,302128,62),('agency',1,0,497222,63),('agency',1,0,590746,64),('agency',1,0,670515,65),('agency',1,0,538277,66),('agency',1,0,348913,67),('agency',1,0,865027,68),('agency',1,0,587307,69),('agency',1,0,637318,70),('agency',1,0,415999,71),('agency',1,0,189237,72),('agency',1,0,433467,73),('agency',1,0,485453,74),('agency',1,0,566049,75),('agency',1,0,585434,76),('agency',1,0,373172,77),('agency',1,0,360775,78),('agency',1,0,936892,79),('agency',1,0,861174,80),('agency',1,0,633603,81),('agency',1,0,368429,82),('agency',1,0,254035,83),('agency',1,0,213345,84),('agency',1,0,334638,86),('agency',1,0,359513,87),('agency',1,0,649477,88),('agency',1,0,856253,89),('agency',1,0,842152,90),('agency',1,0,645025,91),('agency',1,0,871546,92),('agency',1,0,225997,93),('agency',1,0,427396,94),('agency',1,0,211797,95),('agency',1,0,826859,96),('agency',1,0,404565,97),('agency',1,0,436031,98),('agency',1,0,937156,99),('agency',1,0,132048,100),('agency',1,0,770606,101),('agency',1,0,153521,102),('agency',1,0,894605,103),('agency',1,0,974456,104),('agency',1,0,187252,105),('agency',1,0,677195,106),('agency',1,0,565564,107),('agency',1,0,426814,108),('agency',1,0,431334,109),('agency',1,0,952851,110),('agency',1,0,840097,111),('agency',1,0,831186,112),('agency',1,0,281081,113),('agency',1,0,737285,114),('agency',1,0,852645,115),('agency',1,0,658722,116),('agency',1,0,698107,117),('agency',1,0,953176,118),('agency',1,0,639385,119),('agency',1,0,500733,120),('agency',1,0,428056,121),('agency',1,0,508276,122),('agency',1,0,805561,123),('agency',1,0,577970,124),('agency',1,0,331994,125),('agency',1,0,231362,126),('agency',1,0,478403,127),('agency',1,0,408760,128),('agency',1,0,330553,129),('agency',1,0,937665,130),('agency',1,0,262158,131),('agency',1,0,613469,132),('agency',1,0,590378,133),('agency',1,0,754485,134),('agency',1,0,742296,135),('agency',1,0,612318,136),('agency',1,0,500415,137),('agency',1,0,620494,138),('agency',1,0,211279,139),('agency',1,0,639525,140),('agency',1,0,332083,141),('agency',1,0,106346,142),('agency',1,0,439663,143),('agency',1,0,843760,144),('agency',1,0,791488,145),('agency',1,0,579695,146),('agency',1,0,468836,147),('agency',1,0,456292,148),('agency',1,0,292980,149),('agency',1,0,991784,150),('agency',1,0,203477,151),('agency',1,0,534121,152),('agency',1,0,776278,153),('agency',1,0,838225,154),('agency',1,0,426161,155),('agency',1,0,610249,156),('agency',1,0,988875,157),('agency',1,0,993059,158),('agency',1,0,947518,159),('agency',1,0,308700,160),('agency',1,0,870006,161),('agency',1,0,560605,162),('agency',1,0,907812,163),('agency',1,0,689249,164),('agency',1,0,958165,165),('agency',1,0,334822,166),('agency',1,0,145251,167),('agency',1,0,255885,168),('agency',1,0,233480,169),('agency',1,0,273858,170),('agency',1,0,227936,171),('agency',1,0,255070,172),('agency',1,0,375484,173),('agency',1,0,365567,174),('agency',1,0,918536,175),('agency',1,0,991291,176),('agency',1,0,992676,177),('agency',1,0,399667,178),('agency',1,0,970387,179),('agency',1,0,652586,180),('agency',1,0,803136,181),('agency',1,0,173266,182),('agency',1,0,380582,183),('agency',1,0,667209,184),('agency',1,0,125615,185),('agency',1,0,201012,186),('agency',1,0,287814,187),('agency',1,0,121660,188),('agency',1,0,792385,189),('agency',1,0,461671,190),('agency',1,0,313302,191),('agency',1,0,241310,192),('agency',1,0,160864,193),('agency',1,0,578614,194),('agency',1,0,239099,195),('agency',1,0,555911,196),('agency',1,0,333403,197),('agency',1,0,752693,198),('agency',1,0,857234,199),('agency',1,0,931024,200),('agency',1,0,607077,201),('agency',1,0,578891,202),('agency',1,0,386472,203),('agency',1,0,196546,204),('agency',1,0,229756,205),('agency',1,0,386321,206),('agency',1,0,441694,207),('agency',1,0,872363,208),('agency',1,0,831158,209),('agency',1,0,900985,210),('agency',1,0,250055,211),('agency',1,0,960953,212),('agency',1,0,175730,213),('agency',1,0,611327,214),('agency',1,0,330443,215),('agency',1,0,284956,216),('agency',1,0,904470,217),('agency',1,0,639031,218),('agency',1,0,529632,219),('agency',1,0,318118,220),('agency',1,0,166772,221),('agency',1,0,681637,2),('agency',1,0,697989,3),('agency',1,0,269786,4),('agency',1,0,722641,5),('agency',1,0,236316,6),('agency',1,0,459545,7),('agency',1,0,440686,8),('agency',1,0,628600,9),('agency',1,0,516360,10),('agency',1,0,971631,11),('agency',1,0,310140,12),('agency',1,0,402250,11),('agency',1,0,585863,12),('agency',1,0,359823,13),('agency',1,0,703118,14),('agency',1,0,334717,15),('agency',1,0,756005,16),('agency',1,0,450078,17),('agency',1,0,162820,18),('agency',1,0,756486,19),('agency',1,0,626841,20),('agency',1,0,848112,21),('agency',1,0,800873,22),('agency',1,0,792536,23),('agency',1,0,496233,24),('agency',1,0,506173,25),('agency',1,0,117919,26),('agency',1,0,663565,27),('agency',1,0,272722,28),('agency',1,0,795084,29),('agency',1,0,288673,30),('agency',1,0,505306,31),('agency',1,0,905923,32),('agency',1,0,672230,33),('agency',1,0,633459,34),('agency',1,0,530096,35),('agency',1,0,888863,36),('agency',1,0,494957,37),('agency',1,0,622271,38);
/*!40000 ALTER TABLE `app_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_article`
--

DROP TABLE IF EXISTS `app_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `article_cate_id` int(11) NOT NULL,
  `thumb` int(11) DEFAULT NULL,
  `content` text,
  `admin_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `edit_admin_id` int(11) NOT NULL COMMENT '最后修改人',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0待审核1已审核',
  `is_top` int(1) NOT NULL DEFAULT '0' COMMENT '1置顶0普通',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `is_top` (`is_top`) USING BTREE,
  KEY `article_cate_id` (`article_cate_id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article`
--

LOCK TABLES `app_article` WRITE;
/*!40000 ALTER TABLE `app_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_article_cate`
--

DROP TABLE IF EXISTS `app_article_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(250) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article_cate`
--

LOCK TABLES `app_article_cate` WRITE;
/*!40000 ALTER TABLE `app_article_cate` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_article_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_attachment`
--

DROP TABLE IF EXISTS `app_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;


--
-- Dumping data for table `app_attachment`
--

LOCK TABLES `app_attachment` WRITE;
/*!40000 ALTER TABLE `app_attachment` DISABLE KEYS */;
INSERT INTO `app_attachment` VALUES (1,'admin','79811855a6c06de53047471c4ff82a36.jpg','\\uploads\\admin\\admin_thumb\\20180104\\79811855a6c06de53047471c4ff82a36.jpg',13781,'jpg',1,'127.0.0.1',1,1515046060,1,1515046060,'admin_thumb',0),(2,'admin','72d921bc8b7d335093137d6d54932732.png','/uploads/admin/admin_thumb/20191012/72d921bc8b7d335093137d6d54932732.png',57424,'png',1,'36.63.70.180',1,1570885138,1,1570885138,'admin_thumb',0),(3,'admin','21c212ff632e7d58bede477c3f472c98.gif','/uploads/admin/admin_thumb/20191103/21c212ff632e7d58bede477c3f472c98.gif',14469,'gif',1,'36.63.71.22',1,1572770251,1,1572770251,'admin_thumb',0),(4,'admin','796e07eee5fe1ce73406a80b2cbff888.jpg','/uploads/admin/admin_thumb/20200713/796e07eee5fe1ce73406a80b2cbff888.jpg',26091,'jpg',1,'106.57.47.196',1,1594577236,1,1594577236,'admin_thumb',0),(5,'admin','06ddd36c6db45fa48ad0b10a7539d289.jpg','/uploads/admin/admin_thumb/20200713/06ddd36c6db45fa48ad0b10a7539d289.jpg',14760,'jpg',1,'106.57.118.241',1,1594642843,1,1594642843,'admin_thumb',0),(6,'admin','d12b93f93f2a7f3fc6b4a03c6a8d7159.jpg','/uploads/admin/admin_thumb/20200718/d12b93f93f2a7f3fc6b4a03c6a8d7159.jpg',17064,'jpg',1,'171.9.49.125',1,1595068543,1,1595068543,'admin_thumb',0),(7,'admin','032e12cb9b748523162d059b9c713ac4.png','/uploads/admin/admin_thumb/20200722/032e12cb9b748523162d059b9c713ac4.png',19303,'png',1,'60.164.13.37',1,1595394123,1,1595394123,'admin_thumb',0),(8,'admin','f6b4bac77fb32e6b60dececa94565ae1.png','/uploads/admin/admin_thumb/20200730/f6b4bac77fb32e6b60dececa94565ae1.png',5703,'png',1,'106.57.130.229',1,1596041293,1,1596041293,'admin_thumb',0),(9,'admin','bdf319ca985ab8c98994dd0a925ffda9.png','/uploads/admin/admin_thumb/20200813/bdf319ca985ab8c98994dd0a925ffda9.png',1988,'png',1,'125.82.3.12',1,1597312025,1,1597312025,'admin_thumb',0),(10,'admin','c75e955963050b0df345a19c9cd91bed.jpg','/uploads/admin/admin_thumb/20210213/c75e955963050b0df345a19c9cd91bed.jpg',291377,'jpg',168,'39.144.13.196',1,1613226528,168,1613226528,'admin_thumb',0),(11,'admin','49a60d125b6bc2a82e2439ad1991836e.jpg','/uploads/admin/admin_thumb/20210213/49a60d125b6bc2a82e2439ad1991836e.jpg',218662,'jpg',168,'39.144.13.196',1,1613226582,168,1613226582,'admin_thumb',0),(12,'admin','59a8ce1f9b3591a6248e3c761df3fe3f.png','/uploads/admin/admin_thumb/20210226/59a8ce1f9b3591a6248e3c761df3fe3f.png',219859,'png',1,'36.17.43.129',1,1614271081,1,1614271081,'admin_thumb',0),(13,'admin','562f9f7549cb79b32b46f7aa9d11fbdf.png','/uploads/admin/admin_thumb/20210709/562f9f7549cb79b32b46f7aa9d11fbdf.png',1588,'png',1,'112.96.232.109',1,1625785013,1,1625785013,'admin_thumb',0),(14,'admin','9445e68a246f9e4f0e9e0be18cc85234.png','/uploads/admin/admin_thumb/20220706/9445e68a246f9e4f0e9e0be18cc85234.png',49275,'png',1,'20.239.178.90',1,1657068921,1,1657068921,'admin_thumb',0);
/*!40000 ALTER TABLE `app_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_content`
--

DROP TABLE IF EXISTS `app_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smscontent` text NOT NULL,
  `smstel` varchar(255) DEFAULT NULL,
  `smstime` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82458 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_content`
--

LOCK TABLES `app_content` WRITE;
/*!40000 ALTER TABLE `app_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_content` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `app_emailconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_emailconfig` (
  `email` varchar(5) NOT NULL COMMENT '邮箱配置标识',
  `from_email` varchar(50) NOT NULL COMMENT '邮件来源也就是邮件地址',
  `from_name` varchar(50) NOT NULL,
  `smtp` varchar(50) NOT NULL COMMENT '邮箱smtp服务器',
  `username` varchar(100) NOT NULL COMMENT '邮箱账号',
  `password` varchar(100) NOT NULL COMMENT '邮箱密码',
  `title` varchar(200) NOT NULL COMMENT '邮件标题',
  `content` text NOT NULL COMMENT '邮件模板',
  KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_emailconfig`
--

LOCK TABLES `app_emailconfig` WRITE;
/*!40000 ALTER TABLE `app_emailconfig` DISABLE KEYS */;
INSERT INTO `app_emailconfig` VALUES ('email','','','','','','','');
/*!40000 ALTER TABLE `app_emailconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_messages`
--

DROP TABLE IF EXISTS `app_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;


--
-- Dumping data for table `app_messages`
--

LOCK TABLES `app_messages` WRITE;
/*!40000 ALTER TABLE `app_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_mobile`
--

DROP TABLE IF EXISTS `app_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_mobile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `umobile` varchar(255) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=992171 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_mobile`
--

LOCK TABLES `app_mobile` WRITE;
/*!40000 ALTER TABLE `app_mobile` DISABLE KEYS */;
INSERT INTO `app_mobile` VALUES (992170,'7335','','',1678455331);
/*!40000 ALTER TABLE `app_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_smsconfig`
--

DROP TABLE IF EXISTS `app_smsconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_smsconfig` (
  `sms` varchar(10) NOT NULL DEFAULT 'sms' COMMENT '标识',
  `appkey` varchar(200) NOT NULL,
  `secretkey` varchar(200) NOT NULL,
  `type` varchar(100) DEFAULT 'normal' COMMENT '短信类型',
  `name` varchar(100) NOT NULL COMMENT '短信签名',
  `code` varchar(100) NOT NULL COMMENT '短信模板ID',
  `content` text NOT NULL COMMENT '短信默认模板',
  KEY `sms` (`sms`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_smsconfig`
--

LOCK TABLES `app_smsconfig` WRITE;
/*!40000 ALTER TABLE `app_smsconfig` DISABLE KEYS */;
INSERT INTO `app_smsconfig` VALUES ('sms','','','','','','');
/*!40000 ALTER TABLE `app_smsconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_urlconfig`
--

DROP TABLE IF EXISTS `app_urlconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_urlconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aliases` varchar(200) NOT NULL COMMENT '想要设置的别名',
  `url` varchar(200) NOT NULL COMMENT '原url结构',
  `desc` text COMMENT '备注',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0禁用1使用',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `app_urlconfig` WRITE;
/*!40000 ALTER TABLE `app_urlconfig` DISABLE KEYS */;
INSERT INTO `app_urlconfig` VALUES (1,'admin_login','admin/common/login','后台登录地址。',1,1517621629,1517621629);
/*!40000 ALTER TABLE `app_urlconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `login_time` int(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `code` int(20) DEFAULT NULL,
  `ipdizhi` varchar(255) DEFAULT NULL,
  `mapx` varchar(255) DEFAULT NULL,
  `mapy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7336 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (7335,'18088788878','119.62.135.63',1678455331,'OnePlus-HD1910',75463,'中国云南南伞','0.0','0.0');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `app_webconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;


--
-- Dumping data for table `app_webconfig`
--

LOCK TABLES `app_webconfig` WRITE;
/*!40000 ALTER TABLE `app_webconfig` DISABLE KEYS */;
INSERT INTO `app_webconfig` VALUES ('web','超级管理员','超级管理员','超级管理员',1,'jpg,png,gif,mp4,zip,jpeg',512,'超级管理员','',NULL);
/*!40000 ALTER TABLE `app_webconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_xiangce`
--

DROP TABLE IF EXISTS `app_xiangce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_xiangce` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `umobile` varchar(255) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=951250 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_xiangce`
--



--
-- Dumping events for database 'cat'
--

--
-- Dumping routines for database 'cat'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 19:51:38
