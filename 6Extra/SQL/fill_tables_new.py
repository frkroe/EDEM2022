import csv
import mysql.connector
import random

# Connect to MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="edem_user",
    password="edem_password",
    database="edem_db"
)
cursor = conn.cursor()

# Delete the tables if they already exist
query_drop2 = "DROP TABLE IF EXISTS MASTERS_STUDENTS;"
query_drop1 = "DROP TABLE IF EXISTS STUDENTS;"
query_drop0 = "DROP TABLE IF EXISTS MASTERS;"
cursor.execute(query_drop2)
cursor.execute(query_drop1)
cursor.execute(query_drop0)

# Create the MASTERS & STUDENTS table
query_create0 = "CREATE TABLE IF NOT EXISTS MASTERS(MasterID INT AUTO_INCREMENT NOT NULL UNIQUE,Name varchar(100) NOT NULL,CoordinatorID SMALLINT NOT NULL,Description varchar(255),EditionYear varchar(4),Modality varchar(30),Duration int,Price int,PRIMARY KEY (MasterID));"
query_create1 = "CREATE TABLE IF NOT EXISTS STUDENTS(StudentID INT AUTO_INCREMENT NOT NULL UNIQUE,FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL, BirthDate DATE,Telephone VARCHAR(50),Street VARCHAR(50),PostalCode VARCHAR(50),City VARCHAR(50),DNI varchar(9) NOT NULL,Gender VARCHAR(50), PRIMARY KEY (StudentID))"

cursor.execute(query_create0)
cursor.execute(query_create1)

# Insert Masters data
query_insert_masters = """
    INSERT INTO MASTERS (MasterID, Name, CoordinatorID, Description, EditionYear, Modality, Duration, Price)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
"""
masters_data = [
    (1, 'Master in Big Data', 1, 'Big Data is the new black', '2019', 'Full Time', 500, 10000),
    (2, 'Master in Digital Marketing', 2, 'Digital Marketing is the new black', '2019', 'Full Time', 500, 10000),
    (3, 'Master in Blockchain', 3, 'Blockchain is the new black', '2019', 'Full Time', 500, 10000),
    (4, 'Master in Artificial Intelligence', 4, 'Artificial Intelligence is the new black', '2019', 'Full Time', 500, 10000),
    (5, 'Master in Cybersecurity', 5, 'Cybersecurity is the new black', '2019', 'Full Time', 500, 10000),
    (6, 'Master in Internet of Things', 6, 'Internet of Things is the new black', '2019', 'Full Time', 500, 10000)
]
cursor.executemany(query_insert_masters, masters_data)

# Open the CSV file
with open('MOCK_DATA.csv', 'r') as file:
    # Create a CSV reader object
    csv_data = csv.reader(file)

    # Skip the header row if it exists
    header = next(csv_data, None)

    # Iterate over each row in the CSV file
    students_data = []
    for row in csv_data:
        # Extract the values from the CSV row (10 columns in the CSV file)
        StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender = row
        students_data.append((StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender))

    # Create the INSERT query for students
    query_insert_students = """
        INSERT INTO STUDENTS (StudentID, FirstName, LastName, BirthDate, Telephone, Street, PostalCode, City, DNI, Gender)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    cursor.executemany(query_insert_students, students_data)

# Create the MASTERS_STUDENTS table
query_create2 = """
    CREATE TABLE IF NOT EXISTS MASTERS_STUDENTS (
        MS_StudentID INT NOT NULL,
        MS_MasterID INT NOT NULL,
        PRIMARY KEY (MS_StudentID, MS_MasterID),
        FOREIGN KEY (MS_StudentID) REFERENCES STUDENTS (StudentID),
        FOREIGN KEY (MS_MasterID) REFERENCES MASTERS (MasterID)
    )
"""
cursor.execute(query_create2)

# Generate and execute the SQL query to insert data into MASTERS_STUDENTS
query_insert2 = "INSERT INTO MASTERS_STUDENTS (MS_StudentID, MS_MasterID) VALUES (%s, %s)"

student_ids = list(range(1, 101))
master_ids = list(range(1, 7))

try:
    for _ in range(200):
        student_id = random.choice(student_ids)
        master_id = random.choice(master_ids)
        values = (student_id, master_id)
        cursor.execute(query_insert2, values)
    
    conn.commit()
    print("Data inserted successfully!")
except mysql.connector.Error as err:
    print("Error inserting data:", err)

# Close the connection
cursor.close()
conn.close()
