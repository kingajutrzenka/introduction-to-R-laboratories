# Funkcja zwracajaca sume dwoch podanych liczb
suma<-function(a,b) a+b
suma(12,5)
# Funkcja zwracajaca kwadrat sumy dwoch podanych liczb 
kwadrat_sumy<-function(a,b){
    c<-a+b
    return(c^2)}
kwadrat_sumy(12,5)


# Podsumowanie wieku drzew znajdujacych sie w bazie Orange.
suma_wieku=0
n=length(Orange$age)
for(i in 1:n){
  suma_wieku=suma_wieku+Orange$age[i]
  suma_wieku}
suma_wieku

sum(Orange$age) #to samo

# Pętla while wypisujaca kwadraty liczb od 1 do 10.
i<-1
while (i<=10){
  print(i^2)
  i<-i+1
}


# Pętla repeat wypisujaca kwadraty liczb od 1 do 10.
i<-1
repeat{
  print(i^2)
  i<-i+1
  if (i>10) break
}


#Analiza obwodow drzew z bazy Orange, wyswietlajac odpowiednie komentarze:
n=dim(Orange)[1]
srednia=mean(Orange$circumference)
for (i in 1:n){
  if (Orange$circumference[i]>srednia)
  print("Obwód większy niż średnia")
  else if (Orange$circumference[i]==srednia)
    print ("Obwód równy średniej")
      else print("Obwód mniejszy niż średnia")
}


#Instrukcje warunkowe na wektorach
ifelse(Orange$circumference>srednia, "Obwód większy niż średnia",
  ifelse(Orange$circumference==srednia,"Obwód równy średniej", "Obwód mniejszy niż średnia"))


# Funkcja - przykład
x <- cbind(c(-2:5),c(-1:1,3:7))
apply(x,1,sum)
apply(x,2,sum)
moja_funkcja <- function(x) x^2-1
apply(x,1,moja_funkcja)
apply(x,2,moja_funkcja)
