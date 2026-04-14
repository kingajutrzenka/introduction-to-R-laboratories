#ZADANIE 2

d <- Indometh
dc <- Indometh$conc
print(dc)

# a

length(dc)

#b

range(dc)

#c

mean(dc)
median(dc)
# średnia > mediana

#d

install.packages("moments")
library(moments)
skewness(dc)

#prawoskośny

#e

c50 <-mean(dc, trim = 0.25)
print(c50)

#f

install.packages("ineq")
library(ineq)
Gini(dc)
plot(Lc(dc), main = "Krzywa Lorenza dla próbki dc")
#wysoka koncentracja

#g

dc50 <- mean(dc, trim = 0.25)
dc50w <- dc[dc >= dc50 | dc <= dc50]
length(dc50w)

#h

quantile(dc,c(0.3))
# 0,12%

# i

quantile(dc,c(0.8))
# 1,02%

#ZADANIE 3

dani <- unstack(iris, Sepal.Length ~ Species)
head(dani)
summary(dani)
hist(dani$setosa, main="Histogram", col=rainbow(20),xlab="Dlugosc platka",ylab="Czestosc")
hist(dani$versicolor, main="Histogram", col=rainbow(50),xlab="Dlugosc platka",ylab="Czestosc")
hist(dani$virginica, main="Histogram", col=rainbow(20),xlab="Dlugosc platka",ylab="Czestosc")

#ZADANIE 1

#a

bd <- LakeHuron

cut(LakeHuron, breaks = 6)

#b

sp <- cut(LakeHuron, breaks = 5)

