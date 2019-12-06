# Base de donnée MySQL en MariaDB

## Configuration
```yaml
version:  '3.7'
services:
  mysql:
    image: mysql/mysql-server
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
     - ./maria:/var/lib/mysql
     - ./backups:/backups
    links:
     - maria

  maria:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
     - ./maria:/var/lib/mysql
     - ./backups:/backups
    links:
     - mysql
 ```
 
 ## Création d'une base et insertion de données

> Création
 ```sql
 CREATE DATABASE mysqldb;
USE mysqldb;
CREATE TABLE IF NOT EXISTS clients
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(255),
prenom VARCHAR(255),
date_naissance DATE,
code_postal INT
)
```

> Insertion
```mysql
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
```

