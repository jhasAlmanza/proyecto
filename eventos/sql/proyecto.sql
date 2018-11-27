-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.36-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para proyectob
CREATE DATABASE IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `proyecto`;

-- Volcando estructura para tabla proyectob.artistas
CREATE TABLE IF NOT EXISTS `artistas` (
  `id_artista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `informacion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `video` varchar(50) COLLATE utf8_spanish_ci DEFAULT 'https://www.youtube.com/embed/',
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.artistas: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` (`id_artista`, `nombre`, `genero`, `informacion`, `imagen`, `video`) VALUES
	(1, 'Bastille', 'Pop indie', 'Bastille hacen canciones de Pop indie, electrónico de sonido grande y envolvente. La cara del proyecto, formado en 2010, es Dan Smith que compone y produce todo el material desde su estudio en el Sur de Londres. Como apoyo, y especialmente para los directos, cuenta con 3 músicos que forman la banda.', 'bastille.jpg', 'https://www.youtube.com/embed/X1VzzNbfPaM '),
	(2, 'Hozier', 'Blues, Indie ', 'El autor de grandes éxitos como Take Me to Church, número dos en el listado de sencillos de Irlanda y nominada como canción del año, vuelve a la capital para presentar su nuevo álbum Nina Cried Power.\r\n\r\nHozier ha declarado que la canción titular del disco es un agradecimiento a las personas que lucharon y apoyaron el movimiento por los derechos civiles de Martin Luther King. La letra evoca a cantantes como Nina Simone, John Lennon o Marvin Gaye entre otros. El resultado son cuatro canciones con tintes de soul y protesta.', 'hozier.jpg', 'https://www.youtube.com/embed/OSye8OO5TkM'),
	(3, 'Kodaline', 'Indie pop', 'Para este cuarteto de Dublín, la música no es solo música, también es terapia; y la música debe tener un propósito, en su caso: la honestidad, palabras de Steve Garrigan, el cantante de banda.\r\n\r\nKodaline, antes 21 Demands, están emparentados con bandas de pop-rock melódico británicas (Oasis y Coldplay) e irlandesas (U2), en cuanto a influencias se refiere.', 'kodaline.jpg', 'https://www.youtube.com/embed/m6TXPNybrmk'),
	(4, '5 Seconds of Summer', 'Pop rock', '5 Seconds of Summer (también conocidos como 5SOS por sus siglas) es una banda originaria de Sidney, Australia, de géneros pop y rock. La banda está conformada por Luke Hemmings (voz y guitarra), Calum Hood (voz y bajo), Ashton Irwin (batería y voz) y Michael Clifford (guitarra y voz).', '5seconds_of_summer.jpg', 'https://www.youtube.com/embed/Jqs5EaAaueA'),
	(5, 'Tom Odell', 'Indie pop', ' Tom Odell es un cantante y compositor británico que comenzó su andadura en el panorama musical al lanzar su primer EP Song From Another con el que ganó un Brit Award 2013 en la categoría Critics1 Choice, convirtiéndose en el primer artista masculino en conseguirlo. Tras las buenas críticas recibidas por su primer disco, fue descubierto por el sello ITNO con el que publicó su primer álbum de estudio Long Way Down (2013), trabajo con el que vendió más de un millón de copias.', 'tom_odell.jpg', 'https://www.youtube.com/embed/MwpMEbgC7DA'),
	(6, 'Zedd', 'EDM', '\r\nAnton Zaslavski, más conocido por su nombre artístico Zedd, es un músico, productor musical y DJ, nacido el 2 de septiembre de 1989 en Saratov, Russia. Se mudo a Kaiserslautern, Alemania, a los tres años de edad donde desarrollo su carrera, creció y se dio a conocer. Posee doble nacionalidad, alemana y rusa.', 'zedd.jpg', 'https://www.youtube.com/embed/KfXvjxbRhZk'),
	(7, 'Alex Ubago', 'Pop', 'Álex Ubago es un cantautor español de música pop, quien se dio a conocer en 2001 con la publicación de su álbum debut ¿Qué pides tú? del cual se desprende el tema «Sin miedo a nada» a dueto con Amaia Montero.', 'alex_ubago.jpg', 'https://www.youtube.com/embed/yg2y-I9-ByE'),
	(8, 'Snow Patrol', 'Rock alternativo', 'Desde que publicaran su último disco, ‘Wildness’, el éxito de Snow Patrol se ha multiplicado. El grupo de indie rock está de gira por Europa y en España hay dos fechas en la lista programadas para 2019.  Aún queda mucho tiempo para que llegue el momento de verlos sobre el escenario, pero mientras que llega te damos todos los detalles de su nueva gira.', 'snow_patrol.jpg', 'https://www.youtube.com/embed/D52qnC7dJcQ'),
	(9, 'Jess Glynne', 'Pop, R&B', 'Glynne es la segunda artista femenina británica que logró colocar cinco sencillos en el número uno de la lista de éxitos de Reino Unido tras Cheryl Cole, y sus cifras de ventas son millonarias, calculándose que habría vendido la friolera de tres millones de copias de sus álbumes y de sus sencillos. Hoy por hoy, y descartando a la consagrada Adele, Jess es una de las artistas con mayor proyección internacional gracias a su prodigiosa voz de contralto, que ha llegado a ser comparada con la de la neoyorquina Taylor Dayne.', 'jess_glynne.jpg', 'https://www.youtube.com/embed/iQp1_GfDhwQ'),
	(10, 'Eros Ramazzotti', 'Pop', 'Eros Ramazzotti es un cantante italiano de pop, pop latino y balada romántica reconocido por su particular voz nasal. Conocido a nivel mundial, el artista ha logrado vender más de 65 millones de discos alrededor del mundo.\r\nSe ha ganado el título de ser uno de los artistas italianos más internacionales. Ha colaborado y cantando con artistas como Biagio Antonaccio, Tina Turner o Ricardo Arjona. Muy querido en España, Eros Ramazzotti ha ganado premios como el Premio Ondas Especial de la Música.', 'eros_ramazzotti.jpg', 'https://www.youtube.com/embed/UojBaKX5Vz4'),
	(11, 'Florence and the Machine', 'Indie', 'Florence and the Machine (estilizado como Florence + The Machine) es el nombre artístico de la cantante inglesa Florence Welch y su grupo de música, el cual la acompaña. El sonido de Florence and the Machine ha sido descrito como una combinación de varios géneros, incluidos el rock y el soul. Su música ha recibido varios elogios en los medios de comunicación antes de que ganaran éxito comercial, especialmente por parte de la BBC la cual jugó un papel importante en el crecimiento artístico de Florence and the Machine, promocionando la banda en el programa BBC Introducing.', 'florence_and_the_machine.jpg', 'https://www.youtube.com/embed/5GHXEGz3PJg'),
	(12, 'Metallica', 'Heavy metal', 'Una de las formaciones más legendarias de la historia de la música y del heavy metal regresa de nuevo a los escenarios europeos con su nueva gira WorldWired Tour donde promocionan su décimo trabajo. Hardwired...To Self-Destruct, nace después de un vacío discográfico y lo hace, además, como número 1 en todo el mundo después de casi un millón de ventas en su primera semana en el mercado.', 'metallica.jpg', 'https://www.youtube.com/embed/tAGnKpE4NCI'),
	(13, 'Roberto Carlos', 'Soul', 'La música brasileña siempre ha gozado de fama internacional, pero no siempre es fácil ver en concierto a los artistas que son todo un referente en el género como es el caso de Roberto Carlos. Ahora, el que es uno de los artistas brasileños más importantes de la actualidad llega a Europa con su tour Latina 2018 y España está incluida en la lista.', 'RobertoCarlos.jpg', 'https://www.youtube.com/embed/iz4VrsG-HxA'),
	(14, 'Ed Sheeran', 'Pop', 'El británico Ed Sheeran, que vendió millones de discos y álbumes en 2017, publicó su tercer trabajo discográfico en marzo del año pasado bajo el nombre "Divide", lo que le ha permitido seguir multiplicando sus éxitos y alimentando su cosecha de fans a lo largo y ancho del globo.', 'ed_sheeran.jpg', 'https://www.youtube.com/embed/iWZmdoY1aTE'),
	(15, 'Alvaro Soler', 'Pop', ' Con tan solo un disco en el mercado, Álvaro Soler se ha convertido rápidamente en un fenómeno musical en España y fuera de nuestras fronteras. A sus 24 años, ya es autor de dos grandes éxitos: ‘El Mismo Sol’ y ‘Sofía’.', 'alvaro_soler.jpg', 'https://www.youtube.com/embed/qaZ0oAh4evU'),
	(16, 'Pablo Alborán', 'Pop latino', 'El regreso de Pablo Alborán a los escenarios es ya una feliz realidad y se llama ‘Tour Prometo 2018’. La nueva gira del malagueño, cuya dimensión como artista global es ya un hecho incontestable, era una de los más esperadas del panorama musical actual.  ', 'PabloAlboran.jpg', 'https://www.youtube.com/embed/Bz2F-VXB7DA'),
	(17, 'Pablo López', 'Pop', 'El artista que se diera a conocer hace varios años con su participación en la sexta edición del conocido concurso Operación Triunfo, Pablo López, regresa a los escenarios para darnos a conocer de cerca su último trabajo musical: "Camino, fuego y libertad". ', 'PabloLopez.jpg', 'https://www.youtube.com/embed/7aQaYt-1e2A'),
	(18, 'Melendi', 'Rumba flamenca', 'Melendi es una de las figuras más importantes del panorama musical de los últimos años y uno de los artistas más queridos y admirados por el público. Habitual en los primeros puestos de todas las listas y plataformas digitales y con multitud de hits conocidos por todos, Melendi destaca por su extraordinaria capacidad de conexión con el público, algo patente en sus siempre multitudinarios y espectaculares conciertos. ', 'melendi.jpg', 'https://www.youtube.com/embed/yda62tNSLsQ'),
	(19, 'Twenty One Pilots ', 'Hiip hop, Pop rock', 'Twenty One Pilots, el aclamado dúo formado por Tyler Joseph y Josh Dun, visitará por primera vez nuestro país (el 15 de marzo en Bilbao y el 16 de marzo en Madrid) para presentar su próximo álbum TRENCH con “The Bandito Tour”, una enorme gira mundial que trae a nuestro país a Twenty One Pilots por primera vez. ', 'twentyOnePilots.jpg', 'https://www.youtube.com/embed/pXRviuL6vMY'),
	(20, 'Shawn Mendes', 'Pop', 'Shawn Mendes es un músico y cantante canadiense que empezó a cosechar popularidad al publicar sus interpretaciones de versiones de canciones en la aplicación Vine. En 2015 Shawn Mendes publicó su primer álbum Handwritten, que entró en la lista Billboard en los primeros puestos al igual que su tema Stitches que se convirtió en número 1 en Estados Unidos, Canadá y Reino Unido. ', 'shawnMendes.jpg', 'https://www.youtube.com/embed/36tggrpRoTI'),
	(22, 'Niña Pastori', 'Flamenco', 'Información\r\nNiña Pastori es el sobrenombre que utiliza en su carrera artística la gaditana María Rosa García. Nacida en San Fernando el 15 de enero de 1978, se dedica desde su juventud a la creación e interpretación de letras de estilo flamenco.  ', 'pastori.jpg', 'https://www.youtube.com/embed/emkqFI2jcUw'),
	(23, 'BTS', 'Kpop', 'Ya es oficial. La moda del K-Pop ha llegado a Europa para quedarse. Buena prueba de ello es la gira que Bangtan Boys (BTS) ha anunciado para finales de año. Después de pasar por Corea y Estados Unidos BTS dará una serie de conciertos en el viejo continente.', 'bts.jpg', 'https://www.youtube.com/embed/pBuZEGYXA6E');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.cesta
CREATE TABLE IF NOT EXISTS `cesta` (
  `id_cesta` int(11) NOT NULL AUTO_INCREMENT,
  `artista` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `lugar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_cesta`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.cesta: 0 rows
/*!40000 ALTER TABLE `cesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cesta` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.entradas
CREATE TABLE IF NOT EXISTS `entradas` (
  `id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `precio` double NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  PRIMARY KEY (`id_entrada`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.entradas: 41 rows
/*!40000 ALTER TABLE `entradas` DISABLE KEYS */;
INSERT INTO `entradas` (`id_entrada`, `precio`, `tipo`, `detalles`, `cantidad`, `id_evento`) VALUES
	(1, 89, 'Vip', '<strong>Información sobre los gastos de gestión</strong><div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div>', 50, 1),
	(2, 61, 'Entrada General Pista', '<strong>Información sobre los gastos de gestión</strong><div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div>', 30, 2),
	(3, 73, 'Normal', '<strong>Información sobre los gastos de gestión</strong><div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div>', 40, 3),
	(4, 95, 'Vip', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 20, 6),
	(5, 50, 'Normal', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 20, 4),
	(6, 80.5, 'Vip', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 45, 5),
	(7, 45.5, 'General Grada', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 35, 7),
	(8, 110, 'Vip', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div> ', 25, 8),
	(9, 55.9, 'Normal', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 80, 9),
	(10, 120.5, 'Vip', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 70, 12),
	(11, 25, 'Movilidad Reducidad', '<strong>Información sobre los gastos de gestión</strong> <div> El precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 20, 11),
	(12, 34, 'Acompañante Movilidad Reducida', '<strong>Información sobre los gastos de gestión</strong> <div> El precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 25, 10),
	(13, 53, 'General Pista', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 20, 13),
	(14, 26, 'General Grada', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 18, 14),
	(15, 38, ' General Grada', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 35, 15),
	(16, 67, 'General Pista', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 18, 16),
	(17, 30, 'Movilidad Reducida', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 12, 17),
	(18, 30, 'Acompañante Movilidad Reducida', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 12, 18),
	(19, 22, 'Normal', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 20, 19),
	(20, 52, 'Vip', '<strong>Información sobre los gastos de gestión</strong>\r\n<div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito). </div>', 12, 20),
	(21, 42, 'General Pista', '<strong>Información sobre los gastos de gestión</strong><div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div>', 25, 21),
	(22, 66, 'General Gradas', '<strong>Información sobre los gastos de gestión</strong><div>\r\nEl precio incluye los gastos de gestión.En los siguientes pasos pueden añadirse gastos por el método de recogida seleccionado (eTicket es gratuito).</div>', 26, 22),
	(23, 45, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 60, 23),
	(24, 70, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 70, 24),
	(25, 120, 'VIP', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 24),
	(26, 80, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 90, 25),
	(27, 80, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 26),
	(28, 70, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 45, 27),
	(29, 55, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 30, 28),
	(30, 40, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 29),
	(31, 85, 'VIP', '<strong>Información sobre los gastos de gestión</strong><div>', 70, 30),
	(32, 65, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 31),
	(33, 65, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 32),
	(34, 65, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 33),
	(35, 80, 'VIP', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 34),
	(36, 60, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 34),
	(37, 60, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 35),
	(38, 60, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 50, 36),
	(39, 70, 'VIP', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 37),
	(40, 55, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 38),
	(41, 60, 'NORMAL', '<strong>Información sobre los gastos de gestión</strong><div>', 40, 39);
/*!40000 ALTER TABLE `entradas` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `lugar` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `disponibilidad` int(50) NOT NULL,
  `id_artista` int(20) NOT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.eventos: 39 rows
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` (`id_evento`, `fecha`, `hora`, `lugar`, `ciudad`, `disponibilidad`, `id_artista`) VALUES
	(1, '2018-10-16', '19:00:00', 'Palacio Vistalegre', 'Madrid', 1, 1),
	(14, '2018-12-13', '23:00:00', 'Bilbao Arena Miribilla ', 'Bilbao', 0, 1),
	(15, '2018-12-02', '20:30:00', 'Navarra Arena', 'Pamplona', 1, 1),
	(2, '2018-10-26', '20:30:00', 'Palau Sant Jordi ', 'Barcelona', 1, 2),
	(16, '2018-11-23', '19:00:00', 'Plaza de Toros Los Califas', 'Córdoba', 1, 2),
	(17, '2018-11-30', '21:00:00', 'IFEVI ', 'Vigo', 1, 2),
	(3, '2018-10-20', '22:00:00', 'Estadio Wanda Metropolitano ', 'Madrid', 1, 3),
	(13, '2018-12-06', '18:00:00', 'Pabellón Príncipe Felipe ', 'Zaragoza', 0, 3),
	(19, '2018-11-29', '21:15:00', 'Estadi Olímpic Lluis Companys	', 'Barcelona', 1, 3),
	(4, '2018-10-27', '18:15:00', 'Estadi Olímpic Lluis Companys', 'Barcelona', 1, 4),
	(20, '2018-11-17', '17:00:00', 'Plaza de Toros de Valencia', 'Valencia', 0, 4),
	(5, '2018-11-09', '19:30:00', 'WiZink Center ', 'Madrid', 1, 5),
	(6, '2018-11-17', '18:00:00', 'Wizink Center Ring', 'Madrid', 1, 6),
	(21, '2018-11-15', '20:00:00', 'Pabellón Feria de Valladolid', 'Valladolid', 1, 6),
	(7, '2018-11-23', '22:00:00', 'Sant Jordi Club ', 'Barcelona', 1, 7),
	(22, '2018-11-29', '22:00:00', 'Recinto Ferial La Fica', 'Murcia', 1, 7),
	(8, '2018-11-24', '19:15:00', 'Sala Razzmatazz ', 'Barcelona', 1, 8),
	(9, '2018-11-03', '18:30:00', 'Bizkaia Arena Bec', 'Barakaldo', 1, 9),
	(10, '2018-11-30', '22:00:00', 'Palacio de Dep. Martín Carpena', 'Málaga', 0, 10),
	(11, '2018-11-29', '18:00:00', 'Plaza de Toros de Valencia', 'Valencia', 1, 11),
	(12, '2018-12-01', '21:30:00', 'Coliseum ', 'A Coruña', 0, 12),
	(18, '2018-11-16', '19:30:00', 'WiZink Center ', 'Madrid', 1, 13),
	(25, '2019-01-07', '21:00:00', 'Estadi Olímpic Lluis Companys', 'Barcelona', 1, 14),
	(26, '2019-01-11', '21:00:00', 'Estadio Wanda Metropolitano', 'Madrid', 0, 14),
	(28, '2019-04-24', '21:00:00', 'Sant Jordi Club', 'Barcelona', 1, 15),
	(29, '2019-04-26', '19:00:00', 'WiZink Center', 'Madrid', 1, 15),
	(31, '2018-12-21', '21:30:00', 'Palau Sant Jordi', 'Barcelona', 0, 16),
	(32, '2019-04-27', '21:30:00', 'IFEVI', 'Vigo', 1, 16),
	(33, '2019-05-11', '21:30:00', 'Plaza de Toros Los Califas', 'Córdoba', 1, 16),
	(34, '2019-05-20', '21:00:00', 'Auditorio Marina Sur', 'Valencia', 1, 16),
	(35, '2019-05-22', '21:30:00', 'WiZink Center', 'Madrid', 0, 16),
	(36, '2019-01-15', '21:30:00', 'Palau Sant Jordi', 'Barcelona', 0, 17),
	(37, '2018-12-28', '22:00:00', 'Palacion de los Deportes', 'Logroño', 1, 17),
	(38, '2018-12-20', '21:00:00', 'Palau Sant Jordi', 'Barcelona', 1, 18),
	(39, '2018-12-28', '21:00:00', 'WiZink Center', 'Madrid', 0, 18),
	(24, '2019-03-16', '21:00:00', 'WiZink Center', 'Madrid', 0, 19),
	(27, '2019-03-15', '21:00:00', 'Bizcaia Arena Bec!', 'Barakaldo', 1, 19),
	(30, '2019-03-26', '21:00:00', 'Shawn Mendes', 'Barcelona', 1, 20),
	(23, '2019-01-22', '22:30:00', 'Campo de Fútbol de Talavera La Real', 'Badajoz', 1, 22);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.mapa
CREATE TABLE IF NOT EXISTS `mapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `infowindow` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.mapa: 4 rows
/*!40000 ALTER TABLE `mapa` DISABLE KEYS */;
INSERT INTO `mapa` (`id`, `pos_x`, `pos_y`, `infowindow`) VALUES
	(1, -3.737931, 40.363646, 'C.C Islazul (Madrid)'),
	(2, -3.743234, 40.389788, 'Empresa Drados (Madrid)'),
	(3, 2.198583, 41.3903, 'C. C. El Centre de La Vila (Barcelona)'),
	(4, -0.372051, 39.469531, 'El Corte Ingles (Valencia)');
/*!40000 ALTER TABLE `mapa` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.mensajes
CREATE TABLE IF NOT EXISTS `mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `asunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish_ci NOT NULL,
  `hora` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.mensajes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.noticias
CREATE TABLE IF NOT EXISTS `noticias` (
  `id_noticias` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `autor` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `artista` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `detalles` varchar(2000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `video` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_noticias`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.noticias: 8 rows
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` (`id_noticias`, `titulo`, `autor`, `artista`, `detalles`, `fecha`, `imagen`, `video`) VALUES
	(1, 'Bon Jovi desvela fechas para su gira europea', 'Omar', 'Bon Jovi', '<p class="card-text">El éxito del último álbum This House Is Not For Sale, que debutó y fue s de todo el mundo, fue la culminación de un período tempestuoso en la historia de 3 décadas de la banda.Una declaración desafiante, lanzada en una serie de shows íntimos en 2016, el álbum se convirtió en el punto de partida para una nueva era para Jon Bon Jovi y su banda.</p>\r\n<p class="card-text">Este será su primer espectáculo en España desde 2013 cuando la banda tocó en el Estadio Vicente Calderón. En esta ocasión el Wanda Metropolitano acogerá un concierto legendario el próximo 7 de julio. ¡No te lo pierdas!</p>', '2018-10-15', 'bonjovi.jpg', ''),
	(2, 'Metallica anuncia fechas en Madrid y Barcelona', 'Roy', 'Metallica', '<p class="card-text">Una de las giras más grandes que Live Nation tenía preparada para el próximo año ya tiene fechas. Metallica volverá con su Worldwired Tour 2019 en Reino Unido y Europa. En esta gira estarán en estadios y espacios abiertos en los que han incluido dos fechas en nuestro país:  3 de mayo en Madrid (Valdebebas-IFEMA) y 5 de mayo en Barcelona (Estadi Olímpic Lluis Companys).</p>\r\n<p class="card-text">Este será su primer espectáculo en España desde 2013 cuando la banda tocó en el Estadio Vicente Calderón. En esta ocasión el Wanda Metropolitano acogerá un concierto legendario el próximo 7 de julio. ¡No te lo pierdas!</p>', '2018-10-25', 'metallica_poster.jpg', ''),
	(3, 'Ed Sheeran vuelve a Madrid y Barcelona', 'Deivy', 'Ed Sheeran', '<p class="card-text">La mega estrella mundial Ed Sheeran ha anunciado hoy nuevos conciertos además de fechas en festivales, como continuación de su primerísima gira de estadios en Sudáfrica en marzo, ya anunciada.La próxima semana volverán a salir a la venta entradas para el regreso del cantante Ed Sheeran en nuestro país.</p>\r\n<p class="card-text">Actualmente en el tramo norteamericano de su gira mundial de estadios “Divide”, Ed no es sólo uno de los artistas más exitosos de todos los tiempos, sino también uno de los más demandados en directo. En su gira de verano en el Reino Unido, Ed ha actuado frente a más de 1,1 millón de personas, incluyendo cuatro noches en el Wembley Stadium en Londres, lo que la convierte en la gira en solitario (sin banda) más grande de la historia en el Reino Unido.</p>\r\n\r\n              Recuerda las fechas en nuestro país:</p>\r\n              <p>7 de junio en Barcelona – Estadi Olímpic de Lluís Companys</p>\r\n              <p>11 de junio en Madrid – Wanda Metropolitano</p>', '2018-11-01', 'edsheeran_poster.jpg', ''),
	(4, '¡Nuevas giras internacionales llegan a nuestro país!', 'Sebastian', 'Nuevas giras', ' <p class="card-text">Este verano muchos artistas internacionales han hecho parada en los festivales más punteros de nuestro país. Con la llegada de las giras de invierno y los circuitos en las salas, algunas bandas y grandes revelaciones musicales llegarán por primera vez a nuestras ciudades en un formato más cercano y espectacular. ¿Quieres saber que artistas estarán en los próximos meses en nuestro país? ¡Sigue leyendo!</p>', '2018-11-03', 'img-ed.jpg', ''),
	(5, '', '', 'Jess Glynne', '<p class="card-text">Siendo una de las artistas con más número 1 en la historia del Reino Unido, Jess Glynne presentará su próximo trabajo Always in Between en marzo en Madrid y Barcelona. El Disco saldrá el próximo 12 de octubre pero ya podemos disfrutar de singles como este:</p>', '2018-11-03', '', 'https://www.youtube.com/embed/Lq6q3YJqLaQ '),
	(6, '', '', 'The Vaccines', '<p class="card-text">La efervescencia y energía de la banda británica The Vaccines continúa con su fórmula inmediata y anuncia fechas para presentar su cuarto disco de estudio “Combat Sports”. Estarán en noviembre y diciembre en A Coruña, Oviedo, Madrid y Barcelona a un ritmo frenético como este:</p>', '2018-11-03', '', 'https://www.youtube.com/embed/JHJt6dBBtlQ'),
	(7, '', '', 'Hozier', '<p class="card-text">Casi tres años después de su última visita a Madrid, Hozier vuelve a la capital en el que será su único concierto en España. El 12 de noviembre nos presentará en La Riviera su flamante EP ‘Nina Cried Power’ y repasará los éxitos de su primer y sobresaliente álbum, disco de platino en 20 países.</p>', '2018-11-03', '', 'https://www.youtube.com/embed/j2YgDua2gpk'),
	(8, '', '', 'Architects', '<p class="card-text">El metalcore de Architects estará de nuevo en nuestro país con la llegada de su tercer álbum Disease, que verá a la luz este 28 de septiembre. Tras sus últimas fechas hace más de cinco años en nuestro país, los británicos estarán en enero en Bilbao y Barcelona junto a las bandas Beartooth y Polaris.</p>', '2018-11-03', '', 'https://www.youtube.com/embed/WqRYBWyvbRo');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.suscribirse
CREATE TABLE IF NOT EXISTS `suscribirse` (
  `id_suscriptor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_suscriptor`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.suscribirse: 1 rows
/*!40000 ALTER TABLE `suscribirse` DISABLE KEYS */;
INSERT INTO `suscribirse` (`id_suscriptor`, `nombre`, `correo`) VALUES
	(1, 'deivy', 'deivy@hotmail.com');
/*!40000 ALTER TABLE `suscribirse` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.tienda
CREATE TABLE IF NOT EXISTS `tienda` (
  `id_tienda` int(11) NOT NULL AUTO_INCREMENT,
  `Comunidad_Autonoma` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `poblacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_tienda`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.tienda: 21 rows
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` (`id_tienda`, `Comunidad_Autonoma`, `poblacion`, `ubicacion`) VALUES
	(1, 'Comunidad de Madrid', 'Alcalá de Henares', 'Carrefour Alcalá de Henares\r\nCalle Federico García Lorca s/n\r\n28805\r\nAlcalá de Henares\r\nComunidad de Madrid'),
	(2, 'Comunidad de Madrid', 'Alcobendas', 'Carrefour Alcobendas\r\nA1 Carretera de Madrid a Burgos\r\n28108\r\nAlcobendas\r\nComunidad de Madrid'),
	(3, 'Comunidad de Madrid', 'Alcorcón', 'Carrefour Viajes - Alcorcón 1 - F2593\r\nCalle Jabonería 47\r\n28921\r\nAlcorcón\r\nComunidad de Madrid'),
	(4, 'Comunidad de Madrid', 'Aranjuez', 'Halcón Viajes Aranjuez - 069\r\nCalle de Postas 34\r\n28300\r\nAranjuez\r\nComunidad de Madrid'),
	(5, 'Comunidad de Madrid', 'Ciempozuelos', 'Viajes Ecuador Ciempozuelos - K91\r\n36 Avenida del Consuelo\r\n28350\r\nCiempozuelos\r\nComunidad de Madrid'),
	(6, 'Comunidad de Madrid', 'Getafe', 'Halcón Viajes Getafe-España - X37\r\n18 Avenida España\r\n28903\r\nGetafe\r\nComunidad de Madrid'),
	(7, 'Comunidad de Madrid', 'Madrid', 'Carrefour Aluche\r\n58 Avenida de los Poblados\r\n28044\r\nMadrid\r\nComunidad de Madrid'),
	(8, 'Comunidad de Madrid', 'Leganés', 'FNAC Parquesur\r\nAvenida Gran Bretaña s/n - CC Parquesur\r\n28916\r\nLeganés\r\nComunidad de Madrid'),
	(9, 'Catalunya', 'Amposta', 'Viajes Ecuador Amposta - C83\r\nCarrer Elisabets 10\r\n43870\r\nAmposta\r\nCatalunya'),
	(10, 'Catalunya', 'Barcelona', 'Carrefour Les Glories\r\nCarrer de la Llacuna 155\r\n08018\r\nBarcelona\r\nCatalunya'),
	(11, 'Catalunya', 'Barcelona	', 'FNAC Triangle\r\nPlaça de Catalunya 4\r\n08002\r\nBarcelona\r\nCatalunya'),
	(12, 'Catalunya', 'Begues', 'Carrefour Viajes - Begues 1\r\nCarrer Major 57\r\n08859\r\nBegues\r\nCatalunya'),
	(13, 'Catalunya', 'Cabrera de Mar', 'Carrefour Cabrera\r\nCarretera N-II Km 644\r\n08349\r\nCabrera de Mar\r\nCatalunya'),
	(14, 'Catalunya', 'El Prat de Llobregat', 'Halcón Viajes Prat De Llobregat - Q28\r\n215 Avinguda de la Verge de Montserrat\r\n08820\r\nEl Prat de Llobregat\r\nCatalunya'),
	(15, 'Catalunya', 'Girona', 'Halcón Viajes Girona - Ultonia - 619\r\nCarrer Ultònia 15\r\n17002\r\nGirona\r\nCatalunya'),
	(16, 'Comunidad Valenciana', 'Alacant', 'Carrefour Viajes - Alicante 3 - F2463\r\nIsabel La Católica 24\r\n03007\r\nAlacant\r\nComunidad Valenciana'),
	(17, 'Comunidad Valenciana', 'Benidorm', 'Carrefour Viajes - Benidorm 1 - F2156\r\n41 Avenida de Ruzafa\r\n03501\r\nBenidorm\r\nComunidad Valenciana'),
	(18, 'Andalucia', 'Sevilla', 'La Teatral\r\nCalle Velázquez 12\r\n41001\r\nSevilla\r\nAndalucía'),
	(19, 'Andalucia', 'Almería', 'Carrefour Almería\r\n244 Avenida del Mediterráneo\r\n04006\r\nAlmería\r\nAndalucía'),
	(20, 'Euskadi', 'Barakaldo', 'Halcón Viajes Baracaldo - Juan Garay-419\r\nJuan de Garay Kalea 4 entrada Av Libertad\r\n48901\r\nBarakaldo\r\nEuskadi'),
	(21, 'Euskadi', 'Bilbao', 'Viajes Ecuador Bilbao General Conch -D07\r\n6 Calle General Concha\r\n48008\r\nBilbao\r\nEuskadi');
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;

-- Volcando estructura para tabla proyectob.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla proyectob.usuarios: 4 rows
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`Id`, `nombre`, `contrasena`, `apellidos`, `direccion`, `telefono`, `correo`, `tipo_usuario`) VALUES
	(1, 'omar', 'omar', 'solorzano', 'Carabanchel Alto', '657443341', 'omarsc1914@gmail.com', 'administrador'),
	(2, 'sebastian', 'sebastian', 'Solorzano', 'Carabanchel Alto', '657443341', 'sebas@hotmail.com', 'normal'),
	(4, 'roy', 'roy', 'solorzano c', 'madrid', '767886945', 'roy@gmail.com', ''),
	(3, 'sebas', 'sebas', 'cervantes', 'madrid rio', '934531123', 'sebas@hotmail.com', '');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
