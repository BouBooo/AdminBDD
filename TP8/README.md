# Monitoring Prometheus

## I. Première partie

### Configuration des serveurs :
- Serveur MariaDB
- Serveur Prometheus
- Serveur Mysql-Exporter

``` yaml
version: '3.7'

services:
  maria:
    image: mariadb:10.4
    restart: on-failure
    environment:
     MYSQL_ROOT_PASSWORD: toor
     MYSQL_DATABASE: test
     MYSQL_USER: exporter
     MYSQL_PASSWORD: toor
    ports:
     - "3306"
    networks:
     - internal

  prometheus:
    image: prom/prometheus
    restart: on-failure
    ports:
     - "9090:9090"
    volumes:
     - ./conf/prometheus.yml:/etc/prometheus/prometheus.yml
    networks:
     - internal

  mysql_exporter:
    image: prom/mysqld-exporter
    restart: on-failure
    ports:
     - "9104:9104"
    environment:
     - "DATA_SOURCE_NAME=root:toor@(maria:3306)/"
    networks:
     - internal

networks:
 internal:
```

___

### Création du fichier de config Prometheus : 
```yaml
global:
  scrape_interval:     5s
  scrape_timeout:      3s
  evaluation_interval: 5s
 
rule_files:
  - "alert.rules"
 
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
      - targets: ['mysql_exporter:9104']
```

___

### Création de notre user exporter
> La création de l'utilisateur se faire depuis un shell sur le container maria.
Commande : 
> docker exec -it maria_container_name bash

```sql
CREATE USER 'exporter'@'%' IDENTIFIED BY 'toor' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS, REPLICATION CLIENT, SELECT ON *.* TO 'exporter'@'%';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS test;
USE test;
CREATE TABLE tasks (name VARCHAR(255));
```


L'idée ici va être de réaliser un grand nombre d'insertions dans la base de données que nous venons de créer.
Une fois que c'est fait on devrait trouver un minimum de données à l'intérieur : 
```
MariaDB [test]> SELECT * FROM tasks;
+------+
| name |
+------+
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
| task |
+------+
23 rows in set (0.000 sec)
```

Maintenant si on analyze les ordres d'insertion qui ont été executés sur notre base :

```
Element :  mysql_global_status_commands_total{command="insert",instance="mysql_exporter:9104",job="prometheus"}	
Value : 23
```
> On retrouve bien les 23 rows insérées précédemment.


