

#se instala el paquete modeest para obtener la moda
#install.packages("modeest") #funcion que instala el paquete

#Medidas de Tendencia Central  >> si no da la mediana ordenamos el arreglo sort
#datos <- c(1, 4, 7, 2, 10, 9, 8, 3, 4, 12, 4, 8, 4, 11, 9)
datos <- c(1,2,3,4,5)

#lectura desde consola(Entrada Estandard)
#datos_entrada <- scan()

minimo <- min(datos)#minimo
maximo <- max(datos)#maximo
media <- mean(datos)#media(promedio)
mediana <- median(datos)#mediana
library(modeest)# carga la biblioteca modeest
moda <- mfv(datos)# calcula la moda 
quantile(datos)#todos los cuartiles
cuartil1 <- quantile(datos, 0.25)#cuartil 1
cuartil3 <- quantile(datos, .75)#cuartil 3
IQR <- IQR(datos)#IQR
w1 <- cuartil1-(IQR*1.5)
w2 <- cuartil3+(IQR*1.5)

#resultados obtenidos
datos
media
mediana
moda
maximo
minimo
cuartil1
cuartil3
IQR
w1
w2

#Gr?fica
boxplot.default(datos, col="green", main="Medidas de Tendencia Central", lwd=2)

#eliminacon de objectos
rm(datos, minimo, maximo, media, mediana, moda, cuartil1, cuartil3, IQR, w1, w2)


