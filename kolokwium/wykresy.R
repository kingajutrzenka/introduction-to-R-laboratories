dane_kawiarnia <- read.csv(text = "data,miasto,typ_napoju,cena,sprzedane_sztuki,temperatura
2026-05-01,Warszawa,Espresso,9,120,15
2026-05-01,Warszawa,Cappuccino,14,85,15
2026-05-01,Warszawa,Ice_Latte,16,30,15
2026-05-01,Krakow,Espresso,8,95,14
2026-05-01,Krakow,Cappuccino,13,70,14
2026-05-01,Krakow,Ice_Latte,15,25,14
2026-05-02,Warszawa,Espresso,9,115,18
2026-05-02,Warszawa,Cappuccino,14,90,18
2026-05-02,Warszawa,Ice_Latte,16,55,18
2026-05-02,Krakow,Espresso,8,90,17
2026-05-02,Krakow,Cappuccino,13,75,17
2026-05-02,Krakow,Ice_Latte,15,45,17
2026-05-03,Warszawa,Espresso,9,90,24
2026-05-03,Warszawa,Cappuccino,14,60,24
2026-05-03,Warszawa,Ice_Latte,16,120,24
2026-05-03,Krakow,Espresso,8,80,23
2026-05-03,Krakow,Cappuccino,13,55,23
2026-05-03,Krakow,Ice_Latte,15,110,23
2026-05-04,Warszawa,Espresso,9,130,16
2026-05-04,Warszawa,Cappuccino,14,95,16
2026-05-04,Warszawa,Ice_Latte,16,35,16
2026-05-04,Krakow,Espresso,8,100,15
2026-05-04,Krakow,Cappuccino,13,80,15
2026-05-04,Krakow,Ice_Latte,15,30,15
2026-05-05,Warszawa,Espresso,9,140,12
2026-05-05,Warszawa,Cappuccino,14,110,12
2026-05-05,Warszawa,Ice_Latte,16,15,12
2026-05-05,Krakow,Espresso,8,110,11
2026-05-05,Krakow,Cappuccino,13,95,11
2026-05-05,Krakow,Ice_Latte,15,10,11", stringsAsFactors = FALSE)

head(dane_kawiarnia)
#----------------Tworzę wykresy w R---------------------

#-------plot-----------
# Najbardziej podstawową funkcją
# do wykresów liniowych , punktowych i schodkowych
#jest oczywiście plot :)

help("plot")

""" kilkamy The Default Scatterplot Function
Typy wykresów są oczywiście opisane:
- p for points,
- l for lines,
- b for both points and lines,
- c for empty points joined by lines,
- o for overplotted points and lines,
- s and S for stair steps,
- h for histogram-like vertical lines,
- n does not produce any points or lines."""

#przetestuje parę wykresów:

plot(dane_kawiarnia$temperatura, dane_kawiarnia$cena,
     xlab = "temperatura", ylab = "cena", col = "plum4",
     type = "p", main = "zależność temperatury od ceny")

#-------barplot-----------------

help("barplot")

"""klasyk do wykresów słupkowych"""

mia <- table(dane_kawiarnia$miasto)
mia

barplot(mia, col = c("plum4", "plum"))

kawa <- table(dane_kawiarnia$typ_napoju)

barplot(kawa, col = c("plum4", "plum"))

#-------hist-----------------

"""klasyk do histogramu
warto używać col = rainbow(x)"""

help("hist")

hist(dane_kawiarnia$sprzedane_sztuki, 
     xlab="sprzedane sztuki", ylab="częstość",
     main = "Ilość sprzedanych sztuk", col = rainbow(7))
#-----------stem------------------

"""wykres łodyga i liście
spoko, ale po uj XDD"""

w <- c(1.2, 8.1, 3.2, 6.7, 4.5, 8.7, 9.0, 1.2, 3.4, 6.5, 8,3)
stem(w)

#---------pie-------------------------

"""wykres kołowy"""

pie(kawa, col=c("plum4", "plum", "plum1"))

#----------boxplot---------------------

""" w końcu (nie chce XD) przechodzimy do wykresu
pudełkowego brrrr. Plus jest taki, że robi się sam.
Dobra jednak nie, trzeba zrobić 
zmienna liczbowa ~ zmienna jakościowa"""

boxplot(dane_kawiarnia$sprzedane_sztuki~dane_kawiarnia$miasto,
        col = rainbow(1))
#----------aggregate-------------------

help("aggregate")
