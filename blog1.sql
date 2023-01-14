-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-01-14 03:48
-- 서버 버전: 10.4.27-MariaDB
-- PHP 버전: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `php`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `blog1`
--

CREATE TABLE `blog1` (
  `no` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `img_file` varchar(255) DEFAULT NULL,
  `img_size` int(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `del_flg` tinyint(1) NOT NULL DEFAULT 0,
  `reg_date` datetime DEFAULT current_timestamp(),
  `mod_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='블로그';

--
-- 테이블의 덤프 데이터 `blog1`
--

INSERT INTO `blog1` (`no`, `title`, `category`, `content`, `id`, `img_file`, `img_size`, `name`, `del_flg`, `reg_date`, `mod_date`) VALUES
(1, '테스트 수정 후 입니다.', '테스트', '테스트 컨텐츠 수정 후 입니다.', 'test1@test.com', '', 0, 'test1', 0, '2023-01-08 16:31:54', '2023-01-07 21:14:30'),
(3, '두번째 게시물 테스트', '테스트', '두번째 게시물 테스트 컨텐츠입니다.', 'test2@test.com', '', 0, 'test2', 0, '2023-01-08 17:32:28', NULL),
(5, '1', '1', '1', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 21:22:48', NULL),
(6, '2', '2', '2', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 21:22:54', NULL),
(7, '3', '3', '3', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 21:23:00', NULL),
(8, '4', '4', '4', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 21:23:04', NULL),
(9, '그림 있는  글', '아무거나', '그림이 있어요.', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 22:32:14', '2023-01-12 22:35:16'),
(10, '그림 있는 글 작성', '그림 있는 글', '그림 있는 글입니다.', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 22:35:46', NULL),
(11, '그림올리기', '그림올리기', '그림올리기', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 22:47:11', NULL),
(15, '마지막일꺼야', '아마도', '진짜로 그림 올라 간다.', 'test1@test.com', NULL, NULL, 'test1', 0, '2023-01-12 23:00:49', NULL),
(20, '다시 한번더', '다시한번더', '다시한번더', 'test1@test.com', '16735324481673532448549_pngwingcom.png', 49975, 'test1', 0, '2023-01-12 23:07:28', NULL);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `blog1`
--
ALTER TABLE `blog1`
  ADD PRIMARY KEY (`no`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `blog1`
--
ALTER TABLE `blog1`
  MODIFY `no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
