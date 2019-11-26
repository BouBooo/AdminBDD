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





## II. Deuxième partie
