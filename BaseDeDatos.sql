DROP DATABASE IF EXISTS db;
Create DATABASE db;
USE db;


CREATE TABLE Jugadores (
ID INT NOT NULL,
Username VARCHAR(60),
Contraseña VARCHAR(60),
DNI VARCHAR(9),

PRIMARY KEY(ID)
)ENGINE = InnoDB;

CREATE TABLE Partidas (
id int NOT NULL,
Fecha varchar(60),
Hora varchar(60),
Duracion varchar(60),

PRIMARY KEY(id)
)ENGINE = InnoDB;

CREATE TABLE Historial(
idj INT NOT NULL,
idp INT NOT NULL,
FOREIGN KEY (idj) REFERENCES Jugadores(ID),
FOREIGN KEY (idp) REFERENCES Partidas(id),
)ENGINE = InnoDB;

INSERT INTO Jugadores VALUES(1,'Alberto','Alberto1','12345678B');
INSERT INTO Jugadores VALUES(2,'Martin','Martin1','22345678B');
INSERT INTO Jugadores VALUES(3,'Arnau','Arnau1','22245678B');

INSERT INTO Partidas VALUES(1,'15/02/2021','11:30','90 min');
INSERT INTO Partidas VALUES(2,'15/02/2022','12:30','100 min');
INSERT INTO Partidas VALUES(3,'15/02/2023','13:30','120 min');
INSERT INTO Partidas VALUES(4,'15/02/2024','14:30','120 min');
INSERT INTO Partidas VALUES(5,'15/02/2025','15:30','120 min');

INSERT INTO Historial VALUES(1,5);
INSERT INTO Historial VALUES(4,7);
INSERT INTO Historial VALUES(3,2);


//numero de partidas que jugo Alberto
SELECT Historial.idp From Jugadores,Historial WHERE Jugadores.Username = 'Alberto' AND Historial.idj = Jugadores.ID  
