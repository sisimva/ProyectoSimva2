-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2015 a las 06:24:04
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `simva`
--
CREATE DATABASE IF NOT EXISTS `simva` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `simva`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE IF NOT EXISTS `asignaciones` (
  `idAsignaciones` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número consecutivo de asignación es el número del acta de asignación.',
  `numeroDocumento` int(11) NOT NULL COMMENT 'En este campo se va a almacenar el número del documento de identidad del funcionario.',
  `placa` varchar(6) NOT NULL COMMENT 'En este campo se va a almacenar  las letras y números asignados por Min transporte a los vehículos para su identificación.',
  `fechaAsignacion` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha en la cual se le asigna al funcionario la responsabilidad del vehiculo.',
  `fechaDesasignacion` varchar(45) NOT NULL COMMENT 'En este campo se va a almacenar  la fecha en la cual cesa o finaliza la responsabilidad del funcionario sobre el vehículo.',
  `novedadesVehiculo` longtext NOT NULL COMMENT 'En este campo se va a almacenar  la relacion de novedades y pendientes del vehículo en el momento de la asignación.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan la información correspondiente a  las diferentes asignaciones de vehiculos que se realizan a los funcionarios.';

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`idAsignaciones`, `numeroDocumento`, `placa`, `fechaAsignacion`, `fechaDesasignacion`, `novedadesVehiculo`) VALUES
(1, 7729168, 'AST28', '2013-02-20', '', 'Sin Novedad'),
(2, 8169209, 'FTD29', '2013-02-20', '', 'Sin Novedad'),
(3, 9975406, 'HTC25', '2013-05-15', '2014-01-26', 'Sin Novedad'),
(4, 78954126, 'JKL25', '2013-05-15', '2014-01-27', 'Sin Novedad'),
(5, 80745768, 'JWE30', '2013-07-10', '', 'Pendiente cambio llantas'),
(6, 80863877, 'KLM26', '2013-07-10', '', 'Sin Novedad'),
(7, 1030635486, 'KOL28', '2013-10-17', '2014-03-09', 'Revisar encendido'),
(8, 1053327718, 'LOP27', '2014-09-08', '', 'Sin Novedad'),
(9, 1068420988, 'RPT23', '2013-09-29', '2014-02-20', 'Pendiente cambio espejos'),
(10, 1069282450, 'HTC25', '2014-01-27', '2014-05-29', 'Sin Novedad'),
(11, 1080292116, 'JKL25', '2014-01-28', '2014-09-19', 'Sin Novedad'),
(12, 1087124532, 'KOL28', '2014-03-10', '', 'Sin Novedad'),
(13, 1123204194, 'RPT23', '2014-02-21', '', 'Sin Novedad'),
(14, 5205799, 'HNP613', '2013-10-25', '', 'Pendiente Cambio llantas'),
(15, 13617020, 'JHD112', '2013-10-25', '', 'Sin Novedad'),
(16, 63529684, 'LCX536', '2013-10-26', '', 'Sin Novedad'),
(17, 71194335, 'MHT963', '2013-10-25', '', 'Bomper delantero izquierdo rayado'),
(18, 72055267, 'ÑPO873', '2013-12-01', '2014-05-20', 'Sin Novedad'),
(19, 74020646, 'QSA981', '2013-12-01', '2014-03-18', 'Puerta derecha delantera abollada'),
(20, 94551182, 'QSR541', '2013-12-01', '2014-07-20', 'Sin Novedad'),
(21, 1006788866, 'REO821', '2013-12-28', '2014-06-24', 'Farola delantera derecha rota'),
(22, 1058965902, 'ÑPO873', '2014-05-21', '', 'Sin Novedad'),
(23, 1073668172, 'QSA981', '2014-03-19', '', 'Sin Novedad'),
(24, 1079172479, 'REO821', '2014-06-25', '', 'Sin Novedad'),
(25, 1117488622, 'QSR541', '2014-07-21', '', 'Sin Novedad'),
(26, 1130644887, 'HTC25', '2014-05-30', '2014-10-24', 'Pendiente Cambio Aceite'),
(27, 1128422145, 'HTC25', '2014-10-25', '', 'Sin Novedad'),
(28, 1127070531, 'JKL25', '2014-09-20', '', 'Sin Novedad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `idCategoria` int(11) NOT NULL COMMENT 'En este campo se almacena el nombre de la categoría de la licencia de conducción del funcionario  de acuerdo a las categorias indicadas por el Ministerio de Transporte.',
  `descripcionCategoria` varchar(5) NOT NULL COMMENT 'En este campo se almacena el nombre de la categoría de las licencias de conducción de acuerdo a lo indicado por el Ministerio de Transporte.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `descripcionCategoria`) VALUES
(100, 'A1'),
(200, 'A2'),
(300, 'B1'),
(400, 'B2'),
(500, 'B3'),
(600, 'C1'),
(700, 'C2'),
(800, 'C3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `idCiudad` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número consecutivo que identifica a cada ciudad.',
  `nombreCiudad` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar el nombre de la ciudad Ej.  Santiago de Cali, Bogotá, Medellin etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan las diferentes ciudades que serán empleadas en el sistema para indicar el lugar de expedición del documento de identidad y la ciudad de la dirección de residencia.';

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idCiudad`, `nombreCiudad`) VALUES
(10, 'Abejorral'),
(20, 'Acacias'),
(30, 'Aguachica'),
(40, 'Alban'),
(50, 'Alcala'),
(60, 'Alvarado'),
(70, 'Anolaima'),
(80, 'Aracataca'),
(90, 'Arenal'),
(100, 'Ayapel'),
(110, 'Bagado'),
(120, 'Barrancabermeja'),
(130, 'Barranquilla'),
(140, 'Bogotá, D.C.'),
(150, 'Bucaramanga'),
(160, 'Buenaventura'),
(170, 'Buenos Aires'),
(180, 'Buesaco'),
(190, 'Buga'),
(200, 'Busbanza'),
(210, 'Cabrera'),
(220, 'Cachipay'),
(230, 'Cajamarca'),
(240, 'Calarca'),
(250, 'Cali'),
(260, 'Caqueza'),
(270, 'Cartagena'),
(280, 'Cartago'),
(290, 'Chia'),
(300, 'Cucuta'),
(310, 'Curumani'),
(320, 'Dabeiba'),
(330, 'Dolores'),
(340, 'Duitama'),
(350, 'Ebejico'),
(360, 'El Carmen de Bolvar'),
(370, 'El Cocuy'),
(380, 'El Guamo'),
(390, 'Envigao'),
(400, 'Espinal'),
(410, 'Facatativa'),
(420, 'Flandes'),
(430, 'Florencia'),
(440, 'Floridablanca'),
(450, 'Fredonia'),
(460, 'Fundacion'),
(470, 'Funes'),
(480, 'Funza'),
(490, 'Fuquene'),
(500, 'Fusagasuga'),
(510, 'Gachala'),
(520, 'Galan'),
(530, 'Gigante'),
(540, 'Girardot'),
(550, 'Giron'),
(560, 'Granada'),
(570, 'Guaduas'),
(580, 'Guatavita'),
(590, 'Guican'),
(600, 'Gutierrez'),
(610, 'Hacari'),
(620, 'Hatillo de loba'),
(630, 'Hato'),
(640, 'Hatocorozal'),
(650, 'Heliconia'),
(660, 'Herran'),
(670, 'Herveo'),
(680, 'Hispania'),
(690, 'Hobo'),
(700, 'Honda'),
(710, 'Ibague'),
(720, 'Icononzo'),
(730, 'Iles'),
(740, 'Imues'),
(750, 'Inza'),
(760, 'Ipiales'),
(770, 'Iquira'),
(780, 'Isnos'),
(790, 'Itagui'),
(800, 'Itsminia'),
(810, 'Jambalo'),
(820, 'Jamundi'),
(830, 'Jardin'),
(840, 'Jenesano'),
(850, 'Jerico'),
(860, 'Jerusalen'),
(870, 'Jesus Maria'),
(880, 'Jordan'),
(890, 'Junin'),
(900, 'Jurado'),
(910, 'La Apartada'),
(920, 'La Calera'),
(930, 'La Dorada'),
(940, 'La Macarena'),
(950, 'La Mesa'),
(960, 'La Plata'),
(970, 'La Sierra'),
(980, 'La Ubita'),
(990, 'La Vega'),
(1000, 'Lerida'),
(1010, 'Leticia'),
(1020, 'Macanal'),
(1030, 'Madrid'),
(1040, 'Maicao'),
(1050, 'Manizales'),
(1060, 'Mariquita'),
(1070, 'Medellin'),
(1080, 'Melgar'),
(1090, 'Mitu'),
(1100, 'Muzo'),
(1110, 'Nariño'),
(1120, 'Natagaima'),
(1130, 'Nechi'),
(1140, 'Necocli'),
(1150, 'Neira'),
(1160, 'Neiva'),
(1170, 'Nemocon'),
(1180, 'Nilo'),
(1190, 'Nocaima'),
(1200, 'Nuqui'),
(1210, 'Obando'),
(1220, 'Ocamonte'),
(1230, 'Ocaña'),
(1240, 'Oiba'),
(1250, 'Oicata'),
(1260, 'Olaya'),
(1270, 'Onzaga'),
(1280, 'Orocue'),
(1290, 'Otanche'),
(1300, 'Ovejas'),
(1310, 'Pachavita'),
(1320, 'Pacho'),
(1330, 'Paipa'),
(1340, 'Palmira'),
(1350, 'Pamplona'),
(1360, 'Pasto'),
(1370, 'Plato'),
(1380, 'Popayan'),
(1390, 'Puerto Asis'),
(1400, 'Purificacion'),
(1410, 'Quebrada Negra'),
(1420, 'Quetame'),
(1430, 'Quibdo'),
(1440, 'Quimbaya'),
(1450, 'Quinchia'),
(1460, 'Quipama'),
(1470, 'Quipile'),
(1480, 'Rafael'),
(1490, 'Ramiriqui'),
(1500, 'Remedios'),
(1510, 'Restrepo'),
(1520, 'Ricaurte'),
(1530, 'Riohacha'),
(1540, 'Rionegro'),
(1550, 'Risaralda'),
(1560, 'Rivera'),
(1570, 'Roberto Payan'),
(1580, 'Roldanillo'),
(1590, 'Rosas'),
(1600, 'Rovira'),
(1610, 'Sabanagrande'),
(1620, 'Salgar'),
(1630, 'San Andres'),
(1640, 'San Antonio'),
(1650, 'San Gil'),
(1660, 'San Mateo'),
(1670, 'Santa Rosa'),
(1680, 'Soacha'),
(1690, 'Sucre'),
(1700, 'Sutatenza'),
(1710, 'Tabio'),
(1720, 'Tenjo'),
(1730, 'Tibu'),
(1740, 'Tocaima'),
(1750, 'Tocancipa'),
(1760, 'Tulua'),
(1770, 'Tunja'),
(1780, 'Tuquerres'),
(1790, 'Turbo'),
(1800, 'Tutaza'),
(1810, 'Ubala'),
(1820, 'Ubate'),
(1830, 'Une'),
(1840, 'Unguia'),
(1850, 'Uramita'),
(1860, 'Urrao'),
(1870, 'Urumita'),
(1880, 'Usiacuri'),
(1890, 'Utica'),
(1900, 'Valdivia'),
(1910, 'Valledupar'),
(1920, 'Velez'),
(1930, 'Venecia'),
(1940, 'Viani'),
(1950, 'Villa de Leiva'),
(1960, 'Villapinzon'),
(1970, 'Villavicencio'),
(1980, 'Villeta'),
(1990, 'Viota'),
(2000, 'Viterbo'),
(2010, 'Yacopi'),
(2020, 'Yarumal'),
(2030, 'Yondo'),
(2040, 'Yopal'),
(2050, 'Yotoco'),
(2060, 'Yumbo'),
(2070, 'Zambrano'),
(2080, 'Zapatoca'),
(2090, 'Zaragoza'),
(2100, 'Zarzal'),
(2110, 'Zetaquira'),
(2120, 'Zipacon'),
(2130, 'Zipaquira');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cedulaCliente` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nombre` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `telefono` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedulaCliente`, `nombre`, `telefono`) VALUES
('1014272667', 'Sofia de Aristizabal', '44444'),
('1032383555', 'Pedro Bustos Morales', '4645'),
('79289525', 'Washington Nieto', '3133163023'),
('79999930', 'Luis Arias', '33333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colorvehiculo`
--

CREATE TABLE IF NOT EXISTS `colorvehiculo` (
  `idColorVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un código asignado a los coleres de vehículos usados por el Ejercol.',
  `descripcionColorVehiculo` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  los colores de los vehiculos usados por el Ejercol EJ: Verde Oliva, Camuflado, Negro, Rojo y Blanco.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes colores de vehículos que se tienen en el Ejercito Nacional de Colombia.';

--
-- Volcado de datos para la tabla `colorvehiculo`
--

INSERT INTO `colorvehiculo` (`idColorVehiculo`, `descripcionColorVehiculo`) VALUES
(100, 'Blanco'),
(200, 'Camuflado'),
(300, 'Negro'),
(400, 'Rojo'),
(500, 'Verde Oliva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE IF NOT EXISTS `cuenta` (
  `numeroCta` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `titular` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `saldo` double NOT NULL,
  `fechaApertura` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `estado` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`numeroCta`, `titular`, `saldo`, `fechaApertura`, `estado`) VALUES
('1000', '79999930', 10000, '2000-01-01', 'Activo'),
('1002', '79999930', 900000, '2015-02-02', 'Activa'),
('1005', '79289525', 5000000, '2015-05-14', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE IF NOT EXISTS `direcciones` (
  `idDirecciones` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número consecutivo de direcciones.',
  `idCiudad` int(11) DEFAULT NULL COMMENT 'En este campo se va a almacenar   el número consecutivo que identifica la ciudad.',
  `tipoVia1` enum('Calle','Carrera','Diagonal','Transversal') DEFAULT NULL COMMENT 'En este campo se va a almacenar  el tipo de la via 1 calle carrera diagonal',
  `numeroVia1` int(11) DEFAULT NULL COMMENT 'En este campo se va a almacenar  el número de la via 1.',
  `complementoVia1` varchar(5) DEFAULT NULL COMMENT 'En este campo se va a almacenar  si es Bis, A, B, C, etc.',
  `tipoVia2` enum('Calle','Carrera','Diagonal','Transversal') DEFAULT NULL COMMENT 'En este campo se va a almacenar   el tipo de la via 2 calle carrera diagonal transversal.',
  `complementoVia2` varchar(5) DEFAULT NULL COMMENT 'En este campo se va a almacenar  si es Bis, A, B, C, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes campos correspondientes a los atributos de la dirección del funcionario.';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleovehiculo`
--

CREATE TABLE IF NOT EXISTS `empleovehiculo` (
  `idEmpleoVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado al tipo de empleo del vehículo.',
  `descripcionEmpleoVehiculo` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar el uso que se le da al vehículo Ej: Tacticos, Recorridos colectivos, De utilidad General o Asignado.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes empleos que se le pueden dar a un vehículo.';

--
-- Volcado de datos para la tabla `empleovehiculo`
--

INSERT INTO `empleovehiculo` (`idEmpleoVehiculo`, `descripcionEmpleoVehiculo`) VALUES
(100, 'Asignado'),
(200, 'De utilidad general'),
(300, 'Recorridos colectivos'),
(400, 'Tacticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadosvehiculo`
--

CREATE TABLE IF NOT EXISTS `estadosvehiculo` (
  `idEstadosVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado a los estados del vehículo.',
  `descripcionEstadoVehiculo` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  los diferentes estados que puede tener el vehículo Ej: Activo, fuera de servicio, en mantenimiento, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes estados en que se pueden encontrar un vehículo.';

--
-- Volcado de datos para la tabla `estadosvehiculo`
--

INSERT INTO `estadosvehiculo` (`idEstadosVehiculo`, `descripcionEstadoVehiculo`) VALUES
(100, 'Activo'),
(200, 'Comision'),
(300, 'En mantenimiento'),
(400, 'Fuera de Servicio'),
(500, 'Pendiente de baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionariorol`
--

CREATE TABLE IF NOT EXISTS `funcionariorol` (
  `idFuncionarioRol` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número consecutivo.',
  `idRol` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número que identifica cada rol.',
  `numeroDocumento` int(11) NOT NULL COMMENT 'En este campo se va a almacenar el número del documento de identidad del funcionario.',
  `usuarioLogin` varchar(15) NOT NULL COMMENT 'En este campo se va a almacenar el nombre del usuario para accesar al sitema.',
  `contrasenia` varchar(45) NOT NULL COMMENT 'En este campo se va a almacenar la clave de acceso que acompaña al usuario para accesar al sistema.',
  `fechaCreacion` date NOT NULL COMMENT 'En este campo se va a almacenar la fecha de creacion del usuario.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan las asignaciones de los roles a los funcionarios.';

--
-- Volcado de datos para la tabla `funcionariorol`
--

INSERT INTO `funcionariorol` (`idFuncionarioRol`, `idRol`, `numeroDocumento`, `usuarioLogin`, `contrasenia`, `fechaCreacion`) VALUES
(1, 100, 79808752, 'ecarlosama', '1234567', '2014-05-12'),
(2, 400, 1030635486, 'daristizaval', '12345678', '2014-05-12'),
(3, 200, 79399894, 'jmedina', '1234567', '2014-05-12'),
(4, 300, 80863877, 'ljaimes', '1234567', '2014-05-12'),
(5, 500, 1128422145, 'jaguirre', '', '2014-05-12'),
(6, 300, 1123206302, 'lbenavidez', '', '2014-12-05'),
(7, 100, 1632546, 'jcaro', '', '2013-12-23'),
(8, 200, 7729168, 'jdiaz', '', '2013-06-29'),
(9, 300, 4888620, 'egaravito', '', '2011-06-28'),
(10, 500, 86083257, 'gesquivel', '', '2011-01-15'),
(11, 400, 74020646, 'wlopez', '', '2014-03-18'),
(12, 500, 74020646, 'sduque', '', '2013-06-25'),
(13, 400, 94551182, 'jaguas', '', '2010-05-09'),
(14, 300, 1001710626, 'yprieto', '', '2013-08-07'),
(15, 200, 88271263, 'dnisperusa', '', '2011-10-06'),
(16, 100, 1050948042, 'jdaza', '', '2010-11-23'),
(17, 100, 1064786473, 'wojeda', '', '2014-09-18'),
(18, 200, 1068420988, 'eballestas', '', '2013-11-08'),
(19, 300, 1068580276, 'jlopez', '', '2014-12-01'),
(20, 400, 1058965902, 'ebeltran', '', '2013-07-21'),
(21, 500, 1054226473, 'dacosta', '', '2013-07-23'),
(22, 100, 1098691265, 'inuñez', '', '2013-01-03'),
(23, 200, 1123204194, 'jmanrique', '', '2011-06-07'),
(24, 300, 1123206302, 'lbenavidez', '', '2012-03-27'),
(25, 400, 1117488622, 'oleon', '', '2012-04-19'),
(26, 500, 1079177190, 'galvarez', '', '2011-05-19'),
(27, 500, 70419473, 'vdiaz', '', '2010-06-26'),
(28, 400, 71194335, 'lalvarez', '', '2010-05-22'),
(29, 300, 7952862, 'flopez', '', '2013-01-09'),
(30, 200, 9975406, 'calarcon', '', '2014-03-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `numeroDocumento` int(11) NOT NULL COMMENT 'En este campo se va a almacenar el número del documento de identidad del funcionario.',
  `idGrados` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un numero consecutivo del grado.',
  `apellido1` varchar(15) NOT NULL COMMENT 'En este campo se va a almacenar el primer  apellido del funcionario.',
  `apellido2` varchar(15) DEFAULT NULL COMMENT 'En este campo se va a almacenar el segundo apellido del funcionario.',
  `nombre1` varchar(15) NOT NULL COMMENT 'En este campo se va a almacenar el primer nombre del funcionario.',
  `nombre2` varchar(15) DEFAULT NULL COMMENT 'En este campo se va a almacenar el segundo nombre del funcionario.',
  `idCiudad` int(11) NOT NULL COMMENT 'En este campo se va a almacenar el lugar de expedicion del documento de identidad del funcionario.',
  `fechaNacimiento` date DEFAULT NULL COMMENT 'En este campo se va a almacenar la fecha de nacimiento del funcionario.',
  `idRh` int(11) NOT NULL COMMENT 'En este campo se va a almacenar el grupo sanguineo y factor rh del funcionario.',
  `telefono` varchar(15) NOT NULL COMMENT 'En este campo se va a almacenar el numero fijo del telefono de residencia del funcionario.',
  `movil` varchar(15) NOT NULL COMMENT 'En este campo se va a almacenar el numero del telefono celular del funcionario.',
  `indicativo` varchar(10) DEFAULT NULL COMMENT 'En este campo se va a almacenar el indicativo de comunicaciones del funcionario Ej: Alfa-8, Omega-5, Orion 10, etc.',
  `licenciaConduccion` varchar(25) DEFAULT NULL COMMENT 'En este campo se va a almacenar el numero de la licencia de conduccion del funcionario.',
  `vencimientoLicencia` date DEFAULT NULL COMMENT 'En este campo se va a almacenar  la fecha de vencimiento de la licencia de conduccion del funcionario.',
  `idCategoria` int(11) DEFAULT NULL COMMENT 'El campo idCategoria que es llave primaria en la tabla categorias se emplea como llave foránea en la tabla Funcionarios para almacenar la Categoría de la licencia de conducción que corresponde a cada funcionario.',
  `fechaAlta` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha de Ingreso del funcionario a la institución.',
  `eMail` varchar(35) DEFAULT NULL COMMENT 'En este campo se va a almacenar  la direccion del correo electronico del funcionario.',
  `fotoFuncionario` varchar(50) DEFAULT NULL COMMENT 'En este campo se almacena una fotografia uniformado de fente sin cubrecabezas,  correspondiente al funcionario.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En los diferentes campos de esta tabla se va a almacenar toda la información necesaria de cada uno de los funcionarios. ';

--
-- Volcado de datos para la tabla `funcionarios`
--

INSERT INTO `funcionarios` (`numeroDocumento`, `idGrados`, `apellido1`, `apellido2`, `nombre1`, `nombre2`, `idCiudad`, `fechaNacimiento`, `idRh`, `telefono`, `movil`, `indicativo`, `licenciaConduccion`, `vencimientoLicencia`, `idCategoria`, `fechaAlta`, `eMail`, `fotoFuncionario`) VALUES
(0, 2000, 'Duque', 'Graciano', 'Sergio', '', 300, '1995-03-02', 800, '6589155', '3002615495', 'Zorro 4', '2213109949443470', '2016-04-29', 500, '2013-08-07', 'dustaj@gmail.com', NULL),
(11111, 100, 'wertyqwert', 'asdfghjk', 'asdasd', 'asdasdas', 20, '2015-04-15', 100, '12345678', '12345678', '1111111', '111111111111', '2015-04-07', 100, '2015-04-07', 'asd@asd', NULL),
(33333, 1400, 'qwertg', 'asdfghjk', 'asdfgh', 'asdasdas', 30, '2015-04-15', 400, '12345678', '12345678', '1111111', '111111111111', '2015-04-08', 200, '2015-04-15', 'asd@asd', NULL),
(44444, 1800, 'asdfghj', 'asdasd', 'asdasd', 'asdasd', 180, '2015-04-30', 700, '12345678', '12345678', '1111111', '111111111111', '2015-04-30', 600, '2015-04-30', 'asd@asd', NULL),
(55555, 100, 'medina', 'TARAZONA', 'JAIRO', 'ISMAEL', 1660, '1966-11-11', 200, '33333333', '3333333333', '33333', '33333333333', '2015-04-30', 300, '2015-04-30', 'asd@asd', NULL),
(61139, 1600, 'qqqqq', 'Graciano', 'qqqqq', 'qqqqq', 20, '2015-05-20', 600, '11111111', '11111111', 'Tulcan', '11111111', '2015-05-20', 400, '2015-05-20', '3@3', NULL),
(88888, 2000, 'ZAZApkpkppk', 'ZAZA', 'ZAZA', 'ZAZA', 10, '2015-04-13', 800, '3333333', '333333333', '33333', '333333333', '2015-04-06', 100, '2015-04-28', '3@3', NULL),
(96321, 1700, 'Medina', '', 'qqqqq', 'Ismael', 50, '2015-05-16', 200, '7581429', '11111111', 'Condor 1', '11111111', '2015-05-16', 300, '2015-05-16', 'jairoismael@hotmail.com', NULL),
(121212, 1200, 'qwerty', 'qwertyj', 'qwert', 'qwert', 30, '2015-04-06', 100, '33333333', '3333333', '33333', '33333333333', '2015-04-29', 100, '2015-04-30', 'asd@asd', NULL),
(123654, 1800, 'Medina', 'Tarazona', 'Jairo', 'Ismael', 20, '2015-05-16', 400, '7581429', '3002128188', 'Condor 1', '11111111', '2015-05-16', 500, '2015-05-16', 'jairoismael@hotmail.com', NULL),
(333333, 100, 'qwerty', 'qweqw', 'qaz', 'qaz', 130, '2015-04-28', 100, '3456789', '3030303030', 'Alfa 8', '1111111111', '2015-04-06', 100, '2015-04-26', 'as@gmail.com', NULL),
(343434, 1100, 'ertyuio', 'ertyuio', 'ertyuio', 'ertyui', 70, '2015-04-30', 600, '56789078', '6784567890', 'dfghjk', '234567890', '2015-04-29', 100, '2015-04-30', 'asd@asd', NULL),
(444444, 100, 'qwerty', 'qweqw', 'qaz', 'qaz', 130, '2015-04-27', 100, '3456789', '3030303030', 'Alfa 8', '1111111111', '2015-04-27', 100, '2015-04-28', 'as@gmail.com', NULL),
(654789, 1500, 'aaaaaaaaa', 'aaaaaaa', 'aaaaaaaaaa', 'aaaaaaa', 40, '2015-05-27', 700, '11111111', '11111111', '1111', '11111111', '2015-05-21', 300, '2015-05-29', 'asd@asd', NULL),
(666666, 100, 'ASDFGHJK', 'QWERTYJK', 'QWERTYUJ', 'QWERTYJK', 190, '2015-04-06', 100, '33333333', '3333333333', '3333333333', '33333333333', '2015-04-28', 100, '2015-04-30', 'asd@asd', NULL),
(808080, 100, 'qwerty', 'asdfghjk', 'sdfghjk', 'asdfghj', 120, '2015-04-06', 100, '33333333', '3333333333', 'asdfgh', '111111111111', '2015-04-13', 100, '2015-04-30', 'asd@asd', NULL),
(888886, 1600, 'wert', 'rtyu', 'rtyui', 'ertyui', 20, '2015-04-30', 100, '12345678', '12345678', '235678', '1234567890', '2015-04-08', 200, '2015-04-16', 'asd@asd', NULL),
(888888, 1700, 'rtyui', 'rthyjuik', 'ertyui', 'ertyui', 40, '2015-04-16', 200, '2345671', '1234567', '1111111', '1234567123', '2015-04-23', 100, '2015-04-24', 'asd@asd', NULL),
(909090, 1700, 'qwertg', 'qwerty', 'DFGHJK', 'ERTYUIO', 130, '2015-04-30', 100, '3456789', '12345678', 'asdfgh', '12345672345', '2015-04-30', 100, '2015-04-29', 'asd@asd', NULL),
(951951, 300, 'qqqqq', 'qqqqq', 'qqqqq', 'qqqqq', 80, '2015-05-13', 300, '11111111', '11111111', '11111111', '11111111', '2015-05-13', 400, '2015-05-13', 'qqqqq@qqqqq', NULL),
(1234567, 1700, 'asdfgh', 'qwerty', 'qwerty', 'qwertyu', 10, '2015-04-30', 300, '12345678', '12345678', 'asdfgh', '1234567890', '2015-04-16', 300, '2015-04-16', 'asd@asd', NULL),
(1624895, 1900, 'Cardona', 'Cifuentes', 'Edwin', '', 140, '1988-02-10', 800, '7426589', '3036146192', 'Toro 9', '1459756888122270', '2016-01-20', 300, '2011-09-04', 'castaj@gmail.com', NULL),
(1632546, 1900, 'Caro', 'Valencia', 'Jhon', 'Alexander', 1080, '1990-07-21', 200, '5563263', '3132563951', 'Charly', '1575657359094760', '2016-02-29', 100, '2012-01-30', 'carovalencia@gmail.com', NULL),
(1818851, 1900, 'Calle', 'Perez', 'Fermin', 'Alberto', 140, '1989-05-17', 800, '6985245', '3205698154', 'Toro 5', '1227955946177290', '2016-04-09', 300, '2012-04-19', 'calleperez@gmail.com', NULL),
(1963256, 1900, 'Cambindo', 'Paredes', 'Victor', 'A', 140, '1984-05-02', 800, '7582634', '3211616154', 'Toro 6', '1285906181663530', '2016-04-29', 300, '2012-02-11', 'cambindoparedes@gmail.com', NULL),
(2222222, 400, 'qwertyu', 'ertyuio', 'ertyuio', 'ertyuio', 60, '2015-04-16', 300, '2345671', '12345678', 'Alcon 1', '123456789', '2015-04-16', 300, '2015-04-23', 'asd@asd', NULL),
(4519700, 1900, 'Carmona', 'Rodriguez', 'Danilo', '', 140, '1989-06-27', 200, '5123365', '3056316971', 'Toro 10', '1517707123608520', '2016-02-09', 100, '2012-08-27', 'castaj@gmail.com', NULL),
(4888620, 2000, 'Garavito', 'Lopez', 'Edwin', 'David', 270, '1995-03-02', 800, '8656231', '3159632563', 'Toro 14', '2792612304305930', '2015-12-31', 300, '2013-08-01', 'garavitolopez@gmail.com', NULL),
(5205799, 1600, 'Almeida', 'Imbajoba', 'Manuel', 'Jesus', 150, '1989-05-17', 800, '7956326', '3153582784', 'Orion', '416652649369846', '2015-12-11', 400, '2008-12-30', 'almeidaimbajoba@gmail.com', NULL),
(7653451, 1700, 'QWERT', 'SDFGH', 'SDFGHJ', 'SDFGH', 50, '2015-04-15', 500, '12345678', '2345678', '12345', '123456723456', '2015-04-08', 200, '2015-04-14', 'asd@asd', NULL),
(7729168, 1900, 'Diaz', 'Lemus', 'Jonathan', '', 130, '1990-07-21', 200, '6652346', '3002615849', 'Condor 2', '1981309007498480', '2016-02-09', 200, '2012-09-05', 'distaj@gmail.com', NULL),
(7777777, 100, 'zazapata', 'zazaza', 'zazaaz', 'zaza', 130, '2015-03-02', 100, '34567893', '3030303030', 'Alfa 8', '1111111111', '2015-03-31', 100, '2015-03-31', 'as@gmail.com', NULL),
(7952862, 2100, 'Lopez', 'Orjuela', 'Fabian', 'Antonio', 1080, '1994-06-18', 800, '5170141', '3103068549', 'Zorro 14', '3719816072085860', '2015-12-31', 300, '2013-05-01', 'lopezorjuela@gmail.com', NULL),
(8025723, 2000, 'Jerez', 'Alfonso', 'Fredy', 'Andres', 1050, '1995-03-02', 200, '9420880', '3125284475', 'Halcon 8', '3198263952709650', '2016-05-19', 100, '2013-07-16', 'jerezalfonso@gmail.com', NULL),
(8169209, 2100, 'Portilla', 'Peñaloza', 'Wilger', '', 140, '1995-01-07', 700, '7848456', '3148401289', 'Aguila 9', '4994721252783280', '2016-04-29', 200, '2013-10-21', 'portillapenaloza@hotmail.com', NULL),
(8419074, 1900, 'Castañeda', 'Gurtierres', 'Juan', 'Gabriel', 1080, '1989-05-17', 200, '6521485', '3126363258', 'Beta', '1633607594581010', '2016-03-20', 100, '2012-06-08', 'castañedagurtierres@gmail.com', NULL),
(8888888, 1600, 'qwerty', 'sdfghjk', 'sdfghjk', 'dfgh', 40, '2015-04-15', 500, '12345678', '12345678', 'qwertyu', '123456712345', '2015-04-16', 200, '2015-04-16', 'asd@asd', NULL),
(9975406, 1500, 'Alarcon', 'Ramirez', 'Calor', '', 130, '1989-06-27', 800, '9675488', '3616024328', 'Orca', '300752178397354', '2015-11-01', 200, '2004-09-20', 'alarconramirez@hotmail.co', NULL),
(13617020, 2100, 'Quimbayo', 'Rayo', 'Cristian', '', 150, '1995-12-01', 100, '7838451', '3184407564', 'Aguila 12', '5168571959242010', '2016-01-20', 400, '2013-06-10', 'quimbayorayo@hotmail.com', NULL),
(15452532, 2100, 'Orrego', 'Lopez', 'Atanasio', '', 270, '1994-04-25', 200, '4741831', '3124885419', 'Aguila 5', '4762920310838290', '2016-02-09', 100, '2013-05-02', 'orregolopez@hotmail.com', NULL),
(15745467, 2000, 'Ibarra', 'Vinasco', 'Arbey', 'Alonso', 1160, '1994-06-20', 200, '9526718', '3218567988', 'Toro 19', '3082363481737160', '2016-04-09', 100, '2013-02-02', 'ibarravinasco@gmail.com', NULL),
(16055726, 2000, 'Hipolito', 'Diaz', 'Jose', '', 1160, '1994-04-25', 200, '9579637', '3146455651', 'Toro 18', '3024413246250910', '2016-03-20', 100, '2013-05-09', 'hipolitod@hotmail.com', NULL),
(16079503, 1900, 'Campaña', 'Moreno', 'Willian', '', 140, '1984-04-02', 800, '7491623', '3201569253', 'Toro 7', '1343856417149780', '2016-05-19', 300, '2011-09-04', 'castaj@gmail.com', NULL),
(16452948, 1900, 'Cano', 'Correa', 'Juan', 'David', 140, '1984-03-06', 800, '7569842', '3026395841', 'Toro 8', '1401806652636020', '2015-12-31', 300, '2012-04-21', 'canocorrea@gmail.com', NULL),
(18145745, 2000, 'Garcia', 'Mina', 'Leonardo', '', 1160, '1994-07-19', 200, '9632556', '3108405495', 'Toro 17', '2966463010764670', '2016-02-29', 100, '2013-08-24', 'gastaj@gmail.com', NULL),
(23232323, 200, 'wertyqwert', 'wertyu', 'dfghjk', 'rtyuio', 20, '2015-04-07', 100, '95127539', '9521745952', 'Alcon 1', '125620853', '2015-04-14', 100, '2015-04-07', 'asd@asd', NULL),
(33333333, 100, 'sdadasd', 'asdasdas', 'sadasd', 'sdasdasdas', 130, '2015-04-20', 100, '33333333', '3333333', '33333', '111111111111', '2015-04-28', 100, '2015-04-30', 'asd@asd', NULL),
(43214321, 300, 'qwertg', 'wertyhjk', 'dfghjk', 'rtyuio', 10, '2015-04-08', 300, '12345678', '12345678', '1111111', '111111111111', '2015-04-09', 100, '2015-04-21', 'asd@asd', NULL),
(63529684, 2000, 'Ditta', 'Viña', 'Luis', 'Miguel', 130, '1995-02-02', 800, '8564789', '3216592834', 'Zorro 3', '2155159713957220', '2016-04-09', 400, '2013-05-12', 'dittaviña@gmail.com', NULL),
(70419473, 1900, 'Diaz', 'Leon', 'Valentin', 'Junior', 130, '1989-05-17', 700, '6352184', '3012653985', 'Aguila 2', '2039259242984730', '2016-02-29', 500, '2012-01-21', 'diazleon@gmail.com', NULL),
(71194335, 1600, 'Alvarez', 'Cardenas', 'Leonardo', '', 150, '1984-04-02', 800, '8786850', '3201596849', 'Lince', '532553120342338', '2016-01-20', 400, '2005-06-30', 'alvarezcardenas@hotmail.c', NULL),
(72055267, 2000, 'Diaz', 'Triana', 'Didier', 'Danilo', 130, '1995-01-02', 800, '5236159', '3202365189', 'Zorro 2', '2097209478470980', '2016-03-20', 400, '2013-05-12', 'diaztriana@gmail.com', NULL),
(72329361, 2100, 'Puerat', 'Roman', 'Alexis', 'Stiven', 130, '1994-08-23', 700, '7841786', '3148316920', 'Aguila 11', '5110621723755770', '2015-12-31', 100, '2013-04-17', 'pueratroman@gmail.com', NULL),
(74020646, 2100, 'Lopez', 'Fuentes', 'Wilder', '', 1160, '1995-02-02', 800, '5241526', '3138635538', 'Zorro 11', '3545965365627130', '2016-04-09', 400, '2013-05-19', 'lostaj@gmail.com', NULL),
(78954126, 1600, 'Alvarado', 'Cifuentes', 'Luis', 'Carlos', 150, '1984-05-02', 400, '8519830', '3132362012', 'Halcon 2', '474602884856092', '2015-12-31', 200, '2005-08-25', 'alvaradocifuentes@gmail.c', NULL),
(79399894, 100, 'Medina', 'Tarazonaa', 'Jairo', 'Ismael', 10, '1966-11-11', 100, '7581429', '3002128188', 'Condor 1', '110010009661238', '2015-07-24', 100, '1986-04-07', 'jairoismael@hotmail.com', NULL),
(79808752, 600, 'Carlosama', 'Cadena', 'Edwin', 'Francisco', 140, '1977-06-29', 800, '7569654', '3123348960', 'Cobra', '689512364523698', '2023-02-23', 300, '2020-05-07', 'ecarlosama@misena', NULL),
(79815718, 2000, 'Josa', 'Jhoan', 'Andres', '', 1070, '1994-07-19', 200, '9262123', '3102865664', 'Condor 3', '3372114659168390', '2016-02-09', 100, '2013-08-26', 'josajhoan@hotmail.com', NULL),
(79966281, 400, 'qwerty', 'qwerty', 'asdfghj', 'qwertyu', 40, '2015-04-22', 600, '7897892', '1261911', 'Alcon 1', '23456789', '2015-04-15', 200, '2015-04-23', 'asd@asd', NULL),
(80051237, 2100, 'Moreno', 'Martinez', 'Jawin', '', 300, '1994-04-25', 800, '4955986', '3204198265', 'Halcon 13', '4241368191462080', '2016-01-20', 100, '2013-01-18', 'morenomartinez@gmail.com', NULL),
(80392177, 1900, 'Castañeda', 'Silva', 'Arnol', '', 540, '1984-05-02', 200, '9658821', '3139562349', 'Oscar', '1691557830067250', '2016-04-09', 100, '2012-01-23', 'castaj@gmail.com', NULL),
(80745768, 2100, 'Ospina', 'Ramirez', 'Edwin', '', 140, '1994-06-29', 200, '4562589', '3102571588', 'Aguila 8', '4936771017297030', '2016-04-09', 200, '2013-02-24', 'ospinaramirez@hotmail.com', NULL),
(80863877, 700, 'Jaimes', 'Malagon', 'Ludwing', 'Andres', 140, '1987-03-09', 800, '2297196', '3204609328', 'Alfa 2', '4012348965752650', '2023-02-26', 200, '2006-06-05', 'lajaimes77@misena.edu.co', NULL),
(84450350, 2100, 'Martinez', 'Chivara', 'Jose', 'David', 300, '1994-07-19', 800, '4979781', '3217791234', 'Halcon 12', '4183417955975830', '2015-12-31', 300, '2013-12-30', 'martinezchivara@gmail.com', NULL),
(86083257, 2000, 'Esquivel', 'Jose', 'Guerly', '', 300, '1995-04-06', 800, '6323235', '3012645698', 'Zorro 5', '2271060184929710', '2016-05-19', 500, '2013-03-10', 'esequieljose@hotmail.com', NULL),
(87065610, 2100, 'Ramirez', 'Virguez', 'Jose', 'Alveiro', 150, '1994-04-25', 700, '7831781', '3117374557', 'Aguila 14', '5284472430214500', '2016-02-29', 500, '2013-03-02', 'ramirezvirguez@gmail.com', NULL),
(88265421, 2100, 'Nisperusa', 'Solar', 'Deibison', '', 300, '1995-01-07', 200, '4860806', '3133066709', 'Condor 8', '4473169133407060', '2016-04-09', 100, '2013-12-19', 'nisperusasolar@hotmail.com', NULL),
(88271263, 2100, 'Olano', 'Buitrago', 'Wladimir', '', 270, '1994-07-19', 200, '4765626', '3136358481', 'Aguila 4', '4704970075352040', '2016-01-20', 100, '2013-06-28', 'olanobuitrago@hotmail.com', NULL),
(88888888, 100, 'zazapata', 'zazaza', 'zazaaz', 'zaza', 130, '2015-03-31', 100, '34567893', '3030303030', 'Alfa 8', '1111111111', '2015-03-24', 100, '2015-03-31', 'as@gmail.com', NULL),
(90909090, 100, 'asdfghj', 'sdfghjk', 'sdfghjkl', 'sdfghjk', 40, '2015-04-16', 400, '12345678', '2345678', 'Alcon 1', '12345679', '2015-04-14', 100, '2015-04-30', 'asd@asd', NULL),
(91325676, 2000, 'Jimenez', 'Ospino', 'Luis', 'Alfredo', 1050, '1994-06-18', 200, '9315042', '3106649286', 'Halcon 10', '3314164423682140', '2016-01-20', 100, '2013-05-24', 'jimenezospino@gmail.com', NULL),
(91520184, 2100, 'Moreno', 'Martinez', 'Luis', 'Alberto', 300, '1994-06-20', 200, '4932191', '3212453994', 'Halcon 14', '4299318426948320', '2016-02-09', 100, '2013-05-20', 'morenomartinezluis@gmail.com', NULL),
(93422511, 2000, 'Fuentes', 'Holguin', 'Jonatan', '', 250, '1995-07-09', 800, '9658463', '3129865862', 'Toro 11', '2618761597847190', '2016-04-09', 300, '2013-08-28', 'fuentesholguin@gmail.com', NULL),
(94551182, 1500, 'Aguas', 'Valencia', 'Jose', 'Andres', 130, '1984-03-06', 200, '5798461', '3218465872', 'Aguila 1', '184851707424862', '2015-09-22', 400, '2005-07-29', 'aguasvalencia@gmail.com', NULL),
(96192955, 2000, 'Garcia', 'Cruz', 'Andres', 'Felipe', 270, '1995-04-06', 200, '8695236', '3002128188', 'Toro 15', '2850562539792170', '2016-01-20', 100, '2013-11-05', 'garciacruz@gmail.com', NULL),
(97437149, 2100, 'Narvaez', 'Sanchez', 'Victor', 'Alfonso', 300, '1994-06-29', 200, '4884601', '3207148540', 'Condor 7', '4415218897920820', '2016-03-20', 100, '2013-07-11', 'narvaezsanchez@gmail.com', NULL),
(103895051, 1700, 'Barros', 'Covos', 'Carlos', 'Alexander', 710, '1990-07-21', 800, '9854931', '3186549946', 'Halcon 3', '764354062287322', '2016-04-09', 500, '2012-06-04', 'barroscovos@gmail.com', NULL),
(123123123, 100, 'Medina', 'Tarazona', 'Jairo', 'Ismael', 340, '2015-04-30', 100, '12345678', '123456789', 'qwertyu', '1234567890', '2015-04-29', 200, '2015-04-30', 'asd@asd', NULL),
(321321321, 100, 'qqqqq', 'qqqqq', 'qqqqq', 'qqqqq', 80, '2015-05-29', 500, '11111111', '11111111', '11111111', '11111111', '2015-05-28', 300, '2015-05-21', 'qqqqq@qqqqq', NULL),
(987654321, 100, 'asdfghj', 'asdfghjk', 'asdfghjk', 'qwertyu', 170, '2015-04-14', 100, '33333333', '3333333333', 'qwertyu', '234567234', '2015-04-30', 200, '2015-04-14', 'asd@asd', NULL),
(999999999, 100, 'zazapata', 'zazaza', 'zazaaz', 'zaza', 130, '2015-03-31', 100, '3456789', '3030303030', 'Alfa 8', '1111111111', '2015-03-31', 100, '2015-03-31', 'as@gmail.com', NULL),
(1000456524, 2000, 'Fajardo', 'Castañeda', 'Jorge', '', 710, '1995-02-02', 800, '4545452', '3042698516', 'Zorro 8', '2444910891388450', '2016-02-09', 300, '2013-05-05', 'fastaj@gmail.com', NULL),
(1001710626, 2100, 'Prieto', 'Vargas', 'Yovany', '', 130, '1993-05-19', 300, '7845121', '3117584016', 'Aguila 10', '5052671488269520', '2016-05-19', 100, '2013-08-08', 'prietovargas@hotmail.com', NULL),
(1001987487, 2000, 'Izquierdo', 'Vanegas', 'Jose', '', 1050, '1995-02-02', 200, '9473799', '3217393171', 'Toro 20', '3140313717223400', '2016-04-29', 100, '2013-06-18', 'izquierdovanegas@hotmail.com', NULL),
(1002064962, 2000, 'Estacio', 'Manuel', 'Santos', '', 540, '1995-07-09', 800, '5236624', '3029635987', 'Zorro 6', '2329010420415960', '2015-12-31', 500, '2013-09-05', 'estaciomanuel@hotmail.com', NULL),
(1004639695, 2000, 'Galindez', 'Doumer', 'Hernando', '', 250, '1995-01-02', 800, '9265846', '3136452847', 'Toro 12', '2676711833333440', '2016-04-29', 300, '2013-06-22', 'galindezdoumer@gmail.com', NULL),
(1006788866, 1400, 'Acosta', 'James', 'Jhonatan', '', 140, '1984-05-02', 800, '7895236', '3008090741', 'Zorro', '689512364523650', '2015-08-13', 400, '2004-05-21', 'acstaj@gmail.com', NULL),
(1007270424, 2100, 'Nobles', 'Moreno', 'Luis', '', 1070, '1993-05-19', 200, '4837011', '3202429205', 'Condor 9', '4531119368893310', '2016-04-29', 100, '2013-03-24', 'noblesmoreno@hotmail.com', NULL),
(1014244585, 2000, 'Galindez', 'Montes', 'Jose', '', 270, '1995-02-02', 800, '9658455', '3146529874', 'Toro 13', '2734662068819680', '2016-05-19', 300, '2013-11-12', 'galindezm@hotmail.com', NULL),
(1022006120, 1900, 'Castro', 'Barrios', 'Cristobal', '', 150, '1984-04-02', 200, '8651236', '3201563259', 'Halcon 4', '1749508065553500', '2016-04-29', 100, '2012-05-12', 'castaj@gmail.com', NULL),
(1023659852, 1900, 'Benitez', 'Aguinda', 'Cristian', '', 140, '1984-03-06', 800, '6598742', '3162958471', 'Toro 1', '996155004232306', '2016-01-20', 300, '2012-03-14', 'benitezaguinda@hotmail.com', NULL),
(1025369587, 1900, 'Blanco', 'Mercado', 'Marlon', 'De', 140, '1990-07-21', 800, '6985743', '3195629485', 'Toro 4', '1170005710691040', '2016-03-20', 300, '2012-04-17', 'blancomercado@gmail.com', NULL),
(1030635486, 900, 'Aristizabal', 'Rodriguez', 'Diego', 'Armando', 140, '1994-01-23', 200, '2546951', '3108549716', 'Halcon 1', '5042000106952090', '2023-02-26', 200, '2012-01-01', 'diegoarm2394@gmail.com', NULL),
(1038332860, 2000, 'Florez', 'Rivera', 'Ferney', '', 250, '1995-04-06', 800, '8542635', '3112639586', 'Zorro 10', '2560811362360940', '2016-03-20', 300, '2013-09-10', 'florezrivera@gmail.com', NULL),
(1039584762, 1900, 'Davila', 'Paez', 'Rodrigo', 'Hernan', 150, '1984-03-06', 200, '5234851', '3149635639', 'Halcon 5', '1807458301039750', '2016-05-19', 100, '2012-07-26', 'davilapaez@gmail.com', NULL),
(1041257333, 2100, 'Lopez', 'Ocaño', 'Leonardo', '', 1070, '1995-04-06', 800, '5193936', '3102616933', 'Zorro 13', '3661865836599620', '2016-05-19', 500, '2013-06-26', 'lostaj@gmail.com', NULL),
(1042767758, 1900, 'Benitez', 'Morales', 'Jhon', 'Fredy', 140, '1988-02-10', 800, '5987469', '3172695841', 'Toro 2', '1054105239718550', '2016-02-09', 300, '2012-09-14', 'benitezmorales@gmail.com', NULL),
(1045504029, 2100, 'Ortiz', 'Garzon', 'Abraham', '', 270, '1994-06-20', 200, '4718036', '3125035779', 'Aguila 6', '4820870546324540', '2016-02-29', 100, '2013-03-03', 'ortizgarzon@hotmail.com', NULL),
(1047222871, 2100, 'Raigoza', 'Raigoza', 'Octavio', 'De', 150, '1994-07-19', 400, '7835116', '3215768035', 'Aguila 13', '5226522194728260', '2016-02-09', 500, '2013-09-26', 'raigozaraigoza@gmail.com', NULL),
(1050948042, 1900, 'Daza', 'Martinez', 'Jose', 'Benitez', 130, '1989-06-27', 200, '6235315', '3132659874', 'Halcon 7', '1923358772012240', '2016-01-20', 100, '2012-03-10', 'dazamartinez@gmail.com', NULL),
(1051474617, 2000, 'Falla', 'Gonzales', 'Leonel', '', 710, '1995-03-02', 800, '8596585', '3056325698', 'Zorro 9', '2502861126874700', '2016-02-29', 300, '2013-02-23', 'fallagonzales@hotmail.com', NULL),
(1053327718, 2100, 'Osorio', 'Gutierrez', 'Ricardo', '', 140, '1993-06-26', 200, '7564521', '3148379919', 'Aguila 7', '4878820781810780', '2016-03-20', 200, '2013-06-03', 'osoriogutierrez@hotmail.com', NULL),
(1054226473, 1400, 'Acosta', 'Perez', 'Daniel', 'Francisco', 130, '1984-04-02', 100, '5369842', '3159686644', 'Tulcan', '126901471938616', '2015-09-02', 500, '2005-06-26', 'acostaperez@gmail.com', NULL),
(1055551732, 2100, 'Mariño', 'Florez', 'Carlos', '', 1070, '1994-06-18', 800, '5003576', '3213015876', 'Halcon 11', '4125467720489580', '2016-05-19', 300, '2013-06-02', 'marinoflorez@hotmail.com', NULL),
(1058965902, 1700, 'Beltran', 'Ombita', 'Eider', 'Fabian', 300, '1984-05-02', 100, '7532614', '3015949524', 'Morsa', '880254533259814', '2016-05-19', 400, '2012-05-01', 'beltranombita@gmail.com', NULL),
(1062281556, 2100, 'Madroñero', 'Rosero', 'Edgar', '', 710, '1995-02-02', 800, '5074961', '3205264604', 'Zorro 18', '3951617014030850', '2016-03-20', 300, '2013-07-14', 'mastaj@gmail.com', NULL),
(1064786473, 2100, 'Ojeda', 'Benavides', 'Wilson', '', 270, '1995-12-01', 200, '4789421', '3103927630', 'Aguila 3', '4647019839865800', '2015-12-31', 100, '2013-01-12', 'ojedabenavides@hotmail.com', NULL),
(1065602125, 2000, 'Garcia', 'Marulanda', 'Carlos', 'Alberto', 270, '1994-06-18', 200, '9685475', '3143989433', 'Toro 16', '2908512775278420', '2016-02-09', 100, '2013-04-04', 'garciamarulanda@gmail.com', NULL),
(1068420988, 1700, 'Ballestas', 'Martinez', 'Ever', 'De', 150, '1988-02-10', 300, '9320890', '3215689845', 'Camello', '648453591314830', '2016-02-29', 200, '2011-09-04', 'ballestasmartinez@gmail.c', NULL),
(1068580276, 2100, 'Lopez', 'Quintero', 'Jhon', '', 1080, '1994-07-19', 800, '5146346', '3122805588', 'Zorro 15', '3777766307572110', '2016-01-20', 300, '2013-10-06', 'lopezquintero@hotmail.com', NULL),
(1069282450, 1700, 'Becerra', 'Espinoza', 'Jhon', 'Fabio', 300, '1989-05-17', 200, '6325944', '3002659485', 'Musgo', '822304297773568', '2016-04-29', 200, '2012-03-04', 'becerraespinoza@gmail.com', NULL),
(1073668172, 2100, 'Reina', 'Martinez', 'Johan', '', 150, '1994-06-20', 100, '7828446', '3175535539', 'Aguila 15', '5342422665700750', '2016-03-20', 400, '2013-08-28', 'reinamartinez@hotmail.com', NULL),
(1079172479, 2000, 'Estepa', 'Martinez', 'Jhon', 'Weimar', 710, '1995-01-02', 800, '5262141', '3039256948', 'Zorro 7', '2386960655902210', '2016-01-20', 400, '2013-01-21', 'estepamartinez@gmail.com', NULL),
(1079177190, 1600, 'Alvarez', 'Martinez', 'German', '', 150, '1984-03-06', 200, '9053870', '3210594856', 'Bufalo', '590503355828584', '2016-02-09', 500, '2005-07-12', 'alvaresmar@hotmail.com', NULL),
(1080292116, 1600, 'Alarcon', 'Salazar', 'Joaquin', '', 130, '1990-07-21', 300, '7452156', '3204803556', 'Cobra', '358702413883600', '2015-11-21', 200, '2008-11-29', 'alstaj@gmail.com', NULL),
(1087124532, 2100, 'Suarez', 'Muñoz', 'Jose', 'David', 150, '1993-06-26', 100, '7825111', '3115228196', 'Aguila 16', '5400372901187000', '2016-04-09', 200, '2013-03-22', 'suarezmuñoz@gmail.com', NULL),
(1092911235, 2100, 'Lopez', 'Gomez', 'Luis', 'Fernando', 1160, '1995-03-02', 800, '5217731', '3212043492', 'Zorro 12', '3603915601113370', '2016-04-29', 500, '2013-07-09', 'lopezgomez@gmail.com', NULL),
(1098691265, 2100, 'Nuñez', 'Obregon', 'Ignacio', '', 270, '1994-08-23', 200, '4813216', '3112127679', 'Condor 10', '4589069604379550', '2016-05-19', 100, '2013-09-21', 'nunezobregon@hotmail.com', NULL),
(1105304327, 2100, 'Muñoz', 'Negrete', 'Alberto', '', 300, '1993-06-26', 200, '4908396', '3132598096', 'Condor 6', '4357268662434570', '2016-02-29', 100, '2013-03-10', 'munoznegrete@hotmail.com', NULL),
(1110468274, 2000, 'Jimenes', 'Salas', 'Jaime', '', 1050, '1995-04-06', 200, '9367961', '3142653018', 'Halcon 9', '3256214188195900', '2015-12-31', 100, '2013-07-26', 'jimenessalas@hotmail.com', NULL),
(1111111111, 100, 'qwerty', 'QWERT', 'QWERTY', 'qwer', 130, '2015-03-24', 100, '3456789', '3030303030', 'Alfa 8', '22222222', '2015-03-31', 200, '2015-03-31', 'as@gmail.com', NULL),
(1117488622, 2000, 'Leon', 'Sandoval', 'Otoniel', '', 1080, '1994-06-20', 400, '5265321', '3144457442', 'Condor 5', '3488015130140880', '2016-03-20', 400, '2013-08-01', 'lestaj@gmail.com', NULL),
(1120865588, 2000, 'Landazuri', 'Castillo', 'Miguel', 'Angel', 1080, '1994-04-25', 100, '5956326', '3127497907', 'Condor 4', '3430064894654630', '2016-02-29', 100, '2013-02-17', 'landazuricastillo@gmail.com', NULL),
(1121872715, 1900, 'Daza', 'Coronel', 'Wilmar', '', 540, '1988-02-10', 200, '6523487', '3145236521', 'Halcon 6', '1865408536525990', '2015-12-31', 100, '2011-08-07', 'dastaj@gmail.com', NULL),
(1123123123, 500, 'asdasd', 'asdasdas', 'asdasdas', 'asdasdas', 30, '2015-04-23', 500, '11111111', '1234567', '1111111', '1234567890', '2015-04-23', 300, '2015-04-23', 'asd@asd', NULL),
(1123204194, 2100, 'Manrique', 'Cardenas', 'Javier', '', 710, '1995-03-02', 800, '5051166', '3118933536', 'Zorro 19', '4009567249517090', '2016-04-09', 200, '2013-05-20', 'manriquecardenas@hotmail.com', NULL),
(1123206302, 1900, 'Benavidez', 'Ordoñez', 'Leider', 'Andres', 300, '1984-04-02', 800, '7985632', '3150026954', 'Gato', '938204768746060', '2015-12-31', 300, '2012-04-08', 'benavidezordoñez@gmail.com', NULL),
(1127070531, 2100, 'Lozada', 'Serrano', 'Eduin', 'Eduardo', 710, '1994-04-25', 800, '5122551', '3212114607', 'Zorro 16', '3835716543058360', '2016-02-09', 300, '2013-11-27', 'lozadaserrano@gmail.com', NULL),
(1128422145, 1500, 'Aguirre', 'Rojas', 'Jorman', 'Andres', 130, '1988-02-10', 500, '6325148', '3137245100', 'Romeo', '242801942911108', '2015-10-12', 500, '2004-08-24', 'aguirrerojas@gmail.com', NULL),
(1130644887, 2100, 'Lozano', 'Medina', 'Luis', '', 710, '1994-06-20', 800, '5098756', '3212933417', 'Zorro 17', '3893666778544600', '2016-02-29', 300, '2013-03-16', 'lostaj@gmail.com', NULL),
(1234567890, 100, 'Medina', 'MMMMM', 'MMMMM', 'MMMMM', 130, '2015-03-02', 100, '3456789', '3030303030', 'Alfa 8', '1111111111', '2015-03-31', 100, '2015-03-31', 'as@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE IF NOT EXISTS `grados` (
  `idGrados` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un námero consecutivo del grado.',
  `descripcionGrado` varchar(35) NOT NULL COMMENT 'En este campo se va a almacenar la descripcion del grado. Ej: Soldado profesional, Teniente, General etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes grados que existen en el Ejercito Nacional de Colombia y que pueden llegar a tener un funcionario. ';

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`idGrados`, `descripcionGrado`) VALUES
(100, 'General'),
(200, 'Mayor General'),
(300, 'Brigadier General'),
(400, 'Coronel'),
(500, 'Teniente Coronel'),
(600, 'Mayor'),
(700, 'Capitán'),
(800, 'Teniente'),
(900, 'Subteniente'),
(1000, 'Sargento Mayor de Comando Conjunto'),
(1100, 'Sargento Mayor de Comando'),
(1200, 'Sargento Mayor'),
(1300, 'Sargento Primero'),
(1400, 'Sargento Viceprimero'),
(1500, 'Sargento Segundo'),
(1600, 'Cabo Primero'),
(1700, 'Cabo Segundo'),
(1800, 'Cabo Tercero'),
(1900, 'Soldado Profesional'),
(2000, 'Soldado Bachiller'),
(2100, 'Soldado Regular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE IF NOT EXISTS `mantenimientos` (
  `idMantenimientos` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número consecutivo de mantenimiento.',
  `placa` varchar(6) NOT NULL COMMENT 'En este campo se va a almacenar  las letras y números asignados por Min transporte a los vehículos para su identificación.',
  `idTiposMantenimiento` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número asignado al tipo de mantenimiento.',
  `fechaIngresoMantenimiento` date NOT NULL COMMENT 'En este campo se va a almacenar lafecha de ingeso al taller para el correspondiente mantenimiento.',
  `fechaSalidaMantenimiento` date NOT NULL COMMENT 'En este campo se va a almacenar la fecha de salida del vehículo del taller con su correspondiente mantenimiento.',
  `fechaProximoMantenimiento` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha programada para el proximo ingeso al taller para el correspondiente mantenimiento.\n',
  `observaciones` longtext NOT NULL COMMENT 'En este campo se va a almacenar las observaciones y pendientes del mantenimiento',
  `CcMantenimiento` int(11) NOT NULL COMMENT 'En este campo se almacena el numero de identificación del responsable delmantenimiento '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes mantenimientos que se realizan a los vehículos.';

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`idMantenimientos`, `placa`, `idTiposMantenimiento`, `fechaIngresoMantenimiento`, `fechaSalidaMantenimiento`, `fechaProximoMantenimiento`, `observaciones`, `CcMantenimiento`) VALUES
(1, 'AST28', 100, '2014-01-02', '2014-01-04', '2015-01-02', 'Ninguna ', 0),
(2, 'FTD29', 200, '2014-01-02', '2014-01-04', '2015-01-02', 'Ninguna ', 0),
(3, 'HTC25', 300, '2014-01-03', '2014-01-05', '2015-01-03', 'Ninguna ', 0),
(4, 'JKL25', 400, '2014-01-03', '2014-01-05', '2015-01-03', 'Ninguna ', 0),
(5, 'JWE30', 100, '2014-01-04', '2014-01-06', '2015-01-04', 'Ninguna ', 0),
(6, 'KLM26', 200, '2014-01-04', '2014-01-06', '2015-01-04', 'Ninguna ', 0),
(7, 'KOL28', 300, '2014-01-05', '2014-01-07', '2015-01-05', 'Ninguna ', 0),
(8, 'LOP27', 400, '2014-01-05', '2014-01-07', '2015-01-05', 'Ninguna ', 0),
(9, 'RPT23', 100, '2014-01-06', '2014-01-08', '2015-01-06', 'Ninguna ', 0),
(10, 'HTC25', 200, '2014-01-06', '2014-01-08', '2015-01-06', 'Ninguna ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE IF NOT EXISTS `marcas` (
  `idMarcas` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un código asignado a la marca del vehículo.',
  `descripcionMarcaVehiculo` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  los nombres de las diferentes marcas Ej:Audi, Chevrolet, Mazda, Toyota, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes marcas de vehículos que posee el Ejercito Nacional de Colombia.';

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`idMarcas`, `descripcionMarcaVehiculo`) VALUES
(100, 'Audi'),
(200, 'BMW'),
(300, 'Chevrolet'),
(400, 'Dodge'),
(500, 'Ford'),
(600, 'Honda'),
(700, 'JAC'),
(800, 'Kia'),
(900, 'Land Rover'),
(1000, 'Mazda'),
(1100, 'Nissan'),
(1200, 'Peugeot'),
(1300, 'Renault'),
(1400, 'Ssangyong'),
(1500, 'Suzuki'),
(1600, 'Toyota'),
(1700, 'Volkswagen'),
(1800, 'Zotye');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebacuenta`
--

CREATE TABLE IF NOT EXISTS `pruebacuenta` (
  `numeroCta` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `cedulaCliente` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tipoTrans` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `Valor` double NOT NULL,
  `FechaTrans` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rh`
--

CREATE TABLE IF NOT EXISTS `rh` (
  `idRh` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número asignado a cada grupo sanguineo.',
  `descripcionRh` varchar(5) NOT NULL COMMENT 'En este campo se va a almacenar el nombre de cada uno de los tipos de grupos sanguineos.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes grupos sanguineos a los que puede llegar a pertenecer un funcionario.';

--
-- Volcado de datos para la tabla `rh`
--

INSERT INTO `rh` (`idRh`, `descripcionRh`) VALUES
(100, 'A-'),
(200, 'A+'),
(300, 'B-'),
(400, 'B+'),
(500, 'AB-'),
(600, 'AB+'),
(700, 'O-'),
(800, 'O+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `idRol` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número que identifica cada rol.',
  `descripcionRol` varchar(20) NOT NULL COMMENT 'En este campo se va a almacenar los diferentes roles Administración, Mantenimiento, Asignación.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes roles que puede llegar a tener un funcionario.';

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `descripcionRol`) VALUES
(100, 'Administrador'),
(200, 'Asignacion'),
(300, 'Mantenimiento'),
(400, 'Consulta'),
(500, 'Conductor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposcombustibles`
--

CREATE TABLE IF NOT EXISTS `tiposcombustibles` (
  `idTiposCombustibles` int(11) NOT NULL COMMENT 'En este campo se va a almacenar un número asignado al tipo de combustible.',
  `descripcionTipoCombustible` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  los tipos de combustibles Ej : AvGas, Diecel, Gas etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes tipos de combustibles que se usan para los vehículos.';

--
-- Volcado de datos para la tabla `tiposcombustibles`
--

INSERT INTO `tiposcombustibles` (`idTiposCombustibles`, `descripcionTipoCombustible`) VALUES
(100, 'AvGas'),
(200, 'Diesel'),
(300, 'Gas'),
(400, 'Gasolina'),
(500, 'Queroseno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposmantenimiento`
--

CREATE TABLE IF NOT EXISTS `tiposmantenimiento` (
  `idTiposMantenimiento` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado al tipo de mantenimiento.',
  `descripcionMantenimiento` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  los tipos de mantenimientos Ej: Preventivo, Correctivo, Predictivo o Proactivo.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes tipos de mantenimientos que se le pueden realizar a un vehículo.';

--
-- Volcado de datos para la tabla `tiposmantenimiento`
--

INSERT INTO `tiposmantenimiento` (`idTiposMantenimiento`, `descripcionMantenimiento`) VALUES
(100, 'Correctivo'),
(200, 'Predictivo'),
(300, 'Preventivo'),
(400, 'Proactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposvehiculo`
--

CREATE TABLE IF NOT EXISTS `tiposvehiculo` (
  `idTiposVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado al tipo de vehículo.',
  `descripcionTipoVehiculo` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar los tipos de vehículos Ej: Ambulancia, Automovil, buses, camonetas, Vehículo Blindado, etc.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En esta tabla se almacenan los diferentes tipos de vehículos que posee el Ejercito Nacional de Colombia.';

--
-- Volcado de datos para la tabla `tiposvehiculo`
--

INSERT INTO `tiposvehiculo` (`idTiposVehiculo`, `descripcionTipoVehiculo`) VALUES
(100, 'Ambulancia'),
(200, 'Automovil'),
(300, 'Avion'),
(400, 'Bus'),
(500, 'Buseta'),
(600, 'Camion 2.5 ton Tacticos'),
(700, 'Camion 6 a 15 ton Admin'),
(800, 'Camioneta'),
(900, 'Campero'),
(1000, 'Carrotaller'),
(1100, 'Carrotanque de agua'),
(1200, 'Carrotanque para combusti'),
(1300, 'Coche funebre'),
(1400, 'Grua'),
(1500, 'Helicoptero'),
(1600, 'Montacarga'),
(1700, 'Motocicleta'),
(1800, 'Remolque'),
(1900, 'Trailer'),
(2000, 'Tractomula'),
(2100, 'Tractor'),
(2200, 'Vehiculo Blindado'),
(2300, 'Vehiculo de Bomberos'),
(2400, 'Volqueta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `placa` varchar(6) NOT NULL COMMENT 'En este campo se va a almacenar  las letras y números asignados por Min transporte a los vehículos para su identificación.',
  `idTiposVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar   un número asignado al tipo de vehículo.',
  `idMarcas` int(11) NOT NULL COMMENT 'En este campo se va a almacenar   un número asignado a la marca del vehículo.',
  `idTiposCombustibles` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado al tipo de combustible del vehículo.',
  `modelo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el año del modelo del vehículo.',
  `idEstadosVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado al tipo de combustible del vehículo.',
  `fechaEstado` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha del estado del vehículo.',
  `idColorVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un número asignado a los colores de los vehículos.',
  `idEmpleoVehiculo` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  un código asignado al tipo de empleo del vehículo.',
  `sigla` varchar(25) DEFAULT NULL COMMENT 'En este campo se va a almacenar   números y letras asignados a cada vehículo.',
  `vin` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  el nímero internacional del vehículo.',
  `motor` varchar(25) NOT NULL COMMENT 'En este campo se va a almacenar  números y letras asignado por el fabricante del motor del vehiculo.',
  `cilindraje` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el cilindraje indicado en la licencia de transito.',
  `licenciaTransito` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el número asignado por Min Transporte.',
  `seguroObligatorio` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el número asignado por la compañia aseguradora SOAT.',
  `vencimientoSeguro` date NOT NULL COMMENT 'En este campo se va a almacenar la fecha de vencimiento del seguro obligatorio SOAT.',
  `seguroResponsabilidad` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el número asignado por la compañia aseguradora de Responsabilidad civil.',
  `vencimientoResponsabilidad` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha de vencimiento del seguro de responsabilidad civil.',
  `revisionTecnomecanica` int(11) NOT NULL COMMENT 'En este campo se va a almacenar  el número asignado por la serviteca autorizada.',
  `vencimientoTecnomecanica` date NOT NULL COMMENT 'En este campo se va a almacenar  la fecha de vencimiento de la revision tecnomecanica.',
  `fotoVehiculo` varchar(50) DEFAULT NULL COMMENT 'En este campo se va a almacenar una fotografia panoramica del vehículo.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='En los diferentes campos de esta tabla se va a almacenar toda la información necesaria de cada uno de los vehículos.';

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`placa`, `idTiposVehiculo`, `idMarcas`, `idTiposCombustibles`, `modelo`, `idEstadosVehiculo`, `fechaEstado`, `idColorVehiculo`, `idEmpleoVehiculo`, `sigla`, `vin`, `motor`, `cilindraje`, `licenciaTransito`, `seguroObligatorio`, `vencimientoSeguro`, `seguroResponsabilidad`, `vencimientoResponsabilidad`, `revisionTecnomecanica`, `vencimientoTecnomecanica`, `fotoVehiculo`) VALUES
('AAA000', 100, 100, 100, 2015, 100, '0000-00-00', 100, 100, 'AAAAAA', '11111111111', '22222222222', 1500, 1111111111, 1111111111, '0000-00-00', 1111111111, '0000-00-00', 11111111, '0000-00-00', '0'),
('AND100', 100, 200, 100, 0, 100, '2008-10-22', 200, 100, 'EJC20081125', '259ER87J525', '5F658FEW6', 2000, 25789524, 85074239, '2016-11-10', 13262, '2014-07-03', 2016, '2016-10-15', NULL),
('ANH856', 300, 300, 400, 0, 100, '2008-10-25', 200, 400, 'EJE19950516', '2569FG8759', '5F658FEW7', 15000, 56485624, 44946379, '2015-07-10', 88282, '2015-09-13', 2015, '2015-04-28', ''),
('AST28', 1700, 200, 200, 0, 100, '2000-01-10', 400, 100, 'EJC19921212', '63549E84D2', 'EE556542R6', 650, 2771943, 59571554, '2014-12-30', 53015, '2015-12-12', 2014, '2014-07-03', ''),
('BEZ003', 100, 100, 100, 12345678, 200, '2015-04-01', 200, 100, '123456723456', '12345QWERTY', '123456712345', 12345678, 12345678, 1234567890, '2015-04-01', 12345678, '2015-04-01', 12345689, '2015-04-07', NULL),
('BEZ149', 1800, 1700, 200, 1111, 500, '2015-05-20', 500, 300, 'QQQQQQ', '11111111111', '11111111111', 111111, 11111111, 111111, '2015-05-20', 1111111111, '2015-05-20', 1111111, '2015-05-20', NULL),
('BEZ159', 100, 100, 100, 2015, 100, '0000-00-00', 100, 100, 'EJC131001', '259ER87J525', '5F658FEW6', 650, 25789524, 85074239, '2016-11-10', 13262, '2014-07-03', 2016, '2016-10-15', '12345'),
('BEZ169', 100, 100, 100, 2015, 100, '0000-00-00', 100, 100, 'EJC131001', '259ER87J525', '5F658FEW6', 650, 25789524, 85074239, '2016-11-10', 13262, '2014-07-03', 2016, '2016-10-15', '12345'),
('BEZ179', 100, 100, 100, 2015, 100, '2015-01-01', 100, 100, 'EJC131001', '259ER87J525', '5F658FEW6', 650, 25789524, 85074239, '2016-11-10', 13262, '2014-07-03', 2016, '2016-10-15', '12345'),
('BEZ200', 300, 300, 200, 1111, 200, '2015-05-20', 200, 300, '111111', '11111111111', '11111111111', 11111, 11111111, 111111, '2015-05-12', 1111111111, '2015-05-13', 1111111, '2015-05-13', NULL),
('BEZ202', 900, 1000, 200, 1111, 300, '2015-05-20', 200, 300, 'QQQQQQ', '11111111111', '11111111111', 111111, 11111111, 111111, '2015-05-22', 1111111111, '2015-05-28', 1111111, '2015-05-20', NULL),
('BEZ203', 1700, 1200, 200, 1111, 200, '2015-05-20', 200, 300, '111111', '11111111111', '11111111111', 11111, 11111111, 111111, '2015-05-19', 1111111111, '2015-05-13', 1111111, '2015-05-20', NULL),
('BEZ204', 1700, 1200, 400, 1111, 200, '2015-05-13', 400, 200, 'QQQQQQ', '11111111111', '11111111111', 111111, 11111111, 111111, '2015-05-13', 1111111111, '2015-05-13', 1111111, '2015-05-13', NULL),
('BEZ205', 1600, 1600, 400, 1111, 300, '2015-05-13', 400, 200, 'QQQQQQ', '11111111111', '11111111111', 111111, 11111111, 111111, '2015-05-13', 1111111111, '2015-05-13', 1111111, '2015-05-13', NULL),
('BEZ206', 1700, 400, 100, 1111, 400, '2015-05-17', 200, 300, '111111', '11111111111', '11111111111', 111111, 11111111, 111111, '2015-05-17', 1111111111, '2015-05-17', 1111111, '2015-05-17', NULL),
('BEZ999', 100, 100, 100, 2015, 100, '2015-01-01', 100, 100, 'EJC131001', '259ER87J525', '5F658FEW6', 650, 25789524, 85074239, '2016-11-10', 13262, '2014-07-03', 2016, '2016-10-15', '12345'),
('DFG452', 300, 400, 300, 11111, 500, '2015-05-13', 300, 300, '111111111111', '11111111111', '111111111111111', 1111111111, 1111111111, 1111111111, '2015-05-14', 1111111111, '2015-05-14', 1111111111, '2015-05-07', NULL),
('FTD29', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102507', '632515165156', 'KM2561561515', 650, 2147483647, 2147483647, '2015-01-30', 2147483647, '2015-01-30', 2147483647, '2015-01-30', NULL),
('HNP613', 800, 1100, 400, 0, 100, '2013-02-15', 500, 400, 'EJC131006', '6985147432156972', '369548172449745', 3000, 2147483647, 2147483647, '2015-09-27', 2147483647, '2015-09-28', 2147483647, '2015-11-29', NULL),
('HTC25', 1700, 1500, 400, 0, 100, '2012-12-25', 500, 100, 'EJC2012102501', '159D6G2815', 'D55548RS', 650, 956325694, 89574851, '2015-01-30', 56325654, '2015-01-30', 2147483647, '2015-01-30', NULL),
('IEN258', 1200, 1800, 200, 0, 100, '2000-01-10', 200, 400, 'EJC20141001', '598D756G22', 'EE556542R3', 6000, 458756558, 40634241, '2014-12-29', 80846, '2015-01-31', 2015, '2015-02-24', ''),
('JHD112', 800, 1100, 400, 0, 100, '2013-02-15', 500, 400, 'EJC131008', '3624587916463245', '315644558466425', 3000, 2147483647, 2147483647, '2015-09-27', 2147483647, '2015-09-28', 2147483647, '2015-11-29', NULL),
('JKL25', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102503', '95689415216', 'S952316G64', 650, 963589645, 965481615, '2015-01-30', 265489215, '2015-01-30', 2147483647, '2015-01-30', NULL),
('JWE30', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102508', '65314261515661', 'KMH26184515J', 650, 2147483647, 2147483647, '2015-01-30', 2147483647, '2015-01-30', 2147483647, '2015-01-30', NULL),
('KIE247', 600, 900, 400, 0, 300, '2014-12-01', 300, 100, 'EJC19951216', '53E5Y6548', 'D55548TT', 2100, 25698752, 25945484, '2015-03-09', 90492, '2015-02-24', 2015, '2015-10-28', ''),
('KLM26', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102504', '69584714626', 'L165119616K', 650, 958641263, 2147483647, '2015-01-30', 619692462, '2015-01-30', 2147483647, '2015-01-30', NULL),
('KOL28', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102506', '6212661511', 'J551561123J', 650, 2147483647, 2147483647, '2015-01-30', 2147483647, '2015-01-30', 2147483647, '2015-01-30', NULL),
('LCX536', 800, 1100, 400, 0, 100, '2013-02-15', 500, 400, 'EJC131007', '3698574152369745', '365489715495631', 3000, 2147483647, 2147483647, '2015-09-27', 2147483647, '2015-09-28', 2147483647, '2015-11-29', NULL),
('LOP27', 1700, 1500, 400, 0, 100, '2015-12-25', 500, 100, 'EJC2012102505', '516151641616A', 'H9569218', 650, 956848591, 2147483647, '2015-01-30', 695478544, '2015-01-30', 2147483647, '2015-01-30', NULL),
('MHT963', 800, 1600, 200, 0, 100, '2013-02-15', 200, 300, 'EJC131001', '235D836G5125436', '5F658FEW9456954', 2400, 2147483647, 2147483647, '2015-06-25', 2147483647, '2015-07-03', 2147483647, '2015-12-01', ''),
('MJU86A', 700, 500, 200, 0, 100, '2014-12-12', 200, 100, 'EJC19901218', '595D432618', '5F658FEW10', 3100, 59863587, 30872600, '2015-06-25', 44022, '2016-12-12', 2014, '2015-12-12', ''),
('MJU987', 2000, 300, 200, 0, 100, '1995-01-01', 500, 100, 'EJC20010101', '248D46F55', 'D55548TT', 3500, 19854361, 12293919, '2015-03-09', 60978, '2015-02-24', 2015, '2015-12-12', ''),
('MKJ254', 500, 300, 100, 0, 300, '2014-11-30', 100, 300, 'EJC19990819', '56986E665K', 'D55548TT', 5000, 698632874, 42465954, '2015-03-15', 70705, '2015-02-24', 2015, '2015-02-24', ''),
('MYR589', 400, 800, 500, 0, 100, '1995-01-01', 400, 100, 'EJC20000924', '5468E45G32', '5F658FEW11', 6200, 14310473, 32518643, '2015-06-25', 83442, '2014-07-03', 2015, '2015-02-24', ''),
('NBC254', 500, 600, 300, 0, 100, '2000-01-10', 200, 100, 'EJC19851013', '549E8785I', 'EE556542R5', 3100, 59863587, 27136036, '2014-12-30', 46913, '2015-12-12', 2015, '2015-12-12', ''),
('NHF365', 600, 900, 100, 0, 100, '2000-01-10', 200, 200, 'EJC11900115', '963D258G79', '5F658FEW8', 2200, 65995587, 82221073, '2015-06-12', 12645, '2015-03-17', 2015, '2015-10-28', ''),
('NHY158', 100, 200, 500, 0, 100, '1999-11-15', 100, 300, 'EJC20011212', '96536E598H5', 'EE556542R4', 2200, 59875686, 19460967, '2015-03-08', 23445, '2015-12-12', 2015, '2015-10-28', ''),
('ÑPO873', 800, 1600, 200, 0, 100, '2013-02-15', 200, 300, 'EJC131002', '5586D258H598541', '5F658FEW1225487', 2400, 2147483647, 2147483647, '2015-06-25', 2147483647, '2015-07-03', 2147483647, '2015-12-01', ''),
('OIY458', 700, 1100, 100, 0, 200, '2013-05-25', 300, 100, 'EJC19900325', '25H688D465', 'D55548TT', 3000, 69875368, 80253027, '2015-08-12', 83220, '2014-12-25', 2015, '2015-12-12', ''),
('QAW159', 300, 1800, 400, 11111, 300, '2015-05-27', 200, 400, '111111111111', '11111111111', '111111111111111', 1111111111, 1111111111, 1111111111, '2015-05-14', 1111111111, '2015-05-26', 1111111111, '2015-05-20', NULL),
('QQQ123', 200, 200, 300, 11111, 200, '2015-05-14', 100, 300, '111111111111', '11111111111', '111111111111111', 1111111111, 1111111111, 1111111111, '2015-05-22', 1111111111, '2015-05-21', 1111111111, '2015-05-29', NULL),
('QSA981', 800, 1600, 200, 0, 100, '2013-02-15', 200, 300, 'EJC131004', '8547985135967845', '968574125436147', 2400, 2147483647, 2147483647, '2015-06-25', 2147483647, '2015-07-03', 2147483647, '2015-12-01', NULL),
('QSR541', 800, 1600, 200, 0, 100, '2013-02-15', 200, 300, 'EJC131005', '9857412534975869', '36251F987456148', 2400, 2147483647, 2147483647, '2015-06-25', 2147483647, '2015-07-30', 2147483647, '2015-12-01', NULL),
('REO821', 800, 1600, 200, 0, 100, '2013-02-15', 200, 300, 'EJC131003', '6987415632478968', '75847PO96547891', 2400, 2147483647, 2147483647, '2015-06-25', 2147483647, '2015-07-03', 2147483647, '2015-12-01', NULL),
('RPT23', 1700, 1500, 400, 0, 100, '2012-12-25', 500, 100, 'EJC2012102502', '959219A9191', 'D9817A9541E', 650, 965894715, 921892415, '2015-01-30', 52196189, '2015-01-30', 2147483647, '2015-01-30', NULL),
('SED200', 200, 400, 200, 0, 100, '2013-05-25', 200, 100, 'EJC20001001', '365DF9H862', 'EE556542R1', 1200, 36598754, 10661420, '2018-01-15', 19084, '2014-12-25', 2018, '2015-12-12', ''),
('SMR548', 400, 600, 300, 0, 100, '2008-10-24', 300, 300, 'EJC19980110', '54895G78D5', 'D55548TT', 6000, 587651687, 76059444, '2016-06-25', 18762, '2015-10-28', 2016, '2016-07-20', ''),
('VFR895', 900, 1000, 500, 0, 200, '2014-02-10', 300, 400, 'EJC1991210', '25687A43M5', 'EE556542R2', 2500, 65987258, 28744651, '2014-12-28', 73396, '2015-06-15', 2015, '2015-10-20', ''),
('WMH785', 1600, 1700, 200, 0, 500, '2014-11-22', 300, 100, 'EJC20111010', '159D6G2800', 'D55548TT', 1700, 587585235, 88008386, '2015-03-29', 59761, '2015-02-24', 2014, '2014-07-03', ''),
('ZXC963', 1600, 1600, 300, 11111, 300, '2015-05-21', 200, 200, '111111111111', '11111111111', '111111111111111', 1111111111, 1111111111, 1111111111, '2015-05-29', 1111111111, '2015-05-15', 1111111111, '2015-05-21', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
 ADD PRIMARY KEY (`idAsignaciones`), ADD KEY `FK_numeroDocumento_idx` (`numeroDocumento`), ADD KEY `FK_placaVehiculo_idx` (`placa`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
 ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
 ADD PRIMARY KEY (`idCiudad`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por ciudades.';

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`cedulaCliente`);

--
-- Indices de la tabla `colorvehiculo`
--
ALTER TABLE `colorvehiculo`
 ADD PRIMARY KEY (`idColorVehiculo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
 ADD PRIMARY KEY (`numeroCta`), ADD KEY `titular` (`titular`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
 ADD PRIMARY KEY (`idDirecciones`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por direcciones.', ADD KEY `FK_Ciudades_Direcciones_idx` (`idCiudad`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por ciudades.';

--
-- Indices de la tabla `empleovehiculo`
--
ALTER TABLE `empleovehiculo`
 ADD PRIMARY KEY (`idEmpleoVehiculo`);

--
-- Indices de la tabla `estadosvehiculo`
--
ALTER TABLE `estadosvehiculo`
 ADD PRIMARY KEY (`idEstadosVehiculo`);

--
-- Indices de la tabla `funcionariorol`
--
ALTER TABLE `funcionariorol`
 ADD PRIMARY KEY (`idFuncionarioRol`), ADD KEY `Fk_idRol_idx` (`idRol`), ADD KEY `FK_numeroDocumentoRol_idx` (`numeroDocumento`);

--
-- Indices de la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
 ADD PRIMARY KEY (`numeroDocumento`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por número de documento de identidad..', ADD KEY `FK_Funcionarios_Grados_idx` (`idGrados`) COMMENT 'Facilitar la busqueda en las consultas  de una manera mas rapida por Grados.', ADD KEY `FK_idRh_idx` (`idRh`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por grupo sanguineo.', ADD KEY `apellido1` (`apellido1`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por apellido.', ADD KEY `FK_idCategoria_idx` (`idCategoria`), ADD KEY `FK_idCiudadDocumento_idx` (`idCiudad`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
 ADD PRIMARY KEY (`idGrados`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por grados.';

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
 ADD PRIMARY KEY (`idMantenimientos`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por id del mantenimiento.', ADD KEY `FK_idTiposMantenimiento_idx` (`idTiposMantenimiento`), ADD KEY `FK_placa_idx` (`placa`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
 ADD PRIMARY KEY (`idMarcas`);

--
-- Indices de la tabla `pruebacuenta`
--
ALTER TABLE `pruebacuenta`
 ADD UNIQUE KEY `numeroCta` (`numeroCta`,`cedulaCliente`), ADD KEY `numeroCta_2` (`numeroCta`), ADD KEY `cedulaCliente` (`cedulaCliente`);

--
-- Indices de la tabla `rh`
--
ALTER TABLE `rh`
 ADD PRIMARY KEY (`idRh`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por grupo sanguineo.';

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`idRol`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por roles.';

--
-- Indices de la tabla `tiposcombustibles`
--
ALTER TABLE `tiposcombustibles`
 ADD PRIMARY KEY (`idTiposCombustibles`);

--
-- Indices de la tabla `tiposmantenimiento`
--
ALTER TABLE `tiposmantenimiento`
 ADD PRIMARY KEY (`idTiposMantenimiento`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por tipos de mantenimientos.';

--
-- Indices de la tabla `tiposvehiculo`
--
ALTER TABLE `tiposvehiculo`
 ADD PRIMARY KEY (`idTiposVehiculo`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
 ADD PRIMARY KEY (`placa`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por placa.', ADD KEY `FK_idTiposVehiculo_idx` (`idTiposVehiculo`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por tipos de vehiculos.', ADD KEY `FK_idMarcas_idx` (`idMarcas`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por marcas de vehículos.', ADD KEY `FK_idTiposCombustibles_idx` (`idTiposCombustibles`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por tipos de combustibles.', ADD KEY `FK_idEstadosVehiculo_idx` (`idEstadosVehiculo`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por Estados de vehículo.', ADD KEY `FK_idColorVehiculo_idx` (`idColorVehiculo`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por color de vehículo.', ADD KEY `FK_idEmpleoVehiculo_idx` (`idEmpleoVehiculo`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por empleo del vehículo.', ADD KEY `sigla` (`sigla`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por sigla del vehículo.', ADD KEY `cilindraje` (`cilindraje`) COMMENT 'Facilitar la busqueda en las consultas de una manera mas rapida por cilindraje.';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
ADD CONSTRAINT `FK_numeroDocumentoFuncionario` FOREIGN KEY (`numeroDocumento`) REFERENCES `funcionarios` (`numeroDocumento`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_placaVehiculo` FOREIGN KEY (`placa`) REFERENCES `vehiculos` (`placa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`titular`) REFERENCES `cliente` (`cedulaCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `direcciones`
--
ALTER TABLE `direcciones`
ADD CONSTRAINT `FK_idCiudad` FOREIGN KEY (`idCiudad`) REFERENCES `ciudades` (`idCiudad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `funcionariorol`
--
ALTER TABLE `funcionariorol`
ADD CONSTRAINT `FK_numeroDocumentoRol` FOREIGN KEY (`numeroDocumento`) REFERENCES `funcionarios` (`numeroDocumento`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `Fk_idRol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `funcionarios`
--
ALTER TABLE `funcionarios`
ADD CONSTRAINT `FK_idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idCiudadDocumento` FOREIGN KEY (`idCiudad`) REFERENCES `ciudades` (`idCiudad`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idGrados` FOREIGN KEY (`idGrados`) REFERENCES `grados` (`idGrados`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_idRh` FOREIGN KEY (`idRh`) REFERENCES `rh` (`idRh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
ADD CONSTRAINT `FK_idTiposMantenimiento` FOREIGN KEY (`idTiposMantenimiento`) REFERENCES `tiposmantenimiento` (`idTiposMantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_placa` FOREIGN KEY (`placa`) REFERENCES `vehiculos` (`placa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pruebacuenta`
--
ALTER TABLE `pruebacuenta`
ADD CONSTRAINT `pruebacuenta_ibfk_1` FOREIGN KEY (`numeroCta`) REFERENCES `cuenta` (`numeroCta`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `pruebacuenta_ibfk_2` FOREIGN KEY (`cedulaCliente`) REFERENCES `cliente` (`cedulaCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
ADD CONSTRAINT `FK_idColorVehiculo` FOREIGN KEY (`idColorVehiculo`) REFERENCES `colorvehiculo` (`idColorVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idEmpleoVehiculo` FOREIGN KEY (`idEmpleoVehiculo`) REFERENCES `empleovehiculo` (`idEmpleoVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idEstadosVehiculo` FOREIGN KEY (`idEstadosVehiculo`) REFERENCES `estadosvehiculo` (`idEstadosVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idMarcas` FOREIGN KEY (`idMarcas`) REFERENCES `marcas` (`idMarcas`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idTiposCombustibles` FOREIGN KEY (`idTiposCombustibles`) REFERENCES `tiposcombustibles` (`idTiposCombustibles`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK_idTiposVehiculo` FOREIGN KEY (`idTiposVehiculo`) REFERENCES `tiposvehiculo` (`idTiposVehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

