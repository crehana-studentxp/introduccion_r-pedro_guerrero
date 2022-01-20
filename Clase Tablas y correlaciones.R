# Introducción a R
# Crehana
# Clase 14 - Tablas y correlaciones #

#### Carga y limpieza de datos ####

load("~/Crehana/poblacion.RData")

poblacion <- poblacion %>% mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Femenino", "Masculino"))

#### Tablas ####

table(poblacion$edad)

table(poblacion$sexo, poblacion$edad)

prop.table(table(poblacion$sexo, poblacion$edad))


#### Correlaciones ####

cor(poblacion$edad, poblacion$peso, method = "pearson")


