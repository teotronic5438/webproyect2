-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2018 a las 01:28:22
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contacto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datoscontacto`
--

CREATE TABLE `datoscontacto` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `dni` int(8) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `msj` text,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `datoscontacto`
--

INSERT INTO `datoscontacto` (`id_contacto`, `nombre`, `apellido`, `dni`, `sexo`, `email`, `telefono`, `msj`, `fecha`) VALUES
(1, 'Juan', 'Perez', 93928977, '', '', '', '', '0000-00-00'),
(2, 'Juan', 'Perez', 93928977, 'Masculino', 'juan@gmail.com', '47372734', '', '0000-00-00'),
(3, 'Juan', 'Perez', 93928977, 'Masculino', 'juan@gmail.com', '47372734', 'Hola esto es una prueba.', '0000-00-00'),
(4, 'Juan', 'Perez', 87543723, 'Masculino', 'perez@gmail.com', '1534267324', 'Hola este mensaje es de segunda prueba con fecha.', '0000-00-00'),
(5, 'Juan', 'Perez', 87543723, 'Masculino', 'perez@gmail.com', '1534267324', 'Hola este mensaje es de segunda prueba con fecha.', '0000-00-00'),
(6, 'Juan', 'Perez', 87543723, 'Masculino', 'perez@gmail.com', '1534267324', 'Hola este mensaje es de segunda prueba con fecha.', '2018-12-27'),
(7, 'Juan', 'Perez', 87543723, 'Masculino', 'perez@gmail.com', '1534267324', 'Hola este mensaje es de segunda prueba con fecha.', '2018-12-27'),
(8, 'Juan', 'Perez', 87543723, 'Masculino', 'perez@gmail.com', '1534267324', 'Hola este mensaje es de segunda prueba con fecha.', '2018-12-27'),
(9, 'Rosa', 'PeÃ±a', 34235634, 'Femenino', 'rosa@gmail.com', '46367623', 'Hola, prueba diez.', '2018-12-27'),
(10, 'Rosa', 'PeÃ±a', 34235634, 'Femenino', 'rosa@gmail.com', '46367623', 'Hola, prueba diez.', '2018-12-27'),
(11, 'Juan', 'Pedro', 34567823, 'Masculino', 'juan@gmail.com', '46239863', 'Prueba de envio', '2018-12-28'),
(12, 'lusi', 'Perez', 2147483647, 'Masculino', 'lucas@gmail.com', '2323323', 'wewewe', '2018-12-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `id_promos` int(11) NOT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `fechasuscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`id_promos`, `mail`, `fechasuscripcion`) VALUES
(1, '', '2018-12-27'),
(2, 'juan@gmail.com', '2018-12-27'),
(3, 'pedro@gmail.com', '2018-12-28'),
(4, 'juan@hotmail.com', '2018-12-28'),
(5, 'juan@hotmail.com', '2018-12-28'),
(6, 'juan@hotmail.com', '2018-12-28'),
(7, 'juan@hotmail.com', '2018-12-28'),
(8, 'juan@hotmail.com', '2018-12-28'),
(9, 'juan@hotmail.com', '2018-12-28'),
(10, 'juan@hotmail.com', '2018-12-28'),
(11, 'juan@hotmail.com', '2018-12-28'),
(12, 'juan@hotmail.com', '2018-12-28'),
(13, 'juan@hotmail.com', '2018-12-28'),
(14, 'juan@hotmail.com', '2018-12-28'),
(15, 'juan@hotmail.com', '2018-12-28'),
(16, 'juan@hotmail.com', '2018-12-28'),
(17, 'juan@hotmail.com', '2018-12-28'),
(18, 'juan@hotmail.com', '2018-12-28'),
(19, 'juan@hotmail.com', '2018-12-28'),
(20, 'juan@hotmail.com', '2018-12-28'),
(21, 'juan@hotmail.com', '2018-12-28'),
(22, 'juan@hotmail.com', '2018-12-28'),
(23, 'juan@hotmail.com', '2018-12-28'),
(24, 'pedro@gmail.com', '2018-12-28'),
(25, 'juan@hotmail.com', '2018-12-28'),
(26, 'juan.perez@gmail.com', '2018-12-28'),
(27, 'pedro@gmail.com', '2018-12-28'),
(28, 'lucas@gmail.com', '2018-12-28'),
(29, 'lucas@gmail.com', '2018-12-28'),
(30, 'pedro@hotmail.com', '2018-12-28'),
(31, 'lucas@hotmail.com', '2018-12-28'),
(32, 'lucas@yahoo.com.ar', '2018-12-28'),
(33, 'pedro@hotmail.com', '2018-12-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productostecnoshinta`
--

CREATE TABLE `productostecnoshinta` (
  `id_articulo` int(2) DEFAULT NULL,
  `seccion` varchar(10) DEFAULT NULL,
  `nombrearticulo` varchar(19) DEFAULT NULL,
  `precio` varchar(9) DEFAULT NULL,
  `marca` varchar(7) DEFAULT NULL,
  `descripcion` varchar(18) DEFAULT NULL,
  `descuento` varchar(17) DEFAULT NULL,
  `foto` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productostecnoshinta`
--

INSERT INTO `productostecnoshinta` (`id_articulo`, `seccion`, `nombrearticulo`, `precio`, `marca`, `descripcion`, `descuento`, `foto`) VALUES
(1, 'tablet', 'Tablet 7 pulgadas', '1,300.00', 'aoc', 'aoc 7 pulgadas', NULL, NULL),
(2, 'tablet', 'Tablet 10 pulgadas', '4,300.00', 'benq', 'benq 10 pulgadas', '10 % de descuento', NULL),
(3, 'tablet', 'Tablet 8 pulgadas', '2,500.00', 'exo', 'exo 8 pulgadas', NULL, NULL),
(4, 'tablet', 'Tablet 7 pulgadas', '2,300.00', 'philips', 'philips 7 pulgadas', NULL, NULL),
(5, 'tablet', 'Tablet 9.5 pulgadas', '4,800.00', 'hp', 'hp 9.5 pulgadas', NULL, NULL),
(6, 'tablet', 'Tablet 8 pulgadas', '3,400.00', 'dell', 'dell 8 pulgadas', '10 % de descuento', NULL),
(7, 'notebook', 'All in One 13\"', '15,700.00', 'hp', 'Producto nuevo', NULL, NULL),
(8, 'notebook', 'All in One 15\"', '13,800.00', 'hp', 'Producto nuevo', NULL, NULL),
(9, 'notebook', 'All in One 13\"', '16,400.00', 'hp', 'Producto nuevo', '10 % de descuento', NULL),
(10, 'notebook', 'All in One', '17,000.00', 'dell', 'Producto nuevo', NULL, NULL),
(11, 'Netbook', 'Netbook 14 \"', '12,000.00', 'dell', 'Producto nuevo', NULL, NULL),
(12, 'Netbook', 'Netbook 14\"', '11,999.00', 'sony', 'Producto nuevo', NULL, NULL),
(13, 'notebook', 'All in One', '17,899.00', 'sony', 'Producto nuevo', '10 % de descuento', NULL),
(14, 'notebook', 'All in One', '16,999.00', 'sony', 'Producto nuevo', NULL, NULL),
(15, 'notebook', 'Ultrabook', '21,399.00', 'sony', 'Producto nuevo', NULL, NULL),
(16, 'impresoras', 'Multifuncion', '3,499.00', 'kyocera', 'Producto nuevo', NULL, NULL),
(17, 'impresoras', 'Deskjet', '2,499.00', 'hp', 'Producto nuevo', '10 % de descuento', NULL),
(18, 'impresoras', 'Deskjet', '1,359.00', 'epson', 'Producto nuevo', NULL, NULL),
(19, 'impresoras', 'Multifuncion', '1,499.00', 'epson', 'Producto nuevo', NULL, NULL),
(20, 'impresoras', 'Deskjet', '2,199.00', 'brother', 'Producto nuevo', NULL, NULL),
(21, 'impresoras', 'Multifuncion', '3,199.00', 'brother', 'Producto nuevo', NULL, NULL),
(22, 'impresoras', 'Deskjet', '4,599.00', 'brother', 'Producto nuevo', '10 % de descuento', NULL),
(23, 'impresoras', 'Multifuncion', '7,359.00', 'brother', 'Producto nuevo', NULL, NULL),
(24, 'impresoras', 'Deskjet', '2,549.00', 'hp', 'Producto nuevo', NULL, NULL),
(25, 'impresoras', 'Deskjet', '2,388.00', 'hp', 'Producto nuevo', NULL, NULL),
(26, 'accesorios', 'Auriculares PH', '360.00', 'philips', 'Producto nuevo', NULL, NULL),
(27, 'accesorios', 'Auricular bluetooth', '450.00', 'sony', 'Producto nuevo', NULL, NULL),
(28, 'accesorios', 'Auriculares PH', '650.00', 'philips', 'Producto nuevo', NULL, NULL),
(29, 'accesorios', 'Auriculares PH', '900.00', 'philips', 'Producto nuevo', NULL, NULL),
(30, 'accesorios', 'Auricular bluetooth', '653.00', 'aiwa', 'Producto nuevo', NULL, NULL),
(31, 'accesorios', 'Auricular bluetooth', '720.00', 'huawei', 'Producto nuevo', '10 % de descuento', NULL),
(32, 'accesorios', 'Auricular bluetooth', '653.00', 'huawei', 'Producto nuevo', NULL, NULL),
(33, 'accesorios', 'Auricular bluetooth', '821.00', 'benq', 'Producto nuevo', NULL, NULL),
(34, 'accesorios', 'Auricular benq', '430.00', 'benq', 'Producto nuevo', NULL, NULL),
(35, 'accesorios', 'Auricular bluetooth', '700.00', 'benq', 'Producto nuevo', NULL, NULL),
(36, 'accesorios', 'Auricular bluetooth', '1,200.00', 'sony', 'Producto nuevo', NULL, NULL),
(37, 'accesorios', 'Auricular bluetooth', '1,300.00', 'sony', 'Producto nuevo', NULL, NULL),
(38, 'accesorios', 'Auricular aoc', '820.00', 'aoc', 'Producto nuevo', '10 % de descuento', NULL),
(39, 'accesorios', 'Auricular aoc', '870.00', 'aoc', 'Producto nuevo', NULL, NULL),
(40, 'accesorios', 'Auricular bluetooth', '950.00', 'aoc', 'Producto nuevo', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datoscontacto`
--
ALTER TABLE `datoscontacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id_promos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datoscontacto`
--
ALTER TABLE `datoscontacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id_promos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
