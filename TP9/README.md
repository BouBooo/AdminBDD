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


!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/9.PNG "Alert")






## II. Deuxième partie

#### Réalisation d'un dashboard personnalisé
> Comptes utilisateurs créés par jour
!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/req3.PNG "Alert")
> Nombre total de clients
!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/req1.PNG "Alert")

> Nombre de payments de la semaine dernière
!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/req2.PNG "Alert")
> Volume de ventes par jour
!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/req4.PNG "Alert")

#### Résultat final
!['Alert config'](https://github.com/BouBooo/AdminBDD/blob/master/img/dashboard.PNG "Alert")
