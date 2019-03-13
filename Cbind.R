city <- c('seoul', 'japan', 'newyork', 'beijing')
state <- c('a','b','c','d')
address <- c(1111,2222,3333,4444)
home <- c(101,202,303, 402)
city
state
address


d <- cbind(city, state, address, home)
d
class(d)
df1 <- data.frame(d)
class(df1)


#### <- 로 대입 하면 안됨
tmp_data2 <- data.frame(
city <- c('seoul', 'japan', 'newyork', 'beijing'),
state <- c('a','b','c','d'),
address <- c(1111,2222,3333,4444),
home <- c(101,202,303, 402)
)
####

#### =으로 대입해주어야함
tmp_data2 <- data.frame(
  city = c('seoul', 'japan', 'newyork', 'beijing'),
  state = c('a','b','c','d'),
  address = c(1111,2222,3333,4444),
  home = c(101,202,303, 402),
  stringsAsFactors = FALSE
)


tmp_data2
class(tmp_data2)
rbind(df1,tmp_data2)

colnames(tmp_data2)
rownames(tmp_data2)
dimnames(tmp_data2)
dim(tmp_data2)
str(tmp_data2)
tmp_data2$state <- factor(tmp_data2$state)
str(tmp_data2)

