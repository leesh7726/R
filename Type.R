# vector Object 개체 타입
# Logical
v1 <- TRUE
print(class(v1)) # 출력 -> "logical"

# Numeric
v2 <- 12.5
print(class(v2)) # 출력 -> "numeric"

# Inteager
v3 <- 10L # Integer 명시하기 위해 L 같이써줌
print(class(v3)) # 출력 -> "integer"

# Complex 복소수
v4 <- 2 + 3i
print(class(v4)) # 출력 -> "complex"

# Character
v5 <- "HI"
print(class(v5)) # 출력 -> "character"

# Raw
v6 <- charToRaw("Test")
print(class(v6)) # 출력 -> "raw"



#데이터타입
# Vectors  기본적인 원자 타입
a <- c(1,2,3,4)
class(a)

# Lists 벡터뿐만 아니라 함수도 들어갈 수 있음
list1 <- list(c(1,2,3), c(4,5,6), sin)
list1
class(list1)
list2 <- list(1,2)
list2

# Matrices 2차원 행렬
m <- matrix(c('a', 'a', 'b', 'c', 'a', 'a'), nrow = 2, ncol =3)
m

# Array  3차원 이상도 정의해서 사용가능
arr <- array(c('yellow', 'red'),dim = c(3,3,2))
arr # 3,3 array 2개 출력됨

# Factors -> Distinct랑 비슷함, 중복 배제
apple_colors <- c('green','red','yellow', 'red', 'green', 'green', 'red')
apple_colors
factor_apple <- factor(apple_colors)
factor_apple
print(nlevels(factor_apple))

# Data Frame
test_data = data.frame(
  gender = c('Male', 'Female', 'Male'),
  height = c(170, 165, 180),
  weight = c(80, 46, 78),
  age = c(40,35,25)
)

test_data


