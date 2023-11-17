CREATE TABLE `albertable_detalles_peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int DEFAULT NULL,
  `IMDB` varchar(25) DEFAULT NULL,
  `RT` varchar(25) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `guion` varchar(100) DEFAULT NULL,
  `argumento` varchar(3000) DEFAULT NULL,
  `duracion` varchar(45) DEFAULT NULL,
  `titulo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO albertable_detalles_peliculas(movie_id, IMDB, RT, direccion, guion, argumento, duracion, titulo) 
	SELECT m.auto_ID, dp.IMDB, dp.RT, dp.direccion, dp.guion, dp.argumento, dp.duracion, dp.titulo 
	FROM `MASTER` as m, Detalles_Peliculas as dp 
	WHERE m.titulo = dp.titulo;


SELECT adp.titulo, m.titulo
	FROM albertable_detalles_peliculas AS adp
INNER JOIN `MASTER` AS m
ON adp.movie_id = m.auto_ID;