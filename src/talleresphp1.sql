-- phpMyAdmin SQL Dump
-- version 3.4.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-01-2012 a las 21:13:11
-- Versión del servidor: 5.0.77
-- Versión de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `talleresphp1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) NOT NULL auto_increment,
  `slug` char(50) NOT NULL,
  `Titulo` char(100) NOT NULL,
  `Contenido` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `slug`, `Titulo`, `Contenido`) VALUES
(1, 'Esta es la entrada del blog', 'Esta-es-la-entrada-del-blog', '    Extremadamente seguro\r\n    Extremadamente ligero\r\n    Mínima curva de aprendizaje\r\n    Utiliza el patrón MVC y HMVC\r\n    Compatibilidad UTF-8 100%\r\n    Arquitectura Loosely coupled\r\n    Extremadamente sencilla de extender\r\n    Extremadamente seguro\r\n    Extremadamente ligero\r\n    Mínima curva de aprendizaje\r\n    Utiliza el patrón MVC y HMVC\r\n    Compatibilidad UTF-8 100%\r\n    Arquitectura Loosely coupled\r\n    Extremadamente sencilla de extender\r\n'),
(2, 'titulo del php', 'php-de-titulo', 'La red social Twitter anunció hoy que, a medida que continúa su expansión internacional, comenzará a bloquear contenido en ciertos países.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) NOT NULL auto_increment,
  `title` char(150) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(1, 'Kohana Framework', '    Extremadamente seguro\r\n    Extremadamente ligero\r\n    Mínima curva de aprendizaje\r\n    Utiliza el patrón MVC y HMVC\r\n    Compatibilidad UTF-8 100%\r\n    Arquitectura Loosely coupled\r\n    Extremadamente sencilla de extender\r\n'),
(2, 'Zend PHP', 'El motor Zend es un motor de procesamiento para la intepretación y cifrado del código php, desde la versión 4. Desarrollado por Zend Tecnologies para brindar un equipo de soporte y acelerar la carga de aplicaciones realizadas con php.\r\n\r\nEntre las funciones más importantes que realiza este motor de procesamiento está la posibilidad de cifrar el código fuente de las páginas desarrolladas en php para así luego hacer posible la comercialización de este. Debido a las limitaciones de este sistema en volcar el desarrollo de php a una índole comercial un grupo de gurus hackers desarrolladores en php se dieron a la tarea de crear un algoritmo que descifrara el código generado por el motor, cosa que fue lograda poco después de su lanzamiento.'),
(3, 'Taller de', ''),
(4, 'taller de kohana php', 'taller de kohana phptaller de kohana phptaller de kohana php'),
(5, 'Ejemplo', 'jnasckjnckjnckjwd'),
(6, 'Ejemplo', 'skcm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL auto_increment,
  `username` char(50) NOT NULL,
  `password` char(70) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
