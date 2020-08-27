

#se instala el paquete moments para obtener la asimetria(sesgo) y la kurtosis
#funcion que instala el paquete
#install.packages("moments")

#Medidas de Dispersion(momentos)
#datos <- c(4, 4, 5, 5, 4, 2, 7, 7, 5, 6, 4, 3, 6, 3, 2, 1)
datos <- c(11,22,32,11,45,66,54,43,22,34,54,32,12,23,45,43,34,56,54,32)
#datos <- c(56,32,12,43,54,65,76,54,34,54)
datos

#lectura desde consola(Entrada Estandard)
#datos_entrada <- scan()

#1er. momento media(promedio)
media <- mean(datos)#media(Promedio)
media

#2do. momento varianza
varianza <- var(datos)
varianza

desviacion_estandard <- sd(datos)
desviacion_estandard

#3er. momento sesgo
library("moments")
sesgo <- skewness(datos)
sesgo

#4to. momento kurtosis  Nota: No sale muy bien la kurtosis
library("moments")
kurt <- kurtosis(datos)
kurt
#sum((((datos-media)/varianza)^4)/length(datos)-1)^-3

#Gr?fica
#Histograma
# hist(datos, col="green", main="Medidas De Dispersion\n \n Media", xlab="Dia", sub="Representacion en Histograma", ylab="Frecuencia", xlim=c(1,7), lwd=2)
# abline(v=4.25)

#eliminacion de objetos
rm(datos, media, varianza, desviacion_estandard, sesgo, kurt)