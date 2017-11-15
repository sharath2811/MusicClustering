#HW7

data=read.csv("~/Downloads/music-all.csv");

pca=prcomp(data[,4:73],center=TRUE,scale. =TRUE)

PCA1=data$lvar
PCA2=data$lave
ggplot(data,aes(PCA1,PCA2))+geom_text(aes(label=artist,color=as.factor(artist)))

#K-means clustering

cluster=kmeans(data[,4:73],centers=10,)
data$cluster=cluster$cluster
ggplot(data,aes(PCA1,PCA2))+geom_text(aes(label=artist,color=as.factor(cluster)))
