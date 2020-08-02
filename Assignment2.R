########################################
#Package Installation 
install.packages("dplyr")
install.packages("factoextra")
library(dplyr)
library(factoextra)

########################################
# Reading the data
data2<- read.csv("/Users/chirag/Desktop/citymalldataanalystassignment/Assignment\ 2.csv")

########################################
#Cleaning the data
na.omit(data2)
complete.cases(data2)
data2<-data2[complete.cases(data2), ]
class(data2)
latlng<- cbind(lat=data2$lat,lng=data2$lng)

########################################
# To know the number of clusters: Gives 4
fviz_nbclust(latlng, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 2)+
  labs(subtitle = "Elbow method")

########################################
# Compute k-means with k = 4
set.seed(123)
km.res <- kmeans(latlng, 4, nstart = 25)
print(km.res)

#######################################
# Joining the cluster no. with each entry
FinalLatlng<- cbind(latlng, Cluster=km.res$cluster)
head(FinalLatlng,4)

#######################################
# km.res$size gives 4 clusters of size 52 (No.1), 577(No.2), 9 (No.3), 14881 (No.4)
km.res$size

#######################################
# Visualize the clusters
fviz_cluster(km.res,stand = TRUE, 
             data = latlng, 
             show.clust.cent = TRUE, 
             ellipse.type = "convex",
             ggtheme = theme_minimal(),
             palette = "jco"
             )

#######################################END######################################