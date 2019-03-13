# Arrays
v1 <- c(1,2,3)
v2 <- c(10,11,12,13,14,15)
row_names = c('row1','row2','row3')
col_names = c('col1','col2','col3')
matrix_names = c('matrix1', 'matrix2')



arr <- array(c(v1,v2), dim=c(3,3,2), dimnames = list(row_names,col_names, matrix_names))
arr

# indexing, Slicing
arr[1,3,1]
arr[,,2]
arr[,,1]



#apply 전체 합 구할 수 있음
v3 <- c(1,2,3,10,11,12,13,14,15)
v4 <- c(1,1,1,1,1,1,1,1,1)

data.array <- array(c(v3,v4), dim=c(3,3,2))
data.array
result <- apply(data.array, c(2), sum) # c=1 -> 가로c2 -> 세로로 matrix1, matrix2 모두 더한 것 
result <- apply(data.array, c(1,2), sum)

result
