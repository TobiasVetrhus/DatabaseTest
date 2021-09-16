Create database if not exists AMV;
use AMV;
Create table if not exists Bruker
(
    Ansatt_nummer   integer UNIQUE auto_increment,
    Fornavn         varchar(255),
    Etternavn       varchar(255),
    Telefonnummer   varchar(255),
    E-post          varchar(255) UNIQUE,
    Passord         varchar(255),
    CONSTRAINT PRIMARY KEY (Ansatt_ID)

);

INSERT INTO Bruker (Fornavn, Etternavn, Email, Telefonnummer, Passord)
values (
    'Tobias',
    'Vetrhus',
    'Tobiasv@uia.no',
    '416 76 205',
    '12345');

Create table if not exists Verktøy
(
    Verktøy_nummer  integer(20) UNIQUE,
    Navn            varchar(255),
    Beskrivelse     varchar(255),
);
