# Introducción a R
# Crehana
# Clase 19 - Box plots #

library(tidyverse)

#### Carga y limpieza de datos ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

#### Box plot ####

ggplot(poblacion, aes(x = sexo, y = peso)) + geom_boxplot() +
  labs(title = "Estadísticos descriptivos de peso", subtitle =  "Por sexo")+
    xlab("Peso") + ylab("Sexo")

#### Box plot + media ####

ggplot(poblacion, aes(x = sexo, y = peso)) + geom_boxplot() +
  stat_summary(fun = mean, geom = "point") +
    labs(title = "Estadísticos descriptivos de peso", subtitle =  "Por sexo")+
      xlab("Peso") + ylab("Sexo")

#### Modificación de leyenda ####

ggplot(poblacion, aes(x = sexo, y = peso, fill = sexo)) + geom_boxplot() +
  stat_summary(fun = mean, geom = "point") +
  labs(title = "Estadísticos descriptivos de peso", subtitle =  "Por sexo")+
  xlab("Peso") + ylab("Sexo") +
    scale_fill_discrete(name = "Sexo", labels = c("Mujer",
                                                "Hombre"))
