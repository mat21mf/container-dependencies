#!/usr/bin/env R

str_repo <- c("https://cran.dcc.uchile.cl", "https://cran.r-project.org", "https://cran.rstudio.com")

suppressPackageStartupMessages({
  if(!require(DT)) {install.packages("DT", repos=str_repo)}
  if(!require(arrow)) {install.packages("arrow", repos=str_repo)}
  if(!require(data.table)) {install.packages("data.table", repos=str_repo)}
  if(!require(dplyr)) {install.packages("dplyr", repos=str_repo)}
  if(!require(ggplot2)) {install.packages("ggplot2", repos=str_repo)}
  if(!require(gridExtra)) {install.packages("gridExtra", repos=str_repo)}
  if(!require(lubridate)) {install.packages("lubridate", repos=str_repo)}
  if(!require(plot3D)) {install.packages("plot3D", repos=str_repo)}
  if(!require(plotly)) {install.packages("plotly", repos=str_repo)}
  if(!require(readxl)) {install.packages("readxl", repos=str_repo)}
  if(!require(shiny)) {install.packages("shiny", repos=str_repo)}
  if(!require(shinythemes)) {install.packages("shinythemes", repos=str_repo)}
  if(!require(tidyverse)) {install.packages("tidyverse", repos=str_repo)}
  if(!require(tools)) {install.packages("tools", repos=str_repo)}
  if(!require(openxlsx)) {install.packages("openxlsx", repos=str_repo)}
})
