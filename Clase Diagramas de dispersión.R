# Introducción a R
# Crehana
# Clase 18 - Diagramas de dispersión #

library(tidyverse)

#### Carga y limpieza de datos ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

#### Diagramas de dispersión ####

ggplot(poblacion) + geom_point(aes(x = peso, y = edad)) +
  labs(title = "Edad y peso", subtitle = "Dispersión de la población") 


#### Color por variables ####

ggplot(poblacion) + geom_point(aes(x = peso, y = edad, color = edad)) +
  labs(title = "Edad y peso", subtitle = "Dispersión de la población") 

ggplot(poblacion) + geom_point(aes(x = peso, y = edad, color = sexo)) +
  labs(title = "Edad y peso", subtitle = "Dispersión de la población") 

#### Nombre de los ejes ####

ggplot(poblacion) + geom_point(aes(x = peso, y = edad)) +
  labs(title = "Edad y peso", subtitle = "Dispersión de la población") +
    xlab("Peso") + ylab("Edad")
    

#### Escala de los ejes ####

ggplot(poblacion) + geom_point(aes(x = peso, y = edad, )) +
  labs(title = "Edad y peso", subtitle = "Dispersión de la población") +
   xlab("Peso") + ylab("Edad") +
    ylim(0,27) + xlim(0,90)


