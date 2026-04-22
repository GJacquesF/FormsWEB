CREATE DATABASE IF NOT EXISTS totoro_line;
USE totoro_line;

CREATE TABLE Paises (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nombre_pais VARCHAR(50) NOT NULL
);

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    genero VARCHAR(20),
    id_pais INT,
    fecha_registro DATE,
    telefono VARCHAR(15),
    acepta_terminos BOOLEAN DEFAULT FALSE,

    CONSTRAINT fk_usuario_pais 
    FOREIGN KEY (id_pais) REFERENCES Paises(id_pais)
    ON DELETE SET NULL 
    ON UPDATE CASCADE
);

INSERT INTO Paises (nombre_pais) VALUES ('México'), ('España'), ('Colombia'), ('Argentina'), ('Chile');