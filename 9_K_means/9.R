#library(MASS)
x = matrix( 
c(44, 55, 48, 59, 38, 55, 39, 40, 45, 45, 50, 55, 40, 55, 35, 40, 45, 40, 40, 45, 45, 50), # the data elements 
nrow=11,              
ncol=2,               
byrow = TRUE)      

#Conjunto De Datos
x  

#Graficando x
plot(x)

#Objeto Guardado En Datos
datos <- rbind(x)

#Graficando Objeto Guardado
plot(datos)

#Aplicando - Graficando Kmeans
resultado<-kmeans(datos, centers=2, iter.max = 2)
plot(datos, col=resultado$cluster, main="K - Means", xlab="Representación De Datos De Conjunto De Datos", ylab="Frecuencia", xlim=c(35,60), ylim=c(35, 60))

#Centroides De Conjunto De Datos
points(resultado$centers, cex=2, col=10, pch=19)