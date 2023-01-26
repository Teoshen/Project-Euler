#Sum Square Difference
#The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers is, (1+2+...+10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025-385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

Numbers <- c(1:100)
SumSquare <- sum((Numbers)^2)
SquareSum <- (sum(Numbers))^2
Answer <- SquareSum-SumSquare



#Can be made faster by using mathematical induction:
#Sum of first n numbers = n(n+1)/2
#Sum of squares of first n numbers = n(n+1)(2n+1)/6