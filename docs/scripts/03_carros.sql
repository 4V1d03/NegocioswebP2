-- Active: 1729610458113@@127.0.0.1@3307@ecommercee
CREATE TABLE carros(  
    codigo int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    modelo VARCHAR(128),
    marca VARCHAR(128),
    anio INT,
    kilometraje INT,
    chasis VARCHAR(128),
    color VARCHAR(64),
    registro VARCHAR(64),
    cilindraje INT,
    notas TEXT,
    rodaje VARCHAR(128),
    estado CHAR(3),
    creado DATETIME,
    precioventa DECIMAL(13,2),
    preciominio DECIMAL(13,2),
    actulizado DATETIME
) 