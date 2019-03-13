# Matrices
# matrix(data, nrow, ncol, byrow, dimnames)

m_data <- matrix(c(1,2,3,4), nrow = 2)
m_data


m_data <- matrix(3:14, nrow = 4, byrow = TRUE) # index 기준 증가
m_data

m_data <- matrix(3:14, nrow = 4, byrow = FALSE) # column 기준으로 증가
m_data

m_data <- matrix(1:6, nrow = 2, ncol = 3)
m_data
m_data <- matrix(1:6, nrow = 3, ncol = 2)
m_data
m_data <- matrix(1:6, nrow = 3, ncol = 1)
m_data
m_data <- matrix(1:6, nrow = 3, ncol = 4)
m_data

# dimnames
row_names = c('row1','row2','row3')
col_names = c('col1','col2')
m_data <- matrix(1:6, nrow = 3, ncol = 2, dimnames = list(row_names, col_names))
m_data

#indexing, slicing
m_data[1,2]
m_data[2,]
m_data[,2]
m_data[c(1,2),]


m_data2 <- matrix(6:11, nrow = 3, ncol = 2, dimnames = list(row_names, col_names))
m_data2


m_data3 = m_data + m_data2
m_data3

