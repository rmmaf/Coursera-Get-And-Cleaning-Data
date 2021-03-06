library(data.table)
url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
file1 <- tempfile()
download.file(url1, file1, method = "curl")
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
file2 <- tempfile()
download.file(url2, file2, method = "curl")

DT1 <- fread(file1, drop = c(3, 6, 7, 8, 9, 10), skip = 5, nrows = 190, col.names = c("CountryCode", "Rank", "Country.Name", "GDP.Value"), stringsAsFactors = F, header = F)
DT2 <- fread(file2, stringsAsFactors = F)
DT1$GDP.Value <- as.numeric(gsub(",", "", DT1$GDP.Value))

finalDT <- merge.data.table(DT1, DT2, by.x = "CountryCode", by.y = "CountryCode")

print(length(grep("[Ff]iscal year end(.*)June", finalDT$`Special Notes`)))