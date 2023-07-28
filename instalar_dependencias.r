#!/usr/bin/env R

str_repo <- c("https://cran.dcc.uchile.cl", "https://cran.r-project.org", "https://cran.rstudio.com")

if(suppressPackageStartupMessages(!require(DT))) {install.packages("DT", repos=str_repo)}
if(suppressPackageStartupMessages(!require(arrow))) {install.packages("arrow", repos=str_repo)}
if(suppressPackageStartupMessages(!require(data.table))) {install.packages("data.table", repos=str_repo)}
if(suppressPackageStartupMessages(!require(dplyr))) {install.packages("dplyr", repos=str_repo)}
if(suppressPackageStartupMessages(!require(ggplot2))) {install.packages("ggplot2", repos=str_repo)}
if(suppressPackageStartupMessages(!require(gridExtra))) {install.packages("gridExtra", repos=str_repo)}
if(suppressPackageStartupMessages(!require(lubridate))) {install.packages("lubridate", repos=str_repo)}
if(suppressPackageStartupMessages(!require(plot3D))) {install.packages("plot3D", repos=str_repo)}
if(suppressPackageStartupMessages(!require(plotly))) {install.packages("plotly", repos=str_repo)}
if(suppressPackageStartupMessages(!require(readxl))) {install.packages("readxl", repos=str_repo)}
if(suppressPackageStartupMessages(!require(shiny))) {install.packages("shiny", repos=str_repo)}
if(suppressPackageStartupMessages(!require(shinythemes))) {install.packages("shinythemes", repos=str_repo)}
if(suppressPackageStartupMessages(!require(tidyverse))) {install.packages("tidyverse", repos=str_repo)}
if(suppressPackageStartupMessages(!require(tools))) {install.packages("tools", repos=str_repo)}

