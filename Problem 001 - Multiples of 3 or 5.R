#Project Euler problem #1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

#Step 1: Generate a list of numbers between 1 and 1000, excluding those that are not multiples of 3 or 5

Multiples <- function(input)
{
  numbers <- 1:input
    ifelse (numbers %% 5 == 0, numbers,
        ifelse (numbers %% 3 == 0, numbers,
              0))
}

#Step 2: Run the function and sum the results
sum(unique(Multiples(999)))

#Output is 233168
