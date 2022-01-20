# Introducción a R
# Crehana
# Clase 7 - Introducción a tidyverse #

install.packages("tidyverse")
library(tidyverse)

# Funciones y argumentos

# Raíz de 2

sqrt(2)

# Más de una función

log(sqrt(poblacion$edad))

# Pipas

2 %>% sqrt()

poblacion$edad %>% sqrt() %>% log()

2 %>% log(base = 10)
 

