# Introducción a R
# Crehana
# Clase 11 - Unión de data frames #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")
load("~/Crehana/nacionalidad.RData")

#### Unión de data frames ####

## Full join

full_join <- poblacion %>% full_join(nacionalidad, by = "nombres")

## Inner join

inner_join <- poblacion %>% inner_join(nacionalidad, by = "nombres")

## Left y right join

left_join <- poblacion %>% left_join(nacionalidad, by = "nombres")

right_join <- poblacion %>% right_join(nacionalidad, by = "nombres")
