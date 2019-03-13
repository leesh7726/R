data<-read.csv("cancer.csv", encoding = "utf-8", stringsAsFactors = FALSE)
data
table_age <- cut(data$age,breaks = (1:11)*10) # 구간별로 나누기 
table_age
plot(table_age)

table_age2 <- table(cut(data$age,breaks = (1:11)*10)) # 구간별로 나누기 
table_age2
rownames(table_age2) <- c('10s','20s','30s','40s','50s','60s','70s','80s','90s','100s')
plot(table_age2)

table_age3 <- table(cut(data$age,1:11*10)) # 구간별로 나누기 
table_age3
rownames(table_age3) <- c('10s','20s','30s','40s','50s','60s','70s','80s','90s','100s')
plot(table_age3)




data2 <-read.csv("coffee.csv", encoding = 'utf-8', stringsAsFactors = FALSE)
head(data2)
colnames(data2)



data2[data2$dateOfclosure>20150400 & !is.na(data2$dateOfclosure),]

data2[which(data2$stateOfbusiness == "폐업 등" & data2$yearOfStart > 2000),]

# 전국 커피숍 년도별 개업건수를 출력하시오. 
df2 <- table(df$yearOfStart)
df2
#range(df$yearOfStart)
class(df2)
df2_1 <- as.data.frame(df2)
df2_1
qplot(df2_1$Var1, df2_1$Freq)
colnames(df2_1) <- c('title', 'qty')
colnames(df2_1)
# 전국 커피숍 년도별 폐업건수를 출력하시오.
df3 <- table(df[which(df$stateOfbusiness == "폐업 등"),15])
class(df3)
df3_1 <- as.data.frame(df3)
df3_1
qplot(df3_1$Var1, df3_1$Freq)
