library(quantmod)
getSymbols("DAVE317URN", src = "FRED")
names(DAVE317URN) = "rate"
library(dygraphs)
dygraph(DAVE317URN, main = "Unemployment Rate in Davenport-Moline-Rock Island, IA-IL")