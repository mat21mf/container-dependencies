#!/usr/bin/env R

str_repos <- "https://cran.r-project.org"
if(suppressPackageStartupMessages(!require(data.table))) {install.packages("data.table" , repos = str_repos )}
# suppressPackageStartupMessages(library(data.table))
# data.table::update_dev_pkg()
# suppressPackageStartupMessages(library(data.table))
# cat('\n')

# provisional
vec_dependencias <- c(
"DT",
"arrow",
"data.table",
"dplyr",
"ggplot2",
"gridExtra",
"leaflet",
"leaflet.extras",
"lubridate",
"openxlsx",
"plot3D",
"plotly",
"pool",
"RMySQL",
"RPostgreSQL",
"readxl",
"sf",
"shiny",
"shinyjs",
"shinythemes",
"tidyverse",
"tools"
)

obj_instalados <- setDT(as.data.frame(installed.packages()))
# vec_dependencias %in% obj_instalados$Package
# str(obj_instalados)

obj_requeridos <- setDT(data.frame(Package = vec_dependencias))
obj_requeridos[, Estado := "" ]
# print(obj_requeridos)
obj_interseccion <- obj_requeridos[obj_instalados[, .(Package, Version)], on=.(Package), nomatch=0]
obj_interseccion[, Estado := ifelse( !Version %in% "", TRUE, FALSE) ]
obj_outer <- obj_interseccion[obj_requeridos, on=.(Package) ]
obj_outer[, i.Estado := ifelse( !is.na(Version), TRUE, FALSE ) ]
obj_outer[, Estado := NULL ]
print(obj_outer)
# cat('\n')
