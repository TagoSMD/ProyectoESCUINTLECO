

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;



CREATE SCHEMA IF NOT EXISTS `Escuintleco` DEFAULT CHARACTER SET utf8 ;
USE `Escuintleco` ;  
--


CREATE TABLE IF NOT EXISTS `Usuario` (
  `id_usuario` int(11)  AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
   `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcar la base de datos para la tabla `tipo_articulo`
--

INSERT INTO `Usuario` (`id_usuario`, `username`, `password`) VALUES
(1, 'Santiago', '123'),
(2, 'Tago', '1234');


-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  `precio_venta` int(11) NOT NULL,
  `precio_costo` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `cod_tipo_articulo` int(11) NOT NULL,
  `cod_proveedor` varchar(20) NOT NULL,
  `fecha_ingreso` varchar(15) NOT NULL,
  PRIMARY KEY (`id_articulo`),
  KEY `ref_tipo_articulo` (`cod_tipo_articulo`),
  KEY `ref_prov_art` (`cod_proveedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `descripcion`, `precio_venta`, `precio_costo`, `stock`, `cod_tipo_articulo`, `cod_proveedor`, `fecha_ingreso`) VALUES
(1, 'Carne', 1000, 80, 20, 19, '00003-A', '2021-11-03'),
(2, 'Carne molida', 70, 50, 55, 19, '00003-A', '2021-10-11'),
(3, 'Carne de Cerdo ', 150, 130, 18, 19, '00003-A', '2021-09-01'),
(4, 'Pescado ', 120, 100, 8, 20, '00002-2', '2021-10-02'),
(5, 'Zanahorias', 50, 30, 59, 21, '00001-1', '2021-11-01'),
(6, 'Papa', 90, 70, 18, 24, '00004-4', '2021-10-02'),
(7, 'Manzana', 50, 30, 12, 22, '00003-A', '2021-10-20'),
(8, 'Pera', 70, 50, 8, 24, '00004-4', '2021-11-02'),
(9, 'Naranja', 60, 40, 20, 23, '00002-2', '2021-10-23'),
(10, 'Melon', 60, 40, 17, 23, '00002-2', '2021-10-23'),
(11, 'Brocoli', 100, 80, 20, 23, '00002-2', '202110-23'),
(12, 'Frijol', 30, 20, 30, 24, '00005-F', '2021-10-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--


CREATE TABLE IF NOT EXISTS `ciudad` (
  `Codigo_ciudad` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_ciudad` varchar(30) NOT NULL,
  PRIMARY KEY (`Codigo_ciudad`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcar la base de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`Codigo_ciudad`, `Nombre_ciudad`) VALUES
(1, 'GUATEMALA'),
(2, 'IZABAL'),
(3, 'PETEN'),
(4, 'SAN MARCOS'),
(5, 'MIXCO'),
(6, 'CIUDAD QUETZAL'),
(7, 'XELA'),
(8, 'PUERTO BARRIOS'),
(9, 'QUICHE'),
(10, 'ALTA VERAPAZ'),
(11, 'BAJA VERAPAZ'),
(12, 'ZONA 2 CIUDAD GUATEMALA'),
(13, 'ZONA 3 CIUDAD GUATEMALA'),
(14, 'ZONA 4 CIUDAD GUATEMALA'),
(15, 'ZONA 5 CIUDAD GUATEMALA'),
(16, 'ZONA 6 CIUDAD GUATEMALA'),
(17, 'ZONA 7 CIUDAD GUATEMALA'),
(18, 'ZONA 10 CIUDAD GUATEMALA'),
(19, 'ZONA 24 CIUDAD GUATEMALA'),
(20, 'ZONA 22 CIUDAD GUATEMALA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Documento` varchar(15) NOT NULL,
  `cod_tipo_documento` int(11) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Direccion` varchar(20) DEFAULT NULL,
  `cod_ciudad` int(11) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Documento`),
  KEY `cod_tipodocumento` (`cod_tipo_documento`),
  KEY `ref_ciudad` (`cod_ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Documento`, `cod_tipo_documento`, `Nombres`, `Apellidos`, `Direccion`, `cod_ciudad`, `Telefono`) VALUES
('0001', 1, 'Camilo', 'Lopez', 'Calle 23 N 12-43', 2, '8239578'),
('0002', 2, 'Maria', 'Arango', 'Carrera 5 N 23-12', 1, '8253478'),
('0003', 1, 'Andres', 'Florez', 'Carrera 23 N 12A 34', 4, '3127654323'),
('0004', 1, 'Carlos', 'Marin', 'Calle 3 N 98_21', 10, '8345623'),
('0005', 1, 'Elvira', 'Orozco', 'Centro', 15, '3219843543'),
('0006', 1, 'Kevin', 'Ayala', 'Carrera 23 N 4B 23', 1, '8354624'),
('0007', 1, 'Angela', 'Hoyos', 'Calle 4 N 23 34', 3, '3217654300'),
('0009', 1, 'Andres', 'Orozco', 'Calle 34 N 89 00', 1, '8219876'),
('0010', 1, 'Marlon', 'Diaz', 'Carrera 23 N 78-00', 9, '3219870987'),
('0011', 1, 'Daniela', 'Ceron', 'Centro', 1, '8236543'),
('0012', 2, 'Camilo', 'Orozco', 'Calle 21 N 23-98', 10, '3119874534'),
('0013', 1, 'Daniela', 'Ramos', 'Centro', 2, '3217653400'),
('0014', 2, 'Camilo', 'Samboni', 'Carrera 23 N45A 12', 6, '8204587'),
('0015', 1, 'Alexander', 'Romero', 'Calle 34 N 23 B 12', 2, '8340976'),
('0016', 1, 'Sebastian', 'Naranjo', 'Carrera 23 N 2 A 1', 1, '8320912'),
('0017', 2, 'Sandra', 'Castillo', 'Centro', 3, '3218769988'),
('0018', 1, 'Nicolas', 'Ospina', 'Calle 23- N 76', 1, '8230954'),
('0019', 1, 'Santiago', 'Sanchez', 'Carrera 23 N 12-23', 1, '8236521'),
('0020', 1, 'Aleja', 'Dorado', 'Calle 34 N 23 B 4', 2, '8453234'),
('0021', 2, 'andrea', 'Ruiz', 'Centro', 1, '3238765456'),
('0022', 1, 'Andres', 'Perdomo', 'Centro', 3, '8456342'),
('0023', 1, 'Dolly', 'Joaqui', 'Calle 3 N 34-12', 1, '8230943'),
('0024', 2, 'Kevin', 'Rivera', 'Centro', 1, '8342309'),
('0025', 1, 'Camila', 'Maya', 'Carrera 23 n 65-4', 1, '3150987866'),
('0026', 1, 'Camilo', 'Coral', 'Centro', 1, NULL),
('0027', 2, 'Carlos', 'Paz', 'Centro', 1, NULL),
('0028', 1, 'Cristian', 'Paz', 'Calle 34 N b34', 1, '3219870045'),
('0029', 1, 'Daniela', 'Solarte', 'Centro', 1, '8345623'),
('0030', 1, 'Diana', 'Aponte', 'Centro', 15, '8234522'),
('1032', 2, 'andres', 'juan', 'calle 34-23', 2, '326589'),
('12', 1, 'kerly andrea', 'samboni bolaños', 'los cimuneros', 1, '3113882177'),
('120', 1, 'andres', 'sanchez', 'carere 12-45', 2, '8202565'),
('123', 2, 'carlos', 'andres', 'calle 23.5', 2, '235645'),
('125', 2, 'andres', 'sanchez', 'calle 23', 2, '12545');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `cod_factura` varchar(20) NOT NULL,
  `cod_articulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`cod_factura`,`cod_articulo`),
  KEY `ref_facturacion` (`cod_factura`),
  KEY `ref_ar_fact` (`cod_articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`cod_factura`, `cod_articulo`, `cantidad`, `total`) VALUES
