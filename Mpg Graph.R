#mpg

library(ggplot2)
class(mpg)
data <- as.data.frame(mpg)
class(data)
head(data)
tail(data)
summary(data)


colnames(data)
install.packages("dplyr")
#library(dplyr)
colnames(data)
data <- rename(data, city=cty)
data <- rename(data, highway=hwy)
colnames(data)

#통합연비를 구해서 히스토그램으로 출력하시오
#(cty+ hwy) / 2
colnames(data)
data$total <- (data$cty+ data$hwy)/2
data$total


qplot(data$total, binwidth=2, geom="histogram")
hist(data$total)

data$check <- ifelse(data$total >= 20,"pass","fail")
table(data$check)

qplot(data$check)


#다음 등급을 만족하는 빈도수 출ㄹ
#A 30이상 40이하
#B 20이상 30이하
#C 10이상 20이하
#D 0이상 10이하력
library(ggplot2)
class(mpg)
data <- as.data.frame(mpg)
data$total <- (data$cty+ data$hwy)/2
data$total
data$check2 <- ifelse(data$total >= 30,"A",ifelse(data$total >= 20,"B",ifelse(data$total >= 10,"C","D")))
qplot(data$check2)

##강사님담##
library(ggplot2)
class(mpg)
data <- as.data.frame(mpg)
data$total <- (data$cty+ data$hwy)/2
data$total
data$check2 <- ifelse(data$total >= 30 & data$total < 40,"A",
       ifelse(data$total >= 20 & data$total < 30,"B",
              ifelse(data$total >= 10 & data$total < 20,"C","D")))

qplot(data$check2)

############




#midwest
str(midwest)
class(midwest)
data2 <- as.data.frame(midwest)
View(data2)

#전체 인구대비 아시아 인구 백분율
#히스토그램으로 출력
#poptotal
#popasian
data2$percentasian <- data2$popasian/data2$poptotal * 100
hist(data2$percentasian)
qplot(data2$percentasian, geom="histogram")








