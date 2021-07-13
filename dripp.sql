-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: drip3
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

use drip2;

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'액티비티'),(2,'배움');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_review_id_a9dab31c_fk_reviews_id` (`review_id`),
  KEY `comments_user_id_b8fd0b64_fk_users_id` (`user_id`),
  CONSTRAINT `comments_review_id_a9dab31c_fk_reviews_id` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`),
  CONSTRAINT `comments_user_id_b8fd0b64_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'zzzz',1,1),(2,'dddd',2,2),(3,'fff',3,3),(4,'hhhh',1,1),(5,'ggg',2,2),(6,'Wwww',3,3);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'contenttypes','contenttype'),(9,'orders','order'),(8,'orders','status'),(4,'products','category'),(7,'products','product'),(5,'products','search'),(6,'products','subcategory'),(12,'reviews','comment'),(11,'reviews','like'),(10,'reviews','review'),(2,'sessions','session'),(3,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-06-30 20:07:54.910055'),(2,'contenttypes','0002_remove_content_type_name','2021-06-30 20:07:54.984656'),(3,'users','0001_initial','2021-06-30 20:07:55.006319'),(4,'products','0001_initial','2021-06-30 20:07:55.174029'),(5,'orders','0001_initial','2021-06-30 20:07:55.336304'),(6,'products','0002_alter_subcategory_name','2021-06-30 20:07:55.388980'),(7,'products','0003_alter_subcategory_name','2021-06-30 20:07:55.407441'),(8,'products','0004_auto_20210630_2006','2021-06-30 20:07:55.465430'),(9,'reviews','0001_initial','2021-06-30 20:07:55.680389'),(10,'sessions','0001_initial','2021-06-30 20:07:55.699962'),(11,'users','0002_alter_user_origin_pk','2021-06-30 20:07:55.733471');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `review_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_review_id_3ad49b09_fk_reviews_id` (`review_id`),
  KEY `likes_user_id_0899754c_fk_users_id` (`user_id`),
  CONSTRAINT `likes_review_id_3ad49b09_fk_reviews_id` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`),
  CONSTRAINT `likes_user_id_0899754c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2),(6,6,3);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint NOT NULL,
  `status_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_product_id_410f7af4_fk_products_id` (`product_id`),
  KEY `orders_status_id_e763064e_fk_status_id` (`status_id`),
  KEY `orders_user_id_7e2523fb_fk_users_id` (`user_id`),
  CONSTRAINT `orders_product_id_410f7af4_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `orders_status_id_e763064e_fk_status_id` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10,'2021-07-02 12:15:57.793883','2021-07-02 12:15:57.793905',15,3,4),(15,'2021-07-02 12:18:57.890845','2021-07-02 12:18:57.890894',13,3,4),(18,'2021-07-02 12:45:24.461268','2021-07-02 12:45:24.461361',2,3,4),(27,'2021-07-02 14:42:55.750232','2021-07-02 14:42:55.750287',15,2,4),(28,'2021-07-02 15:43:32.323164','2021-07-02 15:43:32.323190',15,1,4),(30,'2021-07-02 15:47:55.495543','2021-07-02 15:47:55.495557',5,2,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(8,1) NOT NULL,
  `main_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sell_count` int NOT NULL,
  `date` date NOT NULL,
  `latitude` decimal(5,4) DEFAULT NULL,
  `longitude` decimal(5,4) DEFAULT NULL,
  `searched_id` bigint NOT NULL,
  `sub_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_searched_id_b04084a2_fk_searched_id` (`searched_id`),
  KEY `products_sub_category_id_f08b7711_fk_sub_categories_id` (`sub_category_id`),
  CONSTRAINT `products_searched_id_b04084a2_fk_searched_id` FOREIGN KEY (`searched_id`) REFERENCES `searched` (`id`),
  CONSTRAINT `products_sub_category_id_f08b7711_fk_sub_categories_id` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'#강원 # 정선 #덕산기계곡 #오지계곡트레킹',48000.0,'https://i.ibb.co/FK8B6kN/image.jpg','https://i.ibb.co/j4TNh87/image.jpg','2021-06-30 20:08:08.018403','서울 서초구 방배천로 11',1230,'2021-06-04',NULL,NULL,1,1),(2,'[1박 2일 포천 여행] 디톡S 힐링푸드와 단독찜가마로 힐랭해요~',160000.0,'https://i.ibb.co/smGFgPN/1-2-S.jpg','https://i.ibb.co/pXvpdWP/1-2-S.jpg','2021-06-30 20:08:08.019852','경기도 포천시 군내면 반월산성로371번길 86-33',124,'2021-06-13',NULL,NULL,2,2),(3,'서울호캉스 | 금요일 디어스 커뮤니티 패키지 with 드립캡틴',250000.0,'https://i.ibb.co/kBLnSLx/image.jpg','https://i.ibb.co/Q68y88C/with.jpg','2021-06-30 20:08:08.020440','서울 중구 퇴계로 176',6357,'2021-06-05',NULL,NULL,3,2),(4,'[인천] 섬에서 쉬자, Slow Stay 소이작도',540000.0,'https://i.ibb.co/N6RQPnb/image.jpg','https://i.ibb.co/M5K4jzx/Slow-Stay.jpg','2021-06-30 20:08:08.024412','인천 중구 연안부두로 70',2132,'2021-05-11',NULL,NULL,4,2),(5,'[7월 OPEN] [소규모] 국내최초 1박2일 불멍스키 혼펜 _우리끼리 넷',159000.0,'https://i.ibb.co/c2d12xH/7-OPEN.jpg','https://i.ibb.co/SXBRxcw/7-OPEN-1-2.jpg','2021-06-30 20:08:08.025402','경기도 가평군 청평면 청평리',9790,'2021-06-05',NULL,NULL,5,2),(6,'[제주살기] 푸른달 일곱밤 에코라이프 in 소랑이싯다',300000.0,'https://i.ibb.co/3k3MgWc/image.jpg','https://i.ibb.co/84dt6p6/in.jpg','2021-06-30 20:08:08.026499','제주특별자치도 제주시 일도이동 1029-91',4,'2020-05-10',NULL,NULL,6,2),(7,'[특별선물 제공] 프립버스 타고 서늘한 선자령 트레킹',70000.0,'https://i.ibb.co/jrHtbDV/image.jpg','https://i.ibb.co/XFjmW5H/image.jpg','2021-06-30 20:08:08.027260','서울시 송파구 잠실동 122',321,'2020-06-11',NULL,NULL,7,1),(8,'[양양] 죽도해변 1박 서핑 캠프 + 왕복 셔틀버스까지!!',180000.0,'https://i.ibb.co/mCCfKvN/1.jpg','https://i.ibb.co/VH7KkvQ/1.jpg','2021-06-30 20:08:08.027912','강원도 양양군 현남면 인구중앙길 97',768,'2020-06-11',NULL,NULL,8,2),(9,'[1만원할인/부산] 현역 선수와 함께하는 광안리 선셋 패들보드',25000.0,'https://i.ibb.co/GVdbstd/1.jpg','https://i.ibb.co/QNSn6zY/1.jpg','2021-06-30 20:08:08.028579','부산광역시 수영구 광안해변로125',435,'2020-06-11',NULL,NULL,9,2),(10,'[양양] 서울-양양해변과 서피비치, 주문전까지 가는 서핑버스',25000.0,'https://i.ibb.co/DCpVXTS/image.jpg','https://i.ibb.co/G2jpx8R/image.jpg','2021-06-30 20:08:08.030271','서울특별시 송파구 올림픽로 23',123,'2020-06-11',NULL,NULL,10,2),(11,'나이프를 활용한 페인팅 클래스 유화&나이프화(예약 가능)',46000.0,'https://i.ibb.co/0nYxP2n/image.jpg','https://i.ibb.co/hdF3wLs/image.jpg','2021-06-30 20:08:08.031124','서울시 서초구 강남대로 381',1230,'2021-06-04',NULL,NULL,11,3),(12,'청담동 메이크업 샵에서 내 얼굴에 꼭 맞는 메이크업 배우기 (예약 가능)',70000.0,'https://i.ibb.co/gDc6dS9/image.jpg','https://i.ibb.co/bWKYk0Q/image.jpg','2021-06-30 20:08:08.031778','서울 강남구 영동대로129길 24-6',123,'2021-06-13',NULL,NULL,12,4),(13,'[사당/동작] 주말 아침을 여는 요가 원데이/정기권/회차권 (예약 가능)',18000.0,'https://i.ibb.co/YfJWpj4/image.jpg','https://i.ibb.co/dLkSFtz/image.jpg','2021-06-30 20:08:08.033172','서울 동작구 사당로30길 133',6356,'2021-06-05',NULL,NULL,13,5),(14,'[양재] 휘낭시에 원데이 클래스 (예약 가능)',50000.0,'https://i.ibb.co/LPM6T5n/image.jpg','https://i.ibb.co/fncz36H/image.jpg','2021-06-30 20:08:08.034180','서울시 서초구 강남대로 30길 12',2132,'2021-05-11',NULL,NULL,14,6),(15,'서귀포 오션뷰 요가 원데이클래스, 카페에서 음료한잔 @프립캠프 제주',30000.0,'https://i.ibb.co/87DxtfC/image.jpg','https://i.ibb.co/YLVCPQ8/image.jpg','2021-06-30 20:08:08.035006','제주특별자치도 서귀포시 태평로 363',9791,'2021-06-05',NULL,NULL,15,6),(16,'[성수] 주말 아침을 여는 요가 원데이/정기권/회차권 (예약 가능)',26000.0,'https://i.ibb.co/3MpSrf2/image.jpg','https://i.ibb.co/FxPPYwf/image.jpg','2021-06-30 20:08:08.036156','서울 성동구 왕십리로14길 32-3',4,'2020-06-11',NULL,NULL,16,5),(17,'[퍼스널컬러] 자존감 UP 비주얼 컨설팅! (예약 가능)',40000.0,'https://i.ibb.co/f0WgN4N/UP.jpg','https://i.ibb.co/yd72j79/UP.jpg','2021-06-30 20:08:08.036869','서울시 강남구 도산대로 158',321,'2020-06-11',NULL,NULL,17,4),(18,'[강남] 자세교정 요가클리닉 90분 프로그램(일일프립 주말)',29000.0,'https://i.ibb.co/j9NFpVf/image.jpg','https://i.ibb.co/5TTjMFZ/90.jpg','2021-06-30 20:08:08.037793','서울시 강남구 논현로85길 25',768,'2020-06-11',NULL,NULL,18,5),(19,'역시 노래는 혜인쌤 원데이, 원포인트 족집게 레슨 (예약 가능)',40000.0,'https://i.ibb.co/0C3qyF8/image.jpg','https://i.ibb.co/yBqSH6Q/image.jpg','2021-06-30 20:08:08.038728','서울시 마포구 망원동 377-2',435,'2020-06-11',NULL,NULL,19,3),(20,'나만의 매력적인 이미지 브랜딩 (퍼스널컬러+메이크업)',90000.0,'https://i.ibb.co/Jn397rq/image.jpg','https://i.ibb.co/qxZTByY/image.jpg','2021-06-30 20:08:08.039400','서울시 서초구 서초동 1328-7',123,'2020-06-11',NULL,NULL,20,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `image_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_d4b78cfe_fk_products_id` (`product_id`),
  KEY `reviews_user_id_c23b0903_fk_users_id` (`user_id`),
  CONSTRAINT `reviews_product_id_d4b78cfe_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `reviews_user_id_c23b0903_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'짭쪼롬하고 너무 맛있어요 매일매일 먹고싶어요!!! ','2021-06-30 20:08:08.040629','https://i.ibb.co/FK8B6kN/image.jpg',2.0,1,1),(2,'존맛탱! 너무 달콤해요!!! 간식계의 에르메스…!  고급지고 너무 맛있네요 또 사먹을게요','2021-06-30 20:08:08.067423','https://i.ibb.co/smGFgPN/1-2-S.jpg',3.0,1,2),(3,'입이 심심했는데 너무나 잘 샀어요! 타젤리보다 부드러워서 편하게 먹을 수 있어서 좋아요 좀 달달함이 있네요','2021-06-30 20:08:08.068534','https://i.ibb.co/kBLnSLx/image.jpg',1.0,1,1),(4,'맛있어요맛있어요맛있어요맛있어요','2021-06-30 20:08:08.069642','https://i.ibb.co/N6RQPnb/image.jpg',2.0,1,1),(5,'돈이 아깝지 않은 구매였습니다 ^ ^ 애들이 맛있다고 더 사자고 난리에요~~~~','2021-06-30 20:08:08.070590','https://i.ibb.co/c2d12xH/7-OPEN.jpg',3.0,1,2),(6,'멋진맛이에요! 너무 맛있고 입안에서 살살 녹아요! 단짠의 조합','2021-06-30 20:08:08.071246','https://i.ibb.co/3k3MgWc/image.jpg',1.0,1,2),(7,'OMG, So delicious! It\'s amazing… ','2021-06-30 20:08:08.071985','https://i.ibb.co/jrHtbDV/image.jpg',2.0,1,3),(8,'제가 30년간 찾아 헤매던 맛이네요 어쩜좋아….','2021-06-30 20:08:08.072768','https://i.ibb.co/mCCfKvN/1.jpg',3.0,1,3),(9,'조리 쉽고, 양 많고, 맛있어요 이 세가지 이유만으로 재구매 하기 충분합니다 와인에다가 야무지게 먹었습니다 매콤한 맛이 있어서 느끼하지 않았어요 고기도 냉장으로 배송되어서 신선했습니다','2021-06-30 20:08:08.073733','https://i.ibb.co/GVdbstd/1.jpg',1.0,1,3),(10,'한봉지를 뜯어 과자를 살펴보니 총 6조각이 차곡차곡 들어있고 가볍지만 단단한 크래커가 노릇노릇 맛있게 구워져있네요','2021-06-30 20:08:08.074675','https://i.ibb.co/DCpVXTS/image.jpg',2.0,1,3),(11,'냄새를 맡아보니 크래커의 향은 거의 없는것같은데 약간 고소하게 누른내?같은게 나요','2021-06-30 20:08:08.075572','https://i.ibb.co/0nYxP2n/image.jpg',3.0,2,3),(12,'과자 중앙에 점선을따라 반으로 쪼개보니 톡 하고 쉽게 나눠지네요','2021-06-30 20:08:08.076265','https://i.ibb.co/gDc6dS9/image.jpg',1.0,2,2),(13,'반조각을 들고 먹어보니 한입에 쏙 들어가는게 핑거푸드로 딱 적합한 크기같아요 게다가 손가락에 기름도 묻어나지않네요','2021-06-30 20:08:08.077204','https://i.ibb.co/YfJWpj4/image.jpg',3.0,2,2),(14,'역시 맛도깔끔 크기도 깔끔합니다!','2021-06-30 20:08:08.078995','https://i.ibb.co/LPM6T5n/image.jpg',2.0,2,2),(15,'얼핏보면 타사의 아이비크래커나 에이스비스킷과 비슷하게 생겼지만 에이스와는 전혀 다른맛이지요^^','2021-06-30 20:08:08.079858','https://i.ibb.co/87DxtfC/image.jpg',3.0,2,2),(16,'과자의 질감을 보여주기위해 반으로 쪼개고 또 부셔봤는데요','2021-06-30 20:08:08.080689','https://i.ibb.co/3MpSrf2/image.jpg',1.0,2,1),(17,'식감은 바삭바삭하고 씹을수록 크래커가 섞이면서 처음에는 퍽퍽하지만 점점 되직한 밀가루 반죽처럼 뭉쳐지면서 부드럽게 변하구요 구수한 향이나면서 짜지않고 아주 담백합니다','2021-06-30 20:08:08.081804','https://i.ibb.co/f0WgN4N/UP.jpg',2.0,2,1),(18,'사실 짤까봐 은근 걱정했는데 안짜고 오히려 고소담백해서 심심한듯 먹기 좋았어요! 먹고난 후 입속에 냄새나 뒷맛도 남지 않네요','2021-06-30 20:08:08.082820','https://i.ibb.co/j9NFpVf/image.jpg',3.0,2,1),(19,'제가 애정하는 과자중에 하나인 참크래커~!!!ㅋ','2021-06-30 20:08:08.083848','https://i.ibb.co/0C3qyF8/image.jpg',2.0,2,1),(20,'이마트에서 항상 1+1 행사를 해주셔서 정말 혜택을 누리는 1인이네요~ㅋ','2021-06-30 20:08:08.084671','https://i.ibb.co/Jn397rq/image.jpg',1.0,2,2),(21,'자극적이지 않는 과자라서 정말 먹다보면..한도끝도 없이 들어간다는...ㅠ','2021-06-30 20:08:08.085608','https://i.ibb.co/FK8B6kN/image.jpg',2.0,3,2),(22,'참크래커는 먹다보면 약간 목이 메일수도 있어요~~ㅋ음료수나 우유랑 같이 먹으면 더욱맛있지만..','2021-06-30 20:08:08.086478','https://i.ibb.co/smGFgPN/1-2-S.jpg',3.0,3,2),(23,'더욱 맛있는 꿀팁을 알려드리자면!!ㅋㅋ','2021-06-30 20:08:08.087460','https://i.ibb.co/kBLnSLx/image.jpg',3.0,3,3),(24,'집에 냉장고에보면 굴러다니는 체다치즈 하나씩 있으실거에요~~ㅋㅋ','2021-06-30 20:08:08.088145','https://i.ibb.co/N6RQPnb/image.jpg',3.0,3,3),(25,'체다치즈를 크래커크기만큼 쭉쭉 찢어서 크래커위에 하나씩 올려먹으면!!','2021-06-30 20:08:08.089069','https://i.ibb.co/c2d12xH/7-OPEN.jpg',3.0,3,3),(26,'정말정말 맛있어요!! 크래커의 바삭함과 치즈의 촉촉함이 한데 어우러져서 마구마구 씹다보면 너무 맛있어서..계속 손이 가게 됩니다!','2021-06-30 20:08:08.090136','https://i.ibb.co/3k3MgWc/image.jpg',2.0,3,1),(27,'그런데 체다치즈가 너무차다!라고 느껴지신다면..작은 종지그릇에 치즈를 잘라서 넣고 전자렌지에 돌려주세요~~금방 녹아요~~ㅋ','2021-06-30 20:08:08.091868','https://i.ibb.co/jrHtbDV/image.jpg',3.0,3,1),(28,'그런다음 다 녹은 치즈에 크래커를 찍어서 먹으면~~출출할때나 술안주로 완전 제격입니다..','2021-06-30 20:08:08.092813','https://i.ibb.co/mCCfKvN/1.jpg',2.0,3,1),(29,'제가 항상 해먹는 방법이에요~~ㅋ 이렇게 먹다보면 한박스는 그냥 훅~ㅠㅠ','2021-06-30 20:08:08.093705','https://i.ibb.co/GVdbstd/1.jpg',3.0,3,2),(30,'그래도 부담없이 먹을수 잇는 참크래커라서 괜찮다는..ㅎㅎ','2021-06-30 20:08:08.095310','https://i.ibb.co/DCpVXTS/image.jpg',2.0,3,2),(31,'다들 이렇게 먹어보세요~~짱맛있어용!','2021-06-30 20:08:08.096150','https://i.ibb.co/0nYxP2n/image.jpg',3.0,4,3),(32,'회사에서 간식으로 먹기 위해서 탕비실에 넣어둘 요량으로 과자를 많이 구매했습니다.','2021-06-30 20:08:08.097011','https://i.ibb.co/gDc6dS9/image.jpg',2.0,4,3),(33,'낱개 포장이라서 먹기도 간편하고 가격도 아주 합리적이라 고민할 필요 없이 바로 장바구니에 담았죠.','2021-06-30 20:08:08.098051','https://i.ibb.co/YfJWpj4/image.jpg',3.0,4,3),(34,'드셔보신 분은 모두 동의하시겠지만 담백해서 달지 않은 과자를 원하시는 분들에게 아주 좋아요.','2021-06-30 20:08:08.098984','https://i.ibb.co/LPM6T5n/image.jpg',2.0,4,1),(35,'직장 동료 모두가 만족했습니다.','2021-06-30 20:08:08.099840','https://i.ibb.co/87DxtfC/image.jpg',3.0,4,1),(36,'제품 하나의 양이 적어서 한 번에 3개나 먹는 문제가 발생하기는 해요ㅎㅎㅎ','2021-06-30 20:08:08.100765','https://i.ibb.co/3MpSrf2/image.jpg',2.0,4,1),(37,'크기는 작지만 맛은 최고거든요.','2021-06-30 20:08:08.101743','https://i.ibb.co/f0WgN4N/UP.jpg',3.0,4,2),(38,'출출할 때 우유나 커피랑 먹기에 딱 좋은 맛입니다.','2021-06-30 20:08:08.102630','https://i.ibb.co/j9NFpVf/image.jpg',3.0,4,3),(39,'바삭바삭한 식감이 딱 좋습니다.','2021-06-30 20:08:08.103613','https://i.ibb.co/0C3qyF8/image.jpg',2.0,4,3),(40,'가끔 참치랑 오이를 올려서 와인 안주로 먹기도 하는데 그것도 아주 맛있어요.','2021-06-30 20:08:08.104843','https://i.ibb.co/Jn397rq/image.jpg',2.0,4,2),(41,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.105743','https://i.ibb.co/FK8B6kN/image.jpg',3.0,5,1),(42,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.106633','https://i.ibb.co/smGFgPN/1-2-S.jpg',3.0,6,2),(43,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.107523','https://i.ibb.co/kBLnSLx/image.jpg',1.0,7,3),(44,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.109146','https://i.ibb.co/N6RQPnb/image.jpg',1.0,8,2),(45,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.110728','https://i.ibb.co/c2d12xH/7-OPEN.jpg',2.0,9,1),(46,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.111606','https://i.ibb.co/3k3MgWc/image.jpg',2.0,10,1),(47,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.112482','https://i.ibb.co/jrHtbDV/image.jpg',1.0,10,2),(48,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.113378','https://i.ibb.co/mCCfKvN/1.jpg',2.0,10,3),(49,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.114307','https://i.ibb.co/GVdbstd/1.jpg',1.0,10,2),(50,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.115238','https://i.ibb.co/DCpVXTS/image.jpg',2.0,10,1),(51,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.116177','https://i.ibb.co/0nYxP2n/image.jpg',2.0,9,1),(52,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.117067','https://i.ibb.co/gDc6dS9/image.jpg',3.0,9,2),(53,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.118000','https://i.ibb.co/YfJWpj4/image.jpg',1.0,9,2),(54,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.118963','https://i.ibb.co/LPM6T5n/image.jpg',2.0,9,3),(55,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.120156','https://i.ibb.co/87DxtfC/image.jpg',3.0,8,3),(56,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.121137','https://i.ibb.co/3MpSrf2/image.jpg',2.0,8,3),(57,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.122195','https://i.ibb.co/f0WgN4N/UP.jpg',1.0,8,2),(58,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.123038','https://i.ibb.co/j9NFpVf/image.jpg',2.0,8,1),(59,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.123709','https://i.ibb.co/0C3qyF8/image.jpg',2.0,7,2),(60,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.124388','https://i.ibb.co/Jn397rq/image.jpg',1.0,7,3),(61,'이자식들 맛이 변했음 이제 안먹음','2021-06-30 20:08:08.125091','https://i.ibb.co/FK8B6kN/image.jpg',2.0,7,1),(62,'왜 후기가 이렇게 좋은지 왜 이제야 왔는지 이해와 후회가 동시에 왔던 ㅠㅠ ㅎㅎ 정말 즐거운 1박2일이었어요! 개냥이들의 폭풍애교와 넓은 정원, 알찬 프로그램들과 아침 해장국까지! 뭐하나 정말 빠짐없이 좋았던 경험이예요. 벌써부터 다시 시작될 9월이 기대됩니다! 팝콘하우스 화이팅!!','2021-06-30 20:08:08.125757','https://i.ibb.co/smGFgPN/1-2-S.jpg',5.0,1,1),(63,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.127581','https://i.ibb.co/kBLnSLx/image.jpg',4.0,1,2),(64,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.128590','https://i.ibb.co/N6RQPnb/image.jpg',5.0,1,3),(65,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.129552','https://i.ibb.co/c2d12xH/7-OPEN.jpg',4.0,1,2),(66,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.130689','https://i.ibb.co/3k3MgWc/image.jpg',5.0,1,2),(67,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.131862','https://i.ibb.co/jrHtbDV/image.jpg',5.0,1,1),(68,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.135701','https://i.ibb.co/mCCfKvN/1.jpg',5.0,9,2),(69,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.136642','https://i.ibb.co/GVdbstd/1.jpg',4.0,9,3),(70,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.137707','https://i.ibb.co/DCpVXTS/image.jpg',5.0,9,1),(71,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.139063','https://i.ibb.co/0nYxP2n/image.jpg',4.0,9,2),(72,'바다에서 보는 광안리와 선셋은 또 다른 느낌이었어요.\n요즘 기분이 많이 다운되어있었는데, 덕분에 활기를 되찾은 것 같습니다. 바다에 있는 내내 다른 일들은 머리속에서 싹 지우고 현재에 집중할 수 있었어요.\n항상 차타고 지나가기만했던 광안대교도 처음으로 손으로 직접 만져봤습니다!!!\n혼자 갑자기 결정해서 가게 된거라 괜찮을지 조금 걱정하기도 했는데, 강사님들이 정말 기초부터 차근차근 잘 가르쳐주시고, 같이 이야기하며, 사진도 많이 찍어주셔서 좋았습니다.\n시간날 때 꼭꼭 다시 가겠습니다:)','2021-06-30 20:08:08.140033','https://i.ibb.co/gDc6dS9/image.jpg',4.0,9,3),(73,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.141023','https://i.ibb.co/YfJWpj4/image.jpg',4.0,9,1),(74,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.141966','https://i.ibb.co/LPM6T5n/image.jpg',5.0,2,2),(75,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.142716','https://i.ibb.co/87DxtfC/image.jpg',5.0,2,3),(76,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.143582','https://i.ibb.co/3MpSrf2/image.jpg',5.0,2,1),(77,'바다에서 보는 광안리와 선셋은 또 다른 느낌이었어요.\n요즘 기분이 많이 다운되어있었는데, 덕분에 활기를 되찾은 것 같습니다. 바다에 있는 내내 다른 일들은 머리속에서 싹 지우고 현재에 집중할 수 있었어요.\n항상 차타고 지나가기만했던 광안대교도 처음으로 손으로 직접 만져봤습니다!!!\n혼자 갑자기 결정해서 가게 된거라 괜찮을지 조금 걱정하기도 했는데, 강사님들이 정말 기초부터 차근차근 잘 가르쳐주시고, 같이 이야기하며, 사진도 많이 찍어주셔서 좋았습니다.\n시간날 때 꼭꼭 다시 가겠습니다:)','2021-06-30 20:08:08.144683','https://i.ibb.co/f0WgN4N/UP.jpg',5.0,2,2),(78,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.145684','https://i.ibb.co/j9NFpVf/image.jpg',5.0,2,3),(79,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.146713','https://i.ibb.co/0C3qyF8/image.jpg',5.0,2,1),(80,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.149326','https://i.ibb.co/Jn397rq/image.jpg',4.0,3,2),(81,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.150272','https://i.ibb.co/FK8B6kN/image.jpg',4.0,3,3),(82,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.151509','https://i.ibb.co/smGFgPN/1-2-S.jpg',4.0,3,1),(83,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.152966','https://i.ibb.co/kBLnSLx/image.jpg',4.0,3,2),(84,'왜 후기가 이렇게 좋은지 왜 이제야 왔는지 이해와 후회가 동시에 왔던 ㅠㅠ ㅎㅎ 정말 즐거운 1박2일이었어요! 개냥이들의 폭풍애교와 넓은 정원, 알찬 프로그램들과 아침 해장국까지! 뭐하나 정말 빠짐없이 좋았던 경험이예요. 벌써부터 다시 시작될 9월이 기대됩니다! 팝콘하우스 화이팅!!','2021-06-30 20:08:08.159712','https://i.ibb.co/N6RQPnb/image.jpg',5.0,3,3),(85,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.161986','https://i.ibb.co/c2d12xH/7-OPEN.jpg',5.0,3,1),(86,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.163408','https://i.ibb.co/3k3MgWc/image.jpg',4.0,4,2),(87,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.164870','https://i.ibb.co/jrHtbDV/image.jpg',5.0,4,1),(88,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.165968','https://i.ibb.co/mCCfKvN/1.jpg',5.0,4,3),(89,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.167130','https://i.ibb.co/GVdbstd/1.jpg',5.0,4,1),(90,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.168746','https://i.ibb.co/DCpVXTS/image.jpg',4.0,4,2),(91,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.170225','https://i.ibb.co/0nYxP2n/image.jpg',5.0,4,1),(92,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.171454','https://i.ibb.co/gDc6dS9/image.jpg',5.0,5,1),(93,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.173826','https://i.ibb.co/YfJWpj4/image.jpg',4.0,5,2),(94,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.175092','https://i.ibb.co/LPM6T5n/image.jpg',5.0,5,2),(95,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.176478','https://i.ibb.co/87DxtfC/image.jpg',4.0,5,3),(96,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.177746','https://i.ibb.co/3MpSrf2/image.jpg',5.0,5,3),(97,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.179040','https://i.ibb.co/f0WgN4N/UP.jpg',4.0,6,3),(98,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.181412','https://i.ibb.co/j9NFpVf/image.jpg',5.0,6,3),(99,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.182778','https://i.ibb.co/0C3qyF8/image.jpg',4.0,6,3),(100,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.184414','https://i.ibb.co/Jn397rq/image.jpg',5.0,6,2),(101,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.185708','https://i.ibb.co/FK8B6kN/image.jpg',4.0,6,2),(102,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.186873','https://i.ibb.co/FK8B6kN/image.jpg',5.0,7,2),(103,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.188696','https://i.ibb.co/smGFgPN/1-2-S.jpg',4.0,7,2),(104,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.189853','https://i.ibb.co/kBLnSLx/image.jpg',5.0,7,1),(105,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.195271','https://i.ibb.co/N6RQPnb/image.jpg',4.0,7,1),(106,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.196595','https://i.ibb.co/c2d12xH/7-OPEN.jpg',5.0,7,1),(107,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.198209','https://i.ibb.co/3k3MgWc/image.jpg',4.0,8,1),(108,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.199424','https://i.ibb.co/jrHtbDV/image.jpg',5.0,8,2),(109,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.201503','https://i.ibb.co/mCCfKvN/1.jpg',4.0,8,2),(110,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.203087','https://i.ibb.co/GVdbstd/1.jpg',5.0,8,2),(111,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.204544','https://i.ibb.co/DCpVXTS/image.jpg',5.0,8,3),(112,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.205602','https://i.ibb.co/0nYxP2n/image.jpg',4.0,8,3),(113,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.206675','https://i.ibb.co/gDc6dS9/image.jpg',5.0,8,3),(114,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.208159','https://i.ibb.co/YfJWpj4/image.jpg',4.0,10,1),(115,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.209695','https://i.ibb.co/LPM6T5n/image.jpg',5.0,10,1),(116,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.210828','https://i.ibb.co/87DxtfC/image.jpg',4.0,10,1),(117,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.213672','https://i.ibb.co/3MpSrf2/image.jpg',5.0,10,2),(118,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.214868','https://i.ibb.co/f0WgN4N/UP.jpg',4.0,10,2),(119,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.215945','https://i.ibb.co/j9NFpVf/image.jpg',5.0,10,3),(120,'왜 후기가 이렇게 좋은지 왜 이제야 왔는지 이해와 후회가 동시에 왔던 ㅠㅠ ㅎㅎ 정말 즐거운 1박2일이었어요! 개냥이들의 폭풍애교와 넓은 정원, 알찬 프로그램들과 아침 해장국까지! 뭐하나 정말 빠짐없이 좋았던 경험이예요. 벌써부터 다시 시작될 9월이 기대됩니다! 팝콘하우스 화이팅!!','2021-06-30 20:08:08.217020','https://i.ibb.co/0C3qyF8/image.jpg',5.0,11,3),(121,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.218813','https://i.ibb.co/Jn397rq/image.jpg',4.0,11,3),(122,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.219968','https://i.ibb.co/FK8B6kN/image.jpg',4.0,11,1),(123,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.220834','https://i.ibb.co/smGFgPN/1-2-S.jpg',5.0,11,1),(124,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.221971','https://i.ibb.co/kBLnSLx/image.jpg',4.0,11,1),(125,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.227793','https://i.ibb.co/N6RQPnb/image.jpg',5.0,12,2),(126,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.229032','https://i.ibb.co/c2d12xH/7-OPEN.jpg',5.0,12,3),(127,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.230057','https://i.ibb.co/3k3MgWc/image.jpg',4.0,12,3),(128,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.231819','https://i.ibb.co/jrHtbDV/image.jpg',4.0,12,2),(129,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.232860','https://i.ibb.co/mCCfKvN/1.jpg',4.0,12,1),(130,'바다에서 보는 광안리와 선셋은 또 다른 느낌이었어요.\n요즘 기분이 많이 다운되어있었는데, 덕분에 활기를 되찾은 것 같습니다. 바다에 있는 내내 다른 일들은 머리속에서 싹 지우고 현재에 집중할 수 있었어요.\n항상 차타고 지나가기만했던 광안대교도 처음으로 손으로 직접 만져봤습니다!!!\n혼자 갑자기 결정해서 가게 된거라 괜찮을지 조금 걱정하기도 했는데, 강사님들이 정말 기초부터 차근차근 잘 가르쳐주시고, 같이 이야기하며, 사진도 많이 찍어주셔서 좋았습니다.\n시간날 때 꼭꼭 다시 가겠습니다:)','2021-06-30 20:08:08.235108','https://i.ibb.co/GVdbstd/1.jpg',4.0,13,2),(131,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.236222','https://i.ibb.co/DCpVXTS/image.jpg',5.0,13,3),(132,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.237222','https://i.ibb.co/0nYxP2n/image.jpg',5.0,13,2),(133,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.238534','https://i.ibb.co/gDc6dS9/image.jpg',5.0,13,1),(134,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.239565','https://i.ibb.co/YfJWpj4/image.jpg',4.0,13,1),(135,'바다에서 보는 광안리와 선셋은 또 다른 느낌이었어요.\n요즘 기분이 많이 다운되어있었는데, 덕분에 활기를 되찾은 것 같습니다. 바다에 있는 내내 다른 일들은 머리속에서 싹 지우고 현재에 집중할 수 있었어요.\n항상 차타고 지나가기만했던 광안대교도 처음으로 손으로 직접 만져봤습니다!!!\n혼자 갑자기 결정해서 가게 된거라 괜찮을지 조금 걱정하기도 했는데, 강사님들이 정말 기초부터 차근차근 잘 가르쳐주시고, 같이 이야기하며, 사진도 많이 찍어주셔서 좋았습니다.\n시간날 때 꼭꼭 다시 가겠습니다:)','2021-06-30 20:08:08.240575','https://i.ibb.co/LPM6T5n/image.jpg',4.0,13,2),(136,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.242844','https://i.ibb.co/87DxtfC/image.jpg',5.0,13,3),(137,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.244028','https://i.ibb.co/3MpSrf2/image.jpg',5.0,14,2),(138,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.245378','https://i.ibb.co/f0WgN4N/UP.jpg',5.0,14,1),(139,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.246478','https://i.ibb.co/j9NFpVf/image.jpg',4.0,14,1),(140,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.247780','https://i.ibb.co/0C3qyF8/image.jpg',4.0,14,2),(141,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.249323','https://i.ibb.co/Jn397rq/image.jpg',5.0,14,2),(142,'왜 후기가 이렇게 좋은지 왜 이제야 왔는지 이해와 후회가 동시에 왔던 ㅠㅠ ㅎㅎ 정말 즐거운 1박2일이었어요! 개냥이들의 폭풍애교와 넓은 정원, 알찬 프로그램들과 아침 해장국까지! 뭐하나 정말 빠짐없이 좋았던 경험이예요. 벌써부터 다시 시작될 9월이 기대됩니다! 팝콘하우스 화이팅!!','2021-06-30 20:08:08.250731','https://i.ibb.co/FK8B6kN/image.jpg',5.0,14,3),(143,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.252007','https://i.ibb.co/FK8B6kN/image.jpg',4.0,14,3),(144,'비가 오는 날이라 선셋은 볼수없었지만,\n대신 덥지도 않고 파도가 잔잔해서 좋았답니다!\n친절하게 가르쳐주셔서 좋았어요 꼭 다시갈게요 ','2021-06-30 20:08:08.253284','https://i.ibb.co/smGFgPN/1-2-S.jpg',4.0,15,3),(145,'바로 어제 혼펜에 다녀왔는데요, 칭찬이 자자 했던 프립이라 기대가 많았는데 역시나 기대에 부응했습니다. \n\n먼저, 청평역에 미리 안내받은 시간까지 가면 호스트님께서 직접 픽업 해주시기 때문에 차량 걱정없이 바로 펜션에 도착할 수 있고, 개인적으로는 동물을 좋아하기 때문에 가면 반겨주는 멍멍이와 개냥이들이랑 인사하는 거 좋았습니다!\n제일 첫번째 티켓 구입자에게 가장 좋은 펜션 주신댔는데, 제가 당첨이 되어서 테라스 있는 2층 펜션 배정받았구 낮에 두 시간 잠깐 주어지는 그 시간에 앉아서 정원 구경하는 재미가 쏠쏠하더라구요:)\n같이 온 혼펜러들 모여서 비어타임 갖고, 분위기 풀어질즈음 바베큐 타임오고! 고기의 질도 너무 좋아서 배부른데도 계속 먹었어요 먹을 거 걱정없이 배터지게 먹구 왔습니다. \n','2021-06-30 20:08:08.254517','https://i.ibb.co/kBLnSLx/image.jpg',5.0,15,2),(146,'이번 혼펜 다녀오면서 \n딱 4가지 주제로 정리하여 후기남깁니다\n정말 이 프립 대단합니다.. \n그냥 바로 결제 하시길!!  고민 하지마세요','2021-06-30 20:08:08.256098','https://i.ibb.co/N6RQPnb/image.jpg',5.0,15,1),(147,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.257504','https://i.ibb.co/c2d12xH/7-OPEN.jpg',4.0,15,2),(148,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.258920','https://i.ibb.co/3k3MgWc/image.jpg',4.0,15,3),(149,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.260275','https://i.ibb.co/jrHtbDV/image.jpg',5.0,15,1),(150,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.262457','https://i.ibb.co/mCCfKvN/1.jpg',5.0,15,1),(151,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.263717','https://i.ibb.co/GVdbstd/1.jpg',4.0,16,2),(152,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.264969','https://i.ibb.co/DCpVXTS/image.jpg',4.0,16,3),(153,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.267185','https://i.ibb.co/0nYxP2n/image.jpg',5.0,16,2),(154,'선생님께서 설명을 너무 잘해주셔서 이해하기 쉬웠어요!\n처음에 탈 땐 빠질까봐 무서웠는데 타면 탈수록 너무 재밌었어요. 강추입니다.','2021-06-30 20:08:08.269945','https://i.ibb.co/gDc6dS9/image.jpg',5.0,16,2),(155,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.271720','https://i.ibb.co/YfJWpj4/image.jpg',5.0,16,1),(156,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.273483','https://i.ibb.co/LPM6T5n/image.jpg',4.0,16,2),(157,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.275620','https://i.ibb.co/87DxtfC/image.jpg',4.0,16,3),(158,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.277551','https://i.ibb.co/3MpSrf2/image.jpg',4.0,17,1),(159,'추석연휴기간 전이라서 마침 시간이 딱! 있는데 사실상 요즘엔 친구들이랑 갑자기 시간맞추기도 어렵고 또 오랜만에 쉬는날이라서 뭔가 계획있는 여행보다는 무작정 쉬고싶다 그냥 쉬고싶다 이런생각이였어요\n저는 운전을 못하는데 가평역에서 편하게 픽업도 해주셨구요!\n진짜 낮시간에 펜션마당에서 빵뜯어먹으면서 책보는데 예쁜 냥이들이 지켜주구ㅠㅠ 힐링이였어요ㅠㅠ \n저녁에는 진짜 좋은 분들이 많이오셔서 너무 즐겁게 대화할 수 있었어요!! 호스트님께서 분위기도 넘 잘만들어주고 준비도 엄청 많이해주셨더라구요!!  불멍하면서 별도보구 마시멜로우 구워먹은거 진짜 맛있었는데 사진이 없네요ㅠ 또 먹구 싶어요 \n애기하다보니까 진짜 새벽까지 시간가는줄 모르고 수다수다를ㅎ 행복한 시간이였습니다 좋은기운 많이 많이 받고 완전 푹쉬고가요~\n행복한 추억을 만들어주셔서 너무 고맙습니다 나중에 또갈게요!','2021-06-30 20:08:08.279426','https://i.ibb.co/f0WgN4N/UP.jpg',4.0,17,2),(160,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.281484','https://i.ibb.co/j9NFpVf/image.jpg',4.0,17,3),(161,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.283324','https://i.ibb.co/0C3qyF8/image.jpg',5.0,17,1),(162,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.286132','https://i.ibb.co/Jn397rq/image.jpg',5.0,17,2),(163,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.287823','https://i.ibb.co/FK8B6kN/image.jpg',5.0,17,3),(164,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.289631','https://i.ibb.co/smGFgPN/1-2-S.jpg',5.0,17,1),(165,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.291550','https://i.ibb.co/kBLnSLx/image.jpg',4.0,17,2),(166,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.293156','https://i.ibb.co/N6RQPnb/image.jpg',4.0,18,3),(167,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.295570','https://i.ibb.co/c2d12xH/7-OPEN.jpg',4.0,18,1),(168,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.297459','https://i.ibb.co/3k3MgWc/image.jpg',4.0,18,2),(169,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.299138','https://i.ibb.co/jrHtbDV/image.jpg',4.0,18,3),(170,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.300741','https://i.ibb.co/mCCfKvN/1.jpg',4.0,18,1),(171,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.303380','https://i.ibb.co/GVdbstd/1.jpg',5.0,18,2),(172,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.305130','https://i.ibb.co/DCpVXTS/image.jpg',5.0,18,3),(173,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.307584','https://i.ibb.co/0nYxP2n/image.jpg',5.0,19,1),(174,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.309580','https://i.ibb.co/gDc6dS9/image.jpg',4.0,19,2),(175,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.311206','https://i.ibb.co/YfJWpj4/image.jpg',4.0,19,2),(176,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.312803','https://i.ibb.co/LPM6T5n/image.jpg',4.0,19,3),(177,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.315423','https://i.ibb.co/87DxtfC/image.jpg',5.0,19,1),(178,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.317257','https://i.ibb.co/3MpSrf2/image.jpg',5.0,19,2),(179,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.319081','https://i.ibb.co/f0WgN4N/UP.jpg',5.0,19,3),(180,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.320691','https://i.ibb.co/j9NFpVf/image.jpg',5.0,20,1),(181,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.322645','https://i.ibb.co/0C3qyF8/image.jpg',4.0,20,2),(182,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.324373','https://i.ibb.co/Jn397rq/image.jpg',4.0,20,3),(183,'에고고 후기를 쓴 줄 알았는데 안 썼다늬,,ㅜㅜ죄송함댜\n한창 힘든 시기에 멀리 여행도 못나가서 가까운 곳에 머리나 식히고자 훌쩍 떠난 여행이었습니당.\n호스트 분께서 누구하나 소외됨 없이 잘 어울릴 수 있도록 신경을 많이 써주셔서 어색함 하나 없이 참여자 전부 금세 친해졌어요 ㅎㅎ \n낮맥시간부터 저녁 BBQ타임을 지나, 밤 늦게까지 불멍도 때리고, 밤 하늘에 별도 보면서 이야기 하는 시간이 너무 좋았습니다.\n아침에는 가까운 곳에서 맛있는 해장국도 먹고 \n, 산과 강이 훤히 내다 보이는 카페도 갔는데 너무 좋았어요.ㅠㅠ 또, 뚜벅이인 저로서는 차로 픽업이 된다는 점에서 부담이 적어 너무 좋았습니당!!\n혼펜의 매력은 한번 온 사람들이 또 온다는 점 같아요.\n혼펜을 5번 이상 이용하신 분들이 그 비싼 연태고량주와 칭따오, 양고기 등 일용할 양식을 ㅜㅜ 후하게 싸오셔서 다같이 너무너무 맛있게 먹으며 즐거운 시간을 보냈습니댜,,,!\n(ㅅㅁ언니 감사해용♡)','2021-06-30 20:08:08.326913','https://i.ibb.co/FK8B6kN/image.jpg',4.0,20,1),(184,'후기를 써본 적이 없어 두서없더라도... 남겨봅니다^^;\n요즘 코로나로 아무데도 못가는데 추석당일에 어디라도 다녀올까 싶어서 프립 살펴보다가 후기가 하도 좋길래 겸사겸사 신청했습니다.\n먼저 1인1펜션이 매력적이었고 사진에서 보이는 풍경도 맘에 들어 가기 전부터도 많이 설렜어요.\n원래 너무 기대가 크면 실망감이 크다는데, 이번에는 예외였습니다. 결론부터 말하자면 대만족이었어요.\n사진에서 보던 그대로의 풍경이 있었고 혼자만의 시간도, 그 날 오신 분들과의 교류하는 시간도 적절하게 배치되어 조화로운 시간이었어요.\n사실 이건 그 날 누가 오느냐에 따라 많이 좌우가 될 거 같긴 하지만, 감사하게도 제가 간 날의 게스트 분들은 모두 나이대가 비슷하고, 관심사도 비슷하고, 소통이 잘 되는 분들이 모여 술이 많이 들어가지 않았음에도 새벽까지(4시까지^^;;) 재밌게 이야기를 나눴네요.\n모두가 혼자 온 분들이라  쉽게 친해지고 오히려 처음 본 사람이니 차마 하지 못하는 진지한 이야기까지 나눌 수 있었던 것 같아요.\n저희가 도란도란 이야기 나누는 걸 좋아하는 사람들이 모이다보니 호스트님도 좀 진행의무감(?)이 덜 하실 수 있었고,  하나의 일원으로 잘 어울릴 수 있었던 것 같습니다~','2021-06-30 20:08:08.328787','https://i.ibb.co/FK8B6kN/image.jpg',5.0,20,2),(185,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.331480','https://i.ibb.co/smGFgPN/1-2-S.jpg',4.0,20,3),(186,'설레발 치면 알바라고 오해할까봐 자중하고 싶지만... \n이건 정말 말도 안되는 레알 미친 혜자 프로그램임... \n\n일단 노을 컨디션이 중요한것 같긴 한데 \n제가 갔을땐 ㅜㅜ 진짜 무슨 CG 였음 ㅠㅠㅠ ','2021-06-30 20:08:08.334062','https://i.ibb.co/kBLnSLx/image.jpg',5.0,20,1),(187,'그리고 후기 읽으시는 분들을 위해 제가 궁금했던거/느낀거\n\n1. 주소를 카카오 지도에 찍고 가면 뒷마당으로 연결되는데 거기 말고 코너돌면 입구 있어요\n2. 구명조끼 입으면 물에 빠졌을 때 보트 위로 올라오기 힘드니 어지간하면 안입는게 편합니다\n3. 옷은 그냥 아무거나 입어도 괜찮은것같아요. 물에 젖을 확률이 높으니 너무 비치는것만 아니먼 괜찮을것 같아요. 수트 대여할수도 있는데 날도 그렇게 안춥고 코시국이라 그냥 요가할때 입는 옷 입고 탔습니다.\n4. 내부에 샤워공간 있고 여자탈의실 기준 4명 언저리까진 쓸수 있을듯..? 하네요 샤워제품들 다 있습니다.\n5. 다음날 전신 특히 상체에 약간 근육통 있어요 , 요가나 필테가볍게 하고 다음날 느낌..? 평범한 여자체력정도면 다음날 일정에 무리 있을 정도는 아닙니다~','2021-06-30 20:08:08.335721','https://i.ibb.co/N6RQPnb/image.jpg',4.0,20,2),(188,'친절하고 꼼꼼한 강습과 멋진광안대교배경으로 패들보드를 경험할수있어서 정말 좋았습니다. 강추!!! 사진도 많이찍어주셔서 감사합니다^^','2021-06-30 20:08:08.337500','https://i.ibb.co/c2d12xH/7-OPEN.jpg',5.0,20,3),(189,'sdf','2021-07-02 13:20:30.817080','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:20:30.281837.png',4.5,1,4),(190,'sdf','2021-07-02 13:28:23.285515','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:28:21.984525.png',4.5,1,4),(191,'sdf','2021-07-02 13:28:43.246245','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:28:42.878646.png',4.5,1,4),(192,'요가싫어!','2021-07-02 13:42:47.233539','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:42:47.000863.png',3.0,13,4),(193,'쉽지않네요','2021-07-02 13:46:12.394729','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:46:11.870489.png',2.0,15,4),(194,'너무 재밌었어요','2021-07-02 13:56:38.649871','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0213:56:38.115878.png',5.0,13,4),(195,'재밌었습니다','2021-07-02 14:43:24.251345','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0214:43:23.764194.png',4.0,2,4),(196,'안녕하세요','2021-07-02 15:49:11.861552','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0215:49:11.448757.png',4.0,13,4),(197,'안녕하세요','2021-07-02 15:49:11.927915','https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/2021-07-0215:49:11.752268.png',4.0,13,4);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searched`
--

DROP TABLE IF EXISTS `searched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searched` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searched`
--

LOCK TABLES `searched` WRITE;
/*!40000 ALTER TABLE `searched` DISABLE KEYS */;
INSERT INTO `searched` VALUES (1,1),(2,2),(3,1),(4,1),(5,4),(6,2),(7,1),(8,3),(9,2),(10,1),(11,3),(12,2),(13,2),(14,1),(15,5),(16,4),(17,3),(18,2),(19,1),(20,1);
/*!40000 ALTER TABLE `searched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'북마크'),(2,'사용전'),(3,'사용완료');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_dc42080e_fk_categories_id` (`category_id`),
  CONSTRAINT `sub_categories_category_id_dc42080e_fk_categories_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,'트래킹',0.20,1),(2,'캠핑',0.30,1),(3,'취미',0.50,2),(4,'메이크업',0.10,2),(5,'요가',0.10,2),(6,'쿠킹',0.00,2);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `origin_pk` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tmdfl@tmd.com','김경천','https://i.ibb.co/Pzgq14L/user.png','1'),(2,'wnsdud@wns.com','김민규','https://i.ibb.co/Pzgq14L/user.png','2'),(3,'thdwns@wns.com','박준영','https://i.ibb.co/Pzgq14L/user.png','3'),(4,'dnlfpdnlfp@naver.com','-','http://k.kakaocdn.net/dn/haJuY/btq7HE96ypu/LmIdh7jD78rNaHVeM4zzT1/img_640x640.jpg','1779332308');
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

-- Dump completed on 2021-07-09 10:44:32
