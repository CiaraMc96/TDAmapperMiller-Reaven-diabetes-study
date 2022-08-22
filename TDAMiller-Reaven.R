---
  title: "Homework 2 R Script"
author: "Ciara McLoughlin"
output:
  word_document: default
pdf_document: default
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
#install.packages("TDAmapper")
#install.packages("igraph")
#install.packages("locfit")
#install.packages("ks")
library(TDAmapper)
library(igraph)
library(locfit)
library(ks)
```

## Question 1
```{r}
data(chemdiab)

normdiab<- chemdiab

normdiab[,1:5]<-scale(normdiab[,1:5],center=FALSE)
normdiab.dist=dist(normdiab[,1:5])



filter.kde<-kde(normdiab[,1:5],H=diag(1,nrow = 5),eval.points =normdiab[,1:5])$estimate

## filter.kde is defined to be our filter function
## In this case, we assign values to the data points based on the kernel density.


diab.mapper<-mapper1D(
  distance_matrix = normdiab.dist, filter_values = filter.kde,
  num_intervals =4,
  percent_overlap=50,
  num_bins_when_clustering=14)
diab.graph <- graph.adjacency(diab.mapper$adjacency, mode="undirected")
plot(diab.graph, layout = layout.auto(diab.graph))

```
## Question 2
#Data 1

```{r}
data1<-read.csv('data/data1.csv',header=FALSE)
eccentricities<-read.csv("data/ecc1.csv", header = FALSE)
Data1.mapper<-mapper1D(distance_matrix=data1,
                       filter_values=eccentricities,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data1.graph<-graph.adjacency(Data1.mapper$adjacency,mode="undirected")
plot(Data1.graph,layout=layout.auto(Data1.graph))

```

#Data 2
```{r}
data2<-read.csv('data/data2.csv',header=FALSE)
eccentricities2<-read.csv("data/ecc2.csv", header = FALSE)
Data2.mapper<-mapper1D(distance_matrix=data2,
                       filter_values=eccentricities2,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data2.graph<-graph.adjacency(Data2.mapper$adjacency,mode="undirected")
plot(Data2.graph,layout=layout.auto(Data2.graph))
```
#Data 3

```{r}
data3<-read.csv('data/data3.csv',header=FALSE)
eccentricities3<-read.csv("data/ecc3.csv", header = FALSE)
Data3.mapper<-mapper1D(distance_matrix=data3,
                       filter_values=eccentricities3,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data3.graph<-graph.adjacency(Data3.mapper$adjacency,mode="undirected")
plot(Data3.graph,layout=layout.auto(Data3.graph))

```
#Data 4

```{r}
data4<-read.csv('data/data4.csv',header=FALSE)
eccentricities4<-read.csv("data/ecc4.csv", header = FALSE)
Data4.mapper<-mapper1D(distance_matrix=data4,
                       filter_values=eccentricities4,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data4.graph<-graph.adjacency(Data4.mapper$adjacency,mode="undirected")
plot(Data4.graph,layout=layout.auto(Data4.graph))
```

#Data 5

```{r}
data5<-read.csv('data/data5.csv',header=FALSE)
eccentricities5<-read.csv("data/ecc5.csv", header = FALSE)
Data5.mapper<-mapper1D(distance_matrix=data5,
                       filter_values=eccentricities5,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data5.graph<-graph.adjacency(Data5.mapper$adjacency,mode="undirected")
plot(Data5.graph,layout=layout.auto(Data5.graph))
```

#Data 6
```{r}
data6<-read.csv('data/data6.csv',header=FALSE)
eccentricities6<-read.csv("data/ecc6.csv", header = FALSE)
Data6.mapper<-mapper1D(distance_matrix=data6,
                       filter_values=eccentricities6,
                       num_intervals=15,  # 15
                       percent_overlap=73,
                       num_bins_when_clustering = 15)

Data6.graph<-graph.adjacency(Data6.mapper$adjacency,mode="undirected")
plot(Data6.graph,layout=layout.auto(Data6.graph))
```


