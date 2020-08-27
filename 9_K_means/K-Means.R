
#algorimtmo K-means

#vector S
S <- c(44, 48, 38, 39, 45, 50, 40, 35, 45, 40, 45)
#vector L
L <- c(55, 59, 55, 40, 45, 55, 55, 40, 40, 45, 50)

#SC1
SC1 <- 41.2
#LC1
LC1 <- 47.2

#SC2
SC2 <- 49
#LC2
LC2 <- 57

#DC1
DC1 <- sqrt(((S-SC1)^2)+((L-LC1)^2))
DC1

#DC2
DC2 <- sqrt(((S-SC2)^2)+((L-LC2)^2))
DC2

# P <- c(2.1, 3.7, 3.1, 2.1, 2.3, 3.4, 2.7, 3, 3.1)
# R <- c(4, 8, 16, 8, 4, 12, 4, 6, 8)
# D <- c(256, 512, 1024, 500, 256, 512, 256, 256, 256)
# 
# #centroide 1
# PC1 <- 2.64
# RC1 <- 5.2
# DC1 <- 256
# 
# #centroide 2
# PC2 <- 2.1
# RC2 <- 8
# DC2 <- 500
# 
# #centroide 3
# PC3 <- 3.4
# RC3 <- 12
# DC3 <- 682.66
# 
# DC1 <- sqrt(((P-PC1)^2)+((R-RC1)^2)+(D-DC1)^2)
# DC1
# 
# DC2 <- sqrt(((P-PC2)^2)+((R-RC2)^2)+(D-DC2)^2)
# DC2
# 
# DC3 <- sqrt(((P-PC3)^2)+((R-RC3)^2)+(D-DC3)^2)
# DC3

ls()
rm(PC1, RC1, DC1, PC2, RC2, DC2, PC3, RC3, DC1, DC2, DC3)

#algoritmo usando un paquete
install.packages("nayvebayes")
data(iris)
nb <- naive_bayes(Species ~ ., data = iris)
plot(nb)
nb_kernel <- naive_bayes(x = iris[-5], y = iris[ ,5], usekernel = TRUE)
plot(nb_kernel)


