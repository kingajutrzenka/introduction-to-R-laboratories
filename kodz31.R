#zadanie 1
dane = read.csv("C:/Users/student/Desktop/31z/Ankieta.csv", sep = ";")
head(dane)
#a
boxplot(wiek ~ plec, data = dane)
#b
hist(dane$cisnienie.skurczowe)
#c
hist(dane$cisnienie.skurczowe, prob = TRUE)
#d
count <- table(dane$plec) #zlicza wartości
barplot(count)
#e/f
agi <- aggregate(cisnienie.skurczowe ~ plec, data = dane, FUN = mean)
head(agi)
#??????

#zadanie 2
dane2 = read.delim("C:/Users/student/Desktop/31z/UOF_gs.txt", sep = " ")
head(dane2)
dane2$gender <- factor (dane2$gender,
                        levels = c(0,1),
                        labels = c("kobieta", "mężczyzna"))
dane2$college <- factor (dane2$college,
                         levels = c(1, 2, 3, 4, 5, 6, 7, 8),
                         labels = c("rolnictwo", "architektura", "budownictwo", "administracja",
                                       "leśnictwo", "pedagogika", "inżynieria", "sztuki piękne"))
head(dane2)
#a

install.packages("ggplot2")
library(ggplot2)
ggplot(data=dane2, aes(x = gender)) + geom_bar()
#c
ggplot(data=dane2, aes(x = college, y= salary)) + stat_summary(fun = "mean", geom = "bar")
#d
ggplot(data=dane2, aes(x = college, y= salary, color = gender)) + stat_summary(fun = "mean", geom = "bar")
#e
ggplot(data=dane2, aes(x = college, y= salary, color = graduate, shape = gender)) + stat_summary(fun = "mean", geom = "bar")
#f
ggplot(data=dane2, aes(x = gender, y= salary, color = college)) + geom_boxplot()
