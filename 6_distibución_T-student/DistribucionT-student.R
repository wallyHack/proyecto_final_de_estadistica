

#Distribucion T-Student

#con datos aleatorios
#t <- rnorm(16, 13, 5.6)#se generan los numeros de forma aleatoria
#t
#t.test(t)

#Horas
#x <- c(9.8, 8.9, 12, 4, 1.8, 3.2, 13.2)
#x

#LOC´S
x <- c(300, 335, 489, 120, 96, 98, 452)
x

#total de registros
n <- length(x)
n

#media(promedio)
media_X <- mean(x)
media_X

#desviación estandar
sd_X <- sd(x)
sd_X

#grados de libertad
GL <- n-1
GL

#intevalo de confianza  -> Es lo unico que se modifica en este PROGRAMA
int_Confianza <- 90

#riesgo
riesgo <- 100 - int_Confianza
riesgo

#alfa
alfa <- 1- ((riesgo/100)/2)
alfa

#valores criticos(tCrítico) según la tabla de Distribución T-Student
#Nota: Para confirmar buscar en la taba de Distribucion t -Student
valorCritico <- qt(alfa, GL, lower.tail = TRUE)# <=
valorCritico
qt(alfa, GL, lower.tail = FALSE)# >

#formula de X valores extremos
#para obtener región crítica inferior y superior
region_critica_superior <- ((media_X)+(valorCritico*sd_X)/(sqrt(n)))
region_critica_superior
region_critica_inferior <- ((media_X)-(valorCritico*sd_X)/(sqrt(n)))
region_critica_inferior 

#eliminacion de objectos
rm(x, n, media_X, sd_X, GL, int_Confianza, riesgo, alfa, valorCritico, region_critica_inferior, region_critica_superior)

#Grafica
cord.x <- c(1.20, seq(1.20,13.90,0.01), 13.90)
cord.y <- c(0, dnorm(seq(1.20,13.90,0.01)), 0)
curve(dnorm(x,0,1), xlim = c(-5,15), main="Distribucion Normal")
polygon(cord.x, cord.y, col = "skyblue")