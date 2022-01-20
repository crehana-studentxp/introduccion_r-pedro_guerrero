# Introducción a R
# Crehana
# Clase 3 - Tipos de datos #

#### Datos numéricos ####

numeric <- 8.5

class(numeric)
 
#### Datos enteros ####

## Creamos el valor

integer <- 8

## Observemos su clase

class(integer)

## Podemos transformarlo a entero de dos formas:

integer <- as.integer(8)

integer <- as.integer(integer)

class(integer)

## También podemos transformar un valor numérico en entero

numeric <- as.integer(numeric)

class(numeric)

#### Datos en caracter ####

## Creamos el valor 

character <- "Pedro"

## Veamos qué tipo de dato es

class(character)

## Transformemos datos de números a caracteres

numeric <- as.character(numeric)

class(numeric)

#### Datos lógicos ####

## Hay varias formas de crear este tipo de datos 

logical <- TRUE

logical <- FALSE

logical <- 3<2

logical <- 9>integer

## Clase del dato

class(logical)

