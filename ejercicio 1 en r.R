library(readxl)
#como ya hemos generado un proyecto, ya estamos en el directorio en el que queremos trabajar
getwd()
df<-read_excel("Datos//online_retail_II.xlsx")

str(df)

df$InvoiceDate<-as.Date(df$InvoiceDate)

summary(df)

length(unique(df$Invoice))

