create database sailorBoatdb;
use sailorBoatdb;

#Create SailorTable
CREATE TABLE Sailors (
sid INT NOT NULL,
sname VARCHAR(50) NOT NULL,
rating INT NOT NULL,
age INT NOT NULL,
PRIMARY KEY (sid)
);

INSERT INTO Sailors (sid, sname, rating, age) VALUES
(22, 'Dustin', 7, 45),
(29, 'Brutus', 1, 33),
(31, 'Lubber', 8, 56),
(32, 'Andy', 8, 26),
(58, 'Rusty', 10, 35),
(64, 'Horatio', 7, 35),
(71, 'Zorba', 10, 16),
(74, 'Horatio', 9, 40),
(85, 'Art', 3, 26),
(95, 'Bob', 3, 64);

#Create BoatTable
CREATE TABLE Boats (
bid INT NOT NULL,
bname VARCHAR(50) NOT NULL,
color VARCHAR(20) NOT NULL,
PRIMARY KEY (bid)
);

INSERT INTO Boats (bid, bname, color) VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');

#Create ReserveTable
CREATE TABLE Reserves (
sid INT NOT NULL,
bid INT NOT NULL,
day DATE NOT NULL,
PRIMARY KEY (sid, bid, day),
FOREIGN KEY (sid) references Sailors(sid),
FOREIGN KEY (sid) references Boats(bid),
);

