# valori mancanti

pippo <- c(6, 8, 9, NA, -5)
sum(pippo, na.rm = T)
min(pippo, na.rm = T)
max(pippo, na.rm = T)
range(pippo, na.rm = TRUE)

sum(c(6, 8, 9, NA, -5))

which(is.na(pippo))
pippo[!is.na(pippo)] # vettore indice logico
pippo[1:3] # vettore indice interi positivi 
pippo[-3] # vettore indice interi negativi
pippo[c("Giovanni", "Maria")] # vettore indice di stringhe di caratteri (nomi)

length(pippo)
names(pippo) <- c("Dario", "Giovanni", "Maria", "Filomena", "Serena")
pippo
names(pippo)

Livio <- matrix(nrow=3, 
                ncol=2, 
                byrow = T, 
                dimnames = list(LETTERS[1:3], 
                                letters[1:2]
                                )
                )

dim(Livio)[2]
nrow(Livio)
ncol(Livio)
colnames(Livio)
rownames(Livio)


pesi <- read.csv("apply/pesi_regine.csv")
pesi$anno==2021
pesi2021 <- pesi[pesi$anno==2021, ]
str(pesi)
nomi <- c("Dario", 
          "Giovanni", 
          "Maria", 
          "Filomena", 
          "Serena")

civico <- c(31, 10,26, 7,317)
civici <- data.frame(nomi, civico)
femmina <- c(F,F,T,T,T)
dfCompleto <- cbind(civici, femmina)

data(iris)
?iris

tail(iris)
?iris
dim(iris)
class(iris)
head(iris)
tail(iris)
?tail(iris)
tail(iris, n=8)
str(iris)
levels(iris$Species)
summary(iris)
boxplot(iris$Sepal.Length)
iris$Sepal.Length[iris$Species == "versicolor"] / apply(iris[iris$Species == "versicolor", 1:4], 1, sum)
tapply
tapply(irisbis$Petal.Width, irisbis$Species, median, na.rm = F)
data(cars)
plot(cars$speed~cars$dist, main="Automobili", xlab = "velocità", ylab= "distanza", col = "red", pch=17)
modello <- lm(cars$speed~cars$dist)
abline(modello)

boxplot(Petal.Width~Species, data=iris)
tapply(iris$Petal.Width, iris$Species, median)


