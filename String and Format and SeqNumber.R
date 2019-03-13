# String
data1 <- "Hello"
data2 <- "good"
data3 <- "goodbye"
data4 <- paste(data1, data2, data3)
data4
class(data4)
data5 <- paste(data1, data2, data3, sep = '-')
data5


#format
format(1120.1222222222222, digits = 7)
format(1120.1222222222222, scientific = TRUE)
format(14.7, width = 10) # 10칸 띄우고
format("Test", width = 10, justify = "r") # right
format("Test", width = 10, justify = "c") # center
format("Test", width = 10, justify = "l") # left


# Seq Number
data <- c(1:5, 2, 3)
data

data1 <- 1:10
data1

data2 <- seq(5,9, by = 0.5) # 0.5 차이의 5에서 9까지 수열
data2

data3 <- seq(9,5, by = -0.5) # 0.5 차이의 9에서 5까지 수열
data3




#slicing
data4 <- c('sun', 'mon', 'tue', 'wed', 'thurs', 'fri', 'sat')
data4[1]
data4[2]
data4[3]
data4[2:4]
data4[-1]
data4[-3]
data4[c(-2, -3)]
data4[c(1, 5)]

data5 <- data4[c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE)]
data5



# String Slicing
data6 = "This is mine, good morning"
substring(data6,2,4) # O
data6[2:4] # X












