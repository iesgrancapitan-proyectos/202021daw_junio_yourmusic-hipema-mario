-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 07:32 PM
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
  `url_audio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_audios`
--

INSERT INTO `accounts_audios` (`id`, `url_audio`) VALUES
(1, 'https://open.spotify.com/track/5VTorjtA6UeIWCD4kADTeS?si=vQ2aoiyeQFmYXPPNP4pd4Q');

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
  `nombre_banda` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_grupo` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `provincia_origen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos`
--

INSERT INTO `accounts_userprofilemusicos` (`id`, `nombre_banda`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_grupo`, `user_id`, `provincia_origen_id`) VALUES
(1, 'Terra negra', '', 'Grupo de peñarroya pueblonuevo', NULL, NULL, 'https://www.facebook.com/Terranegraband', NULL, 'terranegraband@gmail.com', 2, 1),
(2, 'grupo 2', '', 'Grupo 2 de prueba pass: grupo2pepe', NULL, NULL, NULL, NULL, NULL, 3, 5);

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
(3, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofilemusicos_url_audios`
--

CREATE TABLE `accounts_userprofilemusicos_url_audios` (
  `id` int(11) NOT NULL,
  `userprofilemusicos_id` int(11) NOT NULL,
  `audios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofilemusicos_url_audios`
--

INSERT INTO `accounts_userprofilemusicos_url_audios` (`id`, `userprofilemusicos_id`, `audios_id`) VALUES
(1, 1, 1);

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
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofileojeadores`
--

CREATE TABLE `accounts_userprofileojeadores` (
  `id` int(11) NOT NULL,
  `nombre_ojeador` varchar(255) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `email_ojeador` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tipo_ojeador_id` int(11) NOT NULL,
  `provincia_origen_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofileojeadores`
--

INSERT INTO `accounts_userprofileojeadores` (`id`, `nombre_ojeador`, `avatar`, `descripcion`, `twitter`, `instagram`, `facebook`, `web`, `email_ojeador`, `user_id`, `tipo_ojeador_id`, `provincia_origen_id`) VALUES
(1, 'conciertos', '', 'Bar con música en directo', NULL, NULL, NULL, NULL, 'conciertos@conciertos.com', 4, 4, 13),
(2, 'factory', '', 'factory records', NULL, NULL, NULL, 'https://factoryrecords.org/', NULL, 5, 2, 8);

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
(1, 1, 9),
(2, 1, 10),
(4, 2, 7),
(3, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_videos`
--

CREATE TABLE `accounts_videos` (
  `id` int(11) NOT NULL,
  `url_video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_videos`
--

INSERT INTO `accounts_videos` (`id`, `url_video`) VALUES
(1, 'https://www.youtube.com/watch?v=amK7McaUp7Y'),
(2, 'https://www.youtube.com/watch?v=6c1BThu95d8');

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
(64, 'Can view ciudad', 16, 'view_ciudad');

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
(1, 'pbkdf2_sha256$216000$9lgeEIehvD5c$kFoCOAv1zOZwJ875s1wpKBlzDfcrwkVo9PFy4Ih+TYk=', '2021-05-03 16:05:59.128053', 1, 'admin', '', '', '', 1, 1, '2021-04-25 11:09:15.487339'),
(2, 'pbkdf2_sha256$216000$AZYtmLCTaD20$HMaZ3q4ZI3wxfllmh7aqCtdf7tSz8sBVKzA4lvaamsI=', NULL, 0, 'Mario', '', '', '', 0, 1, '2021-04-26 17:16:41.397201'),
(3, 'pbkdf2_sha256$216000$pvfrsQVIfxmP$ZNjgQjSqUhXsr5pvNbLVXUHiS0A89eXnPY3d00758zE=', NULL, 0, 'Pepe', '', '', '', 0, 1, '2021-04-26 17:21:04.266866'),
(4, 'pbkdf2_sha256$216000$AbDHSlmeFnmM$RyoqFIkE6KW3HnR2otH4XJNsiBR4Js6HmwB1Pt4Phgc=', NULL, 0, 'antonio', '', '', '', 0, 1, '2021-04-26 17:23:29.043743'),
(5, 'pbkdf2_sha256$216000$UouehGrLU3wy$x7XNzCA/QKGZA+qLhb5S4Ptmd7ITVRdqSWFvWrr20Y0=', NULL, 0, 'jimena', '', '', '', 0, 1, '2021-04-26 17:24:06.232496');

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
(112, '2021-05-03 17:31:16.081780', '2', 'factory', 2, '[{\"changed\": {\"fields\": [\"Provincia origen\"]}}]', 11, 1);

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
(36, 'accounts', '0015_auto_20210503_1930', '2021-05-03 17:30:40.608498');

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
('6rhc67itaw3m6c3l1rl7bvbwofuxvao6', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lbQxz:XoOIes_29LZ9n1I_PGBKh9Nuu8W5UKItjDkCRjs1itM', '2021-05-11 16:53:43.338229'),
('gu2ltix0m6xcrz7kxndl3h3kptd6ia1a', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldESN:QA-dbOKxIZa2aKe3ML2FqRVYkT8ZLRo-CUotJlpCpTE', '2021-05-16 15:56:31.772282'),
('ht0fiaizw30vg2t0fc303f7rhwjuey48', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lc9w6:3CqKlp82_JqTLF7YXakJhsYBC2s5z940lxQkXSWRpR8', '2021-05-13 16:54:46.618214'),
('mzr7nrwqby1lwjk1d5xh8hmuro54qtf4', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1lbHX7:mENho7iRxROiuSGE1UVPGDjtca0jGpdJmOD6uT3i6GM', '2021-05-11 06:49:21.821688'),
('qqju4e5f46ti9niigfvqb8q0723gr15c', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1laces:EM6tmr8TTEZws_yoPqWlPVXLB_RsklHfXqAHY3pu5Xg', '2021-05-09 11:10:38.605605'),
('r39cnk8r6047qn7y4kpwhkj9xlrkjop6', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldb55:7Cr3teaE3DYiAHqdW8pNdRercW5tqDb9sJXU-2BBnU4', '2021-05-17 16:05:59.138059'),
('uimze7bqnkx3s1o8lc6ngnv3gijf35jy', '.eJxVjDsOwyAQBe9CHSF-MpAyfc6AFu9ucBKBZOzKyt0jJBdJ-2bmHSLBvpW0d1rTguIqtLj8bhnmF9UB8An10eTc6rYuWQ5FnrTLe0N6307376BAL6OOhBMFNGSZ0KBXzlhknY1zimb0BBxRIyNzsJBVtipE6yefjQFi8fkCHo45VA:1ldERH:q45cbQ6KJVlCTt5ut0zMuBySwzvet_o315ZsCfLzEb0', '2021-05-16 15:55:23.485529');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_audios`
--
ALTER TABLE `accounts_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_generos`
--
ALTER TABLE `accounts_userprofilemusicos_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_audios`
--
ALTER TABLE `accounts_userprofilemusicos_url_audios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_userprofilemusicos_url_videos`
--
ALTER TABLE `accounts_userprofilemusicos_url_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores`
--
ALTER TABLE `accounts_userprofileojeadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accounts_userprofileojeadores_generos`
--
ALTER TABLE `accounts_userprofileojeadores_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accounts_videos`
--
ALTER TABLE `accounts_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
