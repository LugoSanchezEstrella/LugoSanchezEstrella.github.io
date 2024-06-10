-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 07:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(2, 'TWICE', 'TWICE es un grupo de chicas de K-Pop producido por JYP Entertainment a través del programa de telerrealidad [SIXTEEN].   El grupo está compuesto por 9 miembros: NAYEON, JEONGYEON, MOMO, SANA, JIHYO, MINA, DAHYUN, CHAEYOUNG y TZUYU.   Debutó el 20 de octubre de 2015.'),
(4, 'Kenia OS', 'Kenia Guadalupe Flores Osuna, mejor conocida como Kenia Os y \"La mexa que tiene a to\' el mundo loco\" & \"La OG\" nació en Mazatlán, Sinaloa, México el 15 de julio de 1999.'),
(5, 'Los Ángeles Azules ', 'Family band Los Ángeles Azules are the progenitors of \"Cumbia Sonidera,\" an urban, gritty, working-class expansion of the Cumbia Colombiana style that exploded in Mexico during the 1970s. '),
(6, 'Caifanes', 'Caifanes ha vivido intensa y apasionadamente su camino desde 1986   La evolución y los cambios siempre han sido y seguirán siendo parte de su historia, pero sus constantes permanecen: la música y la entrañable magia que varias generaciones comparten y llevan tatuadas en el corazón'),
(7, 'Marc Anthony', 'Marc Anthony es un cantante, bailarín, actor, compositor, productor y diseñador de moda. Es indiscutiblemente una de las estrellas pop más importantes del mundo y el artista de salsa con mayores ventas de todos los tiempos, considerado el único heredero legítimo del trono del fallecido Héctor Lavoe'),
(8, 'Snoop Dogg', 'Snoop Dogg, una de las figuras más icónicas que surgió de la era del G-funk de principios de los 90, evolucionó más allá de sus inicios en el gangsta rap para convertirse en un adorable elemento de la cultura pop con incursiones en la televisión, el cine, el entrenamiento de fútbol y la lucha libre.'),
(9, 'Metallica', 'Metallica se formó en 1981 por el baterista Lars Ulrich y el guitarrista y vocalista James Hetfield y se ha convertido en una de las bandas de rock más influyentes y comercialmente exitosas de la historia, habiendo vendido 120 millones de álbumes en todo el mundo.'),
(10, 'Ludwig van Beethoven', 'Los acontecimientos de la vida de Beethoven son materia de leyenda romántica, evocando imágenes del creador solitario agitando su puño contra el Destino y finalmente superándolo a través de un esfuerzo supremo de voluntad creativa.\r\n'),
(11, 'Ray Charles', 'Ray Charles fue el músico más responsable del desarrollo de la música soul. A los cantantes les gusta \r\nSam Cooke y Jackie Wilson también hicieron mucho para ser pioneros, pero Charles hizo más para idear una nueva forma de pop negro fusionó el R&B de los años 50 con voces inspiradas en el gospel.'),
(12, 'Gondwana', 'GONDWANA es uno de los grupos más importantes del Reggae en Latinoamérica, con una carrera de 35 años de constante ascenso y crecimiento sin pausas.');

-- --------------------------------------------------------

