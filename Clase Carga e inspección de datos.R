# Introducción a R
# Crehana
# Clase 8 - Carga e inspección de datos #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")

#### Carga de datos de Excel ####

install.packages("readxl")
library(readxl)

poblacion_excel <- read_excel("~/Crehana/poblacion.xlsx")

#### Carga de datos delimitados ####

poblacion_delim <- read_delim("~/Crehana/poblacion.csv", delim = ",")

#### Inspección de datos ####

view(poblacion)
head(poblacion)
glimpse(poblacion)
summary(poblacion)
