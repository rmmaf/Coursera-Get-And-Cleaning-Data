library(data.table)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "week31.csv")
DT <- fread("week31.csv")
print(which((DT$ACR == 3) & (DT$AGS == 6)))
