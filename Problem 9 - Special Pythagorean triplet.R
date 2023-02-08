RefList <- c(1:666)
Combos <- (combn(RefList, 3, sum) == 1000)
Combined <- data.frame(combn(RefList, 3)[, Combos])
SquaredCombined <- Combined^2
MatchRules <- c()

for (z in 1:ncol(SquaredCombined)){
  MatchRules <- append(MatchRules,(SquaredCombined[3,z])-((SquaredCombined[1,z]) + (SquaredCombined[2,z])) == 0)
}
which(MatchRules == TRUE)

#This returns position 42120, which corresponds to '200', '375', and '425' on the Combined table. 200*375*425 = 31875000 