#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#Step 1. Create a loop. The loop starts at 20 and starts our test number at 20. If the number is divisible evenly, it reduces the loop number by 1 and tries again. If it is not divisible, it resets the loop number and adds 20, the minimum amount that can be divided by 20.
n = 20
val = 20
repeat{
  if (val == 0){
    print(n);
    break}
if (n %% val == 0){
  val <- (val-1)
}
if (n %% val != 0){
  n <- n+20;
  val = 20}
}

#Output is 232792560