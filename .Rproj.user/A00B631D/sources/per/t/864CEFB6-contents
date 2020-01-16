library(lubridate)
library(quantmod)
amzn = getSymbols("AMZN", auto.assign=FALSE)
sampleTimes = index(amzn)

sampleTimes <- ymd(sampleTimes)
sampleTImes <- round_date(sampleTimes, "year")

Y2012 <- subset(sampleTimes, year(sampleTimes) == 2012)
print(length(Y2012))
print(length(which(wday(Y2012, label = T) == "Mon")))