library(data.table)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
file <- tempfile()
download.file(url, file, method = "curl")

DT <-fread(file, drop = c(3, 6, 7, 8, 9, 10), skip = 5, nrows = 190, col.names = c("CountryCode", "Rank", "Country.Name", "GDP.Value"), stringsAsFactors = F, header = F)

DT$GDP.Value <- sapply(X = DT$GDP.Value, FUN = function (x) gsub(" ", "", x))
DT$GDP.Value <- sapply(X = DT$GDP.Value, FUN = function (x) gsub(",", "", x))
DT$GDP.Value <- sapply(X = DT$GDP.Value, FUN = as.numeric)

print(mean(DT$GDP.Value))

print(length(grep("^United", DT$Country.Name)))