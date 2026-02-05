CREATE DATABASE filmTimohi;
use filmTimohi;

--tabeli rezisoor loomine

CREATE TABLE rezisoor(
rezisoorid int PRIMARY KEY identity(1,1),
eesnimi varchar(20),
perenimi varchar (20) UNIQUE,
synniaasta int);
Select * from rezisoor;
--tabeli täitmine
INSERT INTO rezisoor(eesnimi, perenimi, synniaasta)
VALUES ('James', 'Cameron', 1987),
('Bread', 'Pitt', 1979),
('Johny', 'Sharapov', 1999),
('Kventin', 'Taratinov', 1967),
('Timoha', 'Stoljar', 2009)

--tabeli Film loomine
CREATE TABLE film(
filmid int PRIMARY KEY identity (1,1),
filminimetus varchar(20),
pikkus int,
rezisoorID int,
FOREIGN KEY (rezisoorID) REFERENCES rezisoor(rezisoorID),
v_aasta int CHECK(v_aasta<2027)
);

Select * From film;
Select * From rezisoor;

drop table film


Insert into film( filminimetus, rezisoorID, pikkus, v_aasta)
Values('Kibepunk', 7, 231, 1899)
