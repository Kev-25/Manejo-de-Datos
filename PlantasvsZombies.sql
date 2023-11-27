Tarea Manejo de Datos
Uso de expresiones regulares y paso de parámetros en SQL usando un lenguaje de
programación
Plants vs Zombies Garden Warfare
Nombres:
Equipo 1
Andrade Rodríguez José Estefan
Leal Sánchez Alejandro Josafat
Molina Sanchez Victor
Ortiz Sánchez Luis Kevin
Paredes Espinosa Octavio Jamil



CREATE TABLE `inf_jugador` (
`Nombre_del_Jugador` VARCHAR(15),
`EDAD` DATE,
`Correo_electronico` VARCHAR(100),
`jugador_ID` INT PRIMARY KEY
);
CREATE TABLE `Plantas_vs_Zombies_GW` (
`inf_jugador_ID` INT,
`inf_Multijugador` <type>,
`inf_juego` <type>,
PRIMARY KEY (`inf_jugador_ID`),
FOREIGN KEY (`inf_jugador_ID`) REFERENCES `inf_jugador`(`jugador_ID`)
);
CREATE TABLE `inf_juego` (
`Mapas_del_juego_ID` INT,
`inf_plantas` <type>,
`inf_zombies` <type>,
`Modo_de_juego` <type>,
`Recompensas_por` <type>,
PRIMARY KEY (`Mapas_del_juego_ID`),
FOREIGN KEY (`Mapas_del_juego_ID`) REFERENCES
`Mapas_del_juego`(`Mapas_del_juego_ID`)
);
CREATE TABLE `Mapas_del_juego` (
`Mapas_del_juego_ID` INT PRIMARY KEY,
`Mapas_pequeños` <type>,
`Mapas_grandes` <type>
);
CREATE TABLE `Modo_de_juego` (
`Modo_de_juego_ID` INT PRIMARY KEY,
`Derrota_por_equipos` <type>,
`Jardines_Y_Cementerios` <type>,
`Subordinacion` <type>
);
CREATE TABLE `Mapas_pequeños` (
`Mapas_pequeños_ID` INT PRIMARY KEY,
`Jewel Junction` <type>,
`Terreno Del Dr. Zombi` <type>,
`Ciudad Mordisco` <type>
);
CREATE TABLE `Mapas_grandes` (
`Mapas_grandes_ID` INT PRIMARY KEY,
`Cañón Cactus` <type>,
`Colinas Cascara-rabias` <type>,
`Orillas Driftwood` <type>
);
CREATE TABLE `Recompensas_por` (
`Recompensas_por_ID` INT PRIMARY KEY,
`Derrota_por_enemigo` <type>,
`Completar_partidas` <type>,
`asistencias_por_enemigo` <type>
);
CREATE TABLE `monedas` (
`Monedas_ID` INT PRIMARY KEY,
`100_monedas` <type>,
`2000_monedas` <type>,
`50_monedas` <type>
);
CREATE TABLE `inf_jugador_multijugador` (
`Gamertag` VARCHAR(30),
`jugador_ID` INT PRIMARY KEY,
`Monedas_ID` INT,
`EXP` INT,
FOREIGN KEY (`jugador_ID`) REFERENCES `inf_jugador`(`jugador_ID`),
FOREIGN KEY (`Monedas_ID`) REFERENCES `monedas`(`Monedas_ID`)
);
CREATE TABLE `ESTADISTICAS_P` (
`Estadisticas_de_jugador_ID` INT PRIMARY KEY,
`Estadisticas_Plantas` <type>
);
CREATE TABLE `inf_plantas` (
`Estadisticas_P_ID` INT PRIMARY KEY,
`Personajes_P` <type>
);
CREATE TABLE `inf_zombies` (
`Estadisticas_Z_ID` INT PRIMARY KEY,
`Personajes_Z` <type>
);
CREATE TABLE `Estadisticas_P` (
`Estadisticas_P_ID` INT PRIMARY KEY,
`total_derrotados` <type>,
`Total_muertos` <type>,
`monedas_rendimiento` <type>
);
CREATE TABLE `Estadisticas_Z` (
`Estadisticas_Z_ID` INT PRIMARY KEY,
`total_derrotados` <type>,
`Total_muertos` <type>,
`monedas_rendimiento` <type>
);
CREATE TABLE `personajes_P` (
`Personajes_P_ID` INT PRIMARY KEY,
`LANZAGUISANTES` <type>,
`GIRASOL` <type>,
`PLANTA_CARNIVORA` <type>,
`CACTUS` <type>
);
CREATE TABLE `personajes_Z` (
`Personajes_Z_ID` INT PRIMARY KEY,
`SOLDADO` <type>,
`CIENTIFICO` <type>,
`INGENIERO` <type>,
`ALL_STAR` <type>
);
CREATE TABLE `exp` (
`Exp_ID` INT PRIMARY KEY,
`150_exp` <type>,
`1000_exp` <type>
);
CREATE TABLE `ESTADISTICAS_Z` (
`Estadisticas_de_jugador_ID` INT PRIMARY KEY,
`Estadisticas_Zombies` <type>
);
CREATE TABLE `EST_jugador_general` (
`EST_jugador_general_ID` INT PRIMARY KEY,
`Muertes_Totales` <type>,
`Total_Derrotados` <type>,
`Total_Monedas` <type>,
`Total_EXP` <type>,
`Total_Asistencia` <type>,
FOREIGN KEY (`Total_Derrotados`) REFERENCES `Estadisticas_P`(`total_derrotados`),
FOREIGN KEY (`Total_Derrotados`) REFERENCES `Estadisticas_Z`(`total_derrotados`),
FOREIGN KEY (`Muertes_Totales`) REFERENCES `Estadisticas_P`(`Total_muertos`),
FOREIGN KEY (`Muertes_Totales`) REFERENCES `Estadisticas_Z`(`Total_muertos`),
FOREIGN KEY (`Total_Monedas`) REFERENCES
`Estadisticas_P`(`monedas_rendimiento`),
FOREIGN KEY (`Total_Monedas`) REFERENCES
`Estadisticas_Z`(`monedas_rendimiento`)
);
CREATE TABLE `EST_modo_de_juego` (
`EST_modo_de_juego_ID` INT PRIMARY KEY,
`Modo_de_juego_ID` INT,
`inf_jugador_ID` INT,
`Monedas_obtenidas` <type>,
`Derrotados` <type>,
`Muertes` <type>,
`Asistencias` <type>,
`EXP_obtenida` <type>,
FOREIGN KEY (`Modo_de_juego_ID`) REFERENCES
`Modo_de_juego`(`Modo_de_juego_ID`),
FOREIGN KEY (`inf_jugador_ID`) REFERENCES `inf_jugador`(`jugador_ID`)
);
CREATE TABLE `EST_Mapa` (
`EST_Mapa_ID` INT PRIMARY KEY,
`Mapas_del_juego_ID` INT,
`inf_jugador_ID` INT,
`Monedas_obtenidas` <type>,
`Derrotados` <type>,
`Muertes` <type>,
`Asistencias` <type>,
`EXP_obtenida` <type>,
FOREIGN KEY (`Mapas_del_juego_ID`) REFERENCES
`Mapas_del_juego`(`Mapas_del_juego_ID`),
FOREIGN KEY (`inf_j`)
); 

