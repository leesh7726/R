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

# Sorting
data7 <- c(1,2,3,4,10,9,8,7,6,5)
sort.result <- sort(data7)
sort.result
sort.result1 <- sort(data7, decreasing = TRUE)
sort.result1
