-- creation de la base de donnée--
create database GestionBibliothèque;
use GestionBibliothèque;

-- creation table type--------------
create table typeOuvrage
(id_type varchar(3) primary key not null,
Tlibelé nvarchar(30))

--creation table domaine------------
create table domaine
(id_domaine varchar(3) primary key not null,
Dlibelé nvarchar(30))

--creation table ouvrage ------------
create table ouvrage
(ID_ouvrage varchar(7) primary key not null,
titre nvarchar(60),
edition nvarchar(20),
anné int,
ISBN int,
Auteur nvarchar (50),
Editeur nvarchar (50),
Annee_edit int,
Langue varchar (50),
Nbrexp int,
Photo varbinary (max),
Resumé nvarchar(500),
Nbrpage int,
Date_ent datetime,
id_type varchar(3) foreign key references typeOuvrage(id_type),
id_domaine varchar(3) foreign key references domaine(id_domaine))

-- creation table Exemplaire -------------
create table Exemplaire 
(id_Exmpl int primary key not null)

-- creation table Etat -------------
create table etat 
(id_Exmpl int not null,
ID_ouvrage varchar(7) not null,
etat_ovrg nvarchar(100),
constraint pk_Etat primary key (id_exmpl,id_ouvrage),
constraint fk_etat_exemplaire foreign key (id_exmpl) references exemplaire(id_exmpl),
constraint fk_etat_ouvrage foreign key (id_ouvrage) references ouvrage(id_ouvrage))

--creation table rayon -------------------
create table rayon 
(id_rayon varchar(1) not null,
id_etage int not null,
constraint pk_rayon primary key (id_rayon,id_etage))

----creation table rayonnage----------------
create table rayonnage
(id_rayon varchar(1) not null,
id_etage int not null,
id_Exmpl int not null,
ID_ouvrage varchar(7) not null,
constraint pk_rayonnage primary key (id_rayon,id_etage,id_exmpl,id_ouvrage),
constraint fk_rayon foreign key (id_rayon,id_etage) references rayon(id_rayon,id_etage), 
constraint fk_exemplaire foreign key (id_exmpl) references exemplaire(id_exmpl),
constraint fk_ouvrage foreign key (id_ouvrage) references ouvrage(id_ouvrage))

--- ajouter la table specialite------------------
create Table Specialité
(id_specialite varchar(4)not null,
Libelé nvarchar(30))

drop table Specialité

--- ajouter la table specialite------------------
create Table Specialité
(id_specialité varchar(4) primary key not null,
Libelé nvarchar(30))

-- creation table Adhérent-------------------
create table Adhérent
(id_adhérent varchar(4) primary key not null,
nom nvarchar(20),
prenom nvarchar(20),
adresse nvarchar(50),
dateNaiss datetime,
tel varchar(10),
dateFinEtude datetime,
Photo_ad varbinary (max),
Statut_ad varchar (7),
id_specialité varchar(4) foreign key references Specialité(id_specialité))

--- creation table emprunt-------------------
create table Emprunt
(id_emprunt int identity(1,1) primary key not null,
dateEmprunt datetime,
dateRetoure datetime,
ID_ouvrage varchar(7) foreign key references ouvrage(id_ouvrage),
id_adhérent varchar(4) foreign key references adhérent(id_adhérent) ,
id_Exmpl int foreign key references exemplaire(id_exmpl))

--- creation table type sanction -----------
create table typeSanction
(id_typeSanc int primary key not null,
TSLibelé nvarchar(30))

--- creation table sanction------------------
create table sanction
(id_sanction int primary key not null,
id_typeSanc int foreign key references typeSanction(id_typeSanc))

--- creation table sanction_adhérent----------
create table sanction_adhérent
(id_sanc_adhérent int identity(1,1) primary key not null,
dateSanc datetime,
motif nvarchar(100),
id_adhérent varchar(4) foreign key references adhérent(id_adhérent),
id_sanction int foreign key references sanction(id_sanction))

--- creation table reservation----------
create table reservation (
id_resrvation int identity(1,1) primary key not null,
date_resv datetime,
ID_ouvrage varchar(7) foreign key (id_ouvrage) references ouvrage(id_ouvrage),
id_adhérent varchar(4) foreign key (id_adhérent) references adhérent(id_adhérent))
