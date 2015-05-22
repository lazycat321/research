

data = read.csv("F:/vast/MC2 2015 Data/MC2 2015 Data/comm-data-Sat.csv", header=TRUE)
attach(data)
detach(data)
head(from)

                

to <- as.character(to)
from <- as.character(from)

all_id <- union(from, to)
relations <- data.frame( from=from, to = to, location = location, time = Timestamp)


library(igraph)
g <- graph.data.frame(relations, directed=TRUE, vertices=all_id)


plot(g)

get.edgelist(g)
mat <- get.adjacency(g)
check <- 15
mat10 <- mat[1:check,1:check]
mat10
g5 <- graph.adjacency(mat10, weighted=TRUE, mode="plus")
plot(g5, layout=layout.circle)

                
                xplot(g5, edge.label=E(g5)$weight,layout=layout.circle)


g4 <- graph.adjacency(mat10, weighted=TRUE, mode ="directed")
plot(g4, edge.label=E(g4)$weight, layout=layout.circle)
clusters(g4)
plot(g4)
                
###no mutual connection
g6 <- graph.adjacency(mat10, weighted=TRUE, mode="min")
plot(g6, edge.label=E(g4)$weight)
clusters(g6)
                
### total
g <- graph.adjacency(mat, weighted=TRUE, mode="plus")                 
clus <- clusters(g)
clus$membership
rownames(mat)[which(clus$membership==4)]              

                
gplut <- graph.adjacency(mat, weighted=TRUE, mode="plus")                   

####example
gg <- erdos.renyi.game(20, 1/20)
plot(gg)                
clus <- clusters(gg)

is.connected(g, mode="strong")

