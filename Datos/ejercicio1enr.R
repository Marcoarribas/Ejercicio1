#1er EJERCICIO RETO 04 DATASCIENCE:
library(readxl)
library(dplyr)
#como ya hemos generado un proyecto, ya estamos en el directorio en el que queremos trabajar
getwd()

#5.Carga del fichero y revisión de formatos:
df<-read_excel("Datos//online_retail_II.xlsx")
str(df)
class(df$InvoiceDate)
df$InvoiceDate<-as.Date(df$InvoiceDate)
df$Invoice<-as.factor(df$Invoice)

#6.Análisis básico de la información contenida en el fichero:
summary(df)

#7. Calcula cuantos pedidos distintos hay en el fichero:
length(unique(df$Invoice))

#10. Calcula el precio medio de producto por pedido:
precio_medio_productos_por_pedido<-df %>% 
  group_by(Invoice) %>% 
  summarise(precio_medio=mean(Price))
  
#12. Calcula el numero de pedidos por pedido:
numero_productos_por_pedido<-df %>% 
  group_by(Invoice) %>% 
  summarise(numero_productos=n())

#13. Calcula el precio por pedido:
precio_por_pedido<-df %>% 
  group_by(Invoice) %>% 
  summarise(precio=sum(Price))


