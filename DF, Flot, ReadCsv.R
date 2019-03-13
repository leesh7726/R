#head(), tail(), View()
#dim(), str(), summary()

english <- c(80,85,60,75)
math <- c(65,80,95,75)
class <- c(1,2,1,2)

df <- data.frame(english,math, class)
df
mean(df$english)
mean(df$math)
mean(df$class)


#fruit price qty
#apple 2000 20
#pear 1500 30
#strawberry 2000 40
#watermelon 9000 20

df2 <- data.frame(
  fruit = c("apple", "pear", "strawberry", "watermelon"),
  price = c(2000,1500,2000,9000),
  qty = c(20,30,40,20)
)

View(df2)
mean(df2$price)
mean(df2$qty)
median(df2$price)
summary(df2)


write.csv(df2, file = "test_data.csv")
save(df2, file = "df2_data.rda")
load("df2_data.rda")





df3 <- read.csv("csv_exam.csv", stringsAsFactors = FALSE)
df3
class(df3)
str(df3)

head(df3)
head(df3,10)
tail(df3)
tail(df3,10)

dim(df3)
str(df3)
summary(df3)


install.packages("dplyr")
library(dplyr)
library(ggplot2)
class(mpg)



df3 <- as.data.frame(mpg)
class(df3)
df3$manufacturer
head(df3[,1:3])
head(df3,3)

df3$sum_test <- df3$hwy
head(df3)
colnames(df3)
df3$sum_test
qplot(df3$sum_test)
