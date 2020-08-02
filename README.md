# Geo Location clustering using K-MEANS

#### What do we mean by geolocation?

It refers to the geographical (latitudinal and longitudinal) location of an Internet-connected device. Not your location, but the location of whatever electronic medium is being used to access the Internet.



### Basic requirements and Packages needed

  - RStudio
  - dplyr library
  - factoextra library



### STEPS

#### STEP:1

>Package installation

#### STEP:2

> Read the dataset using read.csv()

#### STEP:3

> Removing "NA" from the dataset so that the dataset is clean

#### STEP:4

>Finding the optimal number of clusters i.e. the value of 'K'
>Function used is fviz_nbclust() present in factoextra library
>Elbow method is used

#### STEP:5

> Computing K means with the optimal value of K obtained in the earlier step

#### STEP:6

> Visualising the clusters 
> Function used is fviz_cluster() present in factoextra library
