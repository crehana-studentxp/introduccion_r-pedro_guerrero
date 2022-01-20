# Introducción a R
# Crehana
# Clase 16 - Introducción a ggplot #


library(tidyverse)

#### Carga y limpieza de datos ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

### Creando el lienzo ####

ggplot(poblacion)

#### Estética #### 

ggplot(poblacion, aes(x= sexo, y = edad)) + geom_point()

ggplot(poblacion) + geom_point(aes(x = sexo, y = edad))

# Añadimos color

ggplot(poblacion, aes(x= sexo, y = edad, color = edad)) + geom_point()

ggplot(poblacion) + geom_point(aes(x = sexo, y = edad))