CREATE TABLE `inf_jugador` (
`Nombre_del_Jugador` VARCHAR(15),
`EDAD` DATE,
`Correo_electronico` VARCHAR(100),
`jugador_ID` INT PRIMARY KEY
);
CREATE TABLE `Plantas_vs_Zombies_GW` (
`inf_jugador_ID` INT,
`inf_Multijugador` INT,
`inf_juego` INT,
PRIMARY KEY (`inf_jugador_ID`),
FOREIGN KEY (`inf_jugador_ID`) REFERENCES `inf_jugador`(`jugador_ID`)
);
CREATE TABLE `inf_juego` (
`Mapas_del_juego_ID` INT,
`inf_plantas` INT,
`inf_zombies` INT,
`Modo_de_juego` INT,
`Recompensas_por` INT,
PRIMARY KEY (`Mapas_del_juego_ID`),
FOREIGN KEY (`Mapas_del_juego_ID`) REFERENCES
`Mapas_del_juego`(`Mapas_del_juego_ID`)
);
CREATE TABLE `Mapas_del_juego` (
`Mapas_del_juego_ID` INT PRIMARY KEY,
`Mapas_pequeños` INT,
`Mapas_grandes` INT
);
-- Las demás tablas también corregidas...
CREATE TABLE `EST_jugador_general` (
`EST_jugador_general_ID` INT PRIMARY KEY,
`Muertes_Totales` INT,
`Total_Derrotados` INT,
`Total_Monedas` INT,
`Total_EXP` INT,
`Total_Asistencia` INT,
FOREIGN KEY (`Total_Derrotados`) REFERENCES `Estadisticas_P`(`total_derrotados`),
FOREIGN KEY (`Total_Derrotados`) REFERENCES `Estadisticas_Z`(`total_derrotados`),
FOREIGN KEY (`Muertes_Totales`) REFERENCES `Estadisticas_P`(`Total_muertos`),
FOREIGN KEY (`Muertes_Totales`) REFERENCES `Estadisticas_Z`(`Total_muertos`),
FOREIGN KEY (`Total_Monedas`) REFERENCES
`Estadisticas_P`(`monedas_rendimiento`),
FOREIGN KEY (`Total_Monedas`) REFERENCES
`Estadisticas_Z`(`monedas_rendimiento`)
);
CREATE TABLE `EST_modo_de_juego` (
`EST_modo_de_juego_ID` INT PRIMARY KEY,
`Modo_de_juego_ID` INT,
`inf_jugador_ID` INT,
`Monedas_obtenidas` INT,
`Derrotados` INT,
`Muertes` INT,
`Asistencias` INT,
`EXP_obtenida` INT,
FOREIGN KEY (`Modo_de_juego_ID`) REFERENCES
`Modo_de_juego`(`Modo_de_juego_ID`),
FOREIGN KEY (`inf_jugador_ID`) REFERENCES `inf_jugador`(`jugador_ID`)
);
CREATE TABLE `EST_Mapa` (
`EST_Mapa_ID` INT PRIMARY KEY,
`Mapas_del_juego_ID` INT,
`inf_jugador_ID` INT,
`Monedas_obtenidas` INT,
`Derrotados` INT,
`Muertes` INT,
`Asistencias` INT,
`EXP_obtenida` INT,
FOREIGN KEY (`Mapas_del_juego_ID`) REFERENCES
`Mapas_del_juego`(`Mapas_del_juego_ID`),
FOREIGN KEY (`inf_j...
INCERSICION
-- Supongamos que estamos en un entorno interactivo donde el usuario puede elegir
acciones.
-- Menú de opciones
PRINT "Seleccione una opción:"
PRINT "1. Insertar datos"
PRINT "2. Actualizar datos"
PRINT "3. Borrar datos"
READ opcion; -- Se lee la opción elegida por el usuario
-- Según la opción seleccionada, realizamos la acción correspondiente.
IF opcion = 1 THEN
-- Inserción de datos
PRINT "Ingrese los datos para la inserción:"
READ nombre, muertes, derrotados, monedas, exp, asistencias;
INSERT INTO `EST_jugador_general` (`Muertes_Totales`, `Total_Derrotados`,
`Total_Monedas`, `Total_EXP`, `Total_Asistencia`)
VALUES (nombre, muertes, derrotados, monedas, exp, asistencias);
ELSE IF opcion = 2 THEN
-- Actualización de datos
PRINT "Ingrese el ID del jugador a actualizar:"
READ jugador_id;
PRINT "Ingrese los nuevos datos:"
READ nombre, muertes, derrotados, monedas, exp, asistencias;
UPDATE `EST_jugador_general`
SET `Muertes_Totales` = nombre, `Total_Derrotados` = derrotados, `Total_Monedas` =
monedas,
`Total_EXP` = exp, `Total_Asistencia` = asistencias
WHERE `EST_jugador_general_ID` = jugador_id;
ELSE IF opcion = 3 THEN
-- Borrado de datos
PRINT "Ingrese el ID del jugador a borrar:"
READ jugador_id;
DELETE FROM `EST_jugador_general`
WHERE `EST_jugador_general_ID` = jugador_id;
END IF;