--
-- Table structure for table `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `activo`, `genero_id`, `duracion`, `fecha`) VALUES
(5, 'Malas Decisiones', 1, 1, '00:02:19', '2022-10-26'),
(6, 'La invitación ', 1, 1, '00:02:29', '2022-10-27'),
(7, 'Good Boy', 1, 1, '00:02:03', '2022-10-27'),
(8, 'Mía mía', 1, 1, '00:02:10', '2022-09-30'),
(9, 'Ojo X Ojo', 1, 1, '00:03:01', '2023-10-23'),
(10, 'Cócteles', 1, 1, '00:02:17', '2020-05-01'),
(11, 'Año Sabático ', 1, 1, '00:02:42', '2022-10-27'),
(12, 'Llévatelo', 1, 1, '00:02:23', '2022-03-24'),
(13, 'La noche', 1, 1, '03:04:00', '2021-09-14'),
(14, 'Soledad', 1, 1, '03:14:00', '2024-03-22'),
(15, 'Cambios ', 1, 1, '02:43:00', '2024-03-22'),
(16, 'Se Fue La Luz', 1, 1, '02:39:00', '2022-03-23'),
(17, 'Azul', 1, 1, '03:13:00', '2021-04-23'),
(18, 'Soy yo', 1, 1, '02:52:00', '2028-06-19'),
(19, 'Voy a llegar', 1, 1, '02:36:00', '2019-03-21'),
(20, 'Peaches N Cream', 1, 2, '04:43:00', '2009-03-15'),
(21, 'So Many Pros', 1, 2, '04:06:00', '2014-04-15'),
(22, 'Promise You This', 1, 2, '02:50:00', '2003-03-17'),
(23, 'Mount Kushmore', 1, 2, '03:48:00', '2007-04-17'),
(24, 'California Roll', 1, 2, '04:12:00', '2005-05-15'),
(25, 'Bad 4 Me', 1, 2, '03:49:00', '2001-11-19'),
(26, 'Back Up', 1, 2, '04:02:00', '2017-06-15'),
(27, 'Kush Ups', 1, 2, '03:43:00', '2007-06-16'),
(28, 'Boom', 1, 2, '03:51:00', '2011-11-14'),
(29, 'Sunset Blvd', 1, 2, '03:21:00', '0009-05-17'),
(30, 'Countdown', 1, 2, '02:41:00', '2009-03-15'),
(31, 'Trash Bags', 1, 2, '04:17:00', '2001-05-17'),
(32, 'Let Bygones Be Bygones', 1, 2, '04:18:00', '2008-08-19'),
(33, 'One Blood, One Cuzz', 1, 2, '03:44:00', '2017-07-19'),
(34, 'Moment I Feared', 1, 2, '03:29:00', '2019-05-17'),
(35, 'Nunca Es Suficiente', 1, 3, '03:53:00', '2010-10-16'),
(36, 'Amigos Nada Más', 1, 3, '03:52:00', '2008-02-18'),
(37, 'Entrega de Amor', 1, 3, '03:49:00', '2010-11-17'),
(38, 'Ay Amor', 1, 3, '04:02:00', '2014-07-14'),
(39, 'La Cumbia del Infinito', 1, 3, '04:10:00', '2023-08-18'),
(40, 'Mis Sentimientos', 1, 3, '03:44:00', '2020-11-14'),
(41, 'Acaríñame', 1, 3, '03:42:00', '2013-08-21'),
(42, 'Me Haces Falta Tú', 1, 3, '04:21:00', '2018-10-19'),
(43, 'Toma Que Toma', 1, 3, '03:32:00', '2023-08-18'),
(44, 'Amor de Amores', 1, 3, '03:39:00', '2009-10-15'),
(45, 'Como Te Voy a Olvidar', 1, 3, '03:34:00', '2028-08-14'),
(46, 'Nunca Es Suficiente', 1, 3, '03:53:00', '2010-10-16'),
(47, 'Amigos Nada Más', 1, 3, '03:52:00', '2008-02-18'),
(48, 'Entrega de Amor', 1, 3, '03:49:00', '2010-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'pop'),
(2, 'Hip hop'),
(3, 'Cumbia'),
(4, 'Rock'),
(5, 'Salsa'),
(6, 'K-pop'),
(7, 'Metal'),
(8, 'Clásica'),
(9, 'Jazz'),
(10, 'Reggae');

-- --------------------------------------------------------

--
-- Table structure for table `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, ' Premium Individual', 129),
(2, ' Premium Duo ', 169),
(3, 'Premium Familiar', 199);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Chelssy Zazueta Díaz', 'chelssyzazueta@gmail.com', 1),
(2, 'Gloria Azucena Garcia Luna', 'garcialuna@gmail.com', 2),
(3, 'Pablo Eduardo López Mendoza', 'eduardomendozaa@gmail.com', 3),
(4, 'Paúl Gerardo Jiménez Quintero ', 'paulgerardo12@gmail.com', 3),
(5, 'Karina Ángulo Escalante ', 'karinaangulo457@gmail.com', 2),
(6, 'Manuel Hernández Martínez', 'manuelitomartinez@gmail.com', 1),
(7, 'María Guadalupe Reyes Moreno', 'mariaareyes8@gmail.com', 3),
(8, 'Juan Carlos Aguilar Zamora', 'zamoraaguilar@gmail.com', 2),
(9, 'Jacqueline Fernández Millán ', 'jacquefernandez@gmail.com', 3),
(10, 'Jared Armando Delgado Treviño', 'armandodelgadoo@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indexes for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Constraints for table `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
