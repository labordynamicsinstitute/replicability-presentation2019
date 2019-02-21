#' ---
#' local libraries


#' Define the list of libraries
libraries <- c("dplyr","devtools","googlesheets","rcrossref","readr","tidyr","summarytools")

results <- sapply(as.list(libraries), pkgTest)
cbind(libraries,results)
