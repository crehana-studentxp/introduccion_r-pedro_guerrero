# Introducción a R
# Crehana
# Clase 9 - Manipulación de filas #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")

#### Filtrar datos ####

ana_luis <- filter(poblacion, poblacion$nombres == "Ana" | poblacion$nombres == "Luis")

ana_luis <- poblacion %>% filter(nombres == "Ana" | nombres == "Luis")

mayores <- poblacion %>% filter(edad >= 25)

peso_altura <- poblacion %>% filter(peso/altura < 0.4)

#### Ordenar datos ####

nombres <- poblacion %>% arrange(nombres)

edad <- poblacion %>% arrange(edad)

nombres_desc <- poblacion %>% arrange(desc(nombres))

edad_desc <- poblacion %>% arrange(desc(edad))

