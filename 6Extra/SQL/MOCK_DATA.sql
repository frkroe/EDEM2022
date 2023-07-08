-- Borramos las tablas si existen
DROP TABLE IF EXISTS MASTERS_STUDENTS;
DROP TABLE IF EXISTS MOCK_DATA;
DROP TABLE IF EXISTS MASTERS;

-- Creamos las tablas
CREATE TABLE IF NOT EXISTS MASTERS(
    MasterID INT AUTO_INCREMENT NOT NULL UNIQUE,
    Name varchar(100) NOT NULL,
    CoordinatorID SMALLINT NOT NULL,
    Description varchar(255),
    EditionYear varchar(4),
    Modality varchar(30),
    Duration int,
    Price int,
    PRIMARY KEY (MasterID)
);

create table MOCK_DATA (
	StudentID INT AUTO_INCREMENT NOT NULL UNIQUE,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	BirthDate DATE,
	Telephone VARCHAR(50),
	Street VARCHAR(50),
	PostalCode VARCHAR(50),
	City VARCHAR(50),
	DNI varchar(9) NOT NULL,
	Gender VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS MASTERS_STUDENTS (
    idAlumnoAM INT NOT NULL,
    idMasterAM INT NOT NULL,
    PRIMARY KEY (idAlumnoAM, idMasterAM),
    CONSTRAINT fk_alumnos_master_alumnos
        FOREIGN KEY (idAlumnoAM)
        REFERENCES MOCK_DATA (StudentID),
    CONSTRAINT fk_alumnos_master_master
        FOREIGN KEY (idMasterAM)
        REFERENCES MASTERS (MasterID)
);


-- Insertamos los datos
INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES (1, 'Master in Big Data', 1, 'Big Data is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES (2, 'Master in Digital Marketing', 2, 'Digital Marketing is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES (3, 'Master in Blockchain', 3, 'Blockchain is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES (4, 'Master in Artificial Intelligence', 4, 'Artificial Intelligence is the new black', '2019', 'Full Time', 500, 10000);
INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price) VALUES (5, 'Master in Cybersecurity', 5, 'Cybersecurity is the new black', '2019', 'Full Time', 500, 10000);

insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (1, 'Gabbie', 'Saltern', '1991-10-19', '8681676676', '85878 4th Drive', '4750-654', 'Roriz', 301292384, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (2, 'Jermaine', 'Devanney', '1992-06-07', '6622738362', '04 Waxwing Lane', null, 'Mafeteng', 188057613, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (3, 'Rosetta', 'Hockey', '1974-12-26', '2688083152', '08112 Columbus Point', '509-0307', 'Minokamo', 814891772, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (4, 'Tobin', 'Larsen', '1992-08-18', '2612105366', '04 Grim Crossing', null, 'Jinjiang', 115621956, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (5, 'Garey', 'Lefeaver', '1987-07-22', '8986750765', '18 Dorton Street', '5610', 'New Washington', 386438692, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (6, 'Ana', 'Ranaghan', '2008-06-17', '1721109182', '7048 Monument Way', null, 'Zhvanets', 457362577, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (7, 'Humberto', 'Stonehouse', '2009-11-20', '4896272812', '29 Londonderry Pass', '8427', 'San Jose', 484688482, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (8, 'Salem', 'Coddrington', '1973-05-14', '2083268907', '942 Emmet Terrace', '5203', 'Sabang', 265937279, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (9, 'Bobbye', 'Silmon', '1978-01-07', '2019317199', '36108 Roxbury Place', '3185', 'Paulpietersburg', 642300107, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (10, 'Lesli', 'Margerison', '1976-09-18', '5071915997', '77 Del Mar Crossing', '102471', 'Uritsk', 342413502, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (11, 'Deerdre', 'Schellig', '1987-05-14', '8853377154', '916 Lerdahl Parkway', null, 'Al Mukallā', 115557000, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (12, 'Renado', 'Murray', '1988-09-02', '5539378008', '61 Arizona Avenue', null, 'Kelodan', 400321825, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (13, 'Miles', 'Jurkowski', '2006-09-01', '4594539547', '75506 Garrison Parkway', null, 'Jabinyānah', 141522256, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (14, 'Lorrie', 'Kiffin', '1988-03-19', '8058693122', '405 Loomis Circle', '0712', 'Oslo', 801224644, 'Bigender');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (15, 'Cedric', 'Prestage', '1972-08-07', '9593583490', '54705 Melvin Drive', '3501', 'Maddarulug Norte', 424284225, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (16, 'Hermon', 'Jeeks', '2004-09-06', '7409755564', '29865 Schurz Hill', 'D6W', 'Dundrum', 482240312, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (17, 'Thaxter', 'Habbergham', '1985-08-16', '2316967741', '1 Bobwhite Crossing', null, 'Lijiang', 745900832, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (18, 'Evey', 'Triggol', '1992-09-11', '2122559153', '3109 New Castle Plaza', '747 15', 'Šilheřovice', 123968202, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (19, 'Caroline', 'Candey', '1987-12-20', '4672237386', '0833 Crescent Oaks Drive', null, 'Luozhou', 893175897, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (20, 'Dennis', 'MacDougal', '1992-11-20', '8345303319', '63654 Lake View Lane', '56-122', 'Brzeg Dolny', 715387471, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (21, 'Lotti', 'Costall', '2011-04-29', '1448879491', '26 Prairieview Place', '83-340', 'Sierakowice', 423084309, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (22, 'Willyt', 'Shields', '2001-01-15', '3585243969', '9426 Hauk Road', '3450', 'Goya', 724694766, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (23, 'Margo', 'Garaway', '1990-09-21', '5726448519', '82188 Bultman Park', 'L-9696', 'Winseler', 979915889, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (24, 'Conway', 'Cullinan', '1995-02-22', '2707564899', '9037 Knutson Lane', '628532', 'Lugovskoy', 254350544, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (25, 'Merna', 'Pidgley', '2000-11-03', '6956240166', '170 Mendota Center', null, 'Lintingkou', 687483049, 'Non-binary');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (26, 'Benedicto', 'Theobald', '2002-11-28', '8609651289', '82913 Miller Junction', null, 'Ikongo', 728622524, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (27, 'Alvan', 'Menilove', '2002-07-11', '7934950173', '22102 Heath Circle', '371-0858', 'Kanekomachi', 129786829, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (28, 'Shirline', 'Hindes', '1984-10-04', '6909760905', '988 Northwestern Park', '682738', 'Berëzovyy', 724165547, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (29, 'Dorelle', 'Medler', '1981-07-03', '7226652286', '383 Lyons Way', null, 'Jammāl', 140515292, 'Agender');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (30, 'Carmine', 'Tocknell', '2002-02-25', '7287437087', '441 Lakewood Gardens Park', null, 'Wufu', 297268498, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (31, 'Carlos', 'Rookes', '1984-02-22', '3018841047', '55 Michigan Court', '3550', 'Vera', 274413623, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (32, 'Itch', 'Gagin', '1992-10-27', '7343523966', '447 Susan Center', '1531', 'Moss', 956097662, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (33, 'Aldridge', 'Crowther', '1990-09-24', '4924965926', '21 Manitowish Center', null, 'Chenzhuang', 898506520, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (34, 'Sybil', 'Slowan', '1981-01-16', '9806453313', '0738 Crest Line Court', '6117', 'Haguimit', 234456525, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (35, 'Lyda', 'Chong', '1995-08-17', '6372822330', '20 2nd Road', '14097 CEDEX 9', 'Caen', 270304760, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (36, 'Micheline', 'Davidov', '1990-01-05', '2505812765', '41747 Fair Oaks Way', '311-2424', 'Itako', 856549130, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (37, 'Cherie', 'Dumbarton', '1998-12-24', '4298231135', '9 Grasskamp Circle', '63870-000', 'Boa Viagem', 441193376, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (38, 'Emanuel', 'Radbond', '1995-02-11', '2094361686', '1863 Vernon Place', 'H54', 'Tuam', 287887712, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (39, 'Finlay', 'Prazor', '1963-12-06', '9964554585', '96992 Delaware Terrace', '8703', 'Manolo Fortich', 488791189, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (40, 'Maegan', 'Mettericke', '1963-04-11', '5879715338', '1472 Hayes Way', null, 'Zubin Potok', 533737539, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (41, 'Ezechiel', 'Exelby', '1966-02-26', '4112909834', '3115 Service Parkway', 'L-9184', 'Schieren', 137515873, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (42, 'Staci', 'Mundle', '1969-11-19', '5387083225', '1162 Dixon Terrace', null, 'Houbai', 953039299, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (43, 'Langsdon', 'Cordy', '2011-04-23', '1188514958', '9014 Anderson Plaza', null, 'Paphos', 101529736, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (44, 'Spike', 'Ather', '2004-09-07', '7875386933', '624 Esker Crossing', '16025 CEDEX', 'Angoulême', 295351952, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (45, 'Barbee', 'Colvill', '2005-07-05', '4488853522', '8 Shoshone Park', '53120', 'Phichai', 468292875, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (46, 'Daffie', 'Conahy', '2002-10-07', '3119659658', '61 Iowa Pass', '38504 CEDEX', 'Voiron', 241949240, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (47, 'Ninetta', 'Gogan', '1974-01-25', '9282075193', '70968 Pond Court', null, 'Igboho', 788883920, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (48, 'Algernon', 'Inglis', '2010-11-06', '6952004258', '669 Buell Plaza', null, 'Hayang', 121563894, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (49, 'Hasty', 'Burgill', '1982-10-06', '2843466102', '87 Reindahl Plaza', null, 'Manna', 698078040, 'Genderfluid');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (50, 'Dorian', 'Dunsire', '1995-07-23', '3239440686', '25 Macpherson Parkway', null, 'Subottsi', 274095675, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (51, 'Hubie', 'Jones', '2010-09-03', '9681029048', '46555 Scott Drive', '646880', 'Azovo', 249907794, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (52, 'Arlee', 'Mullord', '1981-02-09', '7755629958', '7028 3rd Park', null, 'Doumen', 431446346, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (53, 'Bibbie', 'Gaze', '2002-10-04', '5093479960', '983 Barby Street', '05672', 'Alor Setar', 406088852, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (54, 'Ernestine', 'Bohden', '2005-02-23', '8059766879', '0468 Express Court', '31015', 'Pamplona/Iruña', 885184195, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (55, 'Bonnee', 'Batt', '2009-08-10', '4054613589', '12875 Elmside Point', '760 01', 'Zlín', 809636584, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (56, 'Debora', 'Windybank', '1973-10-01', '2539501565', '5009 Erie Park', '17320', 'Asikkala', 429680087, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (57, 'Goldi', 'Inkles', '2002-05-08', '7127923087', '85 Hudson Circle', '607700', 'Shatki', 866957336, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (58, 'Chaddie', 'Maliphant', '1974-08-09', '2294422379', '37718 Lukken Alley', '276 01', 'Mělník', 706835922, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (59, 'Wally', 'Attewell', '2005-09-13', '7336677993', '86073 Brown Terrace', '61910', 'Melchor Ocampo', 839674777, 'Agender');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (60, 'Davine', 'Marke', '1991-01-06', '8673262816', '09644 Tennessee Junction', null, 'Kremenets’', 148583259, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (61, 'Corie', 'Jozefiak', '1966-07-07', '3263953886', '660 Oriole Park', null, 'Senadan', 380735601, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (62, 'Danielle', 'Thompsett', '1971-04-19', '9119876199', '4 Michigan Avenue', null, 'Üydzen', 179027003, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (63, 'Fairfax', 'Eggers', '1987-04-08', '2926496982', '776 Milwaukee Hill', '2162', 'Botevgrad', 306359205, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (64, 'Emelda', 'Prugel', '1961-11-03', '3231420709', '2 Anhalt Park', null, 'Sunjia Buzi', 847276783, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (65, 'Concettina', 'Lidyard', '2012-10-03', '4084632199', '2 Reindahl Way', '443049', 'Barrancas', 640927084, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (66, 'Farrah', 'Gainsboro', '1985-11-12', '8383712570', '931 Bay Parkway', null, 'Hongchang', 610612368, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (67, 'Gasper', 'Colum', '1990-04-17', '4141292080', '3507 South Pass', null, 'Dayeuhluhur', 875020050, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (68, 'Betsey', 'Dybell', '1989-08-23', '1492843198', '94851 Sycamore Junction', null, 'Haiyanmiao', 578136396, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (69, 'Terry', 'Thurstan', '1977-02-13', '4811102305', '58994 Lotheville Junction', '187 14', 'Täby', 836324938, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (70, 'Dewey', 'Boulter', '2010-11-23', '3942039671', '45547 Fieldstone Terrace', '5140-279', 'Vilarinho da Castanheira', 818880368, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (71, 'Eleanora', 'Cardinale', '1994-07-16', '6017780471', '2754 Dryden Plaza', '39204', 'Jackson', 905883413, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (72, 'Marchelle', 'Alves', '1960-01-09', '3993680189', '97724 Erie Drive', '792 27', 'Mora', 955032102, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (73, 'Gwen', 'Jansens', '1974-09-14', '6619529314', '34913 Granby Pass', '5186', 'Alta Gracia', 230465644, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (74, 'Hugues', 'Fuke', '2008-01-08', '7399526980', '5305 Farmco Trail', '87445', 'Revolucion Verde', 123765553, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (75, 'Salvidor', 'Bonham', '2009-04-21', '4764469857', '6 Annamark Plaza', null, 'Erdaojiang', 326300920, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (76, 'Maryjo', 'Applewhaite', '1999-06-19', '9139285737', '4809 Bluejay Pass', '66105', 'Kansas City', 536305468, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (77, 'Bebe', 'Klasen', '2003-03-07', '7157422389', '9768 Springview Lane', '678290', 'Suntar', 133287062, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (78, 'Tulley', 'Ary', '1983-12-29', '8063525228', '78 Monterey Crossing', null, 'Hampang', 137729422, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (79, 'Worthy', 'Coultish', '1966-04-26', '5808026476', '58 Crest Line Street', '171750', 'Sandovo', 384944060, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (80, 'Robinet', 'Kitlee', '1989-06-24', '8968782911', '39 Sunfield Circle', null, 'Xincheng', 378940030, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (81, 'Huntley', 'Pindar', '1969-01-15', '5151043561', '19 Browning Plaza', '35252', 'Slobodnica', 889404720, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (82, 'Janeta', 'Vasyanin', '2000-01-03', '7493781201', '417 Anhalt Pass', 'N1G', 'Cache Creek', 841857229, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (83, 'Hermione', 'Lally', '1996-02-26', '4765473199', '85 Elgar Park', null, 'Wenquan', 762382166, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (84, 'Winston', 'Boldison', '1990-03-20', '1303234325', '466 Larry Point', null, 'Qarqaraly', 387381185, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (85, 'Barby', 'Soppeth', '2009-12-03', '5727902966', '52 Roxbury Road', null, 'Namasuba', 618113053, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (86, 'Janeva', 'Dorkins', '1975-12-08', '2861525604', '72 Hanson Terrace', '75648', 'Melaka', 517110689, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (87, 'Aleksandr', 'Walbridge', '2001-12-03', '9072467042', '778 Mallory Circle', null, 'Besisahar', 953650878, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (88, 'Noelyn', 'Hollyland', '2006-05-14', '4426758331', '1615 Butternut Circle', null, 'Dorp Antriol', 909147160, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (89, 'Pincus', 'Sargeant', '1965-10-18', '9772230983', '60783 Mitchell Point', '76200', 'Dadu', 236265492, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (90, 'Abe', 'Petschelt', '1984-07-02', '5057302150', '2 Gateway Lane', null, 'Peristerona', 925251684, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (91, 'Kelvin', 'Tomasutti', '2010-12-17', '8452455426', '751 Sullivan Place', null, 'Taen Tengah', 837178332, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (92, 'Ollie', 'Rubertis', '2008-03-12', '7936911294', '18305 Kim Center', null, 'Canmang', 139830112, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (93, 'Aretha', 'Wharrier', '1960-07-19', '7864846620', '075 Mallard Junction', '34629', 'Clearwater', 880944520, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (94, 'Abe', 'Veitch', '2007-09-18', '8916053642', '245 Morningstar Trail', null, 'Zghartā', 100832095, 'Male');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (95, 'Kaile', 'Threadkell', '1975-10-08', '1959205878', '71 Eagan Plaza', null, 'Palcamayo', 215901789, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (96, 'Eleen', 'Jaffa', '1990-12-19', '9633858631', '1 Glendale Place', '17280-000', 'Pederneiras', 997922457, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (97, 'Tami', 'Fursey', '1991-06-19', '8958025437', '645 Ramsey Road', null, 'Kurayyimah', 479137339, 'Bigender');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (98, 'Cory', 'Boarder', '1988-06-03', '5996204777', '86581 Merry Avenue', '26-630', 'Jedlnia-Letnisko', 446459980, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (99, 'Arliene', 'Gavan', '2006-08-18', '7985776858', '65246 Westridge Alley', null, 'Yên Bái', 337070401, 'Female');
insert into MOCK_DATA (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender) values (100, 'Sileas', 'Rustich', '1989-06-27', '8012083776', '9 Stuart Place', null, 'Topory', 987566886, 'Female');

-- Insert data into the MASTERS_STUDENTS table with random master assignments
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (15, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (93, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (39, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (18, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (60, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (65, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (86, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (33, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (63, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (85, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (65, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (98, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (88, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (24, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (65, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (48, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (55, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (26, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (85, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (10, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (61, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (63, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (33, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (92, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (13, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (54, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (94, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (48, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (83, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (2, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (89, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (83, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (16, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (36, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (5, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (35, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (57, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (47, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (39, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (48, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (16, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (82, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (13, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (77, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (6, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (83, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (98, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (20, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (40, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (75, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (99, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (56, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (96, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (13, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (13, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (90, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (16, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (70, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (61, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (83, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (53, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (77, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (84, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (42, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (40, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (57, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (12, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (4, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (37, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (62, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (68, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (74, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (46, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (98, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (97, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (100, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (85, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (58, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (68, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (26, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (33, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (51, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (9, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (25, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (95, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (23, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (86, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (70, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (91, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (68, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (17, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (3, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (57, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (37, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (18, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (87, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (6, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (23, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (71, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (83, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (12, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (88, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (13, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (98, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (69, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (77, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (8, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (20, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (85, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (24, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (61, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (75, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (59, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (92, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (96, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (95, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (33, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (81, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (18, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (23, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (71, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (18, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (91, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (71, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (4, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (14, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (44, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (62, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (85, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (76, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (42, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (57, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (98, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (43, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (93, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (88, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (40, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (20, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (96, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (2, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (57, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (99, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (67, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (71, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (38, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (59, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (20, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (93, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (3, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (96, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (61, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (60, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (52, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (1, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (78, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (64, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (99, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (48, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (68, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (10, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (52, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (73, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (53, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (16, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (72, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (77, 5);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (93, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (80, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (47, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (7, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (54, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (11, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (48, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (64, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (90, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (64, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (15, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (26, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (14, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (62, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (45, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (54, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (68, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (92, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (95, 1);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (81, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (39, 4);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (86, 2);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (71, 3);
insert into MASTERS_STUDENTS (idAlumnoAM, idMasterAM) values (50, 1);


-- Optional: Display the assigned student-master pairs
SELECT * FROM MASTERS_STUDENTS;