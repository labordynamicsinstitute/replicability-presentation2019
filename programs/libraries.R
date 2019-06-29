#' ---
#' local libraries


#' Define the list of libraries
libraries <- c("dplyr","devtools","googlesheets","tidyr","ggplot2")

results <- sapply(as.list(libraries), pkgTest)
cbind(libraries,results)
