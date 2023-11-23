#!/usr/bin/env bash

# DOCKER_BUILDKIT=1 docker build --progress=tty . -t rocker/shiny-verse-sdea-buildkit:4.3.1 -f rocker-shiny-verse-buildkit.Dockerfile
# docker tag rocker/shiny-verse-sdea-buildkit:4.3.1 docker21mat/shiny-verse-sdea:4.3.1
# docker push docker21mat/shiny-verse-sdea:4.3.1

DOCKER_BUILDKIT=1 docker build --progress=tty . -t docker21mat/shiny-verse-sdea:4.3.1 -f rocker-shiny-verse-data-table.Dockerfile
docker tag docker21mat/shiny-verse-sdea:4.3.1 docker21mat/shiny-verse-sdea:4.3.1
docker push docker21mat/shiny-verse-sdea:4.3.1

DOCKER_BUILDKIT=1 docker build --progress=tty . -t docker21mat/r-geospatial-sdea:dev-osgeo -f rocker-geospatial-data-table.Dockerfile
docker tag docker21mat/r-geospatial-sdea:dev-osgeo docker21mat/r-geospatial-sdea:dev-osgeo
docker push docker21mat/r-geospatial-sdea:dev-osgeo
