-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-10-2018 a las 09:19:45
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
-- Base de datos: `loginjava`
--
CREATE DATABASE IF NOT EXISTS `loginjava` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `loginjava`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ausencia`
--

DROP TABLE IF EXISTS `ausencia`;
CREATE TABLE IF NOT EXISTS `ausencia` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ausencia`
--

INSERT INTO `ausencia` (`id`, `id_usuario`, `inicio`, `fin`) VALUES
(1, 1, '2018-10-03 09:36:16', '2018-10-03 09:37:24'),
(2, 3, '2018-10-03 10:38:34', '2018-10-03 10:40:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

DROP TABLE IF EXISTS `comida`;
CREATE TABLE IF NOT EXISTS `comida` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`id`, `id_usuario`, `inicio`, `fin`) VALUES
(1, 1, '2018-10-03 09:34:25', '2018-10-03 09:35:29'),
(2, 3, '2018-10-03 10:18:33', '2018-10-03 10:30:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departamento` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre_departamento`) VALUES
(1, 'particulares'),
(2, 'empresas'),
(3, 'autónomos'),
(4, 'facturación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descanso`
--

DROP TABLE IF EXISTS `descanso`;
CREATE TABLE IF NOT EXISTS `descanso` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `descanso`
--

INSERT INTO `descanso` (`id`, `id_usuario`, `inicio`, `fin`) VALUES
(1, 1, '2018-10-03 09:32:28', '2018-10-03 09:33:09'),
(2, 3, '2018-10-03 10:17:34', '2018-10-03 10:17:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

DROP TABLE IF EXISTS `jornada`;
CREATE TABLE IF NOT EXISTS `jornada` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `inicio` timestamp NOT NULL,
  `fin` timestamp NOT NULL DEFAULT '1999-12-31 23:00:01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id`, `id_usuario`, `inicio`, `fin`) VALUES
(1, 1, '2018-10-03 09:31:43', '2018-10-03 09:39:06'),
(2, 3, '2018-10-03 10:17:05', '2018-10-03 10:40:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempos`
--

DROP TABLE IF EXISTS `tiempos`;
CREATE TABLE IF NOT EXISTS `tiempos` (
  `id_estado` int(5) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `evento` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `hora_evento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_estado`),
  UNIQUE KEY `id_estado` (`id_estado`),
  KEY `id_estado_2` (`id_estado`),
  KEY `id_estado_3` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_retirada`
--

DROP TABLE IF EXISTS `tipo_retirada`;
CREATE TABLE IF NOT EXISTS `tipo_retirada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_retirada`
--

INSERT INTO `tipo_retirada` (`id`, `idusuario`, `tipo`, `fecha_inicio`, `fecha_fin`) VALUES
(1, '1', 'descanso', '2018-10-02', '2018-10-03'),
(2, '2', 'ausencia', '2018-10-05', '2018-10-09'),
(3, '3', 'comida', '2018-10-07', '2018-10-07'),
(4, '1', 'ausencia', '2018-10-09', '2018-10-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `totales_tiempos`
--

DROP TABLE IF EXISTS `totales_tiempos`;
CREATE TABLE IF NOT EXISTS `totales_tiempos` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(4) NOT NULL,
  `inicio_sesion` timestamp NULL DEFAULT NULL,
  `inicio_descanso` timestamp NULL DEFAULT NULL,
  `fin_descanso` timestamp NULL DEFAULT NULL,
  `inicio_comida` timestamp NULL DEFAULT NULL,
  `fin_comida` timestamp NULL DEFAULT NULL,
  `inicio_ausencia` timestamp NULL DEFAULT NULL,
  `fin_ausencia` timestamp NULL DEFAULT NULL,
  `fin_sesion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `rol`) VALUES
(1, 'Administrador', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'administrador', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_prueba`
--

DROP TABLE IF EXISTS `usuarios_prueba`;
CREATE TABLE IF NOT EXISTS `usuarios_prueba` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `usuario` char(14) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` char(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'no activo',
  `id_departamento` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='solo para hacer las pruebas';

--
-- Volcado de datos para la tabla `usuarios_prueba`
--

INSERT INTO `usuarios_prueba` (`id`, `usuario`, `contrasena`, `nombre`, `apellidos`, `estado`, `id_departamento`) VALUES
(1, 'Y', 'T', 'Yoni', 'TosoA', 'fin sesión', 1),
(2, 'T', 'A', 'Tomas', 'Agua', 'fin sesión', 2),
(3, 'M', 'D', 'Maria', 'Daño', 'fin sesión', 3),
(4, 'F', 'A', 'Fe', 'Azo', 'no activo', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
