Create database if not exists AMV;
use AMV;
Create table if not exists Bruker
(
    Ansatt_nummer   integer UNIQUE auto_increment NOT NULL,
    Fornavn         varchar(255),
    Etternavn       varchar(255) NOT NULL,
    Telefonnummer   varchar(255),
    Epost           varchar(255) UNIQUE,
    Passord         varchar(255) NOT NULL,
    ErAdmin         boolean,
    ErUnion         boolean,
    CONSTRAINT Ansatt_PK PRIMARY KEY (Ansatt_nummer)

);

INSERT INTO Bruker (Fornavn, Etternavn, Epost, Telefonnummer, Passord, ErAdmin, ErUnion)
values (
    'Tobias',
    'Vetrhus',
    'Tobiasv@uia.no',
    '416 76 205',
    '12345',
    '0',
    '0'
);

Create table if not exists Verktoy
(
    Verktoy_nummer  varchar(20) UNIQUE NOT NULL,
    Navn            varchar(255) NOT NULL,
    Beskrivelse     varchar(255),
    Antall_ledig    integer(10),
    Pris            varchar(255),
    Spes_krav       boolean,
    CONSTRAINT Verktøy_PK PRIMARY KEY (Verktoy_nummer)
);

INSERT INTO Verktoy (Verktoy_nummer, Navn, Beskrivelse, Antall_ledig, Pris, Spes_krav)
values (
        '0001',
        'Drill',
        'God tilstand',
        '1',
        'Gratis 1 dag, deretter 50kr pr. dag',
        '0'
       );
       
Create table if not exists Reservasjon
(
    Verktoy_nummer      varchar(20) NOT NULL,
    Dato_lant           date NOT NULL,
    Ansatt_nummer       integer UNIQUE auto_increment NOT NULL,
    Dato_returnert      date,
    Totalpris           integer(255),
    Betalt              boolean,
    Kommentar           varchar(255),
    CONSTRAINT Reservasjon_PK PRIMARY KEY (Verktoy_nummer, Ansatt_nummer),
    CONSTRAINT Reservasjon_FK1 FOREIGN KEY (Verktoy_nummer) REFERENCES Verktoy (Verktoy_nummer),
    CONSTRAINT Reservasjon_FK2 FOREIGN KEY (Ansatt_nummer) REFERENCES Bruker (Ansatt_nummer)
);

INSERT INTO Reservasjon (Verktoy_nummer, Dato_lant, Dato_returnert, Totalpris, Betalt, Kommentar)
values (
    '0001',
    '2021-09-17',
    '2021-09-20',
    '100',
    '0',
    ''
);
