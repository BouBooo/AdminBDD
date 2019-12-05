
## Image docker
```yaml

version: '3.7'

services:
  mysql:
    image: debst/mysql_dba:1.0.1
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: toor
    volumes:
      - ./mysql:/var/lib/mysql
      - ./backups:/backups
  
  mariadb:
    image: mariadb:10.4
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: password
    volumes:
      - ./maria:/var/lib/mysql
      - ./backups:/backups
    links:
      - "mysql:mysql"
  ```
