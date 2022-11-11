#' @title Outlier detector
#' @description This function takes in a vector and exmaines if there are outliers
#' @param x the numerical vector,
#' @param thressd the threshold standard deviation
#' @return the outliers, or 'no outlier detected'
#' @examples
#' outdet (c(10,4,6,8,9,8,7,6,12,14,11,9,8,4,5,10,14,12,15,7,10,14,24,28), 3)
#' outdet (c(10,4,6,8,9,8,12,15,7,10,14,24,28), 3)
#' @export
outdet <- function(x, thressd){
  if (is.numeric(x)){
    # get mean and Standard deviation
    mean = mean(x)
    std = sd(x)
    # get threshold values for outliers
    Tmin = mean-(thressd*std)
    Tmax = mean+(thressd*std)
    # find outlier
    out <- x[which(x < Tmin | x > Tmax)]
    if (length(out) == 0){
      return('no outlier detected')
    }else{return(out)}
  }else{return("Please make sure the first input is a numeric vector.")}
}
