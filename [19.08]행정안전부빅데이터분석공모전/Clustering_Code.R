library("flexclust")
library("NbClust")
library("rattle")
library("cluster")
library("fMultivar")
library("ggplot2")
library("dplyr")

# install.packages('flexclust')
# install.packages('NbClust')
# install.packages("rattle")
# install.packages('cluster')
# install.packages('fmultivar')
# install.packages('ggplot2')
# install.packages('dplyr')



setwd("C:/Users/onest/OneDrive/바탕 화면/무더위쉼터_QGIS")
data = read.csv('total_R.csv')

str(data)

gu_name = data[,1]
dong_name = data[,2]

data_c = data[,c(3,4,5,16,13,17)] # 클러스터링에 사용할 열만 추출
 
data_c = data.frame(scale(data_c)) # 스케일링
summary(data_c)

pairs(data_c) # 산점도 행렬  ... 1.생활인구, 2. 총 인프라 수에서 이상치 존재

data_c[data_c$생활인구 == max(data_c$생활인구),]
dong_name[365] # 역삼1동

data_c[data_c$총.인프라수 == max(data_c$총.인프라수),]
dong_name[8] # 종로1,2,3,4동 




#
nc <- NbClust(data_c[,1:6], min.nc=2, max.nc=15, method="ward.D2")
par(mfrow=c(1,1))
barplot(table(nc$Best.n[1,]),xlab="Numer of Clusters", ylab="Number of Criteria",main="Number of Clusters Chosen")



dist(data_c)

# ward.D2 method
hc3=hclust(dist(data), method="ward.D2")
plot(hc3)

cluster=cutree(hc3,3)
table(cluster)
cluster

# 클러스터 데이터에 삽입
data$cluster= cluster
View(data)
write.csv(data, file = 'Cluster_data.csv')
  ## 군집이 3개 산점도 그래프 

data_c$cluster=cluster
head(data_c)

data_c %>%summary()

data_c_plot = cbind(data_c,dong_name)

#
par(mfcol=c(1,1))
plot(data_c_plot$인구밀도, data_c_plot$생활인구, type="n", xlab="인구밀도", ylab="생활인구(유동인구)")
text(data_c_plot$인구밀도, data_c_plot$생활인구, data_c_plot$dong_name, col=data_c_plot$cluster, cex=0.8)

#
par(mfcol=c(1,1))
barplot(apply(data_c[data_c$cluster==1, 1:6],2,mean), main=paste("Cluster",1), ylim=c(-2, 2))
barplot(apply(data_c[data_c$cluster==2, 1:6],2,mean), main=paste("Cluster",2), ylim=c(-2, 2))
barplot(apply(data_c[data_c$cluster==3, 1:6],2,mean), main=paste("Cluster",3), ylim=c(-2, 2))

data_c$cluster %>% table()


# 1번 군집 (122개)
summary(data_c[data_c$cluster == 1 , ])
boxplot(data_c[data_c$cluster == 1 , -7],main='Cluster1')

dong_name[as.numeric(rownames(data_c[data_c$cluster == 1 , ]))]
table(gu_name[as.numeric(rownames(data_c[data_c$cluster == 1 , ]))]) %>% sort(decreasing = TRUE)


# 2번 군집 (218개)
summary(data_c[data_c$cluster == 2 , ])
boxplot(data_c[data_c$cluster == 2 ,-7],main='Cluster2')

dong_name[as.numeric(rownames(data_c[data_c$cluster == 2 , ]))]
table(gu_name[as.numeric(rownames(data_c[data_c$cluster == 2 , ]))]) %>% sort(decreasing = TRUE)


# 3번 군집 (84개)
summary(data_c[data_c$cluster == 3 , ])
boxplot(data_c[data_c$cluster == 3 , -7],main='Cluster3')

dong_name[as.numeric(rownames(data_c[data_c$cluster == 3 , ]))]
gu_name[as.numeric(rownames(data_c[data_c$cluster == 3 , ]))]
table(gu_name[as.numeric(rownames(data_c[data_c$cluster == 3 , ]))]) %>% sort(decreasing = TRUE)

