-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 21:27:59
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proco389_sgbiess`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargas`
--

CREATE TABLE `cargas` (
  `id_carga` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `registros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargas`
--

INSERT INTO `cargas` (`id_carga`, `codigo`, `usuario`, `fecha`, `registros`) VALUES
(4, 'C000001', '1', '2018-07-23 17:46:40', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `documento_cliente` varchar(20) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `saldo_cliente` decimal(10,2) NOT NULL,
  `empresa_cliente` varchar(30) NOT NULL,
  `fec_consumo` date NOT NULL,
  `menu_cliente` varchar(20) NOT NULL,
  `id_carga` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `documento_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `codigo`, `saldo_cliente`, `empresa_cliente`, `fec_consumo`, `menu_cliente`, `id_carga`) VALUES
(1160, 'Alex Almeida', '1724611932', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-13', '2\r\n', 'C000001'),
(1159, 'Alex Almeida', '1724611932', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-12', '2\r\n', 'C000001'),
(1158, 'Alex Almeida', '1724611932', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-11', '2\r\n', 'C000001'),
(1157, 'Alex Almeida', '1724611932', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-10', '2\r\n', 'C000001'),
(1156, 'Alex Almeida', '1724611932', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-09', '2\r\n', 'C000001'),
(1155, 'Alejandro Sanchez', '1723795348', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-23', '1\r\n', 'C000001'),
(1154, 'Alejandro Sanchez', '1723795348', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-12', '1\r\n', 'C000001'),
(1153, 'Alejandro Sanchez', '1723795348', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-11', '2\r\n', 'C000001'),
(1152, 'Alejandro Sanchez', '1723795348', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-10', '2\r\n', 'C000001'),
(1151, 'Alejandro Sanchez', '1723795348', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-09', '2\r\n', 'C000001'),
(1150, 'Adrian Cisneros', '1716568892', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-13', '1\r\n', 'C000001'),
(1149, 'Adrian Cisneros', '1716568892', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-12', '2\r\n', 'C000001'),
(1148, 'Adrian Cisneros', '1716568892', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-11', '1\r\n', 'C000001'),
(1147, 'Adrian Cisneros', '1716568892', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-10', '2\r\n', 'C000001'),
(1146, 'Adrian Cisneros', '1716568892', '', '', '', 0, '2018-07-23 17:46:40', '', '40.00', '', '2018-07-09', '1\r\n', 'C000001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_maestros`
--

CREATE TABLE `codigos_maestros` (
  `id_codigo` int(11) NOT NULL,
  `codigo_maestro` varchar(20) NOT NULL,
  `nombre_maestro` varchar(30) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `codigos_maestros`
--

INSERT INTO `codigos_maestros` (`id_codigo`, `codigo_maestro`, `nombre_maestro`, `id_usuario`) VALUES
(1, 'Código Usiario', 'Áreas', 0),
(2, '17000000011', 'Arquitectura', 5),
(3, '1700000004', 'Kruger Labs', 5),
(4, '1700000007', 'MKT', 5),
(5, '1700000006', 'Nuevos colaboradores', 5),
(6, '17000000010', 'Olvido Credencial', 5),
(7, '1700000008', 'Operaciones', 5),
(8, '1700000002', 'Pasantes', 5),
(9, '17000000012', 'Presidencia', 5),
(10, '1700000014', 'Supermaxi colaboradores', 5),
(11, '1700000003', 'Técnicos SMX', 5),
(12, '1700000001', 'THC', 5),
(13, '1700000005', 'Ventas', 5),
(14, '17000000013', 'AdminFinanciero', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumos_diarios`
--

CREATE TABLE `consumos_diarios` (
  `id_consumos` int(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha_consumo` datetime NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_cambio` datetime NOT NULL,
  `user_cambio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consumos_diarios`
--

INSERT INTO `consumos_diarios` (`id_consumos`, `id_cliente`, `fecha_consumo`, `estado`, `fecha_cambio`, `user_cambio`) VALUES
(1, 1155, '2018-07-23 19:10:02', '1', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`) VALUES
(1, 'AMARETTI CATERING', 'Bosmediano E16-19 y JosÃ© Carbo', 'Quito', '170517', 'Pichincha', '+(593) 02 2900-392', 'info@grupobarlovento.com', 12, '$', 'img/1523474789_Logo_Amareti.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` decimal(10,2) NOT NULL,
  `precio_compra` double NOT NULL,
  `tipo_producto` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id_turno` int(11) NOT NULL,
  `codigo_turno` int(5) NOT NULL,
  `inicio_turno` time NOT NULL,
  `fin_turno` time NOT NULL,
  `estado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id_turno`, `codigo_turno`, `inicio_turno`, `fin_turno`, `estado`) VALUES
(1, 1, '07:00:00', '20:00:00', 1),
(2, 2, '19:00:00', '08:00:00', 1),
(3, 3, '07:00:00', '20:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `perfil` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`, `perfil`) VALUES
(1, 'PROCONTY', '', 'admin', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'info@proconty.com', '2016-05-21 15:06:00', 'Administrador'),
(5, 'supervisor', 'supervisor', 'supervisor', '$2y$10$HAw6E48mFpVcmbiCkjWth.SSWgsHNRJe.3tEmeRYfeoHbQyixMnDa', 'info@kruger.com.ec', '2002-01-01 06:09:31', 'Supervisor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargas`
--
ALTER TABLE `cargas`
  ADD PRIMARY KEY (`id_carga`) USING BTREE;

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `codigos_maestros`
--
ALTER TABLE `codigos_maestros`
  ADD PRIMARY KEY (`id_codigo`);

--
-- Indices de la tabla `consumos_diarios`
--
ALTER TABLE `consumos_diarios`
  ADD PRIMARY KEY (`id_consumos`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargas`
--
ALTER TABLE `cargas`
  MODIFY `id_carga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1161;
--
-- AUTO_INCREMENT de la tabla `codigos_maestros`
--
ALTER TABLE `codigos_maestros`
  MODIFY `id_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `consumos_diarios`
--
ALTER TABLE `consumos_diarios`
  MODIFY `id_consumos` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
