Create database if not exists AMV;
use AMV;
Create table if not exists Bruker
(
    Ansatt_ID       integer UNIQUE auto_increment,
    Fornavn         varchar(255),
    Etternavn       varchar(255),
    Email           varchar(255) UNIQUE,
    Telefonnummer   varchar(255),
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

);