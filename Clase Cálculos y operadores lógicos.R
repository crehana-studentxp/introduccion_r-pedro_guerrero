# Introducción a R
# Crehana
# Clase 6 - Cálculos y operadores lógicos #

#### Preparación del ambiente de trabajo ####

rm(list = ls())

poblacion <- data.frame(nombres = c("Pedro", "Ana", "Luis", "María", "Juan", "Sonia"),
                        edad =  c(23,24,23,24,25,26),
                        peso = c(70.5, 49.2, 85.3, 61.4, 73.9, 55.5),
                        altura = c(170.5, 149.2, 185.3, 161.4, 173.9, 155.5))

#### Operaciones aritméticas ####

# Suma

2+3

poblacion$edad + 10

poblacion$edad + poblacion$peso

# Resta

2-3

poblacion$edad - 10

poblacion$edad - poblacion$peso

# Multiplicación

2*3

poblacion$edad * 10

poblacion$edad * poblacion$peso

# División

2/3

poblacion$edad / 10

poblacion$edad / poblacion$peso

#### Otras operaciones matemáticas ####

# Raíz cuadrada

sqrt(2)

sqrt(poblacion$edad)

# Potencias y otras raíces

2^3

poblacion$edad ^ 3

poblacion$edad ^ poblacion$peso

2 ^ (1/3)

poblacion$edad ^ (1/3)

# Logaritmos

log(2)

log(2, base = 10)

log(poblacion$edad)

#### Operadores relacionales ####

# Menor (menor o igual) que

2 < 3
2 <= 3


# Mayor (mayor o igual) que

2 > 3

2 >= 3

#Igual que

2 == 2

# Diferente que 

2 != 3

#### Operadores lógicos ####

# & (y)

2 > 1 & 2 < 5

# | (o)

2 > 1 | 2 < 5

# ! (no)

2 >! 1 & 2 <! 5

