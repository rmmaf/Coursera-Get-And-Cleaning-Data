library('jpeg')

imgURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
imgFile <- tempfile()
download.file(imgURL, imgFile, method = "curl")
img <- readJPEG(imgFile, native = TRUE)
print(quantile(img, probs = c(0.3, 0.8)))