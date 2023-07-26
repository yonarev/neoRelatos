-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2023 a las 20:23:44
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `q`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `idBit` varchar(50) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `nota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fondos`
--

CREATE TABLE `fondos` (
  `fondo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_titulo_desarrollo`
--

CREATE TABLE `tabla_titulo_desarrollo` (
  `id` varchar(20) NOT NULL,
  `idUsu` varchar(20) DEFAULT NULL,
  `idTit` varchar(20) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `desarrollo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla_titulo_desarrollo`
--

INSERT INTO `tabla_titulo_desarrollo` (`id`, `idUsu`, `idTit`, `titulo`, `desarrollo`) VALUES
('', NULL, NULL, 'OTRO NUEVO', 'DESARRROLLO DE TITULON'),
('04072023205728', '04072023202224', '04072023205728', 'Desarrollo codigo q', 'PROBAR HOST\r\nEn servidor de prueba ver OK\r\nRectificar en host fallas OK\r\nRecuperar base datos ok\r\nRESCATAR\r\nDejarlo uso en local y host OK\r\nDe HD a onedrive última ver ok\r\nDe onedrive a cel ok\r\nRESPALDAR\r\nEn onedrive OK\r\nEn 000webhost OK\r\nEn hd'),
('0407202321062', '03072023183331', '0407202321062', 'GUION', 'CURSO DE LOGISTICA\r\nVer llamadas sino wsapp ok\r\nenvie wtsap am ok\r\n04/07 x wsapp envio datos ok\r\nllaman ok\r\n\r\nESTUDIO CODIGO SQL\r\nDesarrolla  graba auto\r\nDesarrolla cta Q sql\r\n\r\nDESARROLLO CODIGO Q\r\nOcupar en local y host json. Ok\r\nBackUp  BD de HOST a HD ok\r\nbackup a Onedrive ok\r\nonedrive Traspaso a celular ok\r\nBackp HD ok\r\n\r\nESTUDIO PYTHON \r\ncrud bases de datos sql\r\n\r\nREDACTAR BIOGRAFIA\r\n\r\nLAVADO ROPA\r\nViernes reserva sabado 2pm ok\r\n\r\nANULAR SEGURO BCO ok\r\nLoop en linea ivr insistir\r\n\r\nCUENTA FAN ok\r\nretirar banco chile OK'),
('04072023230453', '04072023202224', '04072023230453', 'Desarrollo Sql', 'Botones abajo out OK\r\nGrabar siempre arriba OK\r\nElimina btones abajo OK\r\nAyuda arriba NOK\r\nFecha hora frente a menu\r\nVer bckp json ok\r\nBckp json auto \r\nDar msges alerta bcp\r\nDestacar correo logeado ok\r\nTexto blanco desarrollo Ok\r\nBotonera desplegable ok\r\nbotonera audio play rec ok\r\nLogin letras bcas'),
('0507202375820', '03072023183331', '0507202375820', 'HOY', '7 julio\r\nPalomitas am\r\nIr cat por reserva lavado\r\nIr bco portan\r\n\r\n\r\n6 julio\r\nFui Banco Anula seguro no fx\r\nNo llaman aún por entrevista\r\n1230 san jose almuerzo\r\n1830 iglesia comida\r\nCuenta fan activada x inet'),
('07072023111912', '04072023202224', '07072023111912', 'Ciencia de Datos', 'Estudiar Python bases de datos sql'),
('0807202302224', '03072023183331', '0807202302224', 'Háblame de ti', 'Soy una persona muy estudiosa y creativa que se ha autorealisado completamente desarrollando diversas producciones digitales en distintos formatos: \r\nsistemas, meditaciones guiadas,audiovisuales e impresos.\r\nActualmente como autodidacta estudio el tema de la inteligencia artificial y la ciencia de datos por lo cual estoy generando una aplicacion personal con una bitacora para el control de cuentas, inventario personal y desarrollo de guiones para pc y celular administrando una base de datos exportable local y en la red. \r\n\r\nSoy programador y estudiante de analisis de sistemas en continuo desarrollo de los lenguajes de programación que permiten generar aplicaciones eficientes que resuelvan y faciliten; que generen soluciones digitales. Me dedico también al estudio del desarrollo personal y la meditación. \r\n\r\nCIENCIAS BASICAS DE LA INGENIERIA\r\ncurse las ciencias basicas de la ingenieria en valdivia en la carrera de ingenieria en construccion naval y descubri mi afinidad con la computacion por lo cual continue mis estudios en programacion de computadores en inacap Valdivia antofagasta y la serena. \r\n\r\nPROGRAMACION Y ANALISIS\r\nEgresado de Programador Continue mis estudios de analisis de sistemas en la misma institucion y en ese periodo trabaje realizando soporte tecnico computacional para distintas empresas en La serena y en imprentas en coquimbo y la Serena.\r\n\r\nSISTEMAS PARA EL PODER JUDICIAL\r\nRealisando diversas asistencias y asesorias a la corporacion administrativa del poder judicial en la region de coquimbo fui desarrollando aplicaciones que finalmente se implementaron en la cuarta region y en santiago.\r\n\r\nMEDITACIONES GUIADAS\r\nNecesitando un periodo de retiro me\r\ntraslade al valle de elqui montegrande galeria de arte zen donde me dedique por completo a la meditacion y al dearrollo personal.\r\nasi me dispuse a desarrollar 3 meditaciones guiadas en formato cd de audio productos originales que llevaban los visitantes que asistian a este espacio de arte.  \r\n\r\nELQUIZEN\r\nteniendo habilitado mi taller de computacion me dedique a administrar la galeria de arte zen\r\ny realizar capacitaciones y asistencias en el valle de elqui\r\n\r\nELQUICHILE\r\nMe traslade a la serena para estudiar desarrollo personal y asistir digitalmente a la sociedad medica psicologica educacional elquichile, realizando audiovisuales para encuentros y congresos. \r\n\r\nSORATA BOLIVIA\r\nViaje a bolivia y me dedique a desarrollar audiovisuales para la comunidad aymara por encargo de la alcaldia de sorata.\r\n\r\nCOCHABAMBA BOLIVIA\r\nInvitado por la fundacion biosfera dharma me desempeño realizando asistencias digitales, impresos y generando una revista de soberania alimentaria para la OEA.\r\n\r\nVALDIVIA CALL CENTER BACKOFICE\r\nContratado por la empresa \"MAS CERCA-CGS\" me desempeño como soporte tecnico telefonico en el callCenter de valdivia y luego como BackOffice para activacion de celulares de empresas.\r\n\r\nCONCEPCION ESSBIO\r\nMe desempeño en el call center de emergencias de \'Atento Essbio\'\r\n\r\nLOGISTICA\r\nteniendo afinidad con el cargo relacionado con la administracion y control de inventarios postulo al estudio de \'asistente de logistica\' pues considero que es una area valiosa de estudiar pues esta vinculada a muchos ambitos de la vida donde los conociminetos informaticos, la responsabilidad y la confianza son relevantes para el desempeño eficiente de estas labores.\r\n\r\nPRODUCCIONES\r\nHe generado 4 aplicaciones importantes para el poder judicial y 3 meditaciones en cs de audio, también he producido audiovisuales para la sociedad ElquiChile y videos documentales para la comunidad aymara en Bolivia, tambien una revista para la OEA de soberania alimentaria. \r\n\r\nACTUALMENTE\r\nMis ultimos trabajos en callcenter me permitieron desarrollar metodos de resolucion en tiempo real para lo cual he desarrollando aplicaciones para lograr estos objetivos. En el ultimo desempeño no logre cumplir a cabalidad ya que las fallas continuas del aire acondicionado en el espacio de trabajo me lo impidieron al estar continuamente resfriado y afectado de la garganta.\r\nActualmente desempleado he quedado finalista en algunas postulaciones de la plataforma de \'computrabajo\'. \r\ny tengo especial interés por la logística y deseo aprender para postular a un trabajo que actualmente es muy solicitado.'),
('08072023110341', '03072023183331', '08072023110341', 'resumen biografia', 'QUIEN SOY\r\nSoy una persona muy estudiosa y creativa que se ha realizado completamente desarrollando diversas producciones digitales en distintos formatos, como sistemas, meditaciones guiadas, audiovisuales e impresos.\r\nSoy programador y estudiante de análisis de sistemas en continuo desarrollo de los lenguajes de programación que permiten generar aplicaciones eficientes que resuelvan y faciliten problemas, y que generen soluciones digitales. También me dedico al estudio del desarrollo personal y la meditación.\r\n\r\nQUE HAGO\r\nActualmente, como autodidacta, estudio el tema de la inteligencia artificial y la ciencia de datos. Estoy generando una aplicación personal con una bitácora para el control de cuentas, inventario personal y desarrollo de guiones para PC y celular, administrando una base de datos exportable local y en la red.\r\nActualmente me encuentro desempleado y he quedado finalista en algunas postulaciones de la plataforma \"Computrabajo\". Tengo un especial interés por la logística y deseo aprender para postular a un trabajo que actualmente es muy solicitado.\r\n\r\nMIS PROCESOS\r\nCursé las ciencias básicas de la ingeniería en Valdivia, en la carrera de Ingeniería en Construcción Naval, y descubrí mi afinidad por la computación, por lo cual continué mis estudios en programación de computadores en INACAP Valdivia, Antofagasta y La Serena.\r\n\r\nEgresé como Programador y continué mis estudios de análisis de sistemas en la misma institución. Durante ese periodo, trabajé realizando soporte técnico computacional para distintas empresas y en imprentas en Coquimbo y La Serena.\r\n\r\nRealicé diversas asistencias y asesorías a la Corporación Administrativa del Poder Judicial en la región de Coquimbo, desarrollando aplicaciones que finalmente se implementaron en la cuarta región y en Santiago.\r\n\r\nNecesitando un periodo de retiro, me trasladé al Valle de Elqui, a Montegrande, donde se encuentra la galería de arte zen. Me dediqué por completo a la meditación y al desarrollo personal, produciendo tres meditaciones guiadas en formato CD de audio, productos originales que los visitantes llevaban al asistir a este espacio de arte.\r\n\r\nTeniendo habilitado mi taller de computación, me dediqué a administrar la galería de arte zen y a realizar capacitaciones y asistencias en el Valle de Elqui.\r\n\r\nLuego, me trasladé a La Serena para estudiar desarrollo personal y asistir digitalmente a la Sociedad Médica Psicológica Educacional ElquiChile, realizando audiovisuales para talleres y congresos.\r\n\r\nViajé a Bolivia y me dediqué a desarrollar audiovisuales por encargo de la Alcaldía de Sorata para la comunidad aymara.\r\n\r\nInvitado por la Fundación Biosfera Dharma, me desempeñé realizando asistencias digitales, impresos y generando una revista de soberanía alimentaria para la OEA en Cochabamba, Bolivia.\r\n\r\nPosteriormente, fui contratado por la empresa \"Más Cerca-CGS\" y me desempeñé como soporte técnico telefónico en el Call Center de Valdivia. Luego, trabajé como BackOffice para la activación de celulares de empresas.\r\nTrabaje en el Call Center de emergencias de \"Atento Essbio\" en Concepción.\r\n\r\nPORQUE ASISTENTE DE LOGISTICA\r\nDebido a mi afinidad con el cargo relacionado con la administración y control de inventarios, postulo al estudio de \"Asistente de Logística\", pues considero que es un área valiosa para estudiar, ya que está vinculada a muchos ámbitos de la vida en los cuales los conocimientos informáticos, la responsabilidad y la confianza son relevantes para un desempeño eficiente.\r\n\r\nMIS PRODUCCIONES\r\nHe generado cuatro aplicaciones importantes para el Poder Judicial y tres meditaciones en formato de audio. También he producido audiovisuales para la sociedad ElquiChile y videos documentales para la comunidad aymara en Bolivia, así como una revista de soberanía alimentaria para la OEA.\r\n\r\nEn mis últimos trabajos en Call Center, pude desarrollar métodos de resolución en tiempo real, para lo cual generé aplicaciones que me ayudaron  a lograr estos objetivos.\r\n\r\nPORQUE SOLO 3 MESES EN ESSBIO\r\nEn mi último desempeño no logré cumplir completamente debido a las fallas continuas del aire acondicionado en el espacio de trabajo, lo cual me afectó con frecuentes resfriados y problemas de garganta.\r\n\r\n'),
('12072023100312', '03072023183331', '12072023100312', 'nuevo', 'En desarrollo ok');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsu` varchar(25) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `gps` varchar(255) DEFAULT NULL,
  `psw` varchar(255) DEFAULT NULL,
  `accesos` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsu`, `usuario`, `gps`, `psw`, `accesos`, `obs`) VALUES
('03072023183331', 'jorgeveravidela@gmail.com', 'concepcion', '12345678', '[\"usuario\"]', 'registro en la pagina'),
('04072023202224', 'yonarev@gmail.com', 'concepcion', '12345678', '[\"usuario\"]', 'registro en la pagina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`idBit`);

--
-- Indices de la tabla `tabla_titulo_desarrollo`
--
ALTER TABLE `tabla_titulo_desarrollo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
