var1 <- c(0,1,2,3)
var2 <- c("hello", "R Programming")
c(TRUE, 1) -> var3


cat('var1 is', var1, "\n") # print
print(ls()) # 변수목록 출력
ls(pattern = "var") # 조회
rm(pattern = "var1") # var1 변수 삭제

rm(list=ls()) #전체 변수 삭제





# Arithmetric Operator
a <- c(1,2,3)
b <- c(4,5,6)

a+b
a-b
a*b
a/b #소수점 나누기
a%%b # 나머지
a%/%b # 몫
a^b

# Relational Operation
a>b
a<b
a==b
a!=b

# Logical Operators
x <- c(FALSE, TRUE)
y <- c(TRUE, TRUE)
x & y
x | y
!y

#ETC Operators
z <- 1:10
z
x1 <- 8
y1 <- 12
z1 <- 1:10

x1 %in% z1 # x1이 z1에 있는지
y1 %in% z1 # y1이 z1에 있는지




# Casting
is.numeric(x1)
x2 = "1"
x3 <- as.numeric(x2)
class(x2)
class(x3)
x4 <- as.integer(x3)
x4
class(x4)
x5 <- 1:20
class(x5)
x6 <- as.list(x5)
class(x6)
