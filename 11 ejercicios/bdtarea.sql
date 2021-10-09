-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2020 a las 19:46:01
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdtarea`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Spmaterias` (`idmaterias` INT(40))  SELECT * FROM tblmateria$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblalumno`
--

CREATE TABLE `tblalumno` (
  `id_Matricula` int(12) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Telefono` bigint(10) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Tutor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblalumno`
--

INSERT INTO `tblalumno` (`id_Matricula`, `Nombre`, `Direccion`, `Telefono`, `Email`, `Tutor`) VALUES
(218987, 'Juan Alberto', 'Jardine 230', 9611640078, 'juanbeto330@gmail.com', 'Juan Guzman'),
(221189, 'Miguel Angel', 'Teran 160', 9614567895, 'miguelito165@gmail.com', 'Martin Cortez'),
(222227, 'Jimmy James', 'Violeta 120', 2221640094, 'jimmyjameslopez@gmail.com', 'Ramon Lopez'),
(222895, 'Yermey', 'Flores 400', 9612324897, 'yermeytron1010@yahoo.com', 'German '),
(878742, 'Obet Alejandro', 'Centro 515', 9231211640, 'obetvio96@outlook.com', 'Alejandra Solis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcalificacion`
--

CREATE TABLE `tblcalificacion` (
  `id_Matricula` int(12) NOT NULL,
  `id_Catedratico` int(30) NOT NULL,
  `id_Materia` int(40) NOT NULL,
  `cal1` int(10) NOT NULL,
  `cal2` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcalificacion`
--

INSERT INTO `tblcalificacion` (`id_Matricula`, `id_Catedratico`, `id_Materia`, `cal1`, `cal2`) VALUES
(222227, 7896, 1299, 10, 10),
(222227, 7897, 1300, 9, 10),
(218987, 7896, 1299, 10, 10),
(218987, 7897, 1300, 10, 9),
(221189, 7898, 1296, 10, 9),
(221189, 7899, 1295, 10, 10),
(878742, 7897, 1298, 10, 9),
(222895, 7898, 1299, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcarrera`
--

CREATE TABLE `tblcarrera` (
  `id_Carrera` int(12) NOT NULL,
  `Nombre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcarrera`
--

INSERT INTO `tblcarrera` (`id_Carrera`, `Nombre`) VALUES
(110, 'Industrial'),
(111, 'Sistemas'),
(112, 'Arquitectu'),
(191, 'Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcarreramateria`
--

CREATE TABLE `tblcarreramateria` (
  `id_Carrera` int(40) NOT NULL,
  `id_Materia` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcarreramateria`
--

INSERT INTO `tblcarreramateria` (`id_Carrera`, `id_Materia`) VALUES
(111, 1296),
(111, 1300),
(112, 1297),
(111, 1299);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcatedratico`
--

CREATE TABLE `tblcatedratico` (
  `id_Catedratico` int(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Direccion` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `NivelEstudio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcatedratico`
--

INSERT INTO `tblcatedratico` (`id_Catedratico`, `Nombre`, `Direccion`, `Email`, `Telefono`, `NivelEstudio`) VALUES
(7896, 'Lucero', 'Pedregal 334', 'lucerito123@gmail.com', 1121695284, 'Universida'),
(7897, 'Antonio', 'Sabana 320', 'anthony.sanlow225@outlook.com', 2121311248, 'Universida'),
(7898, 'Ramon', 'Jardines 320', 'ramon.c@gmail.com', 1612344568, 'Universida'),
(7899, 'Leslie', 'Sabana', 'lesli120@yahoo.com', 1231055455, 'Universida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmateria`
--

CREATE TABLE `tblmateria` (
  `id_Materia` int(40) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Creditos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmateria`
--

INSERT INTO `tblmateria` (`id_Materia`, `Nombre`, `Creditos`) VALUES
(1295, 'Base de datos', 10),
(1296, 'Desarrollo Web', 10),
(1297, 'Levantamiento', 10),
(1298, 'Planta ', 10),
(1299, 'Programacion Poo', 10),
(1300, 'Algebra', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmodalidad`
--

CREATE TABLE `tblmodalidad` (
  `idModalidad` varchar(10) NOT NULL,
  `Modalidad` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmodalidad`
--

INSERT INTO `tblmodalidad` (`idModalidad`, `Modalidad`) VALUES
('1', 'Matutino'),
('2', 'Vespertino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmodalidadcarrera`
--

CREATE TABLE `tblmodalidadcarrera` (
  `idModalidad` varchar(10) NOT NULL,
  `idCarrera` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmodalidadcarrera`
--

INSERT INTO `tblmodalidadcarrera` (`idModalidad`, `idCarrera`) VALUES
('1', 112),
('2', 110),
('2', 111),
('1', 191);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_3`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_3` (
`Nombre` varchar(30)
,`tblcarrera` varchar(10)
,`Modalidad` varchar(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_7`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_7` (
`id_Matricula` int(12)
,`Nombre` varchar(30)
,`tblmateria` varchar(30)
,`cal1` int(10)
,`cal2` int(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_8`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_8` (
`id_Matricula` int(12)
,`Nombre` varchar(30)
,`direccion` varchar(40)
,`email` varchar(40)
,`tutor` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_catedraticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_catedraticos` (
`id_Catedratico` int(30)
,`Nombre` varchar(30)
,`Direccion` varchar(40)
,`Email` varchar(40)
,`Telefono` int(10)
,`NivelEstudio` varchar(10)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_modalidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_modalidad` (
`Modalidad` varchar(10)
,`nombre` varchar(10)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_3`
--
DROP TABLE IF EXISTS `vista_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_3`  AS  select `m`.`Nombre` AS `Nombre`,`c`.`Nombre` AS `tblcarrera`,`mo`.`Modalidad` AS `Modalidad` from ((((`tblmateria` `m` join `tblmodalidad` `mo`) join `tblcarrera` `c`) join `tblcarreramateria` `cm`) join `tblmodalidadcarrera` `mc`) where `cm`.`id_Materia` = `m`.`id_Materia` and `cm`.`id_Carrera` = `c`.`id_Carrera` and `mc`.`idModalidad` = `mo`.`idModalidad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_7`
--
DROP TABLE IF EXISTS `vista_7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_7`  AS  select `a`.`id_Matricula` AS `id_Matricula`,`a`.`Nombre` AS `Nombre`,`m`.`Nombre` AS `tblmateria`,`c`.`cal1` AS `cal1`,`c`.`cal2` AS `cal2` from ((`tblalumno` `a` join `tblmateria` `m`) join `tblcalificacion` `c`) where `c`.`id_Matricula` = `a`.`id_Matricula` and `c`.`id_Matricula` = `a`.`id_Matricula` and `c`.`id_Matricula` = `m`.`id_Materia` and `c`.`cal1` <> 0 and `c`.`cal2` <> 0 order by `a`.`id_Matricula` desc ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_8`
--
DROP TABLE IF EXISTS `vista_8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_8`  AS  select `tblalumno`.`id_Matricula` AS `id_Matricula`,`tblalumno`.`Nombre` AS `Nombre`,`tblalumno`.`Direccion` AS `direccion`,`tblalumno`.`Email` AS `email`,`tblalumno`.`Tutor` AS `tutor` from `tblalumno` where `tblalumno`.`Nombre` like '%A%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_catedraticos`
--
DROP TABLE IF EXISTS `vista_catedraticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_catedraticos`  AS  select `tblcatedratico`.`id_Catedratico` AS `id_Catedratico`,`tblcatedratico`.`Nombre` AS `Nombre`,`tblcatedratico`.`Direccion` AS `Direccion`,`tblcatedratico`.`Email` AS `Email`,`tblcatedratico`.`Telefono` AS `Telefono`,`tblcatedratico`.`NivelEstudio` AS `NivelEstudio` from `tblcatedratico` order by `tblcatedratico`.`Nombre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_modalidad`
--
DROP TABLE IF EXISTS `vista_modalidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_modalidad`  AS  select `tblmodalidad`.`Modalidad` AS `Modalidad`,`tblcarrera`.`Nombre` AS `nombre` from ((`tblmodalidad` join `tblcarrera`) join `tblmodalidadcarrera`) where `tblmodalidadcarrera`.`idModalidad` = `tblmodalidad`.`idModalidad` and `tblmodalidadcarrera`.`idCarrera` = `tblcarrera`.`id_Carrera` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblalumno`
--
ALTER TABLE `tblalumno`
  ADD PRIMARY KEY (`id_Matricula`);

--
-- Indices de la tabla `tblcalificacion`
--
ALTER TABLE `tblcalificacion`
  ADD KEY `id_Catedratico` (`id_Catedratico`),
  ADD KEY `tblcalificacion_ibfk_2` (`id_Matricula`),
  ADD KEY `id_Materia` (`id_Materia`);

--
-- Indices de la tabla `tblcarrera`
--
ALTER TABLE `tblcarrera`
  ADD PRIMARY KEY (`id_Carrera`);

--
-- Indices de la tabla `tblcarreramateria`
--
ALTER TABLE `tblcarreramateria`
  ADD KEY `id_Materia` (`id_Materia`),
  ADD KEY `id_Carrera` (`id_Carrera`);

--
-- Indices de la tabla `tblcatedratico`
--
ALTER TABLE `tblcatedratico`
  ADD PRIMARY KEY (`id_Catedratico`);

--
-- Indices de la tabla `tblmateria`
--
ALTER TABLE `tblmateria`
  ADD PRIMARY KEY (`id_Materia`);

--
-- Indices de la tabla `tblmodalidad`
--
ALTER TABLE `tblmodalidad`
  ADD PRIMARY KEY (`idModalidad`);

--
-- Indices de la tabla `tblmodalidadcarrera`
--
ALTER TABLE `tblmodalidadcarrera`
  ADD KEY `idCarrera` (`idCarrera`),
  ADD KEY `idModalidad` (`idModalidad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblcalificacion`
--
ALTER TABLE `tblcalificacion`
  ADD CONSTRAINT `tblcalificacion_ibfk_1` FOREIGN KEY (`id_Catedratico`) REFERENCES `tblcatedratico` (`id_Catedratico`),
  ADD CONSTRAINT `tblcalificacion_ibfk_2` FOREIGN KEY (`id_Matricula`) REFERENCES `tblalumno` (`id_Matricula`),
  ADD CONSTRAINT `tblcalificacion_ibfk_3` FOREIGN KEY (`id_Materia`) REFERENCES `tblmateria` (`id_Materia`);

--
-- Filtros para la tabla `tblcarreramateria`
--
ALTER TABLE `tblcarreramateria`
  ADD CONSTRAINT `tblcarreramateria_ibfk_1` FOREIGN KEY (`id_Materia`) REFERENCES `tblmateria` (`id_Materia`),
  ADD CONSTRAINT `tblcarreramateria_ibfk_2` FOREIGN KEY (`id_Carrera`) REFERENCES `tblcarrera` (`id_Carrera`);

--
-- Filtros para la tabla `tblmodalidadcarrera`
--
ALTER TABLE `tblmodalidadcarrera`
  ADD CONSTRAINT `tblmodalidadcarrera_ibfk_1` FOREIGN KEY (`idCarrera`) REFERENCES `tblcarrera` (`id_Carrera`),
  ADD CONSTRAINT `tblmodalidadcarrera_ibfk_2` FOREIGN KEY (`idModalidad`) REFERENCES `tblmodalidad` (`idModalidad`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
