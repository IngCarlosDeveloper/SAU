-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2025 at 12:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sau`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrera`
--

CREATE TABLE `carrera` (
  `ID_Carrera` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carrera`
--

INSERT INTO `carrera` (`ID_Carrera`, `Descripcion`) VALUES
(1, 'Ing.Sistemas'),
(2, 'Ing.Sistemas'),
(3, 'Ing.Sistemas'),
(4, 'Ing.Sistemas'),
(5, 'Ing.Sistemas'),
(6, 'Ing.Sistemas'),
(7, 'Ing.Sistemas'),
(8, 'Ing.Sistemas'),
(9, 'Ing.Sistemas'),
(10, 'Ing.Sistemas'),
(11, 'Ing.Sistemas'),
(12, 'Ing.Sistemas'),
(13, 'Ing.Sistemas'),
(14, 'Ing.Sistemas'),
(15, 'Ing.Sistemas'),
(16, 'Ing.Sistemas'),
(17, 'Ing.Sistemas'),
(18, 'Ing.Sistemas'),
(19, 'Ing.Sistemas'),
(20, 'Ing.Sistemas'),
(21, 'Ing.Sistemas'),
(22, 'Ing.Sistemas'),
(23, 'Ing.Sistemas'),
(24, 'Ing.Sistemas'),
(25, 'Ing.Sistemas'),
(26, 'Ing.Sistemas'),
(27, 'Ing.Sistemas'),
(28, 'Ing.Sistemas'),
(29, 'Ing.Sistemas'),
(30, 'Ing.Sistemas'),
(32, 'Contaduria');

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `ID_Docente` int(11) NOT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `docentes`
--

INSERT INTO `docentes` (`ID_Docente`, `Carrera`, `Cedula`) VALUES
(2, 1, '12345678'),
(3, 1, '12478554'),
(4, 1, '10578945'),
(5, 1, '13247598'),
(6, 1, '16198462'),
(7, 1, '10476564'),
(8, 1, '4154643');

-- --------------------------------------------------------

--
-- Table structure for table `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID_Estudiantes` int(11) NOT NULL,
  `Cedula` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Periodo_Ingreso` varchar(10) NOT NULL,
  `Carrera` int(11) NOT NULL,
  `Turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estudiantes`
--

INSERT INTO `estudiantes` (`ID_Estudiantes`, `Cedula`, `Periodo_Ingreso`, `Carrera`, `Turno`) VALUES
(2, '29631797', '2-2022', 1, 'D'),
(3, '30847985', '2-2022', 1, 'D'),
(4, '30699847', '2-2022', 1, 'D'),
(5, '30416545', '2-2022', 1, 'D'),
(6, '30659875', '2-2022', 1, 'D'),
(7, '31446738', '2-2022', 1, 'D'),
(8, '30546589', '2-2022', 1, 'N'),
(9, '29487354', '2-2022', 1, 'N'),
(10, '30419731', '2-2022', 1, 'N'),
(11, '29484168', '2-2022', 1, 'N'),
(12, '30871487', '2-2022', 1, 'N'),
(13, '29872461', '2-2022', 1, 'D'),
(14, '29871364', '2-2022', 1, 'D'),
(15, '28486418', '2-2022', 1, 'D'),
(16, '29487154', '2-2022', 1, 'N'),
(17, '28474959', '2-2022', 1, 'D'),
(18, '30224587', '2-2022', 1, 'N'),
(19, '31717456', '2-2022', 1, 'D'),
(20, '27487348', '2-2022', 1, 'D'),
(21, '31294175', '2-2022', 1, 'D'),
(22, '30128794', '2-2022', 1, 'D'),
(23, '30668442', '2-2022', 1, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `inscripcion`
--

CREATE TABLE `inscripcion` (
  `ID_Inscripcion` int(11) NOT NULL,
  `ID_Materia` int(11) NOT NULL,
  `ID_Docente` int(11) NOT NULL,
  `ID_Estudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inscripcion`
--

INSERT INTO `inscripcion` (`ID_Inscripcion`, `ID_Materia`, `ID_Docente`, `ID_Estudiante`) VALUES
(1, 1, 2, 2),
(2, 1, 2, 3),
(3, 1, 2, 4),
(4, 1, 2, 5),
(5, 1, 2, 6),
(6, 1, 2, 7),
(7, 1, 2, 8),
(8, 8, 2, 6),
(9, 8, 2, 7),
(10, 8, 2, 8),
(11, 2, 3, 4),
(12, 2, 3, 10),
(13, 2, 3, 11),
(14, 2, 3, 12),
(15, 2, 3, 13),
(16, 2, 3, 14),
(17, 3, 4, 15),
(18, 3, 4, 7),
(19, 3, 4, 12),
(20, 3, 4, 2),
(21, 3, 4, 9),
(22, 3, 4, 4),
(23, 3, 4, 11),
(24, 4, 5, 12),
(25, 4, 5, 13),
(26, 4, 5, 14),
(27, 4, 5, 15),
(28, 4, 5, 16),
(29, 4, 5, 17),
(30, 4, 5, 18),
(31, 4, 5, 19),
(32, 4, 5, 2),
(33, 4, 5, 3),
(34, 5, 6, 2),
(35, 5, 6, 3),
(36, 5, 6, 4),
(37, 5, 6, 5),
(38, 5, 6, 6),
(39, 5, 6, 7),
(40, 5, 6, 8),
(41, 5, 6, 9),
(42, 5, 6, 10),
(43, 5, 6, 11),
(44, 5, 6, 12),
(45, 6, 7, 20),
(46, 6, 7, 21),
(47, 6, 7, 22),
(48, 6, 7, 23),
(49, 6, 7, 19),
(50, 6, 7, 18),
(51, 6, 7, 17),
(52, 6, 7, 16),
(53, 6, 7, 15),
(54, 6, 7, 14),
(55, 6, 7, 13),
(56, 6, 7, 12),
(57, 7, 8, 2),
(58, 7, 8, 3),
(59, 7, 8, 4),
(60, 7, 8, 5),
(61, 7, 8, 6),
(62, 7, 8, 7),
(63, 7, 8, 8),
(64, 7, 8, 9),
(65, 7, 8, 10),
(66, 7, 8, 11),
(67, 7, 8, 12),
(68, 8, 2, 16),
(69, 8, 2, 17),
(70, 8, 2, 18),
(71, 8, 2, 19),
(72, 8, 2, 20),
(73, 8, 2, 21),
(74, 8, 2, 22),
(75, 8, 2, 23),
(76, 1, 2, 10),
(77, 1, 2, 11),
(78, 1, 2, 12),
(79, 1, 2, 13),
(80, 1, 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `ID_Materias` int(11) NOT NULL,
  `Cod_Materia` varchar(11) DEFAULT NULL,
  `ID_Docente` int(11) NOT NULL,
  `Id_Seccion` int(11) NOT NULL,
  `NombreAsignatura` varchar(255) DEFAULT NULL,
  `NumSemestre` int(11) NOT NULL,
  `Carrera` int(11) NOT NULL,
  `Horario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `materias`
--

INSERT INTO `materias` (`ID_Materias`, `Cod_Materia`, `ID_Docente`, `Id_Seccion`, `NombreAsignatura`, `NumSemestre`, `Carrera`, `Horario`) VALUES
(1, 'SYC-32225', 2, 1, 'Lenguaje de Programacion I', 4, 1, '[[0, 0], [1, 0], [2, 0]]'),
(2, 'SYC-32414', 3, 2, 'Procesamiento de Datos', 4, 1, '[[4, 0], [5, 0], [6, 0]]'),
(3, 'MAT-31214', 4, 3, 'Lógica Matemática', 4, 1, '[[4, 2], [10, 0]]'),
(4, 'MAT-31714', 5, 4, 'Cálculo Númerico', 4, 1, '[[3, 2], [5, 1]]'),
(5, 'ACT-14020', 6, 5, 'Educación Física y Salud', 4, 1, '[[11, 1], [15, 5]]'),
(6, 'DIN-31143', 7, 6, 'Defensa Integral de la Nación IV', 4, 1, '[[0, 5], [1, 5], [15, 5], [16, 5]]'),
(7, 'SYC-32114', 8, 7, 'Teoría de los Sistemas', 4, 1, '[[5, 2]]'),
(8, 'SYC-45750', 2, 8, 'Análisis de Sistemas', 5, 1, '[[0, 0], [0, 1], [0, 2]]');

-- --------------------------------------------------------

--
-- Table structure for table `recordacademico`
--

CREATE TABLE `recordacademico` (
  `ID_Historial` int(11) NOT NULL,
  `ID_Estudiante` int(11) NOT NULL,
  `ID_Materias` int(11) NOT NULL,
  `Periodo` int(11) NOT NULL,
  `Calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secciones`
--

CREATE TABLE `secciones` (
  `ID_Seccion` int(11) NOT NULL,
  `Semestre` int(11) DEFAULT NULL,
  `Carrera` int(11) DEFAULT NULL,
  `Turno` varchar(10) DEFAULT NULL,
  `NumSeccion` varchar(2) DEFAULT NULL,
  `Aula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `secciones`
--

INSERT INTO `secciones` (`ID_Seccion`, `Semestre`, `Carrera`, `Turno`, `NumSeccion`, `Aula`) VALUES
(1, 4, 1, 'D', '1', 301),
(2, 4, 1, 'D', '1', 302),
(3, 4, 1, 'D', '1', 303),
(4, 4, 1, 'D', '1', 304),
(5, 4, 1, 'D', '1', 305),
(6, 4, 1, 'D', '1', 306),
(7, 4, 1, 'D', '1', 307),
(8, 4, 1, 'D', '1', 309),
(9, 4, 1, 'D', '1', 310),
(10, 4, 1, 'D', '1', 311),
(11, 4, 1, 'D', '1', 312),
(12, 4, 1, 'D', '1', 313),
(13, 4, 1, 'D', '1', 314),
(14, 4, 1, 'D', '1', NULL),
(15, 4, 1, 'D', '0', NULL),
(16, 3, 1, 'D', '0', NULL),
(17, 1, 1, 'D', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nacionalidad` varchar(1) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Apellidos` varchar(255) DEFAULT NULL,
  `NumTelefono` varchar(12) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Jerarquia` varchar(1) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nacionalidad`, `Nombres`, `Apellidos`, `NumTelefono`, `Email`, `Direccion`, `FechaNacimiento`, `Jerarquia`, `Contraseña`, `Cedula`) VALUES
(1, 'V', 'CARLOS MANUEL', 'LOPEZ CURAPA', '04241509382', 'carlosmlopez2609@gmail.com', 'Av. Fuerzas Armadas', '2005-09-26', '1', '1234', '29631797'),
(2, 'V', 'wilmer', 'calmauta', '04121234567', 'wilmercalmauta@gmail.com', 'Petare', '1999-12-31', '2', '1234', '12345678'),
(3, 'V', 'Jhonny Salvador', 'Angulo Lopez', '04141234567', 'jhonnyElSalvador@gmail.com', 'Al lado de la casa de Dios', '0033-04-03', '3', '1324', '1234567'),
(4, 'V', 'Ninoska', 'Cardona', '04245486974', 'NisnokaCardona@gmail.com', 'Fuerte Tiuna', '1990-07-19', '2', '1234', '12478554'),
(5, 'V', 'Emma', 'Valecillos', '04124878415', 'EmmaValecillos@gmail.com', 'Petare', '1974-10-04', '2', '1234', '10578945'),
(6, 'V', 'Manuel', 'Yanez', '04125784931', 'YanezManuel@gmail.com', 'La Guaira', '1982-12-17', '2', '1234', '13247598'),
(7, 'V', 'Jesus', 'Rojas', '04165478959', 'Rojas1345J@gmail.com', 'El Valle', '1985-05-16', '2', '1234', '16198462'),
(8, 'V', 'Ronald', 'Torrealba', '04165481245', 'Cr.RonaldTorrealba@gmail.com', 'Fuerte Tiuna', '1972-11-25', '2', '1234', '10476564'),
(9, 'V', 'David', 'Cedrés', '04124982432', 'CedresDavid@gmail.com', 'Catia', '1965-06-21', '2', '1234', '4154643'),
(10, 'V', 'Alejandra', 'Vázquez', '04164284389', 'AleVazquez@gmail.com', 'Propatia', '2002-12-25', '1', '1234', '30847985'),
(11, 'V', 'Abraham', 'Frías', '04129897456', 'afrias0604@gmail.com', 'Charallave', '2005-06-04', '1', '1234', '30699847'),
(12, 'V', 'Angel ', 'Jímenez', '04124784465', 'Angeljimenez7495@gmail.com', 'Petare', '2005-09-28', '1', '1234', '30416545'),
(13, 'V', 'Alexander ', 'Piñero', '04125464518', 'DalmaschiPiñero@gmail.com', 'Baruta', '2004-04-07', '1', '1234', '30659875'),
(14, 'V', 'Engerlym', 'Delgado', '04242248564', 'DelgadoEnger1456@gmail.com', 'San Bernandino', '2005-10-30', '1', '1234', '31446738'),
(15, 'V', 'Carlos', 'Diaz', '04123749879', 'CarlosD0486@gmail.com', 'Caricuao', '2004-12-04', '1', '1234', '30546589'),
(16, 'V', 'Miguel', 'Mendez', '04164654648', 'Mmendez5465@gmail.com', 'La Carlota', '2005-06-24', '1', '1234', '29487354'),
(17, 'V', 'Josman', 'Sarmiento', '04128754684', 'Jsarmiento1243@gmail.com', 'Charallave', '2005-08-24', '1', '1234', '30419731'),
(18, 'V', 'Jose ', 'Antonio', '04129978554', 'Jseantonio12@gmail.com', 'Propatria', '2002-09-28', '1', '1234', '29484168'),
(19, 'V', 'Valentina', 'Peña', '04142578942', 'Daryelyspena16@gmail.com', 'Guatire', '2005-08-17', '1', '1234', '30871487'),
(20, 'V', 'Javier', 'Hermoso', '04145978625', 'JavierVargas@gmail.com', 'Guatire', '2004-10-19', '1', '1234', '29872461'),
(21, 'V', 'Kleimar', 'Gauta', '04124876129', 'GautaKlei14@gmail.com', 'Catia', '2004-04-15', '1', '1234', '29871364'),
(22, 'V', 'Kleiver', 'Guanipa', '04162974156', 'KleiverJecktsu@gmail.com', 'Catia', '2004-02-02', '1', '1234', '28486418'),
(23, 'V', 'Sofia', 'Rodriguez', '04265875859', 'SofiRodriguez4561@gmail.com', 'Los Robles', '2005-04-01', '1', '1234', '29487154'),
(24, 'V', 'Franyer', 'Batista', '04161876342', 'BatistaFranyer@gmail.com', 'Urdaneta', '2004-10-18', '1', '1234', '28474959'),
(25, 'V', 'Maria', 'Brito ', '04149878126', 'Mariambrito154@gmail.com', 'Los Laureles', '2005-01-07', '1', '1234', '30224587'),
(26, 'V', 'Elisneidy', 'Herrera', '04125987744', 'Herreaelisneidy1543@gmail.com', 'El Paraíso', '2004-02-28', '1', '1234', '31717456'),
(27, 'V', 'Breslid', 'Ramos', '04125987433', 'Ramosbre14326@gmail.com', 'San Luis', '2002-03-29', '1', '1234', '27487348'),
(28, 'V', 'Laura ', 'Oliveros', '04124744656', 'OliverosL13fgr1@gmail.com', 'La Trinidad', '2005-12-04', '1', '1234', '31294175'),
(29, 'V', 'Mariana', 'Gálvan', '04165846588', 'MarianaGal15van44gmail.com', 'San Antonio', '2004-11-06', '1', '1234', '30128794'),
(30, 'V', 'Juan', 'Padrón', '04245517783', 'ImperioEspañol@gmail.com', 'Los Próceres', '2005-01-10', '1', '1234', '30668442'),
(31, 'E', 'wilexi', 'monastery', '04121234567', 'wilexi@gmail.com', NULL, '2004-12-27', NULL, 'elkoki', '987654332');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`ID_Carrera`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`ID_Docente`),
  ADD UNIQUE KEY `Cedula` (`Cedula`),
  ADD KEY `Carrera` (`Carrera`);

--
-- Indexes for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`ID_Estudiantes`),
  ADD KEY `idx_cedula` (`Cedula`),
  ADD KEY `Carrera` (`Carrera`);

--
-- Indexes for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`ID_Inscripcion`),
  ADD KEY `idx_id_estudiante` (`ID_Estudiante`),
  ADD KEY `ID_Docente` (`ID_Docente`),
  ADD KEY `ID_Materia` (`ID_Materia`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`ID_Materias`),
  ADD KEY `ID_Docente` (`ID_Docente`),
  ADD KEY `Id_Seccion` (`Id_Seccion`),
  ADD KEY `Carrera` (`Carrera`);

--
-- Indexes for table `recordacademico`
--
ALTER TABLE `recordacademico`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `ID_Estudiante` (`ID_Estudiante`),
  ADD KEY `ID_Materias` (`ID_Materias`);

--
-- Indexes for table `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`ID_Seccion`),
  ADD KEY `Carrera` (`Carrera`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `Apellidos` (`Apellidos`),
  ADD UNIQUE KEY `unique_cedula` (`Cedula`),
  ADD KEY `Nombres` (`Nombres`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrera`
--
ALTER TABLE `carrera`
  MODIFY `ID_Carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `docentes`
--
ALTER TABLE `docentes`
  MODIFY `ID_Docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `ID_Estudiantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `ID_Inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `ID_Materias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `recordacademico`
--
ALTER TABLE `recordacademico`
  MODIFY `ID_Historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secciones`
--
ALTER TABLE `secciones`
  MODIFY `ID_Seccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `usuarios` (`Cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docentes_ibfk_2` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`);

--
-- Constraints for table `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `usuarios` (`Cedula`),
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`);

--
-- Constraints for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`ID_Estudiante`) REFERENCES `estudiantes` (`ID_Estudiantes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`ID_Docente`) REFERENCES `docentes` (`ID_Docente`),
  ADD CONSTRAINT `inscripcion_ibfk_3` FOREIGN KEY (`ID_Materia`) REFERENCES `materias` (`ID_Materias`);

--
-- Constraints for table `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`ID_Docente`) REFERENCES `docentes` (`ID_Docente`),
  ADD CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`Id_Seccion`) REFERENCES `secciones` (`ID_Seccion`),
  ADD CONSTRAINT `materias_ibfk_3` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`);

--
-- Constraints for table `recordacademico`
--
ALTER TABLE `recordacademico`
  ADD CONSTRAINT `recordacademico_ibfk_1` FOREIGN KEY (`ID_Estudiante`) REFERENCES `estudiantes` (`ID_Estudiantes`),
  ADD CONSTRAINT `recordacademico_ibfk_2` FOREIGN KEY (`ID_Materias`) REFERENCES `materias` (`ID_Materias`);

--
-- Constraints for table `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`Carrera`) REFERENCES `carrera` (`ID_Carrera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
