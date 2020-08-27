

# install.packages("ggplot2")
#Correlacion

#estatura
#x <- c(170,173,168,180,168,172,174,180,170,165,178,187, 163, 170, 179)
x <- c(32.3,42.3,123.3,455,345.34,456.6,678)
x

#masa
#y <- c(62, 84, 80, 70, 65, 90, 70, 96, 65, 65, 68, 95, 61, 68, 78)
y <- c(-1.2,-1.6,-2,-3.4,-3,-3.5,-4)
y

#promedio de x
media_X <- mean(x)
media_X
#promedio de y
media_Y <- mean(y)
media_Y
#desviacion estandar de x
sd_X <- sd(x)
sd_X
#desviacion estandar de y
sd_Y <- sd(y)
sd_Y

#correlaci?n
correlacion <- cor(x, y)
correlacion

#grafica
library(ggplot2)#libreria para graficar
plot(x, y, xlab = "Estatura", ylab = "Masa(Peso)", main="Diagrama de Dispersion(> Correlacion)")
abline(lsfit(x,y), col ="skyblue", lwd=2)

#eliminacion de objetos
rm(x, y, correlacion)
#ls()