library(data.table)
library(xlsx)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "data.csv")
data <- read.table("data.csv", sep = ",", header = TRUE)
data <- setDT(data)
print(sum(as.numeric(na.omit(data[, (VAL == 24)]))))

