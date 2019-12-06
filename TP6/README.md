# Serveur de réplication

## Configuration des services
```yml
version:  '3.7'

services:
  master:
    image: mariadb:10.4
    container_name: master
    ports:
      - "3306"
    environment:
      - MYSQL_ROOT_PASSWORD=toor
    volumes:
     - ./maria:/var/lib/mysql
     - ./backups:/backups
     - ./config/master.cnf:/etc/mysql/mariadb.conf.d/master.cnf
     networks:
      - internal

  slave:
    image: mariadb:10.4
    container_name: slave
    environment:
      - MYSQL_ROOT_PASSWORD=toor
    volumes:
     - ./maria_slave:/var/lib/mysql
     - ./backups_slave:/backups
     - ./config/slave.cnf:/etc/mysql/mariadb.conf.d/slave.cnf
   networks:
    - internal

networks:
  internal:
```


## Configuration master & slave
> Slave
```
[mariadb]
log-bin
server_id=2
log-basename=slave
```

> Master
```
[mariadb]
log-bin
server_id=1
log-basename=master
```

## Ajouter de l'utilisateur avec les droits de réplication
```sql
CREATE USER IF NOT EXISTS 'replicant'@'%' identified by 'password'; 
GRANT replication slave on *.* to replicant; 
FLUSH privileges;
```

## Ajout du master au slave + Démarrage
```sql
CHANGE MASTER TO MASTER_HOST='master', MASTER_USER='replicant', MASTER_PASSWORD='password', MASTER_PORT=3306, MASTER_LOG_FILE='master1-bin.000007',, MASTER_LOG_POS=MASTER_LOG_POS=1244, MASTER_CONNECT_RETRY=10;
```
```sql
START slave; 
SHOW slave status;
```

## Test de réplication
```sql
CREATE DATABASE testReplication
```

> Depuis le slave :
```sql
SHOW DATABASES
```

> La base est bien présente sur le slave
```
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| testReplication    |
+--------------------+
```
