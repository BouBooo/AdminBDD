
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

## Stratégie de backup avec cron
```
0 17 * * 1 mysqldump -u root --password=toor --all-databases | gzip -9 -c > /backups/schema.sql
```

## Stratégie de backup avec logrotate
```
/backups/all-databases.sql.bz2 {
        missingok
        rotate 5
        daily
        dateext
        dateformat %Y-%m-%d-%H-%M-%S.
        extension bz2
        nocompress
        postrotate
                mysqldump -u root -toor --all-databases | bzip2 > /backups/all-databases.sql.bz2
        endscript
}
```