('FACT-9910966', 3, 1, '150000'),
('FACT-9910966', 4, 2, '240000'),
('FACT-9910966', 5, 1, '47500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE IF NOT EXISTS `devolucion` (
  `cod_detallefactura` varchar(20) NOT NULL,
  `cod_detallearticulo` int(11) NOT NULL,
  `Motivo` varchar(15) NOT NULL,
  `Fecha_devolucion` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`cod_detallefactura`,`cod_detallearticulo`),
  KEY `ref_detallefactu` (`cod_detallefactura`),
  KEY `ref_deta_art` (`cod_detallearticulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`cod_detallefactura`, `cod_detallearticulo`, `Motivo`, `Fecha_devolucion`, `cantidad`) VALUES
('FACT-9910966', 3, 'desgastado', '22/1/2022', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `Nnm_factura` varchar(20) NOT NULL,
  `cod_cliente` varchar(15) NOT NULL,
  `Nombre_empleado` varchar(30) NOT NULL,
  `Fecha_facturacion` varchar(15) NOT NULL,
  `cod_formapago` int(11) NOT NULL,
  `total_factura` decimal(10,0) DEFAULT NULL,
  `IVA` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Nnm_factura`),
  KEY `ref_cli_idx` (`cod_cliente`),
  KEY `ref_formapago` (`cod_formapago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `factura`
--

INSERT INTO `factura` (`Nnm_factura`, `cod_cliente`, `Nombre_empleado`, `Fecha_facturacion`, `cod_formapago`, `total_factura`, `IVA`) VALUES
('FACT-9910966', '125', 'Santiago', '22/1/2022', 1, '437500', '70000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_de_pago`
--

CREATE TABLE IF NOT EXISTS `forma_de_pago` (
  `id_formapago` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion_formapago` varchar(20) NOT NULL,
  PRIMARY KEY (`id_formapago`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `forma_de_pago`
--

INSERT INTO `forma_de_pago` (`id_formapago`, `Descripcion_formapago`) VALUES
(1, 'EFECTIVO'),
(2, 'TARJETA DE DEBITO'),
(3, 'TARJETA DE CREDITO'),
(4, 'CHEQUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `No_documento` varchar(20) NOT NULL,
  `cod_tipo_documento` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Nombre_comercial` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `cod_ciudad` int(11) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`No_documento`),
  KEY `ref_prov_ciudad` (`cod_ciudad`),
  KEY `proveedor_ibfk_1` (`cod_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`No_documento`, `cod_tipo_documento`, `Nombre`, `Apellido`, `Nombre_comercial`, `direccion`, `cod_ciudad`, `Telefono`) VALUES
('00001-1', 4, 'Carlos', 'Maya', 'San Martin', 'Calle 12-12', 1, NULL),
('00002-2', 4, 'Marino', 'Burbano', 'Parroquia', 'Centro', 2, NULL),
('00003-A', 7, 'Paola', 'Sanchez', 'San Martin', '	Centro', 3, NULL),
('00004-4', 4, 'Camilo', 'Muñoz', 'Parroquia', 'Centro', 2, NULL),
('00005-F', 7, 'Marlon', 'Brandom', 'Central', 'Calle 34 B 12', 1, NULL),
('00006-6', 1, 'Carlos', 'sanchez diaz', 'San Martin', 'calle 45 N 23-23', 1, '8213423');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_articulo`
--

CREATE TABLE IF NOT EXISTS `tipo_articulo` (
  `id_tipoarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_articulo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipoarticulo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcar la base de datos para la tabla `tipo_articulo`
--

INSERT INTO `tipo_articulo` (`id_tipoarticulo`, `descripcion_articulo`) VALUES
(19, 'VACA'),
(20, 'VEGETAL'),
(21, 'FRUTA'),
(22, 'PESCADO'),
(23, 'CERDO'),
(24, 'POLLO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_de_documento` (
  `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tipo_documento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcar la base de datos para la tabla `tipo_de_documento`
--

INSERT INTO `tipo_de_documento` (`id_tipo_documento`, `Descripcion`) VALUES
(1, 'PARTIDA'),
(2, 'LICENSIA'),
(3, 'LICENSIA A'),
(4, 'NIT'),
(5, 'PASAPORTE'),
(6, 'DPI'),
(7, 'RUT');

--
-- Filtros para las tablas descargadas (dump)
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `ref_prov_art` FOREIGN KEY (`cod_proveedor`) REFERENCES `proveedor` (`No_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_tipo_articulo` FOREIGN KEY (`cod_tipo_articulo`) REFERENCES `tipo_articulo` (`id_tipoarticulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `ref_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`Codigo_ciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_tipo_doc` FOREIGN KEY (`cod_tipo_documento`) REFERENCES `tipo_de_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `ref_ar_fact` FOREIGN KEY (`cod_articulo`) REFERENCES `articulo` (`id_articulo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_facturacion` FOREIGN KEY (`cod_factura`) REFERENCES `factura` (`Nnm_factura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `ref_detallefactu` FOREIGN KEY (`cod_detallefactura`) REFERENCES `detalle_factura` (`cod_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_deta_art` FOREIGN KEY (`cod_detallearticulo`) REFERENCES `detalle_factura` (`cod_articulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `ref_cli` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`Documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_formapago` FOREIGN KEY (`cod_formapago`) REFERENCES `forma_de_pago` (`id_formapago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`cod_tipo_documento`) REFERENCES `tipo_de_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ref_prov_ciudad` FOREIGN KEY (`cod_ciudad`) REFERENCES `ciudad` (`Codigo_ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost`
 PROCEDURE `insertar`(in Documento varchar(15),
in cod_tipo_documento int,in Nombres varchar(30),
in Apellidos varchar(30),in Direccion varchar(20)
,in cod_ciudad int,in Telefono varchar(20)
)
begin
insert into cliente (
Documento,cod_tipo_documento,Nombres,Apellidos,Direccion,
cod_ciudad,Telefono) values(Documento,cod_tipo_documento,Nombres,Apellidos,Direccion,
cod_ciudad,Telefono);
end
DELIMITER $$



DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevaCiudad`(in Codigo_ciudad int,
in Nombre_ciudad varchar(30)
)
begin
insert into ciudad (
Codigo_ciudad,Nombre_ciudad)
 values(Codigo_ciudad,Nombre_ciudad);
end
DELIMITER $$


DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevaDevolucion`(in cod_detallefactura varchar(20),
in cod_detallearticulo int,in Motivo varchar(20),
in Fecha_devolucion varchar (10), in cantidad int
)
begin
insert into devolucion (
cod_detallefactura,cod_detallearticulo,Motivo,Fecha_devolucion
,cantidad)
 values(cod_detallefactura,cod_detallearticulo,Motivo,Fecha_devolucion,
 cantidad
 );
end
DELIMITER $$

DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevoArticulo`(in id_articulo int,
in descripcion varchar (30),in precio_venta int,
in precio_costo int,in stock int
,in cod_tipo_articulo int,in cod_proveedor varchar(20)
,in fecha_ingreso varchar(20)
)
begin
insert into articulo (
id_articulo,descripcion,precio_venta,precio_costo,stock,
cod_tipo_articulo,cod_proveedor,fecha_ingreso) values(id_articulo,descripcion,precio_venta,precio_costo,stock,
cod_tipo_articulo,cod_proveedor,fecha_ingreso);
end
DELIMITER $$

DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevoDetalleFactura`(in cod_factura varchar(20),
in cod_articulo int,in cantidad int,
in total decimal (10,0)
)
begin
insert into detalle_factura (
cod_factura,cod_articulo,cantidad,total
)
 values(cod_factura,cod_articulo,cantidad,total
 );
end
DELIMITER $$

DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevoProveedor`(in No_documento varchar(20),
in cod_tipo_documento int,in Nombre varchar(30),
in Apellido varchar(30),in Nombre_comercial varchar(20)
,in direccion Varchar(20),in cod_ciudad int, in Telefono varchar(15)
)
begin
insert into proveedor (
No_documento,cod_tipo_documento,Nombre,Apellido,Nombre_comercial,
direccion,cod_ciudad,Telefono) values(No_documento,cod_tipo_documento,Nombre,Apellido,Nombre_comercial,
direccion,cod_ciudad,Telefono);
end
DELIMITER $$


DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevoTipoArticulo`(in id_tipoarticulo int,
in descripcion_articulo varchar(30)
)
begin
insert into tipo_articulo (
id_tipoarticulo,descripcion_articulo)
 values(id_tipoarticulo,descripcion_articulo);
end
DELIMITER $$

DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `NuevoTipoDeDocumento`(in id_tipo_documento int,
in Descripcion varchar(30)
)
begin
insert into tipo_de_documento (
id_tipo_documento,Descripcion)
 values(id_tipo_documento,Descripcion);
end
DELIMITER $$


DELIMITER $$
USE `Escuintleco`
CREATE DEFINER=`root`@`localhost` PROCEDURE `TipoArticulo`(in id_tipoarticulo int,
in descripcion_articulo varchar(30)
)
begin
insert into tipo_articulo (
id_tipoarticulo,descripcion_articulo)
 values(id_tipoarticulo,descripcion_articulo);
end
DELIMITER $$