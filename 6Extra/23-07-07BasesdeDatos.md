### Clase del 07 de Julio de 2023 con Pedro
# Bases de Datos

## Introducción
Una base de datos digital es un conjunto de datos almacenados en un dispositivo electrónico. Los datos son los hechos conocidos que pueden registrarse y que tienen un significado implícito. Los datos se organizan en registros, cada uno de los cuales consta de campos y cada campo contiene una o más piezas de datos. Los registros se organizan en una o más tablas, cada una de las cuales consta de uno o más campos. Los datos se manipulan mediante el uso de comandos estructurados de consulta de datos, que permiten la recuperación, actualización, inserción y eliminación de datos en la base de datos.

## Marcas de Bases de Datos
* MySQL
* Oracle
* MariaDB
* PostgreSQL
* ...
* MongoDB
* Cassandra

## SQL
SQL es un lenguaje de programación diseñado para administrar datos almacenados en un sistema de gestión de bases de datos relacionales (RDBMS). SQL se utiliza para comunicarse con una base de datos. Surge como un lenguaje natural. Según ANSI (American National Standards Institute), es el estándar de lenguaje para sistemas de gestión de bases de datos relacionales. SQL declara lo que se debe hacer en lugar de cómo hacerlo. Esto se debe a que el motor de base de datos traduce el código SQL a un código que puede entender. 

SQL consta de tres elementos principales:
* DDL (Data Definition Language): CREATE, ALTER, DROP, TRUNCATE, RENAME
* DML (Data Manipulation Language): SELECT, INSERT, UPDATE, DELETE
* DCL (Data Control Language): GRANT, REVOKE


## Crear una base de datos con MySQL
### Con Docker
Creamos una base datos con un Dockerfile
```dockerfile
FROM mysql:5.7
....
```
Crear una imagen:
```bash
docker build -t my-mysql-image .
```
Ejecutar la imagen:
```bash
docker run --name my-mysql-container -e MYSQL_ROOT_PASSWORD=123456 my-mysql-image
```
Entrar en contenedor:
```bash
docker exec -it <CONTAINER ID> bash

# OR
docker exec -it <CONTAINER ID>  mysql -u <MYSQL_USER> -p
```

Ahora estamos dentro del contenedor y podemos poner comandos de mysql, por ejemplo:
```sql
show databases;
```

Para salir del contenedor:
```bash
exit
```

### Sin Dockerfile
Ejecutar un contenedor con una base de datos:
```bash	
docker run -d -p 3306:3306 --name my-mysql-container -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=edem_db -e MYSQL_USER=edem_user -e MYSQL_PASSWORD=edem_password mysql:latest

```
Ver los contenedores que hay en ejecución:
```bash	
docker ps
```
Entrar en contenedor:
```bash
mysql -h localhost --port 3306 --user edem_user --password=edem_password --protocol=tcp
```

Al final para entrar en la base de datos:
```mysql
use edem_db;

source <PATH TO SQL-FILE>
```

## Nomenclatura de Bases de Datos
* No usar espacios
* No usar caracteres especiales
* el nombre de las tablas TODO EN MAJUSCULAS Y PLURAL (ej: USERS, USERS_ROLES, ...)

## MySQL Data Types
|DATA TYPE|SPEC|DATA TYPE|SPEC|
|---|---|---|---|
|CHAR|String(0-255)|INT|Integer|
|VARCHAR|String(0-255)|BIGINT|Integer|
|TINYTEXT|String(0-255)|FLOAT|Decimal|
|TEXT|String(0-65535)|DOUBLE|Decimal|
|BLOB|String(0-65535)|DECIMAL|Decimal|
|MEDIUMTEXT|String(0-16777215)|DATE|Date|
|MEDIUMBLOB|String(0-16777215)|DATETIME|Date|
|LONGTEXT|String(0-4294967295)|TIMESTAMP|Date|
|LONGBLOB|String(0-4294967295)|TIME|Date|
|TINYINT|Integer|ENUM|One of present options|
|SMALLINT|Integer|SET|Selections of present options|
|MEDIUMINT|Integer|BOOLEAN|TINYINT(1)|

## Restricciones / Constraints
* NOT NULL
* UNIQUE
* PRIMARY KEY
* FOREIGN KEY, REFERENCES
* DEFAULT
* AUTO_INCREMENT
* CHECK

Hay un orden de las restricciones que hay que seguir.


ON DELETECASCADE: Si boor una fila de una tabla, borro todas las filas de la tabla que tienen una referencia a esa fila (referencia de foreign key). P.ej. Si borro un cliente, borro todos sus ventas.

ON UPDATECASCADE: Si actualizo una fila de una tabla, actualizo todas las filas de la tabla que tienen una referencia a esa fila (referencia de foreign key). P.ej. Si actualizo un cliente, actualizo todos sus ventas.

### Practica
[Practica](https://sql-island.informatik.uni-kl.de/)
[Practica 2](https://datalemur.com/questions/)