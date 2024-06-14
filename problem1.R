library(tidyverse)

problem2 <- function(limit) {
  lower <- 1
  upper <- 2
  newsum <- lower + upper
  total_sum <- 2
  while(newsum < limit) {
    if(newsum %% 2 == 0) {
      total_sum <- total_sum + newsum
    }
    lower <- upper
    upper <- newsum
    newsum <- lower + upper
  }
  return(total_sum)
}

print(problem2(4000000))
