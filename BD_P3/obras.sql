-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2018 a las 14:30:44
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(6) NOT NULL,
  `titulo` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `autor` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` int(11) NOT NULL,
  `imagen` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `fuente_imagen` varchar(160) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` mediumtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `fecha_creación` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `titulo`, `autor`, `fecha`, `imagen`, `fuente_imagen`, `descripcion`, `fecha_creación`) VALUES
(1, '24 Cabezas', 'Antonio Saura', 1957, 'img/sauracabezas1.jpg', 'Guggenheim Bilbao', 'Las obras en papel constituyen una parte importante del trabajo de Saura. Fue pertinaz dibujante durante toda su carrera y empleaba el dibujo para explorar todas las variaciones y transformaciones de sus múltiples temas. 24 Cabezas (1957) pertenece al tema \"Multitudes\", en la que trabajó el artista desde finales de la década de 1950 hasta los últimos años de su vida. En estas obras, los rostros sin cuerpo entrelazados ocupan la mayor parte o toda la superficie del lienzo o el papel, creando una composición amplia e integral. 24 Cabezas destaca por ser una colección más flexible de figuras garabateadas. Las cabezas de tono terroso, definidas por estallidos estenográficos, sin ilusión alguna de profundidad, se articulan por líneas de luz blanca o sombra. Esta obra también presenta un elemento de collage, ya que las piezas de cartón ondulado están pegadas con cola al papel, lo que aporta calidad táctil a algunos de los rostros.', '2018-04-13'),
(2, 'Villa Borghese', 'Willem de Kooning', 1960, 'img/De-Kooning.jpg', 'Guggenheim Bilbao', 'Villa Borghese, una de las escasas obras de gran formato realizadas por De Kooning en 1960, no se basa en el encuentro del artista con Nueva York y sus alrededores, sino en el encuentro con Roma, donde pasó unos cinco meses en 1959–60. No solo se alude al lugar en el título de la pintura, que hace referencia a un gran y conocido parque público de la capital italiana, sino también en sus coloridas tonalidades mediterráneas. Las amplias zonas de color, pintadas en capas húmedas superpuestas, sugieren correspondencias naturalistas: la luz amarilla del sol, el cielo y el agua azules y la hierba y las hojas verdes. Sin embargo, esta obra, que De Kooning realizó a su vuelta a Nueva York, no representa ningún lugar concreto, es más bien una traducción subjetiva al lenguaje pictórico de sus recuerdos de la Ciudad Eterna.', '2018-04-13'),
(3, 'La Gran antropometria azul', 'Yves Klein', 1960, 'img/Antropometriaazul.jpg', 'Fuente: Guggenheim Bilbao', 'La gran Antropometría azul (ANT 105) [La grande Anthropométrie bleue (ANT 105), ca. 1960] forma parte de una serie de cuatro obras que representan la apoteosis de la técnica del \"pincel vivo\" de Klein. El artista se refería a estas obras como sus Batallas (Batailles), término que evoca el género de la pintura de historia dentro de la historia del arte, una conexión que también sugieren las grandes dimensiones de las obras. Como ha observado Nan Rosenthal, las Antropometrías de Klein son simbólicas y representativas, en cuanto a que \"parecen ilustrar a un sujeto y sus huellas literales\". No obstante, algunos de estos trazos resultantes son más abstractos que otros. En La gran Antropometría azul (ANT 105), las formas corpóreas de las figuras son ilegibles y sus movimientos por el papel quedan plasmados más como estallidos explosivos, salpicaduras y manchas de pintura, como si el artista quisiera burlarse del Arte Informal europeo o de la pintura del Expresionismo Abstracto americano.', '2018-04-13'),
(4, 'Caja metafísica por conjunción de dos triedro.', 'Jorge Oteiza', 1958, 'img/Oteiza-Homenaje-a-Leonardo.jpg', 'Guggenheim Bilbao', 'Es una obra que aprovecha un estudio del movimiento desde un punto de vista estructural para, al mismo tiempo figurativamente, hacer referencias a las fases de la luna. Se halla muy próxima a una pieza fundamental de Oteiza, Homenaje a Malevich. En estas piezas debido a la utilización combinada de la técnica de la soldadura y de la forja, la escultura parece convertirse en causa y efecto espacial: el espacio se define en sus concavidades, pero a la vez, al presionar éste sobre las formas parece ser el causante último de las mismas.', '2018-04-13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unico nombre` (`titulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
