#---------Statystyka opisowa
#klasyczne wzorki-----------------

head(dane_kawiarnia)

"""length()-wielkość/długość próby""" 

length(dane_kawiarnia)

"""mean()-średnia
może też np. odcinać wartości odstjące
przy czym np. trim = 0.1 odcina aż 
10% najni"""

help("mean")
mean(dane_kawiarnia$cena)
mean(dane_kawiarnia$cena, trim=0.1)

"""var() - wariancja
Wariancja to miara, która mówi nam, jak
bardzo dane są rozproszone wokół średniej.
Im wyższa wariancja tym bardziej są rozproszone"""

var(dane_kawiarnia$cena)

"""sd() - odchylenie standarowe (pierwiastek z wariancji)"""

sd(dane_kawiarnia$cena)

"""min() - minimum"""

min(dane_kawiarnia$cena)

"""max() - maximum"""

max(dane_kawiarnia$cena)

"""range() - przedział zmienności(min-max)"""

range(dane_kawiarnia$cena)

"""median() - mediana"""

median(dane_kawiarnia$cena)

"""quantile() - kwantyle
pokazuje wartości co 25%"""

quantile(dane_kawiarnia$cena)

"""IQR()- rozstęp międzykwartylowy
różnica między trzecim i pierwszym kwartylem"""

IQR(dane_kawiarnia$cena)

#---------------Skąplikowane rzeczy
# w statystyce XD------------------

"""Dominanta
Nie ma takiej funkcji 🥲🥲.
Musimy użyć funkcji table()"""

t <- table(dane_kawiarnia$cena)
sort(t, decreasing = TRUE)
dominanta <- t[1]
dominanta

"""summary() - pokazuje:
- minimum,
- dolny kwartyl,
- medianę,
- średnią,
- górny kwartyl,
- maksimum 
możd być używany też do danych jakościowych, 
ale wtedy będzie pełnił funkcję typu table"""

summary(dane_kawiarnia$cena)

#--------Biblioteka moments--------------

install.packages("moments")
library(moments)

"""
moment(idk co tu wpisać)-momenty
skewness() - współczynnik skośności
kurtosis()-kurtoza
"""

skewness(dane_kawiarnia$cena)
help("moment")
