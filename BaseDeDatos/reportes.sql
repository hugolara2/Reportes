CREATE DATABASE Reportes;

use Reportes;

CREATE TABLE Area(
    Id_Area INT NOT NULL,
    Nombre_Area VARCHAR(20) not null,
    CONSTRAINT pk_area PRIMARY KEY(Id_Area)
);

CREATE TABLE Personal(
    Id_Personal BIGINT NOT NULL,
    Nombre_Personal VARCHAR(50) NOT NULL,
    Apellido_Personal VARCHAR(50) NOT NULL,
    Correo_Personal VARCHAR(50) NOT NULL,
    Id_Area INT NOT NULL,
    Puesto_Personal VARCHAR(15) NOT NULL,
    Entrada_Personal  TIME NOT NULL,
    Salida_Personal TIME NOT NULL,
    CONSTRAINT pk_persona PRIMARY KEY(Id_Personal),
    CONSTRAINT fk_persona FOREIGN KEY(Id_Area) REFERENCES Area(Id_Area)
);

CREATE TABLE Info_Extra(
    Id_Personal BIGINT NOT NULL,
    Domicilio_Personal VARCHAR(50) NOT NULL,
    Municipio VARCHAR(100) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    RFC VARCHAR(15) NOT NULL,
    Seguro VARCHAR(20) NOT NULL,
    CURP VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Info FOREIGN KEY(Id_Personal) REFERENCES  Persona(Id_Personal)
);

