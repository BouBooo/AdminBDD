## Instanciation de 3 serveurs Maria
```yml
version: '3.7'

services:
  maria_cluster_1:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria:/var/lib/mysql
    ports:
      - "3306"

  maria_cluster_2:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./maria_2:/var/lib/mysql
    ports:
      - "3306"

  maria_cluster_3:
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
