#					Regresion Lineal

#Ingresar Datos De X
x <- c(175, 163, 187, 180, 170, 175, 165, 173, 180, 170)

#Ingresar Datos De Y
y <- c(66.5, 61, 95, 96, 65, 70, 65, 90, 70, 68)

#Promedio De X
					mean(x)
#Promedio De Y
					mean(y)	
#Desviacion Estandar De X
					sd(x)
#Desviacion Estandar De Y
					sd(y)
#Correlacioon
					cor.test(x, y)
#Ajustar Modelo
					z <- lm(y ~ x)
#Resumen De Modelo
					summary(z)				
#Grafica De Modelo
				
plot(x, y, col="blue", main="Regresion Lineal", xlab="Representacion De Datos De Muestra De X", ylab="Representacion De Datos De Muestra De Y", xlim=c(160, 190)) 

#Linea De Referencia
					abline(lsfit(x,y))
#Residuos
					z$residuals
#Resultado
					mean(z$residuals)
z = 0.0000000000000003996152

#Lineas Que Representan Los Residuos
#Punto (175 - 66.5)
points(175, 66.5, pch=16, col="red")
lines(c(175, 175), c(76.2514, 66.5), col="red")

#Punto (163 - 61)
points(163, 61, pch=16, col="red")
lines(c(163, 163), c(60.2014, 61), col="black")

#Punto (187 - 95)
points(187, 95, pch=16, col="red")
lines(c(187, 187), c(92.3014, 95), col="black")

#Punto (180 - 96)
points(180, 96, pch=16, col="red")
lines(c(180, 180), c(82.9389, 96), col="black")

#Punto (170 - 65)
points(170, 65, pch=16, col="red")
lines(c(170, 170), c(69.5639, 65), col="black")

#Punto (175 - 70)
points(175, 70, pch=16, col="red")
lines(c(175, 175), c(76.2514, 70), col="black")

#Punto (165 - 65)
points(165, 65, pch=16, col="red")
lines(c(165, 165), c(62.8764, 65), col="black")

#Punto (173 - 90)
points(173, 90, pch=16, col="red")
lines(c(173, 173), c(73.5764, 90), col="black")

#Punto (180 - 70)
points(180, 70, pch=16, col="red")
lines(c(180, 180), c(82.9389, 70), col="black")

#Punto (170 - 68)
points(170, 68, pch=16, col="red")
lines(c(170, 170), c(69.5639, 68), col="black")
