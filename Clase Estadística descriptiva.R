# Introducción a R
# Crehana
# Clase 13 - Estadística descriptiva #

library(tidyverse)

#### Carga de datos RData ####

load("~/Crehana/poblacion.RData")


#### Media ####

mean(poblacion$edad)

#### Mediana ####

poblacion %>% arrange(peso)

mean(c(61.4,70.5))

median(poblacion$peso)

#### Percentiles ####

quantile(poblacion$altura)

quantile(poblacion$altura, probs = .5)

quantile(poblacion$altura, probs = seq(0,1,0.1))         

quantile(poblacion$altura, probs = seq(0,1,0.25))      

#### Mínimo y máximo ####

min(poblacion$edad)

max(poblacion$edad)

#### Agrupar datos ####

poblacion <- poblacion %>% 
  mutate(sexo = if_else(nombres %in% c("Ana", "María", "Sonia"), "Mujer", "Hombre"))

poblacion %>% 
  group_by(sexo) %>% 
  summarize(mean(edad))

edad_por_sexo <- poblacion %>% 
                  group_by(sexo) %>%
                    summarize(media = mean(edad))

menores <- poblacion %>% 
            group_by(sexo) %>% 
              filter(edad < mean(edad))
                     