-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2024 a las 17:56:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_bolsas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `cliente_id`, `producto_id`, `cantidad`) VALUES
(15, 20, 23, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `correoElectronico` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `contrasena`, `correoElectronico`) VALUES
(20, 'jes', 'Ortiz', '$2y$10$2HxdSeMi9SjYaz6yrkMW6eicOZJQipqveuYE9r5WvK1qRNs9J.P0O', 'jes@gamil.com'),
(23, 'Arturo', 'Diaz', '$2y$10$Amz5rADSig.MItdRgQDWaOUllsNl734lTSIWGsmrdglBZVRdwXt6q', 'arturi123@gmail.com'),
(27, 'lola', 'Lozano Macedo', '$2y$10$rzQuBctmhXftB7WBdBT6Vu/I6DABfWiW98fgG3fsbnmucDsBQr7be', 'lola@gmail.com'),
(29, 'lola', 'Lozano Macedo', '$2y$10$q5jIV4psXUUB15k.dG71q.heYhQGhMVU//xoTrBspxj9Nl34QbBXy', 'lola124@gmail.com'),
(30, 'lupe', 'cortez', '$2y$10$7cjIwoq4E7.Eo01B.VyTruJtyFY8YdyO3MxeT/.YS9rO6GbI6tV56', 'lupe12@gmail.com'),
(31, 'mayra', 'lozano', '$2y$10$jfglr6WAGinA46R52n9e8uKEspPBUCJG7jJCQoNrEcoOz8BEFXsPm', 'mayra789@gmail.com'),
(32, 'Lupita', 'Perez', '$2y$10$dfjH/PVsp2OP5ZNDHjdJJe2..uc7DNgQjjDVU0EPWK2/pbANV7ptC', 'Lupita123@gmail.com'),
(33, 'Elena', 'Barrera', '$2y$10$8e6own9u1c879C6vz8fHvOW5v0qKcic4ebS3Im4eRFD8parGnVmOi', 'Elena@gmail.com'),
(34, 'Lupita', 'perez', '$2y$10$IX91.3ve4N7hcIv3e/HsK.DWlFBKnUfvAF8XRjjfR.DYJk6Yjeiua', 'Lupitaperez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correoElectronico` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `correoElectronico`, `contrasena`) VALUES
(6, 'Mayra Itzel', 'Mayra@gmail.com', '$2y$10$7.H.JOQLr.VL.4DG/Wg1QuXcgl4lcOILc9icgAYISO/HikpMv8Zw6'),
(7, 'Jessica Garcia', 'Jess18062004@gmail.com', '$2y$10$eDRuVYdcx0kOjJVDNZQhJOyhYrfd45ccdOnGnfi88k1KjQdtFn8jm'),
(9, 'Jose Carmen Ortiz', 'Carmen15052022@gmail.com', '$2y$10$6rmExch4AuI5xfp3NaNX6esFaKZAIWXHDnf6czCqIgSqZp2X1pBz.'),
(10, 'Roico Perez', 'Rocio07102011@gmail.com', '$2y$10$VoQqLhlYl84hd2Uq76ZmEuJkNHVb0SBBAV1cthfcm/w4GenQAGpc6'),
(11, 'Anahi Estefania Reyes ', 'AnaEstefani1@gmail.com', '$2y$10$kSHhGNz7gP7TFXDRfe/NxOwnOXqV8nzeV0cWFeFoMZKCVvHuTnpXG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `cliente_id`, `producto_id`) VALUES
(2, 33, 3),
(3, 33, 4),
(6, 20, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(50) DEFAULT 'En proceso',
  `fecha_recibido` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `nombre`, `direccion`, `total`, `tipo_pago`, `created_at`, `estado`, `fecha_recibido`) VALUES
(3, 20, 'mayra', 'teofani', 90000.00, 'deposito', '2024-10-20 03:46:15', 'Entregado', NULL),
(4, 20, 'mayra', 'teofani', 33500.00, 'oxxo', '2024-10-20 03:52:17', 'Entregado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_productos`
--

CREATE TABLE `pedido_productos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedido_productos`
--

INSERT INTO `pedido_productos` (`id`, `pedido_id`, `producto_id`, `cantidad`, `precio`) VALUES
(5, 3, 4, 3, 30000.00),
(6, 4, 7, 1, 33500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `color`, `descripcion`, `stock`, `imagen`) VALUES
(1, 'Bolsa Negra de Mano Clásica', 55000.00, 'negro', '\"Elegante y funcional, perfecta para cualquier ocasión. Diseño minimalista con amplio interior y cierre seguro.\"', 10, 'img/bolsa1.jpg'),
(3, 'Bolsa de Mano Verde y Rosa Bicolor', 63000.00, 'verde y rosa', '\"Fresca y vibrante, combina tonos verde y rosa. Ideal para añadir un toque de color a tu look diario.\"', 12, 'img/bolsa8.jpg'),
(4, 'Bolsa de Mano Morada Elegante ', 30000.00, 'morada', '\"Estilo único y versátil. Perfecta para el día y la noche con un diseño moderno y espacioso.\"', 9, 'img/bolsa3.jpg'),
(5, 'Bolsa de Mano Café Clásica', 35000.00, 'cafe', ' \"Calidez y estilo en una bolsa práctica y duradera. Ideal para complementar looks casuales o formales.\"', 20, 'img/bolsa5.jpg'),
(6, 'Bolsa de Mano Beige Sofisticada', 45000.00, 'beige', '\"Minimalismo y elegancia en tono beige. Versátil y funcional, perfecta para cualquier ocasión.\"', 58, 'img/bolsa6.jpg'),
(7, 'Bolsa Amarilla Vibrante', 33500.00, 'Amarillo', '\"Brillante y moderna, perfecta para destacar. Su diseño práctico y espacioso añade un toque alegre a cualquier look.\"', 11, 'img/bolsaamarilla.jpg'),
(8, 'Bolsa Blanca Clásica', 46300.00, 'Blanco', '\"Elegante y versátil, ideal para cualquier ocasión. Su diseño limpio y sofisticado complementa cualquier atuendo.\"', 4, 'img/bolsablanca.jpg'),
(9, 'Bolsa Roja Impactante', 29999.99, 'Rojo', '\"Audaz y moderna, perfecta para destacar. Su diseño vibrante y funcional añade un toque de estilo a cualquier look.\"', 14, 'img/bolsaroja.jpg'),
(10, 'Bolsa Azul Claro Delicada', 69999.99, 'Azul claro', '\"Fresca y elegante, ideal para un estilo casual o formal. Su tono suave y diseño práctico la hacen perfecta para cualquier ocasión.\"', 5, 'img/bolsazulclaro.jpg'),
(11, 'Bolsa Turquesa Vibrante', 46000.00, 'Turquesa', '\"Estilo fresco y llamativo, perfecta para darle un toque de color a tu look. Su diseño práctico y versátil es ideal para el día a día.\"', 12, 'img/bolsaturquesa.webp'),
(12, 'Bolsa Azul Incandescente', 27123.00, 'Azul Incandecente', '\"Un tono brillante que no pasa desapercibido. Ideal para quienes buscan estilo y personalidad en un diseño moderno y funcional.\"', 25, 'img/bolsaazulfeo.jpg'),
(13, 'Bolsa Verde Natural', 20500.00, 'Verde', '\"Fresca y versátil, perfecta para un estilo relajado. Su diseño práctico combina elegancia y comodidad para el uso diario.\"', 35, 'img/bolsaverde.jpg'),
(14, 'Bolsa Negra Pequeña y Elegante', 48260.00, 'Negro', '\"Compacta y chic, perfecta para llevar lo esencial con estilo. Su diseño minimalista añade un toque sofisticado a cualquier outfit.\"', 10, 'img/bolsanegrapequeña.jpg'),
(15, 'Bolsa Vino Sofisticada', 36000.00, 'vino', '\"Elegante y con carácter, ideal para ocasiones especiales. Su tono profundo y diseño práctico aportan distinción y estilo.\"', 19, 'img/bolsavino.webp'),
(16, 'Conjunto Bolsa Negra y Monedero Ajedrez', 60000.00, 'Negro y Blanco', '\"Sofisticación y estilo moderno en un conjunto práctico, con bolsa negra y monedero blanco y negro tipo ajedrez.\"', 5, 'img/bolsaymonedero.webp'),
(17, 'Bolso tote pequeño Medusa \'95', 39349.95, 'rojo', 'Elegante y compacto, este bolso tote presenta el icónico detalle Medusa. Perfecto para llevar lo esencial con un toque de lujo y estilo', 5, 'img/rojo.png'),
(18, 'Bolso tote Leopard Medusa \'95 pequeño', 50300.00, 'cafe', 'Audaz y sofisticado, con un llamativo estampado de leopardo y el icónico detalle Medusa. Compacto y estiloso, perfecto para destacar con un toque de lujo.', 10, 'img/bolsa cafee.png'),
(19, 'Bolso tote Leopard Athena mediano', 52000.00, 'Animalier', 'Moderno y elegante, con un vibrante estampado de leopardo. Este bolso mediano combina estilo y funcionalidad, ideal para un look sofisticado con carácter', 6, 'img/Animalier.png'),
(20, 'Bolso tote pequeño La Medusa de lona', 45000.00, 'Negro+Oro', 'Versátil y casual, este bolso tote de lona destaca por su diseño compacto y el icónico emblema de Medusa. Perfecto para llevar lo esencial con estilo relajado y elegante.', 7, 'img/Negro+Oro.png'),
(21, 'Bolso tote pequeño La Medusa de lona', 29500.00, 'Beis', 'Funcional y con estilo, este tote de lona combina elegancia casual con el distintivo emblema de Medusa. Compacto y práctico, perfecto para el uso diario.', 8, 'img/beis.png'),
(22, 'Bolso tote vaquero pequeño La Medusa', 29500.00, 'Azul', 'Con un toque desenfadado, este tote vaquero destaca por su estilo casual y el icónico emblema de Medusa. Compacto y funcional, ideal para un look diario con personalidad', 6, 'img/Azul.png'),
(23, 'Bolso tote Medusa \'95 con efecto cocodrilo', 42500.00, 'Negro+Oro', 'Audaz y lujoso, este tote con efecto cocodrilo y el icónico detalle Medusa aporta un toque de sofisticación. Elegante y espacioso, perfecto para destacar con estilo', 7, 'img/Negro+Oro 2.png'),
(29, 'Bolsa negra', 68745.00, 'Negro', 'Elegante y funcional, ideal para llevar tus esenciales con estilo.', 2, 'img/bolsa2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_destacados`
--

CREATE TABLE `productos_destacados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_destacados`
--

INSERT INTO `productos_destacados` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(3, 'bolsa azul', 'Glamuroso y compacto, ideal para tus noches especiales', 15481.00, 'img/bolsazulclaro.jpg'),
(4, 'Bolsa negra', 'Compacto y vibrante, perfecto para llevar lo esencial con comodidad', 78541.00, 'img/Negro+Oro 2.png'),
(5, 'Bolsa roja', 'Minimalista y moderna, perfecta para usar de día o de noche', 35485.00, 'img/rojo.png'),
(6, 'bolsa verde', 'Espaciosa y práctica, perfecta para el día a día con un toque casual', 12455.00, 'img/bolsaverde.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `direccion_envio` varchar(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correoElectronico`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_destacados`
--
ALTER TABLE `productos_destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `productos_destacados`
--
ALTER TABLE `productos_destacados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `pedido_productos`
--
ALTER TABLE `pedido_productos`
  ADD CONSTRAINT `pedido_productos_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pedido_productos_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
