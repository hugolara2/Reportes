CREATE DATABASE Reportes;

use Reportes;

CREATE TABLE Area(
    Id_Area INT NOT NULL,
    Nombre_Area VARCHAR(20) not null,
    CONSTRAINT pk_area PRIMARY KEY(Id_Area, Nombre_Area)
);

CREATE TABLE Persona(
    Id_Persona BIGINT NOT NULL,
    Nombre_Persona VARCHAR(50) NOT NULL,
    Apellido_Persona VARCHAR(50) NOT NULL,
    Correo_Persona VARCHAR(50) NOT NULL,
    Id_Area INT NOT NULL,
    Nombre_Area VARCHAR(20) NOT NULL,
    Puesto_Persona VARCHAR(15) NOT NULL,
    Entrada_Persona  TIME NOT NULL,
    Salidsa_Persona TIME NOT NULL,
    CONSTRAINT pk_persona PRIMARY KEY(Id_Persona, Nombre_Persona,Apellido_Persona),
    CONSTRAINT fk_persona FOREIGN KEY(Id_Area, Nombre_Area) REFERENCES Area(Id_Area, Nombre_Area)
);

