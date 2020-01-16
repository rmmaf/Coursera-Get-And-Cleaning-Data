library(data.table)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
file <- tempfile()
download.file(url, file, method = "curl")

DT <- fread(file)

resp <- strsplit(names(DT), "wgtp")