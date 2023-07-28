#!/usr/bin/env bash

echo
echo "# Docker Sandbox rocker_shiny"
echo
# docker run -i -t -h sandbox b56fc9e433b0 Rscript --vanilla verificar_dependencias.r
docker run -i -t -h sandbox b56fc9e433b0 Rscript --version

# echo
# echo "# Docker Sandbox rocker_geospatial"
# echo
# docker run -i -t -h sandbox a2a3f98ee772 Rscript --vanilla verificar_dependencias.r
