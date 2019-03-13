#apply

m_data <- matrix(c(1,2,3), nrow = 3, ncol = 3)
m_data
apply(m_data,1,sum) # row 기준
apply(m_data,2,sum) # column 기준
apply(m_data,2,mean) # column 기준



# lapply  리스트 형태
# lapply(X, FUN)
tmp_data <- c("a", "b", "c", "d")
lapply(tmp_data, toupper)

tmp_data2 <- list(a=1:10, b=1:20)
tmp_data2
lapply(tmp_data2, mean)

#sapply matrix형태
#sapply(X, FUN)
sapply(tmp_data2, mean)

#mapply sapply의 multiple 버전(?)
#mapply(FUN, X...)
tmp_data3 <- list(a=1:10, b=1:20)
tmp_data4 <- list(a=2:10, b=2:20)
mapply(sum, tmp_data3, tmp_data4)

#tapply
#tapply()
head(warpbreaks)
str(warpbreaks)
View(warpbreaks)

head(iris)




tmp_data3 <- list(a=1:10, b=1:20)

testFunc <- function(x){
  (min(x) + max(x)) /2
}

tmp_data4 <- sapply(tmp_data3, testFunc)
tmp_data4


tmp_data4 <- sapply(tmp_data3, sum)
tmp_data4







