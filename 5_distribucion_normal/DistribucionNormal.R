

#Distribucion Normal
#calculando la probabilidad de si un evento es mayor o menor a un valor
#P(x> o x<N)

#|----Tabla PSP----|  
x <- c(300,335,489,120,66,98,452) #LOCS
#x
y <- c(9.8,8.9,12,4,1.8,3.2,13.2) # HOURS
#y

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

#correlación
correlacion <- cor(x,y)
correlacion

#normalizando en z 
# Z = (x - Media)/varianza
#numero <- scan()
z <- (493 - media_X)/sd_X
z

#NOTA: Cuando es x<78 se busca el complemento
#probabilidad de distribución según la Tabla Normal Z
#NOTA: Para confirmar buscar el valor de z en la Tabla Z
#probabilidad <- pnorm(z, lower.tail = TRUE)# <=
probabilidad <- pnorm(z, lower.tail = FALSE)*100# >
probabilidad

#b1 r(Sy/Sx)
beta1 <- (correlacion)*(sd_Y/sd_X)
beta1

#b0 Media y - b1Media x
beta0 <- (media_Y)-(beta1*media_X)
beta0

#h(x) = b0 + b1(x)
h_x <- beta0+(beta1*78)
h_x

#Grafica
cord.x <- c(1.16, seq(1.16,2.15,0.01), 2.15)
cord.y <- c(0, dnorm(seq(1.16,2.15,0.01)), 0)
curve(dnorm(x,0,1), xlim = c(-3,3), main="Distribucion Normal")
polygon(cord.x, cord.y, col = "skyblue")
#abline(v=74.3)


#eliminacion de objetos
rm(x, y, media_X, media_Y, sd_X, sd_Y, correlacion, z, probabilidad, beta0, beta1, h_x)





