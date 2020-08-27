#					Distribucion T Student

#Datos Aleatorios
#					t <- rnorm(16, 13, 5.6) 
#Valores Generados
#					t
#Calculo T Student
#					t.test(t)
#hist(t, col="blue")


#Distribucion T-Student

#Datos Aleatorios
t <- runif(16, 1, 10)
t

#Registros En Total
n <- length(t)
n

#Promedio
Promedio <- mean(t)
Promedio

#Desviaci?n Estandar
sd=5.6
Desviacion_Estandar <- sd
Desviacion_Estandar

#Media
mean=13
Media <- mean
Media

#Grados De Libertad
Grados_Libertad <- n-1
Grados_Libertad

#Intevalo De Confianza
Int_Confianza <- 99
Int_Confianza

#Riesgo
Riesgo <- 100 - Int_Confianza
Riesgo

#Alfa
Alfa <- 1- ((Riesgo/100)/2)
Alfa

#Valor Criticos(tCr?tico)
ValorCritico <- qt(Alfa, Grados_Libertad, lower.tail = TRUE)# <=
ValorCritico
qt(Alfa, Grados_Libertad, lower.tail = FALSE)# >

#Valores Extremos
#Obtener Regi?n Cr?tica Inferior y Superior
Region_Critica_Superior <- ((Promedio)+(ValorCritico*Desviacion_Estandar)/(sqrt(n)))
Region_Critica_Superior
Region_Critica_Inferior <- ((Promedio)-(ValorCritico*Desviacion_Estandar)/(sqrt(n)))
Region_Critica_Inferior 

