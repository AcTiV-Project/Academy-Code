-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2023 a las 06:48:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `personas`
--
CREATE DATABASE IF NOT EXISTS `personas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`nombre`) VALUES
('Angie Fletcher'),
('Anna caceres'),
('Luisa guerrero'),
('Melissa Guerra'),
('Valeria dube'),
('lisa gomez'),
('Jorge bernuil'),
('Mayra vega');
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"tucodigopro\",\"table\":\"ejercicios\"},{\"db\":\"tucodigopro\",\"table\":\"articulos\"},{\"db\":\"personas\",\"table\":\"estudiantes\"},{\"db\":\"tucodigopro\",\"table\":\"comentarios\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-26 05:47:19', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `tucodigopro`
--
CREATE DATABASE IF NOT EXISTS `tucodigopro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tucodigopro`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) NOT NULL,
  `titulo1` varchar(255) NOT NULL,
  `descripcion1` mediumtext NOT NULL,
  `titulo2` varchar(255) NOT NULL,
  `descripcion2` mediumtext NOT NULL,
  `titulo3` varchar(255) NOT NULL,
  `descripcion3` mediumtext NOT NULL,
  `codigo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo1`, `descripcion1`, `titulo2`, `descripcion2`, `titulo3`, `descripcion3`, `codigo`) VALUES
(1, 'FlexBox CSS', 'CSS (Cascading Style Sheets) es un lenguaje fundamental para el diseño web, y dentro de sus muchas características, Flexbox se destaca como una de las herramientas más poderosas para crear diseños flexibles y responsivos en sitios web. En este artículo, exploraremos Flexbox en profundidad, examinando sus conceptos fundamentales y cómo se utiliza para simplificar la maquetación de páginas web.', '¿Qué es Flexbox?', 'Flexbox, o \"Flexible Box Layout,\" es un módulo de diseño de CSS que permite organizar elementos en una página de manera más eficiente y predecible. A diferencia de los métodos de posicionamiento tradicionales, como floats y posicionamiento absoluto, Flexbox se basa en el concepto de cajas flexibles (flex containers) y elementos flexibles (flex items). Esto facilita la creación de diseños complejos sin la necesidad de ajustes laboriosos.', 'Conceptos Clave de Flexbox', 'Flex container: Un flex container es el elemento que contiene a los elementos flexibles (flex items). Para convertir un elemento en un contenedor flex, simplemente le aplicas la propiedad display: flex o display: inline-flex. Flex Items: Los elementos contenidos dentro de un flex container se denominan flex items. Estos elementos se organizan dentro del contenedor en función de las reglas de Flexbox. Eje Principal y Eje Cruzado: Flexbox opera en dos ejes: el eje principal (main axis) y el eje cruzado (cross axis). La dirección del eje principal está definida por la propiedad flex-direction, que puede ser row, column, row-reverse, o column-reverse. Justificación y Alineación: Las propiedades como justify-content y align-items permiten controlar cómo se distribuyen y alinean los elementos en el eje principal y el eje cruzado, respectivamente.\r\n', '.container-flex {\r\n  display: flex;\r\n}\r\n'),
(2, 'jQuery, Simplificando la Interacción del Cliente con JavaScript', 'JavaScript es un lenguaje esencial para el desarrollo web, pero a menudo puede resultar complejo y laborioso. Es aquí donde jQuery, una biblioteca de JavaScript, se destaca al simplificar las interacciones del cliente y facilitar la manipulación del DOM (Document Object Model). En este artículo, exploraremos qué es jQuery, sus ventajas y cómo puede simplificar el desarrollo web.', '¿Qué es jQuery?', 'jQuery es una biblioteca de JavaScript que se creó con el propósito de simplificar las tareas comunes de JavaScript y mejorar la eficiencia de la manipulación del DOM. El Document Object Model (DOM) es una representación de la estructura de una página web que JavaScript utiliza para interactuar con los elementos de la misma. jQuery abstrae muchas de las complejidades del DOM y proporciona una interfaz más fácil de usar para interactuar con los elementos HTML.', 'Ventajas de jQuery', 'Las ventajas de usar jQuery son numerosas y han hecho que esta biblioteca sea ampliamente popular en el desarrollo web: 1. Facilita la Manipulación del DOM: jQuery simplifica la selección y manipulación de elementos en el DOM. Por ejemplo, para seleccionar un elemento con el id \"miElemento\", solo necesitas escribir 2. Animaciones Suaves: jQuery proporciona funciones para crear animaciones suaves y efectos de manera sencilla, lo que permite mejorar la experiencia del usuario. 3. Ajax Simplificado: La biblioteca facilita las solicitudes Ajax, lo que simplifica la carga de datos dinámicos en una página web sin necesidad de recargarla.', ' $(document).ready(function() {\r\n    $(\"p\").text(\"¡Hello, jQuery!\");\r\n});'),
(3, 'Tkinter: Creando Interfaces Gráficas en Python', 'Python es un lenguaje de programación versátil que se destaca por su simplicidad y eficiencia. Para aplicaciones que requieren interfaces gráficas de usuario (GUI), Tkinter es una biblioteca estándar que proporciona una forma poderosa y fácil de crear ventanas, botones, cuadros de texto y otros elementos interactivos. En este artículo, exploraremos qué es Tkinter, sus características y cómo se utiliza para desarrollar aplicaciones con interfaces de usuario en Python.', '¿Qué es Tkinter?', 'Tkinter es la interfaz gráfica de usuario (GUI) estándar de Python. Proviene de la biblioteca Tk, una biblioteca gráfica multiplataforma que ha existido durante más de tres décadas. Tkinter se incluye en la instalación estándar de Python, lo que significa que no es necesario instalar nada adicional para empezar a crear aplicaciones GUI.', 'Características Clave de Tkinter', 'Tkinter ofrece una serie de características que lo hacen atractivo para el desarrollo de aplicaciones con interfaces de usuario: 1. Facilidad de Uso: Tkinter es conocido por su sencillez y facilidad de aprendizaje, lo que lo convierte en una excelente opción para principiantes en el desarrollo de GUI. 2. Plataforma Cruzada: Las aplicaciones creadas con Tkinter son portátiles y se ejecutan en varias plataformas, incluyendo Windows, macOS y Linux, sin necesidad de realizar modificaciones importantes. 3. Widgets Gráficos: Tkinter proporciona una variedad de widgets, como botones, etiquetas, cuadros de texto, listas y mucho más, que se pueden utilizar para construir interfaces de usuario interactivas.', 'from tkinter import *\r\n\r\nroot = Tk()\r\n\r\nroot.title(\"Hello Tkinter\")\r\nroot.geometry(\"300x300\")\r\n\r\nroot.mainloop()'),
(4, 'Buenas Prácticas de Programación en PHP: Construyendo Código Sólido', 'PHP es uno de los lenguajes de programación más utilizados en el desarrollo web, y como en cualquier otro lenguaje, escribir código de calidad es fundamental. Las buenas prácticas de programación en PHP no solo facilitan la mantenibilidad del código, sino que también mejoran su rendimiento y seguridad. En este artículo, exploraremos algunas de las mejores prácticas que los desarrolladores de PHP deberían seguir.', '1. Sigue la Convención PSR-1 y PSR-2', 'El Grupo de Estándares PHP (PHP-FIG) ha establecido una serie de recomendaciones y estándares conocidos como PSR (PHP-FIG Standard Recommendation) que ayudan a mantener un estilo de código consistente en proyectos de PHP. Los PSR-1 y PSR-2 se centran en la nomenclatura, la organización de archivos y la indentación. Al seguir estos estándares, tu código será más legible y colaborativo', '2. Comentarios Significativos', 'Los comentarios bien escritos son esenciales para comprender el propósito y el funcionamiento de tu código. Utiliza comentarios para explicar la lógica compleja, proporcionar documentación de funciones y métodos, y resaltar áreas críticas. Los comentarios significativos facilitan el trabajo en equipo y ayudan a futuros desarrolladores a comprender rápidamente el código.', '// This method calculates the sum of two numbers\r\nfunction mySum($number1, $number2) {\r\n    // Realiza la suma\r\n    $result = $number1 + $number2;\r\n    return $result; // Return the result\r\n}\r\n'),
(5, 'CSS Grid: Simplificando el Diseño de Páginas Web', 'El diseño de páginas web es un aspecto crítico en el desarrollo web, y para lograrlo de manera eficiente y efectiva, CSS Grid ha surgido como una herramienta poderosa. Esta característica de CSS, que permite la creación de diseños bidimensionales, ha revolucionado la forma en que los diseñadores y desarrolladores web abordan la maquetación de páginas. En este artículo, exploraremos qué es CSS Grid, cómo funciona y cómo se utiliza para crear diseños flexibles y sofisticados.', '¿Qué es CSS Grid?', 'CSS Grid es un módulo de diseño de CSS que permite crear diseños bidimensionales. A diferencia de otros sistemas de maquetación, como Flexbox, que se enfocan principalmente en la disposición de elementos en una sola dimensión (fila o columna), CSS Grid permite organizar elementos en filas y columnas, creando una estructura de cuadrícula. Esto brinda un control preciso sobre la ubicación y el espacio de los elementos en una página web.', 'Principales Conceptos de CSS Grid', 'Para utilizar CSS Grid de manera efectiva, es importante comprender algunos conceptos clave: 1. Cuadrícula (Grid): La cuadrícula es el contenedor principal que contiene todos los elementos que componen el diseño. Se define utilizando la propiedad display: grid en el elemento padre. 2. Filas y Columnas: Dentro de la cuadrícula, puedes definir filas y columnas utilizando propiedades como grid-template-rows y grid-template-columns. Puedes especificar el tamaño de las filas y columnas de manera precisa, ya sea en píxeles, porcentajes o fracciones. 3. Elementos en la Cuadrícula: Los elementos dentro de la cuadrícula se convierten en \"elementos secundarios de la cuadrícula\" y se colocan en las celdas de la cuadrícula. Puedes controlar su ubicación utilizando propiedades como grid-row y grid-column. 4. Ventajas: A: Control Preciso: Permite un control preciso sobre la ubicación y el tamaño de los elementos en la página. B: Diseños Complejos: Facilita la creación de diseños complejos y multidimensionales, como cuadrículas, mosaicos y diseños de revista. C: Responsividad: Ayuda a diseñar páginas web responsivas sin necesidad de recurrir a soluciones complejas.\r\n\r\n', '.container {\r\n  display: grid;\r\n}\r\n'),
(6, 'Pasos para Aprender Desarrollo Web de Forma Efectiva', 'El desarrollo web es un campo en constante evolución y, para aquellos que buscan aprenderlo, puede ser un camino emocionante pero desafiante. Ya sea que desees convertirte en un desarrollador web profesional o simplemente aprender habilidades básicas para proyectos personales, aquí te presentamos un enfoque efectivo para aprender desarrollo web de manera adecuada.', '1. Pasos Claves', '1. Establece Objetivos Claros: Antes de sumergirte en el mundo del desarrollo web, es importante definir tus objetivos. ¿Qué tipo de desarrollo web deseas aprender? ¿Front-end, back-end, o desarrollo full-stack? ¿Qué tecnologías específicas te interesan? Establecer objetivos claros te ayudará a enfocar tus esfuerzos de aprendizaje. 2. Aprende los Fundamentos: Comienza con los conceptos básicos. Esto incluye comprender cómo funciona la web, conocer los lenguajes de marcado (HTML), estilos (CSS) y lenguajes de programación (JavaScript). Estos son los cimientos sobre los que se construye el desarrollo web. 3. Elige un Lenguaje de Programación: Dependiendo de tus objetivos, selecciona un lenguaje de programación adecuado para el desarrollo web. JavaScript es esencial para el desarrollo front-end y también se utiliza en el back-end con Node.js. Otros lenguajes populares incluyen Python, Ruby y PHP para el desarrollo back-end.', 'Recursos de Aprendizaje', 'Aprender desarrollo web requiere una combinación de recursos y herramientas. Aquí tienes algunos recursos útiles para tu viaje de aprendizaje:\r\n\r\nPlataformas de aprendizaje en línea, como Codecademy, Coursera, edX y Udemy.\r\nTutoriales y documentación en línea, como MDN Web Docs, W3Schools y Stack Overflow.\r\nLibros especializados en desarrollo web.\r\nComunidades y foros, como Stack Overflow, Reddit y GitHub.\r\nProyectos de código abierto a los que puedas contribuir.\r\nConferencias y eventos relacionados con el desarrollo web.\r\nEn resumen, aprender desarrollo web de manera efectiva requiere dedicación, práctica y un enfoque estructurado. Establece tus objetivos, aprende los fundamentos, explora tecnologías y frameworks relevantes, y mantente al día con las tendencias del campo. Con paciencia y perseverancia, estarás en camino para convertirte en un desarrollador web competente y exitoso. ¡Buena suerte en tu viaje de aprendizaje!', '\"</>\"'),
(7, 'Método \'count\' en Python', 'Python es un lenguaje de programación versátil que proporciona numerosas herramientas y métodos para realizar tareas comunes de programación de manera eficiente. Uno de estos métodos es count(), que es ampliamente utilizado para contar elementos específicos en secuencias, como listas y cadenas. En este artículo, exploraremos en detalle el método count y cómo puede ser útil en diversas situaciones.', '¿Qué es el método count?', 'El método count es una función integrada en Python que se utiliza para contar cuántas veces aparece un elemento específico en una secuencia dada. Esta secuencia puede ser una lista, una cadena de caracteres, una tupla o cualquier otro tipo de secuencia iterable. El método count es sensible a mayúsculas y minúsculas, por lo que en este ejemplo, \"poderoso\" y \"Poderoso\" se considerarían diferentes y se contarían por separado.', 'Casos de Uso del Método count', 'El método count es útil en una variedad de situaciones. Algunos casos de uso comunes incluyen:\r\n\r\nAnálisis de texto: Puedes utilizar count para contar cuántas veces aparece una palabra o una letra específica en un texto. Filtrado de datos: Puedes usar count para filtrar elementos que cumplan ciertas condiciones en una lista. Verificar duplicados: Puedes contar cuántas veces un elemento se repite en una lista y así verificar si hay duplicados. Estadísticas simples: Puedes utilizar count para recopilar estadísticas sobre los elementos en una lista, como contar la frecuencia de aparición de elementos.', 'sequence.count(items)\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre`, `comentario`) VALUES
(1, 'Jorge Bernuil Serran', 'este es un mensaje desde la web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicios`
--

CREATE TABLE `ejercicios` (
  `id` int(10) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `respuestaA` varchar(255) NOT NULL,
  `respuestaB` varchar(255) NOT NULL,
  `respuestaC` varchar(255) NOT NULL,
  `clave` varchar(5) DEFAULT NULL,
  `codigo` varchar(255) NOT NULL,
  `respuesta` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejercicios`
--

INSERT INTO `ejercicios` (`id`, `titulo`, `descripcion`, `respuestaA`, `respuestaB`, `respuestaC`, `clave`, `codigo`, `respuesta`) VALUES
(1, 'Python', '¿Indique que resultado arrojara el siguiente código en Python?\r\n', 'false', 'true', 'error', 'py01', 'x = 3^2\r\ny = int(4^3)\r\n\r\nprint(x == y)', 'A'),
(2, 'Python', '¿Indique que Valor Retornara la Siguiente Función en Python?', '10', '16', '4', 'py02', 'def number(n1, n2):\r\n    return n1 * n2\r\n\r\nnumber(4, 4)', 'B'),
(3, 'Python', '¿Qué valor se imprimirá por consola?\r\n', 'p', 'Hell', 'Python', 'py03', 'x = \"Hello Python\"', 'C'),
(4, 'Python', '¿Qué imprimirá el siguiente código en Python?', 'Error', 'false', '[12, 12]', 'py04', 'x = [\"12\", 12]\r\n\r\nprint(x[1] == x[0])', 'B'),
(5, 'JavaScript', '¿Qué valor retorna la función \"sum\"?\r\n\r\n', '1', '7', '14', 'js01', 'function sum(x, y){\r\n    return x / y\r\n}\r\n\r\nsum(7, 7)', 'A'),
(6, 'SQL', '¿Qué tarea realiza la siguiente instrucción SQL?\r\n', 'Borra una Columna', 'Crea una columna nueva', 'Renombra una columna', 'sql01', 'ALTER TABLE doctors  DROP age;', 'A'),
(7, 'JavaScript', 'A continuación, Tenemos un Objeto JS, Para Acceder a un Elemento, ¿Cuál es el Método Correcto?\r\n', 'document.write(doctors.age);', 'document.write(doctors[age]);', 'document.write(doctors);', 'js02', 'const doctors = {\r\n    name : \"Jhon\",\r\n    age : 51,\r\n    country : \"EE,UU\"\r\n}', 'A'),
(8, 'SQL', '¿Qué tarea realiza la siguiente instrucción SQL?\r\n', 'Consulta todos los trabajadores de una empresa', 'Consulta a todos los trabajadores que son vendedores', 'Elimina a todos los trabajadores que son vendedores', 'sql02', 'SELECT * FROM workers WHERE position = \'sellers\';', 'B');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
