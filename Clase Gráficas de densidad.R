# Introducción a R
# Crehana
# Clase 20 - Diagramas de densidad #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% 
  mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

#### Diagrama de dispersión ####

ggplot(poblacion, aes(x = edad)) +  
  geom_density(color = "red")  +
  labs(title = "Distribución de edad", subtitle =  "Toda la población")+
  xlab("Peso") + ylab("Sexo")

#### Agrupando por sexo ####

ggplot(poblacion, aes(x = edad, fill = sexo)) +  
  geom_density(color = "black") +
  labs(title = "Distribución de edad", subtitle =  "Por sexo")+
  xlab("Peso") + ylab("Sexo") +
  scale_fill_discrete(name = "Sexo", labels = c("Mujer",
                                                "Hombre"))

#### Histograma + diagrama de densidad ####

ggplot(poblacion, aes(x = edad)) +  geom_bar(color = "black", fill = "white") +
  geom_density(color = "red") +
  labs(title = "Frecuencia y distribución de edad", subtitle =  "Toda la población")+
  xlab("Peso") + ylab("Sexo") 


ggplot(poblacion, aes(x = edad, fill = sexo)) +  geom_bar(color = "black", fill = "white") +
  geom_density(color = "black") +  
  labs(title = "Frecuencia y distribución de edad", subtitle =  "Por sexo")+
  xlab("Peso") + ylab("Sexo") +
  scale_fill_discrete(name = "Sexo")

#### Guardar gráfica ####


ggplot(poblacion, aes(x = edad, fill = sexo)) +  geom_bar(color = "black", fill = "white") +
  geom_density(color = "black") +  
  labs(title = "Frecuencia y distribución de edad", subtitle =  "Por sexo")+
  xlab("Peso") + ylab("Sexo") +
  scale_fill_discrete(name = "Sexo") + 
  ggsave("frecuencia y distribucion.jpg")

ggplot(poblacion, aes(x = edad, fill = sexo)) +  geom_bar(color = "black", fill = "white") +
  geom_density(color = "black") +  
  labs(title = "Frecuencia y distribución de edad", subtitle =  "Por sexo")+
  xlab("Peso") + ylab("Sexo") +
  scale_fill_discrete(name = "Sexo") + 
  ggsave("frecuencia y distribucion.jpg", width = 6, height = 4)
