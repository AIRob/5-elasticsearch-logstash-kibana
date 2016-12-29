
## here we play with the second level data on the mean reversion
## thing.

a <- read.csv("fb.csv",header=FALSE) 
b <- read.csv("googl.csv",header=FALSE)

name_string <- c("timestamp", "Open", "High","Low", "Close", "Volume", "Nonsense")

names(a) <- name_string
names(b) <- name_string


cc <- merge(a,b, by = "timestamp")
cc$div <- cc$Open.x / cc$Open.y
plot(div~timestamp,cc)

