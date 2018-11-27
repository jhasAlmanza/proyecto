-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-10-2018 a las 09:20:07
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_omar`
--
CREATE DATABASE IF NOT EXISTS `proyecto_omar` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `proyecto_omar`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

DROP TABLE IF EXISTS `mapa`;
CREATE TABLE IF NOT EXISTS `mapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `infowindow` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`id`, `pos_x`, `pos_y`, `infowindow`) VALUES
(1, -3.737931, 40.363646, 'C.C Islazul'),
(2, -3.743234, 40.389788, 'Empresa Drados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
CREATE TABLE IF NOT EXISTS `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `hora` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `asunto`, `mensaje`, `hora`, `fecha`) VALUES
(5, 'angelo', 'solorzano c', 'angelo@gmail.com', '566452342', 'error', 'sdafsdfdsa sdfasdfasdf sdaffffffffffsdfasdfasdfwerqewrweqtetwert bvnbvcnbvn', 11, '2018-10-01'),
(6, 'tito', 'asdasd', 'tito@gmail.com', '767886945', 'holaa', 'sfwesdff asdf asdfasdf asdfsdfq ', 11, '2018-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online`
--

DROP TABLE IF EXISTS `online`;
CREATE TABLE IF NOT EXISTS `online` (
  `idonline` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`idonline`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `online`
--

INSERT INTO `online` (`idonline`, `login`, `password`) VALUES
(1, 'sebastian', 'sebastian'),
(2, 'omar', 'omar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `nombre`, `contrasena`, `correo`) VALUES
(1, 'omar', 'omar', 'omar@gmail.com'),
(2, 'prueba', 'prueba', 'prueba@gmail.com'),
(14, 'sebastian', 'sebastian', 'sebastian@gmail.com'),
(11, 'roy', 'roy', 'roy@gmail.com'),
(12, 'joaquin', 'joaquin', 'joaquin@gmail.com'),
(10, 'deivy', 'deivy', 'deivy@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_zelenza`
--

DROP TABLE IF EXISTS `usuarios_zelenza`;
CREATE TABLE IF NOT EXISTS `usuarios_zelenza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_zelenza`
--

INSERT INTO `usuarios_zelenza` (`id`, `usuario`, `password`) VALUES
(1, 'test', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
