# Container Dependencies

## Propósitos.

* Seleccionar imágenes disponibles para modificar y utilizar como contenedor base en diferentes aplicaciones.
* Compilar varias imágenes y medir sus respectivos tiempos.

```console
DOCKER_BUILDKIT=1 docker build --progress=plain . -t rocker/geospatial-sdea:dev-osgeo -f rocker-geospatial-data-table.Dockerfile
```

```console
DOCKER_BUILDKIT=1 docker build --progress=plain . -t rocker/shiny-verse-sdea:4.3.1 -f rocker-shiny-verse-data-table.Dockerfile
```

```console
DOCKER_BUILDKIT=1 docker build --progress=plain . -t rocker/shiny-sdea:4.3.1 -f rocker-shiny-data-table.Dockerfile
```

Se descarta la última por tardar más de 25 minutos en compilar.

## Reciente.

* Incluir cache con buildkit para dependencias.

## Por hacer.

* Publicar contenedor base en formato Docker y Singularity.
* Integración continua para github y gitlab.
