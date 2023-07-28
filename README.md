# Container Dependencies

## Propósitos.

* Seleccionar imágenes disponibles para modificar y utilizar como contenedor base en diferentes aplicaciones.
* Compilar varias imágenes y medir sus respectivos tiempos.

```console
docker build . -t rocker/geospatial-sdea:dev-osgeo -f rocker-geospatial-data-table.Dockerfile
```

```console
docker build . -t rocker/shiny-verse-sdea:4.3.1 -f rocker-shiny-verse-data-table.Dockerfile
```

```console
docker build . -t rocker/shiny-sdea:4.3.1 -f rocker-shiny-data-table.Dockerfile
```

Se descarta la última por tardar más de 25 minutos en compilar.
