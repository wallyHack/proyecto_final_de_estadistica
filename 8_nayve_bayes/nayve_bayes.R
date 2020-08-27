# 					Naive Bayes

#install.packages("e1071")
#Libreria Cargada
					library(e1071)

#Conjunto De Datos
Sexo = c("H","H","H","H","M","M","M","M")
Altura = c(6,5.72,5.58,5.92,5,5.5,5.42,5.75)
Peso = c(180,190,170,165,100,150,130,150)
Calzado = c(12,11,12,10,6,8,7,9)


Medidas = data.frame(Altura,Peso,Calzado,Sexo)
#Mostrar Resultado
					Medidas

#Resumen Del Resultado
					summary(Medidas)

#Clasificando elementos
classifier=naiveBayes(Medidas[,1:3], Medidas[,4])

#Mostrando Clasificación En Tabla 
table(predict(classifier, Medidas[,-4]), Medidas[,4]) 