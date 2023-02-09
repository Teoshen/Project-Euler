#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

#Create a loop that creates a list of prime numbers. At or above 2,000,000, the loop stops and sums the vector.
n = 3
Primes <- c(2)
repeat{
  if (tail(Primes, n=1) >=2000000){
    Primes <- head(Primes, -1);
       break
 
  }
 
  else if (all(n %% 2:max(2,floor(sqrt(n))) != 0)){
    Primes <-  append(Primes,n);
    n <- (n+2)
  }
  else if (1 == 1){
    n <- (n+2)
  }
}
sum(Primes)