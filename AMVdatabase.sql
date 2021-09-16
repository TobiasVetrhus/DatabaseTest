Create database if not exists AMV;
use AMV;
Create table if not exists Bruker
(
    Ansatt_nummer   integer UNIQUE auto_increment,
    Fornavn         varchar(255),
    Etternavn       varchar(255),
    Telefonnummer   varchar(255),
    Epost          varchar(255) UNIQUE,
    Passord         varchar(255),
    CONSTRAINT PRIMARY KEY (Ansatt_nummer)

);

INSERT INTO Bruker (Fornavn, Etternavn, Epost, Telefonnummer, Passord)
values (
    'Tobias',
    'Vetrhus',
    'Tobiasv@uia.no',
    '416 76 205',
    '12345');

Create table if not exists Verktoy
(
    Verktoy_nummer  integer(20) UNIQUE,
    Navn            varchar(255),
    Beskrivelse     varchar(255),
    Antall_ledig    integer(10),
    Pris            varchar(255),
    Spes_krav       boolean,
    CONSTRAINT PRIMARY KEY (Verktoy_nummer)
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
