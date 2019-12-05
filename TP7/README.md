## Instanciation de 3 serveurs Maria
```yml
version: '3.7'

services:
  maria1:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria:/var/lib/mysql
    ports:
      - "3306"

  maria2:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria_2:/var/lib/mysql
    ports:
      - "3306"

  maria3:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria_3:/var/lib/mysql
    ports:
      - "3306"
```

## Communication entre les serveurs
> Ajout d'un nouveau réseau
```yml
networks:
  internal:
```
  
> On ajouter chaque serveur dans le réseau
```yml
  networks:
      - internal
```

## Configuration finale avec dump
```yml
version: '3.7'

services:
  maria1:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    command:
      - "--wsrep-new-cluster"
    volumes:
      - ./maria:/var/lib/mysql
      - ./dump:/dump
      - ./config_1/maria1.cnf:/etc/mysql/mariadb.conf.d/maria1.cnf
    ports:
      - "3306"
      - "4444"
      - "4567"
      - "4568"
    networks:
      - internal

  maria2:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria_2:/var/lib/mysql
      - ./dump:/dump
      - ./config_2/maria2.cnf:/etc/mysql/mariadb.conf.d/maria2.cnf
    ports:
      - "3306"
      - "4444"
      - "4567"
      - "4568"
    networks:
      - internal

  maria3:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria_3:/var/lib/mysql
      - ./dump:/dump
      - ./config_3/maria3.cnf:/etc/mysql/mariadb.conf.d/maria3.cnf
    ports:
      - "3306"
      - "4444"
      - "4567"
      - "4568"
    networks:
      - internal

networks:
  internal:
  ```
