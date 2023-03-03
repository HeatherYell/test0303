-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.31 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

create user 'scott'@'localhost' identified by 'tiger';
grant all privileges on *.* to 'scott'@'%';
flush privileges;

-- lecture 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `lecture` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lecture`;

-- 테이블 lecture.boarddb 구조 내보내기
CREATE TABLE IF NOT EXISTS `boarddb` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'guest',
  `tit` text COLLATE utf8mb4_general_ci NOT NULL,
  `cont` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `ctgNum` int NOT NULL DEFAULT '1',
  `views` int NOT NULL DEFAULT '0',
  `mainRegi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mainModi` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`),
  KEY `FK_BoardDB_ctgNum_CategoryDB_ctgNum` (`ctgNum`),
  CONSTRAINT `FK_BoardDB_ctgNum_CategoryDB_ctgNum` FOREIGN KEY (`ctgNum`) REFERENCES `categorydb` (`ctgNum`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 lecture.boarddb:~25 rows (대략적) 내보내기
INSERT INTO `boarddb` (`num`, `id`, `tit`, `cont`, `ctgNum`, `views`, `mainRegi`, `mainModi`) VALUES
	(1, 'admin', 'test01', 'testing..........', 1, 75, '2023-02-12 16:34:34', '2023-03-02 16:50:06'),
	(2, 'admin', 'test02', 'testing..........', 2, 338, '2023-02-12 17:20:21', '2023-03-02 16:48:27'),
	(3, 'admin', 'test03', 'testing..........', 3, 32, '2023-02-12 17:38:03', '2023-03-02 16:45:12'),
	(7, 'admin', 'test05', 'test...5', 1, 75, '2023-02-14 14:26:12', '2023-02-17 00:36:42'),
	(8, 'admin', '일주일동안 함꼐 하실 분', '테스트입니다.', 1, 11, '2023-02-17 00:24:11', '2023-03-02 16:48:21'),
	(9, 'admin', '하루를 빡빡하게 살기', '하루를 빡빡하게 살기', 2, 5, '2023-02-17 00:29:24', '2023-03-02 16:50:02'),
	(10, 'admin', '21일차', '여름 축제 시작!', 3, 2, '2023-02-17 00:42:15', '2023-03-02 19:09:53'),
	(11, 'guest', '회원가입,,, 어려워요', 'ㅋㅋㅋㅋㅋㅋㅋ', 4, 4, '2023-02-17 00:49:29', '2023-03-02 17:23:50'),
	(12, 'guest', '오늘 함께 하실분 구합니다.', 'ㅋㅋ', 2, 9, '2023-02-17 02:43:50', '2023-03-02 17:38:14'),
	(13, 'guest', '테스트해보자', '테스트해보자', 1, 2, '2023-03-01 17:38:03', '2023-03-02 16:52:36'),
	(15, 'guest', '두번째 달걀 축제', '두번째 달걀 축제', 2, 1, '2023-03-01 17:40:12', '2023-03-02 14:23:49'),
	(17, 'guest', '축제 준비물', '축제 준비물', 3, 3, '2023-03-01 17:43:31', '2023-03-02 17:19:11'),
	(18, 'guest', '새벽 스타듀밸리', '나랑 하자', 1, 7, '2023-03-01 17:46:55', '2023-03-02 16:49:51'),
	(19, 'guest', '1년차 봄', '1년차 봄 21일째', 3, 4, '2023-03-02 04:02:44', '2023-03-02 19:08:25'),
	(20, 'guest', '비동기 통신', '비동기 통신 어려워...', 4, 33, '2023-03-02 13:01:44', '2023-03-03 00:22:31'),
	(21, 'guest', '두근두근', '베이커리', 4, 2, '2023-03-02 17:27:24', '2023-03-02 19:06:08'),
	(22, 'guest', '한 번 더', '다시', 1, 3, '2023-03-02 17:28:19', '2023-03-02 18:58:59'),
	(23, 'guest', '옹예스', '된다!', 2, 2, '2023-03-02 17:30:49', '2023-03-02 19:04:02'),
	(24, 'guest', '옹예스', '된다!', 2, 2, '2023-03-02 17:30:56', '2023-03-02 18:55:30'),
	(25, 'guest', '왜 ', '안돼', 3, 5, '2023-03-02 17:33:30', '2023-03-02 17:38:12'),
	(26, 'guest', '파라미터', '넘어가?', 2, 21, '2023-03-02 17:38:28', '2023-03-02 18:45:36'),
	(27, 'guest', 'test', 'test', 1, 4, '2023-03-02 18:29:35', '2023-03-02 18:51:55'),
	(28, 'guest', 'test', 'test', 2, 12, '2023-03-02 18:35:37', '2023-03-03 00:55:59'),
	(29, 'guest', 'a', 'a', 2, 1, '2023-03-03 01:24:29', '2023-03-03 01:30:41'),
	(30, 'guest', 'a', 'a', 1, 0, '2023-03-03 02:32:07', '2023-03-03 02:32:07'),
	(31, 'guest', '현정님', '최고', 1, 0, '2023-03-03 02:34:34', '2023-03-03 02:34:34'),
	(32, 'guest', '현정님이 살리셨다', 'ㅠㅜㅠㅜㅠㅜㅠㅜ 울고 싶어요', 1, 1, '2023-03-03 02:35:28', '2023-03-03 02:36:15'),
	(33, 'guest', '오늘은 금요일', '푸ㅠ푸ㅠㅜ', 2, 0, '2023-03-03 02:36:29', '2023-03-03 02:36:29'),
	(34, 'guest', 'ㅁ', 'ㅁㅁ', 1, 2, '2023-03-03 02:37:03', '2023-03-03 03:54:29'),
	(35, 'guest', 'ㅎㅎ', 'ㅎㅎㅎㅎㅎㅎ', 1, 3, '2023-03-03 02:38:17', '2023-03-03 02:42:18'),
	(36, 'guest', 'ㅇㅇ', 'ㅇㅇㅇㅇㅇ', 1, 0, '2023-03-03 03:54:48', '2023-03-03 03:54:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
