-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 11:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yourmusic`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audios`
--

CREATE TABLE `accounts_audios` (
  `id` int(11) NOT NULL,
  `url_audio` varchar(100) DEFAULT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_generos`
--

CREATE TABLE `accounts_generos` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_generos`
--

INSERT INTO `accounts_generos` (`id`, `title`) VALUES
(1, 'Rock'),
(2, 'Punk'),
(3, 'Heavy Metal'),
(4, 'Hard Rock'),
(5, 'Flamenco'),
(6, 'Electrónica'),
(7, 'Post-Punk'),
(8, 'Rock Alternativo'),
(9, 'Jazz'),
(10, 'Blues'),
(11, 'Funk'),
(12, 'Reggae'),
(13, 'Disco'),
(14, 'Rap'),
(15, 'Hip Hop'),
(16, 'Ska'),
(17, 'House'),
(18, 'Rhythm and blues'),
(19, 'Pop'),
(20, 'Indie'),
(21, 'Rock Psicodélico'),
(22, 'Grunge');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_provincia`
--

CREATE TABLE `accounts_provincia` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_provincia`
--

INSERT INTO `accounts_provincia` (`id`, `title`) VALUES
(1, 'Córdoba'),
(2, 'Sevilla'),
(3, 'Albacete'),
(4, 'Almería'),
(5, 'Álava'),
(6, 'Alicante'),
(7, 'Asturias'),
(8, 'Ávila'),
(9, 'Badajoz'),
(10, 'Barcelona'),
(11, 'Burgos'),
(12, 'Cáceres'),
(13, 'Cádiz'),
(14, 'Cantabria'),
(15, 'Castellón'),
(16, 'Ciudad Real'),
(17, 'La Coruña'),
(18, 'Cuenca'),
(19, 'Gerona'),
(20, 'Granada'),
(21, 'Guadalajara'),
(22, 'Guipúzcoa'),
(23, 'Huelva'),
(24, 'Huesca'),
(25, 'Baleares'),
(26, 'Jaén'),
(27, 'León'),
(28, 'Lérida'),
(29, 'Lugo'),
(30, 'Madrid'),
(31, 'Málaga'),
(32, 'Murcia'),
(33, 'Navarra'),
(34, 'Orense'),
(35, 'Palencia'),
(36, 'Las Palmas'),
(37, 'Pontevedra'),
(38, 'La Rioja'),
(39, 'Salamanca'),
(40, 'Segovia'),
(41, 'Soria'),
(42, 'Tarragona'),
(43, 'Santa Cruz de Tenerife'),
(44, 'Teruel'),
(45, 'Toledo'),
(46, 'Valencia'),
(47, 'Valladolid'),
(48, 'Vizcaya'),
(49, 'Zamora'),
(50, 'Zaragoza'),
(51, 'Ceuta'),
(52, 'Melilla');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tipoojeador`
--

CREATE TABLE `accounts_tipoojeador` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_tipoojeador`
--

INSERT INTO `accounts_tipoojeador` (`id`, `title`) VALUES
(1, 'Particular'),
(2, 'Discográfica'),
(3, 'Prensa'),
(4, 'Salas'),
(5, 'Bares'),
(6, 'Otros');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos`
--

CREATE TABLE `accounts_userprofilemusicos` (
  `id` int(11) NOT NULL,
  `nombre_profile` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_profile` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `provincia_origen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos`
--

INSERT INTO `accounts_userprofilemusicos` (`id`, `nombre_profile`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_profile`, `user_id`, `provincia_origen_id`) VALUES
(1, 'Terra negra', 'user/img/folder.jpg', 'Grupo de peñarroya pueblonuevo', NULL, NULL, 'https://www.facebook.com/Terranegraband', NULL, 'terranegraband@gmail.com', 2, 1),
(2, 'Pink Floyd', 'user/img/3.jpg', '                                                   Pink Floyd grupo de Londres de 1965, contraseña usuario\r\n            \r\n            \r\n            ', 'twitter', 'https://www.instagram.com/kakumei_99/', 'https://www.facebook.com/pinkfloyd', 'www.pf.com', 'pinkfloyd@mail.com', 3, 5),
(3, 'comala', 'user/img/tit_phixr.jpg', 'Grupo de rock alternativo con influencias de Joy Division, Shame,IDLES,Fontaines D.C,The Cure y The Smiths', NULL, NULL, NULL, NULL, 'comala@gmail.com', 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_generos`
--

CREATE TABLE `accounts_userprofilemusicos_generos` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_generos`
--

INSERT INTO `accounts_userprofilemusicos_generos` (`id`, `userprofilemusicos_id`, `generos_id`) VALUES
(1, 1, 4),
(2, 1, 22),
(97, 2, 1),
(98, 2, 8),
(96, 2, 18),
(99, 2, 21),
(105, 3, 2),
(104, 3, 7),
(106, 3, 8),
(107, 3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_noticias`
--

CREATE TABLE `accounts_userprofilemusicos_noticias` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `noticias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_noticias`
--

INSERT INTO `accounts_userprofilemusicos_noticias` (`id`, `userprofilemusicos_id`, `noticias_id`) VALUES
(1, 1, 3),
(8, 1, 13),
(2, 2, 4),
(3, 2, 6),
(5, 2, 8),
(6, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_url_audios`
--

CREATE TABLE `accounts_userprofilemusicos_url_audios` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `audios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_url_videos`
--

CREATE TABLE `accounts_userprofilemusicos_url_videos` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `videos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_url_videos`
--

INSERT INTO `accounts_userprofilemusicos_url_videos` (`id`, `userprofilemusicos_id`, `videos_id`) VALUES
(1, 1, 1),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores`
--

CREATE TABLE `accounts_userprofileojeadores` (
  `id` int(11) NOT NULL,
  `nombre_profile` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_profile` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tipo_ojeador_id` int(11) NOT NULL,
  `provincia_origen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores`
--

INSERT INTO `accounts_userprofileojeadores` (`id`, `nombre_profile`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_profile`, `user_id`, `tipo_ojeador_id`, `provincia_origen_id`) VALUES
(1, 'CBGB', 'user/img/CBGB-entrance-bw-2016-billboard-1548.jpg', '                                                                                                                                                                                                                                                              Bar con música en directo, ramones, talking head y television entre otros, son los que se han dado a conocer\r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            \r\n            ', NULL, NULL, NULL, NULL, 'conciertos@conciertos.com', 4, 6, 13),
(2, 'factory', '', 'factory records', NULL, NULL, NULL, 'https://factoryrecords.org/', NULL, 5, 2, 8),
(5, 'La Ser', 'user/img/cool-nirvana-wallpaper-1920x108-WTG30810936.jpg', '', NULL, NULL, NULL, NULL, 'laser@gmail.com', 7, 3, 47);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores_generos`
--

CREATE TABLE `accounts_userprofileojeadores_generos` (
  `id` int(11) NOT NULL,
  `userprofileojeadores_id` int(11) NOT NULL,
  `generos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores_generos`
--

INSERT INTO `accounts_userprofileojeadores_generos` (`id`, `userprofileojeadores_id`, `generos_id`) VALUES
(40, 1, 2),
(39, 1, 7),
(41, 1, 8),
(42, 1, 21),
(4, 2, 7),
(3, 2, 8),
(49, 5, 1),
(47, 5, 4),
(45, 5, 10),
(46, 5, 11),
(48, 5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores_noticias`
--

CREATE TABLE `accounts_userprofileojeadores_noticias` (
  `id` int(11) NOT NULL,
  `userprofileojeadores_id` int(11) NOT NULL,
  `noticias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores_noticias`
--

INSERT INTO `accounts_userprofileojeadores_noticias` (`id`, `userprofileojeadores_id`, `noticias_id`) VALUES
(1, 1, 2),
(2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_videos`
--

CREATE TABLE `accounts_videos` (
  `id` int(11) NOT NULL,
  `url_video` varchar(500) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_videos`
--

INSERT INTO `accounts_videos` (`id`, `url_video`, `title`) VALUES
(1, 'https://www.youtube.com/watch?v=amK7McaUp7Y', 'prueba'),
(3, 'https://youtu.be/YR5ApYxkU-U', 'Another Brick In The Wall');

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add audios', 7, 'add_audios'),
(26, 'Can change audios', 7, 'change_audios'),
(27, 'Can delete audios', 7, 'delete_audios'),
(28, 'Can view audios', 7, 'view_audios'),
(29, 'Can add generos', 8, 'add_generos'),
(30, 'Can change generos', 8, 'change_generos'),
(31, 'Can delete generos', 8, 'delete_generos'),
(32, 'Can view generos', 8, 'view_generos'),
(33, 'Can add user profile musicos', 9, 'add_userprofilemusicos'),
(34, 'Can change user profile musicos', 9, 'change_userprofilemusicos'),
(35, 'Can delete user profile musicos', 9, 'delete_userprofilemusicos'),
(36, 'Can view user profile musicos', 9, 'view_userprofilemusicos'),
(37, 'Can add videos', 10, 'add_videos'),
(38, 'Can change videos', 10, 'change_videos'),
(39, 'Can delete videos', 10, 'delete_videos'),
(40, 'Can view videos', 10, 'view_videos'),
(41, 'Can add user profile ojeadores', 11, 'add_userprofileojeadores'),
(42, 'Can change user profile ojeadores', 11, 'change_userprofileojeadores'),
(43, 'Can delete user profile ojeadores', 11, 'delete_userprofileojeadores'),
(44, 'Can view user profile ojeadores', 11, 'view_userprofileojeadores'),
(45, 'Can add tipo ojeador', 12, 'add_tipoojeador'),
(46, 'Can change tipo ojeador', 12, 'change_tipoojeador'),
(47, 'Can delete tipo ojeador', 12, 'delete_tipoojeador'),
(48, 'Can view tipo ojeador', 12, 'view_tipoojeador'),
(49, 'Can add Token', 13, 'add_token'),
(50, 'Can change Token', 13, 'change_token'),
(51, 'Can delete Token', 13, 'delete_token'),
(52, 'Can view Token', 13, 'view_token'),
(53, 'Can add token', 14, 'add_tokenproxy'),
(54, 'Can change token', 14, 'change_tokenproxy'),
(55, 'Can delete token', 14, 'delete_tokenproxy'),
(56, 'Can view token', 14, 'view_tokenproxy'),
(57, 'Can add provincia', 15, 'add_provincia'),
(58, 'Can change provincia', 15, 'change_provincia'),
(59, 'Can delete provincia', 15, 'delete_provincia'),
(60, 'Can view provincia', 15, 'view_provincia'),
(61, 'Can add ciudad', 16, 'add_ciudad'),
(62, 'Can change ciudad', 16, 'change_ciudad'),
(63, 'Can delete ciudad', 16, 'delete_ciudad'),
(64, 'Can view ciudad', 16, 'view_ciudad'),
(65, 'Can add noticias', 17, 'add_noticias'),
(66, 'Can change noticias', 17, 'change_noticias'),
(67, 'Can delete noticias', 17, 'delete_noticias'),
(68, 'Can view noticias', 17, 'view_noticias'),
(69, 'Can add mensajes', 18, 'add_mensajes'),
(70, 'Can change mensajes', 18, 'change_mensajes'),
(71, 'Can delete mensajes', 18, 'delete_mensajes'),
(72, 'Can view mensajes', 18, 'view_mensajes'),
(73, 'Can add conversation', 19, 'add_conversation'),
(74, 'Can change conversation', 19, 'change_conversation'),
(75, 'Can delete conversation', 19, 'delete_conversation'),
(76, 'Can view conversation', 19, 'view_conversation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$9lgeEIehvD5c$kFoCOAv1zOZwJ875s1wpKBlzDfcrwkVo9PFy4Ih+TYk=', '2021-06-03 17:05:53.396441', 1, 'admin', '', '', '', 1, 1, '2021-04-25 11:09:15.487339'),
(2, 'pbkdf2_sha256$216000$F1btmCeYwl9t$uDEqGYLHUYCSZ/uyh9SPbXEKrMn4Q6HTK6vAhXJfL5U=', '2021-06-03 18:01:44.118419', 0, 'Mario', '', '', 'osunamario26@gmail.com', 0, 1, '2021-04-26 17:16:41.000000'),
(3, 'pbkdf2_sha256$216000$mujrLT7REf6l$Q+13EHWPPbIoJJYKARtuEp7E7WuFYRPlkdQGr9xRgUE=', '2021-05-27 08:35:09.300063', 0, 'Pepe', '', '', 'pepe@gmail.com', 0, 1, '2021-04-26 17:21:04.266866'),
(4, 'pbkdf2_sha256$216000$DQRiKzBps8NB$I00nypGhU3hEPRv7Ejc3sRSNg0Oc6fMC2L10CKN3SH4=', '2021-05-22 11:06:22.058623', 0, 'antonio', '', '', 'antonio@mail.com', 0, 1, '2021-04-26 17:23:29.043743'),
(5, 'pbkdf2_sha256$216000$UouehGrLU3wy$x7XNzCA/QKGZA+qLhb5S4Ptmd7ITVRdqSWFvWrr20Y0=', NULL, 0, 'jimena', '', '', '', 0, 1, '2021-04-26 17:24:06.232496'),
(7, 'pbkdf2_sha256$216000$qbdfjL1J61uz$ef8YA3jitTys9uqiJvv74mKH+gap5ylKF4bq13BlRMg=', '2021-06-03 20:59:53.992943', 0, 'Jaime', '', '', 'jaime@jaime.com', 0, 1, '2021-05-23 16:51:42.237702'),
(9, 'pbkdf2_sha256$216000$Jsg3UFkwKYFJ$m1FXD0eGWUEIB8ocr6gP6PAdrpV7LbtUJTMHlkERf68=', '2021-05-28 09:03:07.604985', 0, 'prueba', '', '', 'prueba@email.com', 0, 1, '2021-05-28 09:03:07.388894'),
(12, 'pbkdf2_sha256$216000$KUMdg6QFTBTZ$VzZYlaNTNAdChewpUTGvG8oJUaXjoVvXzS6o/ApcyL4=', '2021-05-28 16:52:19.852533', 0, 'usuario2', '', '', 'marioosuna26@gmail.com', 0, 1, '2021-05-28 11:59:54.213679'),
(13, 'pbkdf2_sha256$216000$7egjDn88XRTo$lR0td3uPsW65TMnWecNBVpuM93PaGPwwvzekuAlCDnU=', '2021-06-03 19:40:17.525664', 0, 'usuario', '', '', 'subeunescalon@gmail.com', 0, 1, '2021-06-01 06:38:07.705573');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-26 17:09:11.624720', '1', 'Rock', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-04-26 17:09:18.845895', '2', 'Punk', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-04-26 17:09:25.631355', '3', 'Heavy Metal', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-04-26 17:09:29.976208', '4', 'Hard Rock', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-04-26 17:09:34.186758', '5', 'Flamenco', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-04-26 17:09:39.111717', '6', 'Electrónica', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-04-26 17:09:44.365990', '7', 'Post-Punk', 1, '[{\"added\": {}}]', 8, 1),
(8, '2021-04-26 17:09:50.600067', '8', 'Rock Alternativo', 1, '[{\"added\": {}}]', 8, 1),
(9, '2021-04-26 17:10:02.374331', '9', 'Jazz', 1, '[{\"added\": {}}]', 8, 1),
(10, '2021-04-26 17:10:04.710796', '10', 'Blues', 1, '[{\"added\": {}}]', 8, 1),
(11, '2021-04-26 17:10:22.986511', '11', 'Funk', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-04-26 17:10:26.015814', '12', 'Reggae', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-04-26 17:10:30.598937', '13', 'Disco', 1, '[{\"added\": {}}]', 8, 1),
(14, '2021-04-26 17:10:38.502784', '14', 'Rap', 1, '[{\"added\": {}}]', 8, 1),
(15, '2021-04-26 17:10:41.781787', '15', 'Hip Hop', 1, '[{\"added\": {}}]', 8, 1),
(16, '2021-04-26 17:10:46.405670', '16', 'Ska', 1, '[{\"added\": {}}]', 8, 1),
(17, '2021-04-26 17:10:57.532853', '17', 'House', 1, '[{\"added\": {}}]', 8, 1),
(18, '2021-04-26 17:11:01.534792', '18', 'Rhythm and blues', 1, '[{\"added\": {}}]', 8, 1),
(19, '2021-04-26 17:11:04.383837', '19', 'Pop', 1, '[{\"added\": {}}]', 8, 1),
(20, '2021-04-26 17:12:07.809776', '20', 'Indie', 1, '[{\"added\": {}}]', 8, 1),
(21, '2021-04-26 17:12:32.054787', '21', 'Rock Psicodélico', 1, '[{\"added\": {}}]', 8, 1),
(22, '2021-04-26 17:12:35.075950', '22', 'Grunge', 1, '[{\"added\": {}}]', 8, 1),
(23, '2021-04-26 17:13:19.534327', '1', 'Particular', 1, '[{\"added\": {}}]', 12, 1),
(24, '2021-04-26 17:13:33.230491', '2', 'Discográfica', 1, '[{\"added\": {}}]', 12, 1),
(25, '2021-04-26 17:13:44.336415', '3', 'Prensa', 1, '[{\"added\": {}}]', 12, 1),
(26, '2021-04-26 17:14:01.239218', '4', 'Empresa', 1, '[{\"added\": {}}]', 12, 1),
(27, '2021-04-26 17:15:49.943915', '4', 'Salas', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 12, 1),
(28, '2021-04-26 17:15:52.332921', '5', 'Bares', 1, '[{\"added\": {}}]', 12, 1),
(29, '2021-04-26 17:16:01.751465', '6', 'Otros', 1, '[{\"added\": {}}]', 12, 1),
(30, '2021-04-26 17:16:41.568223', '2', 'Mario', 1, '[{\"added\": {}}]', 4, 1),
(31, '2021-04-26 17:18:16.654279', '1', '1', 1, '[{\"added\": {}}]', 10, 1),
(32, '2021-04-26 17:18:38.917502', '1', '1', 1, '[{\"added\": {}}]', 7, 1),
(33, '2021-04-26 17:20:11.435956', '1', 'Terra negra', 1, '[{\"added\": {}}]', 9, 1),
(34, '2021-04-26 17:21:04.474866', '3', 'Pepe', 1, '[{\"added\": {}}]', 4, 1),
(35, '2021-04-26 17:21:50.103702', '2', '2', 1, '[{\"added\": {}}]', 10, 1),
(36, '2021-04-26 17:21:52.740659', '2', 'grupo 2', 1, '[{\"added\": {}}]', 9, 1),
(37, '2021-04-26 17:23:29.216741', '4', 'antonio', 1, '[{\"added\": {}}]', 4, 1),
(38, '2021-04-26 17:23:48.567811', '1', 'conciertos', 1, '[{\"added\": {}}]', 11, 1),
(39, '2021-04-26 17:24:06.405503', '5', 'jimena', 1, '[{\"added\": {}}]', 4, 1),
(40, '2021-04-26 17:24:41.289088', '2', 'factory', 1, '[{\"added\": {}}]', 11, 1),
(41, '2021-05-02 16:01:10.163617', '1', 'Córdoba', 1, '[{\"added\": {}}]', 16, 1),
(42, '2021-05-02 16:01:20.256954', '2', 'Aguilar de la Frontera', 1, '[{\"added\": {}}]', 16, 1),
(43, '2021-05-02 16:01:27.744646', '3', 'Almodóvar del Río', 1, '[{\"added\": {}}]', 16, 1),
(44, '2021-05-02 16:01:32.507503', '4', 'Añora', 1, '[{\"added\": {}}]', 16, 1),
(45, '2021-05-02 16:01:37.285532', '5', 'Baena', 1, '[{\"added\": {}}]', 16, 1),
(46, '2021-05-02 16:01:45.722661', '6', 'Cabra', 1, '[{\"added\": {}}]', 16, 1),
(47, '2021-05-02 16:01:53.447036', '7', 'Fernán-Núñez', 1, '[{\"added\": {}}]', 16, 1),
(48, '2021-05-02 16:01:58.764395', '8', 'Fuente Obejuna', 1, '[{\"added\": {}}]', 16, 1),
(49, '2021-05-02 16:02:05.579585', '9', 'Hinojosa del Duque', 1, '[{\"added\": {}}]', 16, 1),
(50, '2021-05-02 16:02:12.098960', '10', 'La Granjuela', 1, '[{\"added\": {}}]', 16, 1),
(51, '2021-05-02 16:02:16.568785', '11', 'La Rambla', 1, '[{\"added\": {}}]', 16, 1),
(52, '2021-05-02 16:02:22.218916', '12', 'Pozoblanco', 1, '[{\"added\": {}}]', 16, 1),
(53, '2021-05-02 16:02:27.237812', '13', 'Peñarroya-Pueblonuevo', 1, '[{\"added\": {}}]', 16, 1),
(54, '2021-05-02 16:02:38.600088', '14', 'Lucena', 1, '[{\"added\": {}}]', 16, 1),
(55, '2021-05-02 16:02:44.268018', '15', 'Montalbán de Córdoba', 1, '[{\"added\": {}}]', 16, 1),
(56, '2021-05-02 16:02:50.804674', '16', 'Montilla', 1, '[{\"added\": {}}]', 16, 1),
(57, '2021-05-02 16:02:51.983469', '1', 'Córdoba', 1, '[{\"added\": {}}]', 15, 1),
(58, '2021-05-03 17:21:49.162701', '2', 'Sevilla', 1, '[{\"added\": {}}]', 15, 1),
(59, '2021-05-03 17:23:25.612516', '3', 'Albacete', 1, '[{\"added\": {}}]', 15, 1),
(60, '2021-05-03 17:23:29.514759', '4', 'Almería', 1, '[{\"added\": {}}]', 15, 1),
(61, '2021-05-03 17:23:35.329313', '5', 'Álava', 1, '[{\"added\": {}}]', 15, 1),
(62, '2021-05-03 17:23:39.022319', '6', 'Alicante', 1, '[{\"added\": {}}]', 15, 1),
(63, '2021-05-03 17:23:42.622578', '7', 'Asturias', 1, '[{\"added\": {}}]', 15, 1),
(64, '2021-05-03 17:23:45.872635', '8', 'Ávila', 1, '[{\"added\": {}}]', 15, 1),
(65, '2021-05-03 17:23:49.132426', '9', 'Badajoz', 1, '[{\"added\": {}}]', 15, 1),
(66, '2021-05-03 17:23:52.797591', '10', 'Barcelona', 1, '[{\"added\": {}}]', 15, 1),
(67, '2021-05-03 17:23:57.291286', '11', 'Burgos', 1, '[{\"added\": {}}]', 15, 1),
(68, '2021-05-03 17:23:59.802463', '12', 'Cáceres', 1, '[{\"added\": {}}]', 15, 1),
(69, '2021-05-03 17:24:03.032403', '13', 'Cádiz', 1, '[{\"added\": {}}]', 15, 1),
(70, '2021-05-03 17:24:06.022665', '14', 'Cantabria', 1, '[{\"added\": {}}]', 15, 1),
(71, '2021-05-03 17:24:09.142399', '15', 'Castellón', 1, '[{\"added\": {}}]', 15, 1),
(72, '2021-05-03 17:24:12.219049', '16', 'Ciudad Real', 1, '[{\"added\": {}}]', 15, 1),
(73, '2021-05-03 17:24:21.412496', '17', 'La Coruña', 1, '[{\"added\": {}}]', 15, 1),
(74, '2021-05-03 17:24:22.722607', '18', 'Cuenca', 1, '[{\"added\": {}}]', 15, 1),
(75, '2021-05-03 17:24:25.902309', '19', 'Gerona', 1, '[{\"added\": {}}]', 15, 1),
(76, '2021-05-03 17:24:28.927307', '20', 'Granada', 1, '[{\"added\": {}}]', 15, 1),
(77, '2021-05-03 17:24:32.652536', '21', 'Guadalajara', 1, '[{\"added\": {}}]', 15, 1),
(78, '2021-05-03 17:24:37.182328', '22', 'Guipúzcoa', 1, '[{\"added\": {}}]', 15, 1),
(79, '2021-05-03 17:24:40.622591', '23', 'Huelva', 1, '[{\"added\": {}}]', 15, 1),
(80, '2021-05-03 17:24:43.562178', '24', 'Huesca', 1, '[{\"added\": {}}]', 15, 1),
(81, '2021-05-03 17:24:47.132459', '25', 'Baleares', 1, '[{\"added\": {}}]', 15, 1),
(82, '2021-05-03 17:24:52.212232', '26', 'Jaén', 1, '[{\"added\": {}}]', 15, 1),
(83, '2021-05-03 17:24:55.602476', '27', 'León', 1, '[{\"added\": {}}]', 15, 1),
(84, '2021-05-03 17:24:59.212215', '28', 'Lérida', 1, '[{\"added\": {}}]', 15, 1),
(85, '2021-05-03 17:25:02.082139', '29', 'Lugo', 1, '[{\"added\": {}}]', 15, 1),
(86, '2021-05-03 17:25:05.312599', '30', 'Madrid', 1, '[{\"added\": {}}]', 15, 1),
(87, '2021-05-03 17:25:09.612466', '31', 'Málaga', 1, '[{\"added\": {}}]', 15, 1),
(88, '2021-05-03 17:25:12.912411', '32', 'Murcia', 1, '[{\"added\": {}}]', 15, 1),
(89, '2021-05-03 17:25:15.982065', '33', 'Navarra', 1, '[{\"added\": {}}]', 15, 1),
(90, '2021-05-03 17:25:21.402339', '34', 'Orense', 1, '[{\"added\": {}}]', 15, 1),
(91, '2021-05-03 17:25:25.192153', '35', 'Palencia', 1, '[{\"added\": {}}]', 15, 1),
(92, '2021-05-03 17:25:30.082264', '36', 'Las Palmas', 1, '[{\"added\": {}}]', 15, 1),
(93, '2021-05-03 17:25:34.249116', '37', 'Pontevedra', 1, '[{\"added\": {}}]', 15, 1),
(94, '2021-05-03 17:25:38.482380', '38', 'La Rioja', 1, '[{\"added\": {}}]', 15, 1),
(95, '2021-05-03 17:25:41.712147', '39', 'Salamanca', 1, '[{\"added\": {}}]', 15, 1),
(96, '2021-05-03 17:25:45.052422', '40', 'Segovia', 1, '[{\"added\": {}}]', 15, 1),
(97, '2021-05-03 17:25:47.992482', '41', 'Soria', 1, '[{\"added\": {}}]', 15, 1),
(98, '2021-05-03 17:25:51.792555', '42', 'Tarragona', 1, '[{\"added\": {}}]', 15, 1),
(99, '2021-05-03 17:25:54.802460', '43', 'Santa Cruz de Tenerife', 1, '[{\"added\": {}}]', 15, 1),
(100, '2021-05-03 17:25:58.702373', '44', 'Teruel', 1, '[{\"added\": {}}]', 15, 1),
(101, '2021-05-03 17:26:04.882258', '45', 'Toledo', 1, '[{\"added\": {}}]', 15, 1),
(102, '2021-05-03 17:26:09.652346', '46', 'Valencia', 1, '[{\"added\": {}}]', 15, 1),
(103, '2021-05-03 17:26:20.742282', '47', 'Valladolid', 1, '[{\"added\": {}}]', 15, 1),
(104, '2021-05-03 17:26:26.032281', '48', 'Vizcaya', 1, '[{\"added\": {}}]', 15, 1),
(105, '2021-05-03 17:26:30.856558', '49', 'Zamora', 1, '[{\"added\": {}}]', 15, 1),
(106, '2021-05-03 17:26:34.972326', '50', 'Zaragoza', 1, '[{\"added\": {}}]', 15, 1),
(107, '2021-05-03 17:26:38.372256', '51', 'Ceuta', 1, '[{\"added\": {}}]', 15, 1),
(108, '2021-05-03 17:26:42.232255', '52', 'Melilla', 1, '[{\"added\": {}}]', 15, 1),
(109, '2021-05-03 17:29:43.704075', '1', 'Terra negra', 2, '[]', 9, 1),
(110, '2021-05-03 17:29:52.665243', '2', 'grupo 2', 2, '[{\"changed\": {\"fields\": [\"Provincia origen\"]}}]', 9, 1),
(111, '2021-05-03 17:31:08.292883', '1', 'conciertos', 2, '[{\"changed\": {\"fields\": [\"Provincia origen\"]}}]', 11, 1),
(112, '2021-05-03 17:31:16.081780', '2', 'factory', 2, '[{\"changed\": {\"fields\": [\"Provincia origen\"]}}]', 11, 1),
(113, '2021-05-04 16:51:29.534783', '1', 'Terra negra', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 9, 1),
(114, '2021-05-07 16:00:30.004880', '2', 'Mario', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(115, '2021-05-15 09:37:32.033642', '1', 'Compro oro', 1, '[{\"added\": {}}]', 17, 1),
(116, '2021-05-15 09:37:39.388178', '2', 'Compro oro', 1, '[{\"added\": {}}]', 17, 1),
(117, '2021-05-15 09:38:03.269847', '1', 'Compro oro', 3, '', 17, 1),
(118, '2021-05-15 09:38:24.375801', '3', 'camioneta', 1, '[{\"added\": {}}]', 17, 1),
(119, '2021-05-15 09:38:43.317621', '4', 'nuevps', 1, '[{\"added\": {}}]', 17, 1),
(120, '2021-05-15 09:39:08.389974', '5', 'asd', 1, '[{\"added\": {}}]', 17, 1),
(121, '2021-05-15 09:45:22.274309', '1', 'Terra negra', 2, '[{\"changed\": {\"fields\": [\"Noticias\"]}}]', 9, 1),
(122, '2021-05-15 09:45:29.021211', '2', 'grupo 2', 2, '[{\"changed\": {\"fields\": [\"Noticias\"]}}]', 9, 1),
(123, '2021-05-15 09:45:35.364308', '1', 'conciertos', 2, '[{\"changed\": {\"fields\": [\"Noticias\"]}}]', 11, 1),
(124, '2021-05-15 09:45:41.065991', '2', 'factory', 2, '[{\"changed\": {\"fields\": [\"Noticias\"]}}]', 11, 1),
(125, '2021-05-17 17:52:47.032929', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(126, '2021-05-17 17:52:56.097250', '1', 'prueba', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(127, '2021-05-17 17:53:01.191777', '2', 'otro', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1),
(128, '2021-05-17 17:53:07.433773', '1', 'asdasd', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(129, '2021-05-17 22:23:50.695214', '2', 'grupo 2', 2, '[{\"changed\": {\"fields\": [\"Avatar\"]}}]', 9, 1),
(130, '2021-05-22 09:20:32.340259', '2', 'prueba', 1, '[{\"added\": {}}]', 7, 1),
(131, '2021-05-22 09:21:32.877189', '2', 'Pink Floyd', 2, '[{\"changed\": {\"fields\": [\"Descripcion\", \"Url audios\"]}}]', 9, 1),
(132, '2021-05-22 10:29:17.163413', '2', 'Pink Floyd', 2, '[{\"changed\": {\"fields\": [\"Url audios\"]}}]', 9, 1),
(133, '2021-05-22 10:32:19.677838', '3', 'Another Brick In The Wall', 3, '', 7, 1),
(134, '2021-05-22 10:32:23.005963', '4', 'Another Brick In The Wall', 3, '', 7, 1),
(135, '2021-05-22 10:32:25.356533', '2', 'prueba', 3, '', 7, 1),
(136, '2021-05-22 10:34:23.069453', '5', 'brick', 3, '', 7, 1),
(137, '2021-05-22 10:36:06.862185', '6', 'Another Brick In The Wall', 3, '', 7, 1),
(138, '2021-05-23 16:51:17.729308', '6', 'Jaime', 3, '', 4, 1),
(139, '2021-05-25 19:28:01.310336', '1', 'asdasd', 3, '', 7, 1),
(140, '2021-05-25 19:28:01.328007', '14', 'qwe', 3, '', 7, 1),
(141, '2021-05-25 19:28:01.333008', '13', 'titlo1', 3, '', 7, 1),
(142, '2021-05-27 11:06:42.021378', '8', 'eliminar', 1, '[{\"added\": {}}]', 4, 1),
(143, '2021-05-27 11:07:16.665375', '3', 'elimionar', 1, '[{\"added\": {}}]', 11, 1),
(144, '2021-05-28 09:14:37.447324', '4', 'sdf', 1, '[{\"added\": {}}]', 11, 1),
(145, '2021-05-28 11:59:28.794039', '11', 'usuario2', 3, '', 4, 1),
(146, '2021-05-28 16:59:27.856978', '2', 'Mario', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(147, '2021-06-03 16:53:58.767105', '1', 'Mensaje #1', 1, '[{\"added\": {}}]', 18, 1),
(148, '2021-06-03 16:54:26.251991', '2', 'Mensaje #2', 1, '[{\"added\": {}}]', 18, 1),
(149, '2021-06-03 16:55:30.091892', '1', 'Conversation #1', 1, '[{\"added\": {}}]', 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'accounts', 'audios'),
(16, 'accounts', 'ciudad'),
(8, 'accounts', 'generos'),
(15, 'accounts', 'provincia'),
(12, 'accounts', 'tipoojeador'),
(9, 'accounts', 'userprofilemusicos'),
(11, 'accounts', 'userprofileojeadores'),
(10, 'accounts', 'videos'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'authtoken', 'token'),
(14, 'authtoken', 'tokenproxy'),
(5, 'contenttypes', 'contenttype'),
(19, 'mensajes', 'conversation'),
(18, 'mensajes', 'mensajes'),
(17, 'noticias', 'noticias'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-25 11:08:45.488362'),
(2, 'auth', '0001_initial', '2021-04-25 11:08:45.733764'),
(3, 'accounts', '0001_initial', '2021-04-25 11:08:46.521626'),
(4, 'accounts', '0002_auto_20210413_1239', '2021-04-25 11:08:47.034850'),
(5, 'accounts', '0003_auto_20210413_1247', '2021-04-25 11:08:47.644201'),
(6, 'accounts', '0004_auto_20210413_1252', '2021-04-25 11:08:48.123342'),
(7, 'accounts', '0005_auto_20210413_1256', '2021-04-25 11:08:48.235835'),
(8, 'accounts', '0006_auto_20210413_1305', '2021-04-25 11:08:48.784017'),
(9, 'accounts', '0007_auto_20210413_1309', '2021-04-25 11:08:49.176635'),
(10, 'accounts', '0008_userprofileojeadores_tipo_ojeador', '2021-04-25 11:08:49.237369'),
(11, 'accounts', '0009_auto_20210413_1317', '2021-04-25 11:08:49.580695'),
(12, 'accounts', '0010_auto_20210423_1926', '2021-04-25 11:08:49.634852'),
(13, 'admin', '0001_initial', '2021-04-25 11:08:49.707383'),
(14, 'admin', '0002_logentry_remove_auto_add', '2021-04-25 11:08:49.881895'),
(15, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-25 11:08:49.902897'),
(16, 'contenttypes', '0002_remove_content_type_name', '2021-04-25 11:08:50.040751'),
(17, 'auth', '0002_alter_permission_name_max_length', '2021-04-25 11:08:50.200163'),
(18, 'auth', '0003_alter_user_email_max_length', '2021-04-25 11:08:50.233708'),
(19, 'auth', '0004_alter_user_username_opts', '2021-04-25 11:08:50.253712'),
(20, 'auth', '0005_alter_user_last_login_null', '2021-04-25 11:08:50.342165'),
(21, 'auth', '0006_require_contenttypes_0002', '2021-04-25 11:08:50.349376'),
(22, 'auth', '0007_alter_validators_add_error_messages', '2021-04-25 11:08:50.367415'),
(23, 'auth', '0008_alter_user_username_max_length', '2021-04-25 11:08:50.402418'),
(24, 'auth', '0009_alter_user_last_name_max_length', '2021-04-25 11:08:50.438395'),
(25, 'auth', '0010_alter_group_name_max_length', '2021-04-25 11:08:50.473395'),
(26, 'auth', '0011_update_proxy_permissions', '2021-04-25 11:08:50.493396'),
(27, 'auth', '0012_alter_user_first_name_max_length', '2021-04-25 11:08:50.524399'),
(28, 'authtoken', '0001_initial', '2021-04-25 11:08:50.588207'),
(29, 'authtoken', '0002_auto_20160226_1747', '2021-04-25 11:08:50.841562'),
(30, 'authtoken', '0003_tokenproxy', '2021-04-25 11:08:50.849865'),
(31, 'sessions', '0001_initial', '2021-04-25 11:08:50.901122'),
(32, 'accounts', '0011_auto_20210502_1754', '2021-05-02 15:54:21.312672'),
(33, 'accounts', '0012_auto_20210502_1759', '2021-05-02 16:00:03.405043'),
(34, 'accounts', '0013_auto_20210503_1921', '2021-05-03 17:21:24.692442'),
(35, 'accounts', '0014_auto_20210503_1929', '2021-05-03 17:29:19.642215'),
(36, 'accounts', '0015_auto_20210503_1930', '2021-05-03 17:30:40.608498'),
(37, 'accounts', '0016_auto_20210504_1840', '2021-05-04 16:40:48.200664'),
(38, 'accounts', '0017_auto_20210504_1848', '2021-05-04 16:48:34.148988'),
(39, 'noticias', '0001_initial', '2021-05-15 09:36:04.216317'),
(40, 'accounts', '0018_auto_20210515_1135', '2021-05-15 09:36:04.346337'),
(41, 'accounts', '0019_auto_20210516_1454', '2021-05-16 12:54:40.307457'),
(42, 'accounts', '0020_auto_20210517_1951', '2021-05-17 17:51:07.869696'),
(43, 'accounts', '0021_auto_20210522_1102', '2021-05-22 09:02:15.687197'),
(44, 'accounts', '0022_alter_userprofileojeadores_avatar', '2021-05-27 10:16:24.523702'),
(45, 'accounts', '0023_auto_20210527_1216', '2021-05-27 10:16:24.598896'),
(46, 'noticias', '0002_auto_20210527_1216', '2021-05-27 10:16:24.674231'),
(47, 'mensajes', '0001_initial', '2021-05-28 17:37:14.444609'),
(48, 'accounts', '0024_auto_20210603_1841', '2021-06-03 16:41:47.431879'),
(49, 'mensajes', '0002_auto_20210603_1846', '2021-06-03 16:46:18.321078'),
(50, 'accounts', '0025_auto_20210603_1846', '2021-06-03 16:46:18.946063');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rjx0hs75350cltp86rip9drcy0mqao4', '.eJxVjEEOwiAQRe_C2hBwGKAu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERTpx-t0jpwW0H-U7tNss0t3WZotwVedAuxznz83q4fweVev3WA2GxWKJyoDKiQR-jP1Mi8gUSa4PGuuyIHWgwBHEAZ9gSabBsVRLvD-ebN9E:1lkrKI:kz1JFvfDzGvsUP1O8kIBxGN95Hlug_cZlXI92iPsGSI', '2021-06-06 16:51:42.435679'),
('3s78g0toqw3197bsv5sepf5shytmd87e', 'e30:1lmb8J:mfQe-jMVMyrNLMngZN-rk2tqAxge3MS2jIvqpleDlgs', '2021-06-11 11:58:31.166294'),
('5yemnzsyboyd8xeubq4vqsudv140u91y', '.eJxVjDsOwyAQBe9CHSHxM5Ayfc6AdlkITiKQjF1ZuXuM5CJp5828nQXY1hK2npYwE7syyS6_DCG-Uh0DPaE-Go-trsuMfCj8XDu_N0rv2-n-HRToZdQ2A4FCzBom6bR3iYy1E-WsMAoU2hujBZJQCZwEfUBJRxUVmOgz-3wBEhw5IA:1loqEQ:8sRFjP2XqJzwlegKfIAd6M79xdY685jX0ZqmHr4OeSA', '2021-06-17 16:30:06.937713'),
('6exxzurgsf5ulqnpyv2q9kkm5pnfs8jx', '.eJxVjMsOwiAQRf-FtSG8YVy67zcQYEapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZkpdvrdcioPajvAe2q3zktv6zJnviv8oINPHel5Ody_g5pG_dYhkCxoUBphQOjsSgjZSW-dSQqIUFiRlTOKbL6SBo3ee6m8dBAAoLD3B8bbNtA:1lfgaf:-c6SzOOp13XoGJa5UiU-WUt3Z_4K15qcCc4r_dGxzeQ', '2021-05-23 10:23:13.751234'),
('6mmgtn4uo0bqmw579nhsmw6q6ae3jr45', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1loqn3:cg3FC3ghJbR01uIyesRpset23FrnH06ycHeWsLkwEfM', '2021-06-17 17:05:53.400513'),
('6rhc67itaw3m6c3l1rl7bvbwofuxvao6', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lbQxz:XoOIes_29LZ9n1I_PGBKh9Nuu8W5UKItjDkCRjs1itM', '2021-05-11 16:53:43.338229'),
('9h7x5ymvghvdg2f8finw7ljcobndda56', '.eJxVjDsOwjAQBe_iGln-20tJzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZlJzU6_I2F6lL6TfMd-m3ma-7pMxHeFH3Tw65zL83K4fwcNR_vWSVZbqVQH1iryploHFAKYLAVpDMaggkygQZITwirpTUEPyWUXdFLs_QEErzeK:1loYLB:0VqIPHX7LNMYIa84Vi37kMbiqLhoRbFZaUTKOzw_PIw', '2021-06-16 21:23:53.341628'),
('9zzro8flx6snfatt65wmxci3g0q5x3z0', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ljm2Y:xETNKH4BX_ecSUoyaRSzB3VlGEFkl7X6JjlmPMyBDYE', '2021-06-03 17:00:54.642263'),
('a5dg2o3pujxj82bqci7mit7hnu2rgmgr', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lhcF4:N1YLUUM1io4wZdKVzlxDXahB7E2NwrHkJV_EalsBkPk', '2021-05-28 18:08:54.633209'),
('ch7pz0ogn992kcch059hxxx3hef2kzfi', '.eJxVjMsOwiAQRf-FtSG8YVy67zcQYEapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZkpdvrdcioPajvAe2q3zktv6zJnviv8oINPHel5Ody_g5pG_dYhkCxoUBphQOjsSgjZSW-dSQqIUFiRlTOKbL6SBo3ee6m8dBAAoLD3B8bbNtA:1lgs9J:o1jkj0GOLMUp5iaO35jIg-NVAR6wtXADfFiCf-BuhWs', '2021-05-26 16:55:53.122169'),
('cydeqgpb747ptixsko0y6i04ygvddu1e', '.eJxVjMsOwiAQRf-FtSEwPCwu3fcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXYcTpdyNMD247yHdst1mmua3LRHJX5EG7HOfMz-vh_h1U7PVbMzjSxZ7Bqlz8AOS8dga0olAIGLUbDCqTMlouwehM2gZAZJO888Di_QHTwje3:1litEE:HTBDrqqNa0VF2Pc1Ak7sHHTtZsOHx9kMXOFnHxSwPz8', '2021-06-01 06:29:18.527873'),
('d18zgv9vd9hjujidpbxcubd2i0y9z8hj', '.eJxVjEEOwiAQRe_C2pABqUxduvcMZGAGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhYnVWTh1-t0jpIXUDfKd6azq1usxT1Juid9r1tbE8L7v7d1Col2-NowhiQgTJkGSIcAILxucjifHos2dmgQTJWefRCkYzRmHKbAb0qN4f7_s4SQ:1ljrRZ:uADHqbYl6XbfkLRh4Ekp1Vi3GPb7FjPDeUbwUBK-2kI', '2021-06-03 22:47:05.051647'),
('dn5jkf5pdpwgjzpwtn4hv7ftu77lzhnt', '.eJxVjEEOwiAQAP_C2RCgSwGP3vsGsiwgVQNJaU_GvxuSHvQ6M5k383jsxR89bX6N7MqAXX5ZQHqmOkR8YL03Tq3u2xr4SPhpO19aTK_b2f4NCvYytmBsJoGzQ5A6zEqCEoqixTyRkkjWaIjJEECQQFkl63J0DoMWUk7APl_W9zeZ:1leLff:RmEaoZYl3im-Rq5ue8XPajb8lx_uv6U8hjPlfjW2lfo', '2021-05-19 17:50:51.888025'),
('fzigdo0q50mb8e38yvsjfvh3lp2jh2as', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lf2mU:KagEXDjHdJ4h7lyxT3a9tMV_uagvO5-VFGxhZiVydI4', '2021-05-21 15:52:46.712805'),
('g9b7tll1ptv38p49h8yy04ahydev025j', '.eJxVjMsOwiAQRf-FtSG8YVy67zcQYEapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZkpdvrdcioPajvAe2q3zktv6zJnviv8oINPHel5Ody_g5pG_dYhkCxoUBphQOjsSgjZSW-dSQqIUFiRlTOKbL6SBo3ee6m8dBAAoLD3B8bbNtA:1lfgNh:uTLk0Tpn8qO2Nr8bjHB4Kcmm4sYzQzAqmbNW3phjrOA', '2021-05-23 10:09:49.586752'),
('gu2ltix0m6xcrz7kxndl3h3kptd6ia1a', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldESN:QA-dbOKxIZa2aKe3ML2FqRVYkT8ZLRo-CUotJlpCpTE', '2021-05-16 15:56:31.772282'),
('ht0fiaizw30vg2t0fc303f7rhwjuey48', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lc9w6:3CqKlp82_JqTLF7YXakJhsYBC2s5z940lxQkXSWRpR8', '2021-05-13 16:54:46.618214'),
('k8hr29rqh3rj2m6k7hwznxzxnt5v1fj4', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldooz:13ZEfAjSNc3YrxYMspl26yH8fLLKLhgZhU-dCqlirFs', '2021-05-18 06:46:17.818432'),
('l77olo12oligo40pz5ekfw4hakrtowao', '.eJxVjEEOwiAQRe_C2hBwGKAu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERTpx-t0jpwW0H-U7tNss0t3WZotwVedAuxznz83q4fweVev3WA2GxWKJyoDKiQR-jP1Mi8gUSa4PGuuyIHWgwBHEAZ9gSabBsVRLvD-ebN9E:1llcpI:nctZYPU0DDTJ_6OXyCV7hYx-XTiR1lH9LwzM5X5fIGs', '2021-06-08 19:34:52.350925'),
('m7c39bi6af7zny0vzowxw5gxz8o94qv7', '.eJxVjDsOwjAQBe_iGln-20tJzxmsXX9wADlSnFSIu0OkFNC-mXkvFnFbW9xGWeKU2ZlJzU6_I2F6lL6TfMd-m3ma-7pMxHeFH3Tw65zL83K4fwcNR_vWSVZbqVQH1iryploHFAKYLAVpDMaggkygQZITwirpTUEPyWUXdFLs_QEErzeK:1loU8C:DPDEBGrOCAIuGAyacW9MJ-1PQO1e6Ho245ddZ3YJNmY', '2021-06-16 16:54:12.684122'),
('mzr7nrwqby1lwjk1d5xh8hmuro54qtf4', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lbHX7:mENho7iRxROiuSGE1UVPGDjtca0jGpdJmOD6uT3i6GM', '2021-05-11 06:49:21.821688'),
('q2fd6q393efuzslcoce8mf7diop81x75', '.eJxVjEEOwiAQRe_C2pDCQGFcuvcMZGCoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hZnEWIE6_W6T0yHUHfKd6azK1ui5zlLsiD9rltXF-Xg7376BQL9964iE650fHbNCxRxvRgwYC9mZKGAejtQKdQBvjLaTslEILagRFhFm8P8nyNsI:1lih2D:iXksbHFSOUBIIJl4WtrBKWFa6X3kkslPounFRY4IBN0', '2021-05-31 17:28:05.987841'),
('qqju4e5f46ti9niigfvqb8q0723gr15c', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1laces:EM6tmr8TTEZws_yoPqWlPVXLB_RsklHfXqAHY3pu5Xg', '2021-05-09 11:10:38.605605'),
('r39cnk8r6047qn7y4kpwhkj9xlrkjop6', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldb55:7Cr3teaE3DYiAHqdW8pNdRercW5tqDb9sJXU-2BBnU4', '2021-05-17 16:05:59.138059'),
('s97hyekvn30wf05rxhuwtjr3wv2d4ef8', '.eJxVjEEOwiAQRe_C2hDpDAIu3XsGMsxQqRpISrsy3l2bdKHb_977LxVpXUpce57jJOqsvDr8bon4kesG5E711jS3usxT0puid9r1tUl-Xnb376BQL9-a3CmDBIuIXsIY_GCRyJIndsBAxnkWTME6sGMy3hjg4RjYucAICOr9Adq2Ny0:1lmDrO:BHINlL3LwJZWlk8JyxJu7Iqakw0DXsb2Rz___ZfAuFQ', '2021-06-10 11:07:30.439199'),
('u6n1cizdm6o3joqomm4bl4xvnpmdgrvo', '.eJxVjEEOwiAQRe_C2hBwGKAu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERTpx-t0jpwW0H-U7tNss0t3WZotwVedAuxznz83q4fweVev3WA2GxWKJyoDKiQR-jP1Mi8gUSa4PGuuyIHWgwBHEAZ9gSabBsVRLvD-ebN9E:1louRV:dG4fg6MIFnVh7jSKHK0QWwYZFyafTr59DYZz5EYNlRI', '2021-06-17 20:59:53.997966'),
('uimze7bqnkx3s1o8lc6ngnv3gijf35jy', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldERH:q45cbQ6KJVlCTt5ut0zMuBySwzvet_o315ZsCfLzEb0', '2021-05-16 15:55:23.485529'),
('vjtd84vagie7690obr3l3suxb2coibo0', '.eJxVjEEOwiAQRe_C2pDCQGFcuvcMZGCoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hZnEWIE6_W6T0yHUHfKd6azK1ui5zlLsiD9rltXF-Xg7376BQL9964iE650fHbNCxRxvRgwYC9mZKGAejtQKdQBvjLaTslEILagRFhFm8P8nyNsI:1liGb4:yhMR5HFB1iozfeluAjwiqVovpmQJGPcdPERM133kbxE', '2021-05-30 13:14:18.691614'),
('zywo5u2i11vmoom1nsvb8xq63qpoi54i', '.eJxVjMsOwiAQRf-FtSEwPCwu3fcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxYXYcTpdyNMD247yHdst1mmua3LRHJX5EG7HOfMz-vh_h1U7PVbMzjSxZ7Bqlz8AOS8dga0olAIGLUbDCqTMlouwehM2gZAZJO888Di_QHTwje3:1llQdf:LFvu7qaghsg4utnU6SRHGMjZmrVRDp601luHO3a5u2c', '2021-06-08 06:34:03.047937');

-- --------------------------------------------------------

--
-- Table structure for table `noticias_noticias`
--

CREATE TABLE `noticias_noticias` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `descripcion` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noticias_noticias`
--

INSERT INTO `noticias_noticias` (`id`, `title`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 'Compro oro', 'Pues eso que compro oro', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(3, 'camioneta', 'Hemos comprado una camioneta, ah y sacamos disco\r\n            \r\n            ', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(4, 'nuevos', 'Somos nuevos, concretamente de 1965\r\n            ', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(5, 'asd', 'asdasdsad', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(6, 'prueba', 'Noticia de prueba del grupo pink floyd            ', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(8, 'asdasdsad', '            fsdfsdfsdf', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(9, 'sdfsdf', '            sdfsdf', '2021-05-27 10:16:24.612433', '2021-05-27 10:16:24.647064'),
(11, 'prueba2', '            sadfsdf\r\n            dfds\r\n            ', '2021-05-28 09:17:24.166225', '2021-05-28 09:17:24.166225'),
(13, 'prueba', '            descripción', '2021-06-01 06:29:16.859442', '2021-06-01 06:29:16.859442');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_audios`
--
ALTER TABLE `accounts_audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_generos`
--
ALTER TABLE `accounts_generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_provincia`
--
ALTER TABLE `accounts_provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_tipoojeador`
--
ALTER TABLE `accounts_tipoojeador`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_provincia_origen_id_6e00c15a_fk_accounts_` (`provincia_origen_id`);

--
-- Indexes for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_ge_f7c664c9_uniq` (`userprofilemusicos_id`,`generos_id`),
  ADD KEY `accounts_userprofile_generos_id_6830a457_fk_accounts_` (`generos_id`);

--
-- Indexes for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_no_ddcd8fba_uniq` (`userprofilemusicos_id`,`noticias_id`),
  ADD KEY `accounts_userprofile_noticias_id_f1801b4d_fk_noticias_` (`noticias_id`);

--
-- Indexes for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_au_c786a66b_uniq` (`userprofilemusicos_id`,`audios_id`),
  ADD KEY `accounts_userprofile_audios_id_d9a53020_fk_accounts_` (`audios_id`);

--
-- Indexes for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofilemusi_userprofilemusicos_id_vi_d1910b4f_uniq` (`userprofilemusicos_id`,`videos_id`),
  ADD KEY `accounts_userprofile_videos_id_451a8e44_fk_accounts_` (`videos_id`);

--
-- Indexes for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_tipo_ojeador_id_1471de98_fk_accounts_` (`tipo_ojeador_id`),
  ADD KEY `accounts_userprofile_provincia_origen_id_4f557861_fk_accounts_` (`provincia_origen_id`);

--
-- Indexes for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofileojea_userprofileojeadores_id__c180001b_uniq` (`userprofileojeadores_id`,`generos_id`),
  ADD KEY `accounts_userprofile_generos_id_bde67c3a_fk_accounts_` (`generos_id`);

--
-- Indexes for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_userprofileojea_userprofileojeadores_id__ea8cb3ab_uniq` (`userprofileojeadores_id`,`noticias_id`),
  ADD KEY `accounts_userprofile_noticias_id_e1c60d19_fk_noticias_` (`noticias_id`);

--
-- Indexes for table `accounts_videos`
--
ALTER TABLE `accounts_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `noticias_noticias`
--
ALTER TABLE `noticias_noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_audios`
--
ALTER TABLE `accounts_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `accounts_generos`
--
ALTER TABLE `accounts_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `accounts_provincia`
--
ALTER TABLE `accounts_provincia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `accounts_tipoojeador`
--
ALTER TABLE `accounts_tipoojeador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_videos`
--
ALTER TABLE `accounts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `noticias_noticias`
--
ALTER TABLE `noticias_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofilemusicos`
--
ALTER TABLE `accounts_userprofilemusicos`
  ADD CONSTRAINT `accounts_userprofile_provincia_origen_id_6e00c15a_fk_accounts_` FOREIGN KEY (`provincia_origen_id`) REFERENCES `accounts_provincia` (`id`),
  ADD CONSTRAINT `accounts_userprofilemusicos_user_id_aba2a5a6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  ADD CONSTRAINT `accounts_userprofile_generos_id_6830a457_fk_accounts_` FOREIGN KEY (`generos_id`) REFERENCES `accounts_generos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_2b48c412_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_noticias`
--
ALTER TABLE `accounts_userprofilemusicos_noticias`
  ADD CONSTRAINT `accounts_userprofile_noticias_id_f1801b4d_fk_noticias_` FOREIGN KEY (`noticias_id`) REFERENCES `noticias_noticias` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_412878d7_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  ADD CONSTRAINT `accounts_userprofile_audios_id_d9a53020_fk_accounts_` FOREIGN KEY (`audios_id`) REFERENCES `accounts_audios` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_e6bb59a0_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`);

--
-- Constraints for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  ADD CONSTRAINT `accounts_userprofile_userprofilemusicos_i_10654708_fk_accounts_` FOREIGN KEY (`userprofilemusicos_id`) REFERENCES `accounts_userprofilemusicos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_videos_id_451a8e44_fk_accounts_` FOREIGN KEY (`videos_id`) REFERENCES `accounts_videos` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  ADD CONSTRAINT `accounts_userprofile_provincia_origen_id_4f557861_fk_accounts_` FOREIGN KEY (`provincia_origen_id`) REFERENCES `accounts_provincia` (`id`),
  ADD CONSTRAINT `accounts_userprofile_tipo_ojeador_id_1471de98_fk_accounts_` FOREIGN KEY (`tipo_ojeador_id`) REFERENCES `accounts_tipoojeador` (`id`),
  ADD CONSTRAINT `accounts_userprofileojeadores_user_id_fea11f90_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  ADD CONSTRAINT `accounts_userprofile_generos_id_bde67c3a_fk_accounts_` FOREIGN KEY (`generos_id`) REFERENCES `accounts_generos` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofileojeadores_de79c8b2_fk_accounts_` FOREIGN KEY (`userprofileojeadores_id`) REFERENCES `accounts_userprofileojeadores` (`id`);

--
-- Constraints for table `accounts_userprofileojeadores_noticias`
--
ALTER TABLE `accounts_userprofileojeadores_noticias`
  ADD CONSTRAINT `accounts_userprofile_noticias_id_e1c60d19_fk_noticias_` FOREIGN KEY (`noticias_id`) REFERENCES `noticias_noticias` (`id`),
  ADD CONSTRAINT `accounts_userprofile_userprofileojeadores_266eef6b_fk_accounts_` FOREIGN KEY (`userprofileojeadores_id`) REFERENCES `accounts_userprofileojeadores` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
