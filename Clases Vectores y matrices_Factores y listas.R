# Introducción a R
# Crehana
# Clases 4 y 5 - Vectores, matrices factores y listas#

rm(list = ls()) 

#### Vectores ####

## Construyamos un vector de nombres

nombres <- c("Pedro", "Ana", "Luis", "María", "Juan", "Sonia")

table(nombres)

class(nombres)

edad <- c(23,24,23,24,25,26)

#### Matrices ####

poblacion <- data.frame(nombres = c("Pedro", "Ana", "Luis", "María", "Juan", "Sonia"),
                        edad =  c(23,24,23,24,25,26))


class(poblacion$nombres)


#### Factores ####


alimentos <- data.frame(alimento =  c("Fresa", "Piña", "Sandía", "Mango", "Tomate", "Cebolla", "Pollo"),
                        categoria = c("Fruta", "Fruta", "Fruta", "Fruta", "Vegetal", "Vegetal", "Proteína"))

alimentos$alimento <- as.factor(alimentos$alimento)

#### Listas ####

lista1 <- list(nombres, edad)

lista1

lista1[[1]]

lista1[[1]][[2]]

nombres <- lista1[[1]]
