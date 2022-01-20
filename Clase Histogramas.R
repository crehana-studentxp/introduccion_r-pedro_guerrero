# Introducción a R
# Crehana
# Clase 17 - Histogramas #

library(tidyverse)

#### Carga y limpieza de datos ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

#### Histograma ####

## Gráfica 

ggplot(poblacion, aes(x = sexo)) + geom_bar()

## Título y subtítulo

ggplot(poblacion, aes(x = sexo)) + geom_bar() +
  labs(title = "Distribución de género", subtitle = "Población")

## Color 

ggplot(poblacion, aes(x = sexo, fill = sexo)) + geom_bar() +
  labs(title = "Distribución de género", subtitle = "Población")

ggplot(poblacion, aes(x = sexo)) + geom_bar(fill = "blue") +
  labs(title = "Distribución de género", subtitle = "Población")

## Media agrupada por sexo

bd_graf <- poblacion %>% group_by(sexo) %>% summarise(mean = mean(edad)) 

ggplot(bd_graf, aes(x=sexo, y=mean)) + geom_bar(stat = 'identity') +
  labs(title = "Media de edad", subtitle = "Por sexo")


