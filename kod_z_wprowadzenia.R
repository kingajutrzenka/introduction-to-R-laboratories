"""jakieś bzdury tylko idk gdzie są dane"""

7-4
x<-c(1,5,7,22,34,55,6,2,5,12,56,37,711,832,47,4,5,5,5,5,23,
     6,7)

#R jako kalkulator
log(16,4) #log(liczba logarytmowana,podstawa)
log(9,base=3)+sqrt(64)
exp(1)+0.25
abs(cos(pi))

#Do czego sluzy dana komenda (Patrz prawe dolne okno)
help(mean)
#lub
?sd

#Gdy nie znamy dokladnie nazwy komendy
help.search("empirical")
??density

#lista domyslnie zaladowanych pakietow w R
getOption("defaultPackages")

#Lista aktualnie zaladowanych pakietow
(.packages())

#Lista wszystkich dostepnych pakietow (nie wszystkie musza byc zaladowane)
(.packages(all.available = TRUE))
#lub
library()

#Aby zainstalowac pakiet
install.packages("npregfast")
# i go ladujemy
library(npregfast)

#Ogladamy podstawowe informacje na temat wybranego pakietu
library(help="stats")

#Kazdy pakiet posiada przykladowe zbiory danych do analizy
#Wyswietlamy liste aktualnie dostepnych baz danych wraz z ich krotkim opisem
data()

#Wyswietlamy dane z okreslonej bazy
airquality

#Najczesciej dane ,,zewnetrzne" z innych pakietow, niz dostepne w datasets, najpierw laduje sie za pomoca funkcji data(), a nastepnie wywoluje poprzez nazwe
data(children)
children

#Aby sprawdzic rozmiar zbioru danych i wyznaczyc kiczbe kolumn
dim(children)
dim(children)[1] # liczba obserwacji
dim(children)[2] #liczba zmiennych
ncol(children) # to samo co wy�ej

#Aby uzyskac nazwy zmiennych znajdujacych sie w bazie
names(children)

#Aby uzyskac podgl�d szesciu pierwszych wierszy
head(children)
#Aby podejrzec strukture i typy zmiennych
str(children)

#Aby wykorzystac baze Orange do analizy trzeba najpierw dolaczyc ja do R
attach(Orange)
Tree # jest dostep do tej zmiennej

#Po skonczonej pracy odlaczam baze
detach(Orange)
Tree #brak rozpoznania zmiennej

#By nie podlaczac bazy
Orange$Tree

#Wektor w R
atan(pi) #[1] oznacza intepretacje wyniku jako wektor. 
#[1] wskazuje na jego pierwsza wspolrzedna
1:40 #wektor liczb od 1 do 40
#np.
x<-1:40
x[2] # druga wspolrzedna wektora

#Funkcja c() umozliwia tworzenie wektora z pojedynczych elementow i innych wektorow
wektor=c(1,5,7,9,12)
c(5:24,23,1:4)

#Skladowymi wektora moga byc zarowno liczby jak i ciagi znakow
c(1,4,6,"zielony","niebieski","bialy")

#Definiowanie zmiennych i odwolywanie sie do nich
x<-c(4:10)
imie=c("Marek","Anna","Jan","Marek","Zofia")
assign("z",c(x,imie)) #z=c(x,y), czyli z to polaczenie x i imie
x
imie[2]
z[5]

#Tworzenie zmiennych typu czynnikowego (jakosciowych - przechowuja one wartosci w kilku kategoriach)
factor(c(1,2,2,1,3,2,1,1,2))
plec <- c("kobieta", "m�czyzna", "kobieta", "kobieta", "m�czyzna")
y=factor(plec)

#Wyswietlenie kategorii zmiennej typu czynnikowego
levels(y)

#Kazdemu obiektowi w R mozna nadac nazwe
kolory=c(4,5,24,1)
names(kolory)=c("zielony","niebieski","czerwony","bialy")
kolory

#Sekwencje (ciagi)
30:10 #Liczby od 30 do 10
seq(1,45,by=3)
c(seq(from=1,by=3,length=15))

#Replikacja = powielanie danych
rep(5:8,4)
rep(5:8,each=4) #inny wynik niz poprzednio
rep(5:8,length.out=10) #Urywam na 10 wspolrzednej

#Konstruktor ramki danych 
ramka<-data.frame(id=1:length(imie), imie, wiek=c(23,20,41,22,31))

#Do elementow ramki danych mo�na odwolywac si� poprzez:\\
ramka[3]
ramka[,3]	# trzecia kolumna
ramka[2,]	# drugi wiersz
ramka$wiek

#Pobieranie danych z ramki danych
airquality$Month[ which(airquality$Wind <= 3)]
airquality[airquality$Temp!=8 & airquality$Wind <40,]	

#Braki danych
is.na(airquality$Ozone) #Dla zmiennej Ozone w bazie airquality zwraca TRUE gdy jest brak danych oraz FALSE gdy go nie ma.
which(is.na(airquality$Ozone)) #Numery obserwacji z brakami danych dla zmiennej Ozone.
length(which(is.na(airquality$Ozone))) # Wystepuje 37 wartosci brakujacych dla zmiennej Ozone.
airquality[is.na(airquality$Ozone),] #Cale wiersze z brakiem danych dla zmiennej Ozone.
dim(airquality[is.na(airquality$Ozone),])[1] 
complete.cases(airquality$Ozone) #Zwraca TRUE jesli dla zmiennej Ozone nie by�o braku danych oraz FALSE gdy wystapil
airquality[complete.cases(airquality$Ozone),]	

#Braki danych: imputacja
install.packages("Hmisc")
library("Hmisc")

x=c(1,3,NA,5,23,NA,35,23,11,NA,23,2,4,NA)

impute(x, mean) # Imputujemy �redni� wektora x
impute(x, median)  #Imputujemy median� wektora x
impute(x, "random") # Imputujemy wielko�ci losowe

#Sortowanie
sort(airquality$Wind) # domyslnie sortujemy w kolejnosci rosnacej
sort(airquality$Wind,decreasing = TRUE) # zmieniamy kolejnosc na malejaca

#Import danych z pliku
read.table("stres.txt", header=TRUE)
read.csv("adult.csv", header = TRUE, na.strings = "?", strip.white = TRUE)

#Eksport danych do pliku
write.table(children, file = "children.txt", sep="/t", dec=",", row.names=FALSE)

#Laczenie danych kolumnowo
d<- cbind(1:15, c(rep(30,10), rep(40, 5)))

#Laczenie danych wierszowo
rbind(d, c(17, 30), c(20,40))

#funkcja warunkowa 
plec<- ifelse(children$sex=="female", 1, 2)
length(plec[plec=="1"])	# 1208 kobiet
cbind(children,plec) #dodajemy now� zmienn� do ramki danych

#usunac zmienna z ramki danych
data1<- airquality[,-c(1,2)] #usuwamy dwie pierwsze zmienne
data2<- airquality[,names(airquality)!="Temp"]	#usuwamy zmienna Temp
data3<- airquality[,-ncol(airquality)]	#usuwamy ostatnia zmienna 

#szereg rozdzielczy
str(children)
table(children$sex)

#szereg rozdzielczy przedzia�owy
x<- children$age
przedzialy<-cut(x,3)
table(przedzialy)
przedzialy2=cut(x,breaks=c(5,10,12,15,20))
table(przedzialy2)

#Tabela krzyzowa
library("nlme")
table(MathAchieve$Sex, MathAchieve$Minority)

#Historia polecen
history()

#Lista obiektow sesji
ls()
objects()

#Mozliwosci R
demo(graphics)
demo(persp)
demo(Japanese)

