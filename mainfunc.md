Function
================
Yixin (Izzy) Zhang
2022-11-04

## Exercise 1: Make a Function

``` r
#' Coin flip simulator
#' 
#' @details
#' This function simulates coin flips of a fair coin and outputs the result and summary. 
#'
#' @param x the number of coin flips
#'
#' @return Returns the number of heads, the number of tails, and the percentage of heads
coinsim <- function(nflips){
  nheads <- 0
  for (flips in seq(nflips)) {
    coin <- c('heads', 'tails')
    result = sample(coin, size = 1)
    if (result == 'heads') {nheads = nheads +1}
  }
  ntails <- nflips - nheads
  probheads <- nheads/nflips * 100
  output <- paste('number of heads: ', nheads, '; number of tails: ', ntails, '; percentage of heads: ', probheads, "%")
  return (output)
}
```
