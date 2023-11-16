CREATE SCHEMA `Netchill`;
USE `Netchill`;

-- Creamos las tablas de nuestra BBDD

-- Tabla Master, con toda la información descargada de la API

CREATE TABLE `MASTER` (
genero VARCHAR(45),
tipo VARCHAR(45),
titulo VARCHAR(100),
id_pelicula INT,
mes VARCHAR(45),
anio VARCHAR(45),

PRIMARY KEY (id_pelicula));

-- Tabla Detalles Pelis, con IMDB ,RT, Direccion, Guión, Argumento, Duración, Título

CREATE TABLE `Detalles_Peliculas` (
IMDB VARCHAR(4),
RT VARCHAR(4),
direccion VARCHAR(100),
guion VARCHAR(100),
argumento VARCHAR(1000),
duracion VARCHAR(45),
titulo VARCHAR(100),

PRIMARY KEY (titulo));

-- Tabla Detalles Actores, con nombre, año de nacimiento, por qué es conocido, qué hace, Premios

CREATE TABLE `Detalles_Actores` (
nombre VARCHAR(100),
nacimiento VARCHAR(45),
conocido VARCHAR(300),
ocupacion VARCHAR(100),
premios VARCHAR(100),

PRIMARY KEY (nombre));

-- Tabla Premios, con fecha_celebracion, mejor_pelicula, mejor_director, mejor_actor, mejor_actriz

CREATE TABLE `Premios` (
fecha_celebracion INT,
mejor_pelicula VARCHAR(100),
mejor_director VARCHAR(45),
mejor_actor VARCHAR(45),
mejor_actriz VARCHAR(45));

PRIMARY KEY (mejor_pelicula));

-- Metemos algo de info para pruebas

INSERT INTO `Premios`(`fecha_celebracion` ,`mejor_pelicula`, `mejor_director`, `mejor_actor`, `mejor_actriz`)
		VALUES ('2006', 'lalaland', 'Pepe Pérez', 'Leonardo Dicaprio','Carmen Machi');
        
-- ---------------------------------------------
INSERT INTO `Detalles_Actores`(`nombre` ,`nacimiento`, `conocido`, `ocupacion`, `premios`)
		VALUES ('Leonardo Dicaprio', '1990', 'sdfjbnswdeofjbsdfcsdjkf', 'dkjvsdvjb', 'Oscar');
			
-- -------------------------------------------------------
INSERT INTO `Detalles_Peliculas`(`IMDB` ,`RT`, `direccion`, `guion`, `argumento`, `duracion`, `titulo`)
		VALUES ('5.7', '90%', 'xxx', 'xx', 'xxx', '1h 12m', 'Memorias de Africa');
				('7.7', '70%', 'Pepe Pérez', 'Pepa', 'blaaaaaaa aaaaaaaa', '1h 12m', 'lalaland')
        VALUES ('8.0', '50%', 'Paco Gomez', 'Maria', 'sdkjfnsdfjnsd', '2h 12m', 'El Paciente inglés');
-- ---------------------------------------

INSERT INTO `MASTER`(`genero`, `tipo`, `titulo`, `id_pelicula`, `mes`, `anio`)
		VALUES ('accion', 'movie', 'El Padrino', '023331', '2', '2014'); 
        ('romance', 'movie', 'Memorias de África', '023330', '1', '2014');
        ('romance', 'movie', 'El Paciente inglés', '023337', '1', '2011')
				('drama', 'movie', 'lalaland', '023333', '10', '2001'),
				('comedia', 'movie', 'eeeee', '025678', '12', '2021'),
                ('accion', 'short', 'dddd', '0256908', '8', '2013');

-- -----------------------------------------------------------------------------------------

