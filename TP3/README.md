
## I. Premier script
### Création de la base et des tables


```sql
CREATE SCHEMA IF NOT EXISTS teams;
USE teams;

DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;

CREATE TABLE IF NOT EXISTS games
(
    match_date DATE,
    victory INT,
    observations TEXT
);

CREATE TABLE IF NOT EXISTS players
(
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    start_date DATE
);
```

### Création des utilisateurs
```sql
GRANT ALL PRIVILEGES ON teams.games TO 'manager'@'localhost' IDENTIFIED BY 'manager_password';
GRANT SELECT, INSERT ON teams.players TO 'recruiter'@'localhost' IDENTIFIED BY 'recruiter_password';
FLUSH PRIVILEGES;
```

___


## II.Second script
### Insertion de données
```sql
USE teams;

INSERT INTO games (match_date, victory, observations) VALUES ('2019-5-6', 1, "Observation1");
INSERT INTO games (match_date, victory, observations) VALUES ('2019-5-7', 0, "Observation2");
INSERT INTO games (match_date, victory, observations) VALUES ('2019-5-8', 1, "Observation3");
```

## Exécution des scripts
```sql
mysql -u root -p < create_database.sql
mysql -u manager -p < insert_data.sql
```
