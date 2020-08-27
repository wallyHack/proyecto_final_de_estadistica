  
  
  #Regresion Lineal
  
  #Estatura
  #x <- c(175, 163, 187, 180, 170, 175, 165, 173, 180, 170)

  x <- c(10,12,14,16,20,25,56)
  x
  
  #Peso
  #y <- c(66.5, 61, 95, 96, 65, 70, 65, 90, 70, 68)
  y <- c(1.2,1.3,1.4,1.5,1.6,1.7,2)
  y
  
  datos <- data.frame(x,y)
  datos
  
  #################################################################################
  # # #se obtiene B0 y B1
  # reg_lin = lm(x ~ y)
  # reg_lin
  # summary(reg_lin)
  # 
  # # #se grafica la regresion lineal
  # plot(x,y, xlab = "Estatura", ylab = "Masa(Peso)", main="Regresi?n Lineal")
  # abline(lsfit(x,y), col="skyblue", lwd=2)
  
  #################################################################################
  #media x
  media_X <- mean(x)
  media_X
  #media y
  media_Y <- mean(y)
  media_Y
  #sd x
  sd_X <- sd(x)
  sd_X
  #sd y
  sd_Y <- sd(y)
  sd_Y
  
  #correlaci?n
  correlacion <- cor(x,y)
  correlacion
  
  #b1 r(Sy/Sx)
  beta1 <- (correlacion)*(sd_Y/sd_X)
  beta1
  
  #b0 Media y - b1Media x
  beta0 <- (media_Y)-(beta1*media_X)
  beta0
  
  #Residuos (Valor real con respecto al modelo)
  # h(x) = b0 + b1(x)...(bn)(xn)
  h_x <- ((beta0)+((beta1)*(x))) #h(x) = de la estatura
  h_x
  
  #residuos con respecto al peso
  residuos <- y-h_x
  residuos
  
  #Grafia
  plot(x, y, col="black", xlab = "Estatura", ylab = "Masa(Peso)", main="Regresi?n Lineal")
  abline(lsfit(x,y))
  #Lineas Que Representan Los Residuos
  #Punto (175 - 66.5)
  points(175, 66.5, pch=16, col="red")
  lines(c(175, 175), c(76.2514, 66.5), col="skyblue")
  
  #Punto (163 - 61)
  points(163, 61, pch=16, col="red")
  lines(c(163, 163), c(60.2014, 61), col="skyblue")
  
  #Punto (187 - 95)
  points(187, 95, pch=16, col="red")
  lines(c(187, 187), c(92.3014, 95), col="skyblue")
  
  #Punto (180 - 96)
  points(180, 96, pch=16, col="red")
  lines(c(180, 180), c(82.9389, 96), col="skyblue")
  
  #Punto (170 - 65)
  points(170, 65, pch=16, col="red")
  lines(c(170, 170), c(69.5639, 65), col="skyblue")
  
  #Punto (175 - 70)
  points(175, 70, pch=16, col="red")
  lines(c(175, 175), c(76.2514, 70), col="skyblue")
  
  #Punto (165 - 65)
  points(165, 65, pch=16, col="red")
  lines(c(165, 165), c(62.8764, 65), col="skyblue")
  
  #Punto (173 - 90)
  points(173, 90, pch=16, col="red")
  lines(c(173, 173), c(73.5764, 90), col="skyblue")
  
  #Punto (180 - 70)
  points(180, 70, pch=16, col="red")
  lines(c(180, 180), c(82.9389, 70), col="skyblue")
  
  #Punto (170 - 68)
  points(170, 68, pch=16, col="red")
  lines(c(170, 170), c(69.5639, 68), col="skyblue")
  
  #eliminacion de objetos
  rm(x, y, media_X, media_Y, sd_X, sd_Y, correlacion, beta0, beta1, h_x, residuos)
  #ls()
  
