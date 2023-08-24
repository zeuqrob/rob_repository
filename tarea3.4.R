library(dplyr)
library(tidyverse)
library(rmarkdown)

url <- "https://raw.githubusercontent.com/MinCiencia/Datos-COVID19/master/output/producto19/CasosActivosPorComuna_std.csv"
Casos_Activos <- read_csv(url)

comunas_sobre_50 <- Casos_Activos %>% filter(`Casos activos` > Poblacion * 50 / 100000)

