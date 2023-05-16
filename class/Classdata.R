library(readr)
classData <- read.csv("C:/Users/sagaa/programming/stat311/class/classData.csv")

mean(classData$Age)
sd(classData$Age)
IQR(classData$Age)
length(classData %>% filter(Class_Standing == "Sophomore"))