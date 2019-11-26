# Grafana

## I.Première partie
Ajout du service grafana en plus des trois serveurs déjà présents :
```yaml
grafana:
    image: grafana/grafana:latest
    environment:
      - GF_SECURITY_ADMIN_PASSWORD=pass
    depends_on:
      - prometheus
    ports:
      - "3000:3000"
    networks:
      - internal
```

On a maintenant accès à Grafana sur ```localhost:3000``` : 

!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/graf.PNG "Alert")


#### Création d'un dashboad contenant 3 pannels avec les informations suivantes :
- Taux d'opérations de lecture
- Nombre total de tentatives de connexion refusées
- Temps nécéssaire à l'exporter pour scrapper les données liées aux connections








## II. Deuxième partie
