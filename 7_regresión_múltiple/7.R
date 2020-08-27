# 					Regresion Multiple

#Conjunto De Datos
					#x1 <-c(1,1,1,1)
					#x2 <-c(3,5,2,1) 
					#x3 <-c(3,4,7,8)
					#b1 <-c(1,3,9,9)

          x1 <- c(1,1,1,1,1,1)
          x2 <- c(1,2,3,4,5,6)
          b1 <- c(0.20, 0.25, 0.20, 0.35, 0.45, 0.40)


#Formula
        
					#(Regresion = lm(b1 ~ x1 + x2 + x3))
          (Regresion = lm(b1 ~ x1 + x2))

#Resumen De La Regresion Con Funcion Summary
					summary(Regresion)

#La Varianza Del Modelo Se Obtiene Mediante El Comando Anova:
anova(Regresion)

