#!/usr/bin/env bash

# DOCKER_BUILDKIT=1 docker build --progress=plain . -t rocker/shiny-verse-sdea-buildkit:4.3.1 -f rocker-shiny-verse-buildkit.Dockerfile
# docker tag rocker/shiny-verse-sdea-buildkit:4.3.1 docker21mat/shiny-verse-sdea:4.3.1
# docker push docker21mat/shiny-verse-sdea:4.3.1

DOCKER_BUILDKIT=1 docker build --progress=plain . -t rocker/shiny-verse-sdea:4.3.1 -f rocker-shiny-verse-data-table.Dockerfile
docker tag rocker/shiny-verse-sdea:4.3.1 docker21mat/shiny-verse-sdea:4.3.1
docker push docker21mat/shiny-verse-sdea:4.3.1
