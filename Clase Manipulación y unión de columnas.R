# Introducción a R
# Crehana
# Clase 10 - Manipulación y unión de columnas #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")

#### Selección de columnas ####

edad <- poblacion %>% select(c(nombres, edad))

edad <- poblacion %>% select(-c(peso, altura))

#### Transformación de columnas ####

poblacion <- poblacion %>% mutate(imc = peso/(altura/100)^2)

poblacion <- poblacion %>% mutate(clas_imc = case_when(imc < 18.5 ~ "Bajo",
                                                       imc >= 18.6 & imc <= 24.9 ~ "Normal",
                                                       imc >= 25 & imc <= 29.9 ~ "Alto",
                                                       imc >= 30 ~ "Muy alto"))

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

