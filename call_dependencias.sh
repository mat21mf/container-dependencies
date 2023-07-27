#!/usr/bin/env bash

singularity exec /mnt/disk02/_singularity/rocker_shiny Rscript --vanilla verificar_dependencias.r
singularity exec /mnt/disk02/_singularity/rocker_geospatial Rscript --vanilla verificar_dependencias.r
