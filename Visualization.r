
#install.packages("ggplot2")
install.packages("tidyverse")

library(ggplot2)
library(tidyverse)

str(mtcars)
p <- ggplot(data=mtcars)
p + geom_point(mapping = aes(x=disp, y=mpg))

ggplot(data=mtcars) +
  geom_bar(mapping = aes(x=gear))
mtcars$gear

ggplot(data=mtcars) +
  geom_histogram(mapping = aes(x=qsec), binwidth = 2)

#ggplot(data=mtcars) +
#  geom_histogram(mapping = aes(x=gear))
ggplot(data=mtcars) +
  geom_point(mapping = aes(x=disp, y=mpg))
ggplot(data=mtcars) +
  geom_smooth(mapping = aes(x=disp, y=mpg))

ggplot(mtcars) +
  geom_smooth(mapping = aes(x = disp, y = mpg), method = "lm",
              formula = y ~ poly(x,2))

ggplot(data=mtcars) +
  geom_point(mapping = aes(x=disp, y=mpg)) + 
  geom_smooth(mapping = aes(x=disp, y=mpg)) +
  geom_smooth(mapping = aes(x = disp, y = mpg), method = "lm",
              formula = y ~ poly(x,2)) +
  geom_histogram(mapping = aes(x=qsec), binwidth = 2)


