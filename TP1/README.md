### Création d'une base de donnée, avec une table d'exemple
```sql
CREATE DATABASE tp1;
USE tp1;
CREATE TABLE IF NOT EXISTS clients
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom VARCHAR(255),
prenom VARCHAR(255),
date_naissance DATE,
code_postal INT
)
```

### Insertion de fausse données
```sql
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
INSERT INTO clients (nom, prenom, date_naissance, code_postal) VALUES ("NICOLAS", "Flo", NOW(), 33300);
```

### Filtrage des données
```sql
SELECT prenom, code_postal FROM clients;
```
