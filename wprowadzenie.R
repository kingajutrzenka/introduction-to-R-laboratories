# Nauka wektorów
# 1. Najpierw ustawiamy kolor tła dla całego obszaru roboczego
par(bg = "gray95")


# 2. Losujemy 1000 liczb z rozkładu normalnego (tak jak głosi tytuł na obrazku)
dane <- rnorm(1000)

# 3. Rysujemy histogram
hist(dane, 
     col = "lavender",  # bardzo podobny, jasnofioletowy kolor słupków
     main = "1000 Normal Random Variates",
     xlab = "x",
     ylab = "Frequency",
     font.main = 3)     # font.main = 3 robi kursywę w tytule, tak jak na zdjęciu
# klasyczny wektor liczb od 10 do 15

wektor <- c(10:15)
wektor

# długość wektora

length(wektor)

# szukanie n-tego wyrazu wektora

wektor[2]

# tworzenie ciągu

ci <- seq(from=5, by=6, length.out=10)
ci

# powielanie danych

help("rep")

cid <- rep(ci, each=5, length=10)
cid

# łączenie kolumnowo wektorów

lacz <- data.frame(ci, cid)
lacz

help("data.frame")
#ćwiczenie:

imie <- c("Kinga", "Ela", "Diana")
nazwisko <- c("Miła", "Tania", "Dobra")
dane <- data.frame(imie, nazwisko)
dane

# filtrowanie danych: []

dane$imie[dane$imie != "Kinga"]

# Uwaga! lub to: |, a i to &

# sortowanie wektorów: sort()

help("sort")

dane$wiek <- c(15, 13,18)
dane

dane$wiek <- sort(dane$wiek)
dane

wiek <- c(15, 13,18)
"""Uwaga!! sort sortuje tylko daną kolumnę, 
a reszta zostaje bez zmian, czyli np. jeśli kinga 
miała 18 lat, a Ania 15 to po sorcie ASC będzie 
na odwrót, bo ich imiona nie zmieniają kolejności, 
a wiek już tak"""

#import danych

"""mamy dwie funkcje do tego takie jak read.table(),
read.csv()"""

tabela <- read.csv("C:/Users/jutrz/OneDrive/Pulpit/sen.csv")
help("read.csv")

head(tabela, 3)

# łączenie  danych 

"""
  cbind - łączenie danych kolumnowo
  rbind - łączenie danych wierszowo
"""

dane2 <- cbind(imie, nazwisko, wiek)

# unikalne wartości w danej tabeli i ich ilość: 

table(tabela$danger_index)

# ifelse()

help("ifelse")

"ifelse super się sprawdza do rekodowania wartości
zmiennych"

help("head")

tabela$danger_index <- ifelse(tabela$danger_index<3, "low", "high")

tabela$danger_index

#-----------szeregi--------------------------------
  
# szereg rozdzielczy (tabela częstości) (table())

"""używamy go np. do kolumny płeć, by określić ile 
jest kobiet, a ile mężczyzn. jest też przydatny 
do wykresów"""

sr <- table(tabela$danger_index)

help("barplot")

barplot(sr, col=c("plum4","slategray3"), xlab = "danger", ylab = "count")

"""colors() to funkcja która pokazuje wszystkie kolory"""

# szereg rozdzielczy przedziałowy (cut())

sen <- tabela$total_sleep
sen<-sen[sen != "?"]
"""zmiana danych na liczby: as.numeric()"""
sen <-  as.numeric(sen)
sen

help("cut")
k <- sqrt(NROW(sen))
k
"""Uwaga! Funkcja nrow ma parę wersji i najlepiej
je sprawdzić przy użyciu help()"""

srp <- cut(sen, k)
srp

# tabele krzyżowe (table())

""" pokazują rozkład dwóch lub
więcej zmiennych jakościowych"""

tabela$sleep_exposure_index <- ifelse(tabela$sleep_exposure_index <3, "low", "high")
tabela

tabela_wyników <- table(tabela$sleep_exposure_index, 
      tabela$danger_index)

barplot(tabela_wyników, col = c("plum4", "midnightblue"), border = "white")

help("barplot")

colors()


        