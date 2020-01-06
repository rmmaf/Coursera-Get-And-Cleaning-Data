library(data.table)
library(xlsx)

data <- read.xlsx("data2.xlsx", header = TRUE, sheetIndex = 1)
dat <- data[18:23, 7:15]
print(sum(dat$Zip*dat$Ext,na.rm=T))