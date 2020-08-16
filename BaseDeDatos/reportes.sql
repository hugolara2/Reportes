CREATE TABLE Area(
    Id_Area INT AUTO_INCREMENT NOT NULL,
    Nombre_Area VARCHAR(20) not null,
    CONSTRAINT pk_area PRIMARY KEY(Id_Area)
);

CREATE TABLE Personal(
    Id_Personal BIGINT AUTO_INCREMENT NOT NULL,
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
    Telefono_Personal VARCHAR(15) NOT NULL,
    Municipio VARCHAR(100) NOT NULL,
    Estado VARCHAR(30) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    RFC VARCHAR(15) NOT NULL,
    Seguro VARCHAR(20) NOT NULL,
    CURP VARCHAR(20) NOT NULL,
    CONSTRAINT fk_Info FOREIGN KEY(Id_Personal) REFERENCES  Personal(Id_Personal)
);

CREATE TABLE Usuario(
    Id_Personal BIGINT NOT NULL,
    Usuario VARCHAR(10) NOT NULL,
    Contrasenia VARCHAR(50) NOT NULL,
    CONSTRAINT fk_Usuario FOREIGN KEY(Id_Personal) REFERENCES Personal(Id_Personal)
);

CREATE TABLE Cliente(
    Id_Cliente BIGINT AUTO_INCREMENT NOT NULL,
    Nombre_Cliente VARCHAR(50) NOT NULL,
    Apellidos_Cliente VARCHAR(50) NOT NULL,
    Telefono_Cliente VARCHAR(15) NOT NULL,
    Corre_Cliente VARCHAR(50) NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY(Id_Cliente)
);

CREATE TABLE Reservacion(
    Id_Reservacion BIGINT AUTO_INCREMENT NOT NULL,
    Id_Cliente BIGINT NOT NULL,
    Fecha_Llegada DATETIME NOT NULL,
    Dias INT NOT NULL,
    Fecha_Ida DATETIME,
    Habitacion INT NOT NULL,
    CONSTRAINT pk_Reservacion PRIMARY KEY(Id_Reservacion),
    CONSTRAINT fk_Reservacion FOREIGN KEY(Id_Cliente) REFERENCES Cliente(Id_Cliente)
);

CREATE TABLE Urgencia(
    Tipo VARCHAR(20) NOT NULL,
    Tiempo VARCHAR (10) NOT NULL,
    CONSTRAINT pk_Urgencia PRIMARY KEY(Tipo, Tiempo)
);

CREATE TABLE Reporte(
    Id_Reporte BIGINT AUTO_INCREMENT NOT NULL,
    Id_Levanta BIGINT NOT NULL,
    Id_Recibe BIGINT NOT NULL,
    Urgencia VARCHAR(20) NOT NULL,
    Tiempo VARCHAR(10) NOT NULL,
    Reporte VARCHAR(50) NOT NULL,
    Fecha_Inicio DATETIME NOT NULL,
    Fecha_Actual DATE NOT NULL,
    Fecha_Entrega DATETIME  NOT NULL,
    CONSTRAINT pk_Reporte PRIMARY KEY(Id_Reporte),
    CONSTRAINT fk_Reporte1 FOREIGN KEY(Id_Levanta) REFERENCES Personal(Id_Personal),
    CONSTRAINT fk_Reporte2 FOREIGN KEY(Id_Recibe) REFERENCES Personal(Id_Personal),
    CONSTRAINT fk_Reporte3 FOREIGN KEY(Tiempo, Reporte) REFERENCES Urgencia(Tipo, Tiempo)
);


