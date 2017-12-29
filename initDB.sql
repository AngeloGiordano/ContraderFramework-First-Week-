drop database if exists contraderNew;
create database if not exists contraderNew;



create table contraderNew.users (
idUser int (50) not null auto_increment,
username varchar(50),
password varchar(50),
role varchar(10),
PRIMARY KEY (idUser)
);


insert into contraderNew.users (idUser,username,password,role) values (1,'pippo', 'paperino','admin'),
																																						(2,'ciccio', 'bello','local'),
                                                                            (3,'angel', 'uiip','local'),
                                                                            (4,'admin','admin','admin');

create table contraderNew.gomme (
idGomma int (50) not null auto_increment,
model varchar (50),
manufacturer varchar(50),
price float,
PRIMARY KEY (idGomma));

insert into contraderNew.gomme (idGomma,model, manufacturer, price) values (1,'Trelleborg-B50', 'Trelleborg', 321.13);
insert into contraderNew.gomme (idGomma,model, manufacturer, price) values (2,'SuperG-876 ', 'Super Gomme', 213.176);
insert into contraderNew.gomme (idGomma,model, manufacturer, price) values (3,'Bridgestone R\150WT ', 'Bridgestone', 313.176);
insert into contraderNew.gomme(idGomma,model,manufacturer,price) values(4,'Michelin Alpin 5','Michelin',74.50);

create table contraderNew.vehicle(
idVehicle int(50) not null auto_increment,
brand varchar(20),
model varchar(30),
power varchar(10),
primary key (idVehicle));
insert into contraderNew.vehicle(idVehicle,brand,model,power) values(1,'Fiat','Punto','Benzina');
insert into contraderNew.vehicle(idVehicle,brand,model,power) values(2,'Lancia','Delta','Benzina');
insert into contraderNew.vehicle(idVehicle,brand,model,power) values(3,'Honda','RX50','Benzina');
create table contraderNew.compatibility(
idVehicle int (50),
idGomma int (50),
foreign key (idVehicle) references contraderNew.vehicle(idVehicle),
foreign key (idGomma) references contraderNew.gomme (idGomma));

insert into contraderNew.compatibility(idVehicle,idGomma) values (1,1),(1,2),(2,3),(2,4),(3,1),(3,4);



