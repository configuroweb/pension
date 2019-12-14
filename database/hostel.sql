-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2019 a las 15:05:55
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hostel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'configuroweb', 'msevillab@gmail.com', '1234abcd..', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(8, 'AA5224', 'ADMON', 'AdministraciÃ³n de Empresas', '2019-12-13 19:53:56'),
(10, 'SS24IU', 'SIP', 'PsicologÃ­a', '2019-12-13 19:57:04'),
(11, 'II12EW', 'IS', 'IngenierÃ­a de Sistemas InformÃ¡ticos', '2019-12-13 20:02:43'),
(13, 'IICI42', 'INCIV', 'IngenierÃ­a Civil', '2019-12-13 20:05:21'),
(14, 'IIQQ23', 'INGQUIM', 'IngenierÃ­a QuÃ­mica', '2019-12-13 20:49:17'),
(15, 'PP3210', 'PERD', 'ComunicaciÃ³n Social', '2019-12-13 20:51:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(11, 100, 5, 8000, 1, '2019-12-13', 2, 'Bachelor  of Science', 1234567890, 'Mauricio', 'Sevilla', 'Britto', 'male', 123457890, 'hola@cw.com', 1111111111, 'Juan Perez', 'Padre', 2222222222, 'Carrera 46 14 81', 'Cali', 'VALLE DEL CAUCA', 1234, 'Carrera 46 14 81', 'Cali', 'VALLE DEL CAUCA', 1234, '2019-12-13 18:11:37', ''),
(12, 201, 2, 400000, 1, '2019-12-13', 1, 'ComunicaciÃ³n Social', 1234567890, 'David', '', 'Gallego', 'male', 1234567890, 'hello@cw.com', 1234567890, 'Juan Flores', 'Hermano', 1234567890, 'Calle con Carrera', 'Cali', 'VALLE DEL CAUCA', 5678, 'Calle con Carrera', 'Cali', 'VALLE DEL CAUCA', 5678, '2019-12-13 21:57:26', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(11, 1, 101, 350000, '2019-12-13 20:40:20'),
(12, 1, 102, 350000, '2019-12-13 20:40:53'),
(13, 1, 103, 350000, '2019-12-13 20:41:55'),
(14, 2, 104, 550000, '2019-12-13 20:43:06'),
(15, 2, 105, 550000, '2019-12-13 20:43:18'),
(16, 2, 201, 400000, '2019-12-13 20:44:02'),
(17, 2, 202, 400000, '2019-12-13 20:44:18'),
(18, 2, 203, 400000, '2019-12-13 20:44:53'),
(19, 3, 204, 700000, '2019-12-13 20:45:53'),
(20, 3, 205, 700000, '2019-12-13 20:46:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(88, 'ARCHIPIÉLAGO DE SAN ANDRÉS, PROVIDENCIA Y SANTA CATALINA'),
(86, 'PUTUMAYO'),
(85, 'CASANARE'),
(81, 'ARAUCA'),
(76, 'VALLE DEL CAUCA'),
(73, 'TOLIMA'),
(70, 'SUCRE'),
(68, 'SANTANDER'),
(66, 'RISARALDA'),
(63, 'QUINDIO'),
(54, 'NORTE DE SANTANDER'),
(52, 'NARIÑO'),
(50, 'META'),
(47, 'MAGDALENA'),
(44, 'LA GUAJIRA'),
(41, 'HUILA'),
(27, 'CHOCÓ'),
(25, 'CUNDINAMARCA'),
(23, 'CÓRDOBA'),
(20, 'CESAR'),
(19, 'CAUCA'),
(18, 'CAQUETÁ'),
(17, 'CALDAS'),
(15, 'BOYACÁ'),
(13, 'BOLÍVAR'),
(11, 'BOGOTÁ, D.C.'),
(8, 'ATLÁNTICO'),
(5, 'ANTIOQUIA'),
(91, 'AMAZONAS'),
(94, 'GUAINÍA'),
(95, 'GUAVIARE'),
(97, 'VAUPÉS'),
(99, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(7, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 17:42:38'),
(8, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 18:17:09'),
(9, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 18:17:39'),
(10, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 18:54:35'),
(11, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 19:48:14'),
(12, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 20:54:24'),
(13, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 21:18:43'),
(14, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 21:50:23'),
(15, 23, 'hello@cw.com', 0x3a3a31, '', '', '2019-12-13 21:55:13'),
(16, 23, 'hello@cw.com', 0x3a3a31, '', '', '2019-12-13 22:50:51'),
(17, 22, 'hola@cw.com', 0x3a3a31, '', '', '2019-12-13 22:52:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(21, '12121215', 'Juan', 'Able', 'Process', 'male', 1231231230, 'm@g.com', '1231231230', '2019-12-13 14:00:24', '', ''),
(22, '1234567890', 'Mauricio', 'Sevilla', 'Perez', 'male', 123457890, 'hola@cw.com', '1234567890', '2019-12-13 17:42:01', '14-12-2019 01:20:53', ''),
(23, '1234567890', 'David', '', 'Gallego', 'male', 1234567890, 'hello@cw.com', '1234abcd..', '2019-12-13 21:54:14', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
