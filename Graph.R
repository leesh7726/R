#install.packages("ggplot2")
library(ggplot2)
tmp_data <- ggplot2::diamonds
tmp_data
str(tmp_data)
class(tmp_data)
df <- as.data.frame(tmp_data)
str(df)
colnames(df)
head(df)
# Linear Regression => lm => rxLm
# y = ax + b
# height : 151, 174, 138, 128, 136....
# weight : 63, 81, 56, 91...

x <- c(151, 174, 138, 186,128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
plot(x, y)

l_value <- lm(y~x)
l_value

x1 <- data.frame(x=170)
x1
result <- predict(l_value, x1)
result
plot(x, y, abline(lm(y~x)))

# multiple regression
# y= a + b1x1 + b2x2 ...... 
tmp_data2 <- mtcars[,c("mpg","disp","hp","wt")]
tmp_data2
# mpg = disp + hp + wt
# mpg ~ disp + hp + wt
model <- lm(mpg~disp+hp+wt, data = tmp_data2)
model
# Y = 37.10 + (-0.000937)x1 + (-0.031157)x2
#     + (-3.800891)X3
# disp: 221, hp = 102, wt = 2.91
# Y = 37.10 + (-0.000937)*(221) + (-0.031157)*(102)
#     + (-0.031157)*(2.91)
# ==> 22.7104

tmp_data3 <- mtcars[,c("am","cyl","hp","wt")]
# am = cyl + hp + wt
tmp_data4 <- glm(am ~ cyl + hp + wt, 
                 data = tmp_data3, family = binomial)
tmp_data4

