#100001st prime
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

#Create a loop that checks the length of a vector. The vector consists of all prime numbers found, starting from 2. At each append, if the length is 10,001, it stops and prints the last value.
n = 2
Primes <- c()
repeat{
  if (length(Primes)==10001){
    print(Primes[10001]);
    break
  }
  else if(n == 2){
    Primes <- append(Primes, n);
    n <- (n+1)
  }
  else if (all(n %% 2:max(2,floor(sqrt(n))) != 0)){
    Primes <-  append(Primes,n);
    n <- (n+2)
  }
  else if (1 == 1){
    n <- (n+2)
  }
}
#Output is 104743
