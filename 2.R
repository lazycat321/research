data <- data[which(data$from!="839736"),]
data <- data[which(data$from!="1278894"),]
data <- data[which(data$to!="839736"),]
data <- data[which(data$to!="1278894"),]
data <- data[which(data$to!="external"),]

detach(data)
attach(data)

to <- as.character(to)
from <- as.character(from)

head(from)
all_id <- union(from, to)
relations <- data.frame( from=from, to = to, location = location, time = Timestamp, data=data)





data

g <- graph.data.frame(relations, directed=TRUE, vertices=all_id)