/* 
  En este archivo vas a crear la base de datos dentro Workench 
  Recorde que el Servicio debe este Running para poder hacerlo
  Ademas el usuario que vas a usar para la conexión OJO con este que lo tenes que 
  pasar como parametro dentro del db_connect.php para que funcione
  Para poder obviar el uso del usuario root creamos también un usuario con solo permisos
  para el uso de schema 
  El usuario debe ser el nombre y el apellido del alumno que realice el TP

*/

CREATE DATABASE IF NOT EXISTS db_proyecto_login;
USE db_proyecto_login;

DROP USER IF EXISTS 'lautarobenicio'@'localhost';
CREATE USER 'lautarobenicio'@'localhost' IDENTIFIED BY 'user.123$';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_proyecto_login.* TO 'lautarobenicio'@'localhost';

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(200) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SELECT * FROM db_proyecto_login.usuarios;
