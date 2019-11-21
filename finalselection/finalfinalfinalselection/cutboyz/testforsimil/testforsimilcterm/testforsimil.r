library(viridis)
library(ggplot2)
library(forcats)
library(dplyr)
######

nameorder <- read.csv("../treeorder.csv", header = FALSE)
######


data <- read.csv("ctermall.tsv", sep="\t", header = FALSE)
data2 <- read.csv("../ntermall.tsv", sep="\t", header = FALSE)


#####################
Xcol2Data <- data2[,2:12]


Xcol1Data <- data2[,1]
Xcol1Data2 <- as.data.frame(factor(Xcol1Data,levels = nameorder$V1))
colnames(Xcol1Data2) = "V1"

XdataFinal <- cbind(Xcol1Data2, Xcol2Data)

Xbcol2Data <- data2[,3:12]

Xbcol1Data <- data2[,2]
Xbcol1Data2 <- as.data.frame(factor(Xbcol1Data,levels = nameorder$V1))
colnames(Xbcol1Data2) = "V2"

XdataFinal2 <- cbind(Xcol1Data2, Xbcol1Data2, Xbcol2Data)
##########################
col2Data <- data[,2:12]


col1Data <- data[,1]
col1Data2 <- as.data.frame(factor(col1Data,levels = nameorder$V1))
colnames(col1Data2) = "V1"

dataFinal <- cbind(col1Data2, col2Data)

bcol2Data <- data[,3:12]

bcol1Data <- data[,2]
bcol1Data2 <- as.data.frame(factor(bcol1Data,levels = nameorder$V1))
colnames(bcol1Data2) = "V2"

dataFinal2 <- cbind(col1Data2, bcol1Data2, bcol2Data)
#################

XdataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_gradientn(colours=c("cyan","red")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")

dataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_gradientn(colours=c("cyan","red")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")

XdataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_viridis(option="viridis") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")

dataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_viridis(option="viridis") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")


XdataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_viridis(option="plasma") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")

dataFinal2 %>%
  ggplot(aes(x=V1,y=factor(V2,levels = rev(levels(factor(V2)))), fill=V3)) +
  geom_raster() + scale_fill_viridis(option="plasma") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  labs(y=NULL, x=NULL, fill="Percentage ID")



