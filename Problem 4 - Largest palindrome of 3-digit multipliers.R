#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.


#Step 1: Construct a list of all products of three digit integers.
Group1 <- c(100:999)
BaseList <- c()
for (each in Group1)
{
  BaseList <-  append(BaseList, each * Group1)
}

#Step 2: Find palindromes.
Palindromes <- c()
for (val in BaseList)
{
  #create a vector of the split out elements of the value in the vector so you can get the head and tail to compare
  WorkingNumber <- as.numeric(strsplit(as.character(val), "")[[1]])
  #get the length of val to determine how many loops, then set an i to the number of loops. If the length is odd, ignore the last loop (so n=4 and n=5 are both 2 loops)
  pos <- floor(nchar(as.integer((val))) / 2)
  loop <- c(1:(floor(nchar(as.integer((val)
  )) / 2)+1))
  #put a nested loop here
  for (list in loop)
  {
    #the f0 and f1 are pulling values out of the vector, not the value in the vector
    #F0 and F1 should be getting the number closest to the middle on their respective sides
    F0 <- tail(head(WorkingNumber, n = pos), n = 1)
    F1 <- head(tail(WorkingNumber, n = pos), n = 1)
    if (pos == 0) {
      Palindromes <- append(Palindromes, val)
    }
    else if (F0 == F1) {
      pos <-  (pos - 1)
      
      F0 <- tail(head(WorkingNumber, n = pos), n = 1)
      
      F1 <- head(tail(WorkingNumber, n = pos), n = 1)
    }
    else if (F0 != F1) {
      next
    }
  }
}

#Step 3. Select the max palindrome.
max(Palindromes)
#Output is 906609
