#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

#Step 1: Create a vector of our target number and a placeholder vector for divisors

n <- 600851475143
NumberStorage <- 1:sqrt(n)
Divisors <- c()

#Step 2: Create a list of divisors of our target number
for (val in NumberStorage){
  print(val)
  if ((n / val) %% 1 == 0) {
    Divisors <- append(Divisors, val)
  } 
}
  
#Step 3: Determine which divisors are prime
PrimeDivisors <- c()
for (div in Divisors){
  if(div == 2){
  PrimeDivisors <- append(PrimeDivisors, div)
  }
  else if (all(div %% 2:max(2,floor(sqrt(div))) != 0)){
   PrimeDivisors <-  append(PrimeDivisors,div)
  }
}
#Step 4: Select the max prime divisor
max(PrimeDivisors)

#Output is 6857
