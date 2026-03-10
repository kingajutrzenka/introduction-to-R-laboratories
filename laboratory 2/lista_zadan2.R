"""Ćw. 1
Napisz funkcję, która dla podanego argumentu n zwróci n-ty wyraz ciągu Fibonacciego. Następnie
zastosuj funkcję i oblicz dwudziesty element tego ciągu."""

n <- 6
fib <- function(n) {
if (n <= 2) {return(1)} else {
  return(fib(n-1) + fib(n-2))}
  }

fib(n)

"""Ćw. 2
Napisz funkcję, która dla podanego argumentu k zwróci wektor złożony z k oraz wartości będącej
sumą pierwszych k wyrazów ciągu Fibonacciego. Możesz wykorzystać funkcję utworzoną w Ćw. 1.
Przykładowo, wywołanie funkcji dla k=20 powinno zwrócić wektor o współrzędnych 20 i 17710."""


k <- 5
sumuje <- 0

suma <- function(k) {
for(i in 1:k) {
   sumuje <- sumuje + fib(i)}
  {return(c(k, sumuje))}
  }

suma(k)

"""Ćw. 3
Napisz funkcję, która biorąc wektor danych liczbowych x oraz liczbę całkowitą k jako argumenty,
zwróci tzw. k-ty moment centralny wektora x zgodnie ze wzorem:
FUNKVJA NA LIŚCIE
gdzie śr(x) oznacza średnią arytmetyczną wektora x."""

x <- c(5, 6, 7, 8, 9)
k <- 2



mc <- function(x,k) {
suma <- 0
for (i in x){
    różnica <- i  - mean(x)
    suma <- suma + różnica^k}
  {return((1/length(x))*suma)}
}

mc(x,k)

