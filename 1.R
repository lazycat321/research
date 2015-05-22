fromsub <- 941
toset <- data$to[which(data$from == 941)]
subdata <- data[which(data$to  %in% toset),]
subdata

head(from)
hist(from)
freq(from)
summary(from)
install.packages("plyr")
library(plyr)
freq <- count(from)
sort(freq$freq)[711]
order(freq$freq)[711]

max(freq$freq)

freq[711,]

which(freq$freq==70143)

freqto <- count(to)
freq <- freq[order(freq$freq),]
freqto <- freqto[order(freqto$freq),]
tail(freq,10)
tail(freqto,10)
union(tail(freq,10),
          tail(freqto,10))
data[which(data$from=="1600469"),]
