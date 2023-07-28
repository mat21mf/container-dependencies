#!/usr/bin/env bash

# echo
# echo "# Singularity Sandbox rocker_shiny"
# echo
# singularity exec /mnt/disk02/_singularity/rocker_shiny Rscript --vanilla verificar_dependencias.r

echo
echo "# Singularity Sandbox rocker_shiny_verse"
echo
singularity exec /mnt/disk02/_singularity/rocker_shiny_verse Rscript --vanilla verificar_dependencias.r

echo
echo "# Singularity Sandbox rocker_geospatial"
echo
singularity exec /mnt/disk02/_singularity/rocker_geospatial Rscript --vanilla verificar_dependencias.r
