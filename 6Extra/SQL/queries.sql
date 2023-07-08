-- Obtener cuantos los alumnos que se llaman igual

-- Option 1 with HAVING
SELECT FirstName, COUNT(*) as Total FROM MOCK_DATA GROUP BY FirstName HAVING Total > 1;

-- Option 2 with WHERE
SELECT * from (SELECT FirstName, COUNT(*) as Total FROM MOCK_DATA GROUP BY FirstName) as table1 WHERE table1.Total > 1;

-- Option 3 with EXISTS
SELECT * FROM MOCK_DATA as table1 WHERE EXISTS (
    SELECT FirstName, COUNT(*) as Total 
    FROM MOCK_DATA as table2 
    WHERE table1.FirstName = table2.FirstName 
    GROUP BY FirstName 
    HAVING Total > 1);

-- Count
SELECT FirstName, COUNT(*) as Total FROM (SELECT * FROM MOCK_DATA as table1 WHERE EXISTS (
    SELECT FirstName, COUNT(*) as Total 
    FROM MOCK_DATA as table2 
    WHERE table1.FirstName = table2.FirstName 
    GROUP BY FirstName 
    HAVING Total > 1)) as table3 
    GROUP BY FirstName;

-- Obtener solo el nombre que mas se repite y cuantas veces se repite
SELECT FirstName, COUNT(*) as Total FROM MOCK_DATA GROUP BY FirstName ORDER BY Total DESC LIMIT 1;
