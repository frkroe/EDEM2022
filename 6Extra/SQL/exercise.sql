# Borrar registros de tablas
DELETE FROM MASTERS_STUDENTS;
DELETE FROM STUDENTS;
DELETE FROM MASTERS;

# Borramos las tablas si existen
DROP TABLE IF EXISTS MASTERS_STUDENTS;
DROP TABLE IF EXISTS STUDENTS;
DROP TABLE IF EXISTS MASTERS;

# Creamos las tablas
CREATE TABLE IF NOT EXISTS MASTERS(
    MasterID SMALLINT AUTO_INCREMENT NOT NULL UNIQUE,
    Name varchar(100) NOT NULL,
    CoordinatorID SMALLINT NOT NULL,
    Description varchar(255),
    EditionYear varchar(4),
    Modality varchar(30),
    Duration int,
    Price int,
    PRIMARY KEY (MasterID)
);

CREATE TABLE IF NOT EXISTS STUDENTS(
    StudentID SMALLINT AUTO_INCREMENT NOT NULL UNIQUE,  
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    DNI varchar(9) NOT NULL,
    BirthDate DATE,
    Telephone varchar(9),
    Street varchar(100),
    ZipCode varchar(5),
    City varchar(30),
    PRIMARY KEY (StudentID)
);

CREATE TABLE IF NOT EXISTS MASTERS_STUDENTS(
    MasterID SMALLINT NOT NULL,
    StudentID SMALLINT NOT NULL,
    PRIMARY KEY (MasterID, StudentID),
    FOREIGN KEY (MasterID) REFERENCES MASTERS(MasterID),
    FOREIGN KEY (StudentID) REFERENCES STUDENTS(StudentID)
);

# Insertamos los datos
INSERT INTO MASTERS (Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES ('Master in Big Data', 1, 'Big Data is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES ('Master in Digital Marketing', 2, 'Digital Marketing is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES ('Master in Blockchain', 3, 'Blockchain is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES ('Master in Artificial Intelligence', 4, 'Artificial Intelligence is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES ('Master in Cybersecurity', 5, 'Cybersecurity is the new black', '2019', 'Full Time', 500, 10000);

INSERT INTO STUDENTS (LastName, FirstName, DNI, BirthDate, Telephone, Street, ZipCode, City) VALUES ('Garcia', 'Juan', '12345678A', '1990-01-01', '123456789', 'Calle Falsa 123', '12345', 'Madrid');
INSERT INTO STUDENTS (LastName, FirstName, DNI, BirthDate, Telephone, Street, ZipCode, City) VALUES ('Lopez', 'Pedro', '12345678B', '2000-01-01', '123456789', 'Calle Falsa 123', '12345', 'Madrid');
INSERT INTO STUDENTS (LastName, FirstName, DNI, BirthDate, Telephone, Street, ZipCode, City) VALUES ('Sanchez', 'Maria', '12345678C', '2005-01-01', '123456789', 'Calle Falsa 123', '12345', 'Madrid');
INSERT INTO STUDENTS (LastName, FirstName, DNI, BirthDate, Telephone, Street, ZipCode, City) VALUES ('Ibanez', 'Ana', '12345678D', '2010-01-01', '123456789', 'Calle Falsa 123', '12345', 'Madrid');

INSERT INTO MASTERS_STUDENTS (MasterID, StudentID) VALUES (1, 1);
INSERT INTO MASTERS_STUDENTS (MasterID, StudentID) VALUES (2, 1);
INSERT INTO MASTERS_STUDENTS (MasterID, StudentID) VALUES (2, 2);
INSERT INTO MASTERS_STUDENTS (MasterID, StudentID) VALUES (3, 3);
INSERT INTO MASTERS_STUDENTS (MasterID, StudentID) VALUES (4, 4);


# Selecionamos solo los alumnos cuya fecha de nacimiento sea entre 1999 y 2006
SELECT FirstName, LastName, BirthDate FROM STUDENTS 
    WHERE BirthDate BETWEEN '1999-01-01' AND '2006-01-01';

# otra manera de hacerlos, solo poniendo el año
SELECT FirstName, LastName, BirthDate FROM STUDENTS 
    WHERE YEAR(BirthDate) BETWEEN 1999 AND 2006;


# Contamos los alumnos que hay en cada master
SELECT Name, COUNT(*) AS StudentsPerMaster FROM MASTERS_STUDENTS 
    INNER OUTER JOIN MASTERS ON MASTERS.MasterID = MASTERS_STUDENTS.MasterID
    GROUP BY MASTERS.MasterID;