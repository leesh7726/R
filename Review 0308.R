# Vector

data <- 1
class(data)
mode(data)
str(data)
data2 <- c(1,2,3)
data2
length(data2)
is.vector(data2)
data3 <- 1:10
data4 <- c('test',TRUE, 1)
data4
data5 <- seq(10,100,by = 1)
length(data5)
data6 <- c('a','b','c')
names(data6) <- c('one', 'two', 'three')
data6
data6[1]
data6[c(1,2)]
data6[1:3]
data6[-1]
data6['one']
#data6$one
data7 <- 1:10
mode(data7)
class(data7) # mode와 class 자료형 차이남
data8 <- as.character(data7)
data8
mode(data8)
is.character(data8)
data9 <-sort(data8, decreasing = FALSE)
data9

# paste
a <- 'test'
b <- 'is'
paste(a, b)

# list
list_data <- list(c(1,2,3))
list_data
list_data2 <- list(1:10)
list_data2
list_data3 <- list(1,2,3)
list_data3

list_data4 <- list(10, c(1,2,3), TRUE, "TEst")
list_data4
length(list_data4)
class(list_data4)
list_data4[1]
list_data4[1:2]
class(list_data4[1])
class(list_data4[[1]])
class(list_data4[2])
class(list_data4[[2]])
list_data4[[2]][1:2]
list_data4[[2]][c(1,3)]

list_data5 <- list(1:3,2,3)
list_data5
names(list_data5) <- c('one', 'two','three')
list_data5
class(list_data5)
class(list_data5$one)
class(list_data5[1])


# matrix
m_matrix <- matrix(c(3:14), nrow = 4, byrow = TRUE)
m_matrix
m_matrix[,]
m_matrix[1,3]
m_matrix[,3]
m_matrix[1,]
m_matrix[1:2,]
m_matrix[c(1,2),]

m_matrix2 <- matrix(c(0), nrow = 4, ncol = 2,
                    dimnames = list(
                      c('one','two','three','four'),
                      c('one','two')
))
m_matrix2
m_matrix2['one','one']
m_matrix2['one',]

m_matrix3 <- matrix(c(1), nrow = 2, ncol = 2)
m_matrix3
rownames(m_matrix3) <- c('one','two')
colnames(m_matrix3) <- c('one','two')
m_matrix3
class(m_matrix3)

#array
arr <- array(c(1:3, 1:3), dim = c(3,3,2))
arr
arr[,,2]
arr[,,1]
arr[1,,1]
arr2 <- array(c(1:3, 1:3), dim = c(3,3,2), 
              dimnames = list(c('one','two', 'three'),
                              c('one','two', 'three'),
                              c('onepage', 'twopage')))

arr2

m_matrix4 <- matrix(c(0), nrow=2)
m_matrix4
#names(m_matrix4) <- c('one')
#m_matrix4

# apply(x, margin, fun)
class(m_matrix4)

# Factor
f_data <- c('one', 'one', 'two', 'three')
f_data
f_data2 <- factor(f_data)
is.factor(f_data2)

f_data3 <- factor(f_data, 
                  levels = c('one', 'two', 'three', 'four'))
f_data3
is.factor(f_data3)

# Data Frame
student <- data.frame(
  stu.name = 1:2, 
  stu.age = 1:2, 
  stu.location = 1:2)
student
student2 <- data.frame(
  1:2, 
  1:2, 
  1:2)
rownames(student2) <- c('one', 'two')
colnames(student2) <- c('one', 'two', 'three')
student2[,]
student2[1:2,1]
student2[,c(1,3)]
student2[-1,]
student2[,c(-1,-3)]
student2['one',]
class(student2$one)
student2$two


