"""Ćwiczenie 1"""

#a

install.packages("FactoMineR")
library(FactoMineR)
data(hobbies)
hobbies

#b

#liczba obserwacji
dim(hobbies)[1]
#liczba zmiennych
dim(hobbies)[2]

#c

names(hobbies)

#d

head(hobbies)

#e

str(hobbies)
#poziomy pomiaru ?

#f

hobbies$Profession

#g

levels(hobbies$Profession)

#h

summary(hobbies)

"""ćwiczenie 2"""

#a

seq(1, 1000, 3)

#b

-100:5

seq(from=6,by=6,length=10)

#c

10:40
rep(-3:3,4)

"""ćwiczenie 3"""

wykształcenie <- factor(c("podstawowe", "wyższe", "średnie", "wyższe", "podstawowe", "wyższe", "wyższe", "wyższe", "średnie" ))

#a

length(wykształcenie)

#b

levels(wykształcenie)

#c

wykształcenie[5]

"""ćwiczenie 4"""