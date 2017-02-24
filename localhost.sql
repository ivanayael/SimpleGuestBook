-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-10-2012 a las 01:25:52
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `visitas`
--
CREATE DATABASE `visitas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `visitas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librovisitas`
--

CREATE TABLE IF NOT EXISTS `librovisitas` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comentario` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `librovisitas`
--

INSERT INTO `librovisitas` (`id_comentario`, `nombre`, `apellido`, `email`, `comentario`, `fecha`) VALUES
(1, 'Veronica', 'Peña', 'veropena@hotmail.com', 'Muy buena la página', '2010-04-06'),
(2, 'Juan', 'Perez', 'juanperez@yahoo.com', 'Muy bueno el aporte ', '2010-04-13'),
(3, 'susana', 'gomez', '', 'Excelente material de trabajo', '2010-04-14'),
(4, 'Maria Veronica', 'pineyro', '', 'Muy bueno', '2011-05-05'),
(5, 'VERONICA', 'pineyro', 'veropineyro@hotmail.com', 'Prueba', '2011-10-13'),
(11, 'susana', 'sanchez', 'susana@gmail.com', 'Buenisimo!!!', '2012-05-18'),
(12, 'estela', 'raval', 'estela@gmail.com', 'Que lindo blog', '2012-05-18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
