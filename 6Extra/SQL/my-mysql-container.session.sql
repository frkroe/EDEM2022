CREATE TABLE IF NOT EXISTS PEOPLE (
    PersonID SMALLINT AUTO_INCREMENT VARCHAR(30) NOT NULL,
    DNI varchar(9) NOT NULL,
    LastName varchar(30) NOT NULL,
    FirstName varchar(30),
    Address varchar(255),
    City varchar(50),
    ProvinceID SMALLINT VARCHAR(30) NOT NULL,
    Telephone NUMERIC(9, 0)),
    PRIMARY KEY (PersonID), 
    FOREIGN KEY (ProvinceID) REFERENCES PROVINCES(ProvinceID)
);

CREATE TABLE IF NOT EXISTS PROVINCES (
    ProvinceID SMALLINT AUTO_INCREMENT VARCHAR(30) NOT NULL,
    ProvinceName varchar(30) NOT NULL,
    Population int,
    PRIMARY KEY (ProvinceID)
);