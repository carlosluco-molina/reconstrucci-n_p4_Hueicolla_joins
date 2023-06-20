library(tidyverse)
library(readxl)
##registro de como se unieron las bases de datos de la parcela p4 de hueicolla, este archivo contiene la base de 
## de la medicion del 2022 el archivo de la reconstrucción realizada en verano del 2023 y además un registro de como
##quedaron los cuadrantes por especies e id en la parcela reconstruida 
medicion_2022 <- read_excel("datos/medicion_2022.xlsx")
reconstruccion_2023 <- read_excel("datos/reconstruccion_2023.xlsx")
id_cuadrantes <- read_excel("datos/id_cuadrantes.xlsx")
# primero voy a filtrar la base reconstrucción 2023 para los id´s mayores a 1500 porque estos 
# son árboles que si o si van en la base de datos reconstruida.
reconstruida<-reconstruccion_2023 %>% filter(id>="1500")
## también voy a eliminar los mayores a 1500 de la base de datos reconstruccion_2023
reconstruccion_2023 <- reconstruccion_2023 %>%  filter(id>=1500)
##ahora hago el full_loin de las bases de datos medicion_2022 y reconstruccion 2023
 join<-full_join(medicion_2022,reconstruccion_2023,by="id")

 