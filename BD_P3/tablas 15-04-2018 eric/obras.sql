-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 15, 2018 alle 23:07
-- Versione del server: 10.1.30-MariaDB
-- Versione PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practica3`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `obras`
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
-- Dump dei dati per la tabella `obras`
--

INSERT INTO `obras` (`id`, `titulo`, `autor`, `fecha`, `imagen`, `fuente_imagen`, `descripcion`, `fecha_creación`) VALUES
(1, '24 Cabezas', 'Antonio Saura', 1957, 'img/sauracabezas1.jpg', 'Guggenheim Bilbao', 'Las obras en papel constituyen una parte importante del trabajo de Saura. Fue pertinaz dibujante durante toda su carrera y empleaba el dibujo para explorar todas las variaciones y transformaciones de sus múltiples temas. 24 Cabezas (1957) pertenece al tema \"Multitudes\", en la que trabajó el artista desde finales de la década de 1950 hasta los últimos años de su vida. En estas obras, los rostros sin cuerpo entrelazados ocupan la mayor parte o toda la superficie del lienzo o el papel, creando una composición amplia e integral. 24 Cabezas destaca por ser una colección más flexible de figuras garabateadas. Las cabezas de tono terroso, definidas por estallidos estenográficos, sin ilusión alguna de profundidad, se articulan por líneas de luz blanca o sombra. Esta obra también presenta un elemento de collage, ya que las piezas de cartón ondulado están pegadas con cola al papel, lo que aporta calidad táctil a algunos de los rostros.', '2018-04-13'),
(2, 'Villa Borghese', 'Willem de Kooning', 1960, 'img/De-Kooning.jpg', 'Guggenheim Bilbao', 'Villa Borghese, una de las escasas obras de gran formato realizadas por De Kooning en 1960, no se basa en el encuentro del artista con Nueva York y sus alrededores, sino en el encuentro con Roma, donde pasó unos cinco meses en 1959–60. No solo se alude al lugar en el título de la pintura, que hace referencia a un gran y conocido parque público de la capital italiana, sino también en sus coloridas tonalidades mediterráneas. Las amplias zonas de color, pintadas en capas húmedas superpuestas, sugieren correspondencias naturalistas: la luz amarilla del sol, el cielo y el agua azules y la hierba y las hojas verdes. Sin embargo, esta obra, que De Kooning realizó a su vuelta a Nueva York, no representa ningún lugar concreto, es más bien una traducción subjetiva al lenguaje pictórico de sus recuerdos de la Ciudad Eterna.', '2018-04-13'),
(3, 'La Gran antropometria azul', 'Yves Klein', 1960, 'img/Antropometriaazul.jpg', 'Fuente: Guggenheim Bilbao', 'La gran Antropometría azul (ANT 105) [La grande Anthropométrie bleue (ANT 105), ca. 1960] forma parte de una serie de cuatro obras que representan la apoteosis de la técnica del \"pincel vivo\" de Klein. El artista se refería a estas obras como sus Batallas (Batailles), término que evoca el género de la pintura de historia dentro de la historia del arte, una conexión que también sugieren las grandes dimensiones de las obras. Como ha observado Nan Rosenthal, las Antropometrías de Klein son simbólicas y representativas, en cuanto a que \"parecen ilustrar a un sujeto y sus huellas literales\". No obstante, algunos de estos trazos resultantes son más abstractos que otros. En La gran Antropometría azul (ANT 105), las formas corpóreas de las figuras son ilegibles y sus movimientos por el papel quedan plasmados más como estallidos explosivos, salpicaduras y manchas de pintura, como si el artista quisiera burlarse del Arte Informal europeo o de la pintura del Expresionismo Abstracto americano.', '2018-04-13'),
(4, 'Caja metafísica por conjunción de dos triedro.', 'Jorge Oteiza', 1958, 'img/Oteiza-Homenaje-a-Leonardo.jpg', 'Guggenheim Bilbao', 'Es una obra que aprovecha un estudio del movimiento desde un punto de vista estructural para, al mismo tiempo figurativamente, hacer referencias a las fases de la luna. Se halla muy próxima a una pieza fundamental de Oteiza, Homenaje a Malevich. En estas piezas debido a la utilización combinada de la técnica de la soldadura y de la forja, la escultura parece convertirse en causa y efecto espacial: el espacio se define en sus concavidades, pero a la vez, al presionar éste sobre las formas parece ser el causante último de las mismas.', '2018-04-13'),
(5, 'Ensayo de desocupación de la esfera', 'Jorge Oteiza', 1958, 'img/Ensayo.jpg', 'Guggenheim Bilbao', 'La escultura De la serie de la desocupación de la esfera es una construcción dinámica a base de torsiones curvas de formas lineales. Con trabajos como este, Jorge Oteiza obtuvo el premio de escultura en la IV Bienal de Arte de São Paulo de 1957, consiguiendo cierta influencia en el desarrollo del movimiento neoconcreto brasileño. Las investigaciones en el ámbito de la desocupación de la esfera surgieron a partir del trabajo que el escultor realizó sobre maquetas, denominado Laboratorio experimental. En este, Oteiza afrontó la forma cilíndrica por medio de fragmentos metálicos con los que articulaba dos formas curvas con diferente orientación espacial, las cuales, por su naturaleza, evocaban la idea de movimiento y la posibilidad real de adoptar diversas posiciones. La escultura de Oteiza, según sus propias palabras, planteó «la estatua como organismo puramente espacial». Las desocupaciones de la esfera poseen una complejidad unitaria y serena, sugiriendo un movimiento centrífugo que libera un espacio activo o núcleo, noción que en Oteiza siempre tenía una connotación metafísica.', '2018-04-15'),
(6, 'Complot de familia. Segunda versión', 'Txomin Badiola', 1993, 'img/Complot.jpg', 'Guggenheim Bilbao', 'Complot de familia. Segunda versión es una obra esencial en la carrera de Txomin Badiola. En ella, los elementos estrictamente constructivos, tan estrechamente vinculados a sus obras, convergen con su interés por la arquitectura, el diseño, el mobiliario y la escenografía teatral, junto con la incorporación de referencias del cine, la televisión, las fotonovelas, los cómics, etc. Esta segunda versión a la que se alude en la primera parte del título es el desarrollo de una anterior que se presentó por primera vez en una exposición celebrada en Nueva York en 1994.\r\n\r\nLa obra fue incluida en una exposición en 1995 en Madrid. La muestra integraba una serie de ficciones (alegorías múltiples) que se alimentaban de retos extraños para la realidad que Badiola definía como situaciones absurdas o improbables plasmadas por personas reales que \"acaban creando un entorno material y espacial\". A medio camino entre la escenografía teatral y la insinuación cinematográfica, la obra de arte amplía los límites de la escultura, al tiempo que se adentra en el terreno de los medios postmodernos.\r\n\r\nAl unir objetos, construcciones y fotografías de personas aparentemente sin relación alguna entre sí pero que presentan fuertes cualidades evocadoras, el espectador se siente impelido a situarlas en el tiempo y el espacio mediante una acción imaginada y, por consiguiente, acaba completando la obra de arte. Así, es el espectador quien otorga significado a esta instalación al unificar y relacionar los diferentes espacios escenográficos, así como los objetos e imágenes ubicados en ella y en sus inmediaciones, de manera que todo se justifica mutuamente.', '2018-04-15'),
(7, 'Humanos (Humans)', 'Christian Boltanski', 1994, 'img/Humanos.jpg', 'Guggenheim Bilbao', 'La obra Humanos (Humans), al mismo tiempo personal y universal en cuanto a sus referencias, es una de las composiciones de grandes dimensiones que el artista acomete como monumento en honor de los muertos, insinuando una referencia al Holocausto, aunque sin nombrarlo explícitamente. Por sus dimensiones y su tono, la obra evoca el ambiente contemplativo de un pequeño teatro o un espacio de culto religioso. La instalación se compone de más de 1.100 imágenes refotografiadas de otras tantas imágenes que había utilizado anteriormente: fotos de colegio, de familia, imágenes de periódicos y del archivo de la policía. Las fotografías, al mismo tiempo iluminadas y enturbiadas por las bombillas que cuelgan desnudas, no ofrecen ningún contexto con el que se pueda identificar o conectar a los anónimos individuos, o distinguir a los vivos de los muertos, o a las víctimas de los criminales. Cada una de estas huellas de vida humana está reducida a un tamaño uniforme con el fin de dificultar la identificación de sus rasgos y sugerir la igualdad de los sujetos de las fotografías. La colección de imágenes se instala aleatoriamente, impidiéndose con ello la imposición de una narrativa única. Dentro de este entorno inquietante, Boltanski mezcla emoción e historia al yuxtaponer inocencia y culpabilidad, verdad y mentira, sentimentalismo y profundidad.', '2018-04-15'),
(8, 'El diluvio (Le Déluge)', 'Miquel Barceló', 1990, 'img/Diluvio.jpg', 'Guggenheim Bilbao', 'Toda la imagen de El diluvio  está pintada en tonos azules y grises, con blanco para los afluentes más lejanos, insinuando el agua. En primer plano, Barceló pintó las salpicaduras producidas por las gotas de lluvia al golpear una superficie de agua. El avance en diagonal del río y la inclinación de la lluvia aportan potencia dinámica y velocidad a la imagen; así, con medios desechados, el pintor captó la fuerza de una tormenta. El cuadro presenta el mismo efecto líquido que el de la tierra mojada bajo la lluvia. De un modo simbólico, estas imágenes de lluvia ponen fin a los numerosos paisajes desérticos del artista.\r\n\r\nLa lluvia entra por la ventana y cubre todo el cuadro, irónicamente imitando la estructura integral de algunas obras del Expresionismo Abstracto y subvirtiendo la dicotomía tradicional entre la figura y el fondo. Aquí, Barceló también quería reflejar la naturaleza líquida de la pintura y la posibilidad de usarla metafóricamente para captar el tiempo.', '2018-04-15'),
(9, 'Tierra de los dos ríos (Zweistromland)', 'Anselm Kiefer', 1995, 'img/Tierra.jpg', 'Guggenheim Bilbao', 'Tierra de los dos ríos (Zweistromland, 1995) hace referencia a la tierra delimitada por los ríos Tigris y Éufrates, cuna de la antigua Babilonia, hogar de Gilgamesh —cuya leyenda explora Kiefer en Gilgamesh y Enkidu en el bosque de cedros II (Gilgamesch und Enkidu im Zedernwald II, 1981), también perteneciente a la colección del Museo Guggenheim Bilbao—, y una región clave para el judaísmo y el cristianismo. Fue en esa región donde los sumerios inventaron la escritura en el cuarto milenio antes de Cristo. Las pinturas de Kiefer evocan la tierra, sus civilizaciones y la creación de la cultura escrita. El título, inscrito en la esquina superior derecha del lienzo, puede interpretarse como una alusión a la propia palabra escrita, que deja una huella duradera que transciende las civilizaciones y las épocas. Esta obra monumental se vio precedida por una escultura del mismo nombre, en la que varios libros de plomo transmiten la sensación de durabilidad de la palabra escrita y de la historia.', '2018-04-15');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unico nombre` (`titulo`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
