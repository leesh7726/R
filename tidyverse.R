#dplyr, ggplot2, purrr.... =>tidyverse

install.packages("tidyverse")

# dplyr
library(dplyr)
df <- read.csv("csv_exam.csv")
df[which(df$class ==1),]

#파이프라인 처리 dplyr 임포트해야 처리가느
df %>% filter(class ==1) %>% filter(english > 90) 능


df %>% filter(class ==2)
df %>% filter(math >50)



df2 <- df %>% filter(class ==1 & math>50)

df2
class(df2)
mean(df2$math)
median(df2$math)
max(df2$english)

# class 1, 2
df %>% filter(math > 30 | class == 2)
df %>% filter(class %in% c(1, 2))
df %>% select(math, english)
df %>% select(-math)
df %>% select(-math, -english)

df %>% select(math, english) %>% 
  filter(math > 50) %>%
  select(math)

df3 <- df %>% select(math, english) %>% 
  filter(math > 50) %>%
  head


#ggplot2::mpg
library(ggplot2)
df4 <- ggplot2::mpg
df5 <- as.data.frame(df4)

df6 <- df5 %>% select(class, cty)
df5 %>% arrange(class, cty)
str(df5)
df5 %>% arrange(desc(class))

df5 %>% filter(manufacturer == "audi") %>%
  arrange(desc(hwy)) %>%
  head(5)

#df5$test <- "test"
df6 <- df5 %>% mutate(total = (hwy + cty)/2) %>%
  head
str(df6)

df7 <- df5 %>% mutate(total = (hwy + cty)/2,
                      mean = hwy) 

df7

# 요약하기
df5 %>% summarise(hwy_mean = mean(hwy))
df5 %>% group_by(class) %>% 
  summarise(class_mean=mean(hwy),
            class_max=max(hwy),
            class_min=min(hwy))

df5 %>% group_by(class) %>% 
  summarise(count = n())

# mean() 평균
# sd() 표준편차
# sum() 합계
# median() 중앙값
# min() 최솟값
# max() 최댓값
# n() 빈도

# mpg 회사별로 "suv"자동차의 도시 및 고속도로 통합 연비 
# 평균을 구하고 내림 차순으로 정렬하고, 1 ~ 5위까지를 
# 출력하시오.

df =ggplot2::mpg


colnames(df)

df <- df[which(df$class == "suv"),]
df

df$total <-  (df$cty+df$hwy)/2

head(df[order(-df$total),])

df
View(df)


#######강사님답########
mpg <-ggplot2::mpg
mpg %>% group_by(manufacturer) %>%
  filter(class =="suv") %>%
  mutate(total_tmp = (cty+hwy)/2) %>%
  summarise(total_mean = mean(total_tmp)) %>%
  arrange(desc(total_mean)) %>%
  head(5)
#######################













