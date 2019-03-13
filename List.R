# Lists -> Container

list_data <- list("apple", 10, c(1,2,3), TRUE)
list_data

# 이름 설정
names(list_data) <- c("one", "two", "three", "four") 
list_data

list_data[1]
list_data[3]
list_data$four


list_data2 <- list("apple", matrix(c(4,3,2,1,0,1), nrow = 2), 10, c(1,2,3), TRUE)
list_data2

names(list_data2) <- c('one','two','three','four','five')
list_data2
list_data2$two
list_data2$one
# alter date
list_data2$one = "orange"
list_data2$one
# delete
list_data2$three = NULL
list_data2[3]
# insert
list_data2[6] <- "apple"
list_data2



# Merging
list_data4 <- list("홍길동", "이순신")
list_data5 <- list("권율", "이성계")
list_data6 <- c(list_data4, list_data5)
list_data6[1]

# List to Vector -> unlist
vector_data = unlist(list_data6)
vector_data
