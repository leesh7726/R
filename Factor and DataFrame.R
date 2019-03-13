# Factor  중복배제 distinct랑 비슷함

data <- c('east', 'west', 'east','west','north', 'east')

data

class(data)
is.factor(data)

f_data <- factor(data)
f_data
is.factor(f_data)


# Factor Levels 
f_data2 <- gl(3,4,labels = c('seoul', 'japan', 'china')) #3개있는 것을 4번 반복 gl -> generation
f_data2




# Data Frame
height <- c('160','170','180','173')
weight <- c(48,73,90,56)
gender <- c('male', 'female', 'male', 'female')
df <- data.frame(height, weight,gender, stringsAsFactors = FALSE) # String은 Default으로 Factor로 봐뀐다
df
df$height
class(df)
class(df$height)
is.factor(df)
is.factor(df$gender) # string
as.factor()







# Data Frame
emp_data <- data.frame( 
  emp_id = c(1:3),
  emp_name = c('홍길동','이순신','강감찬'),
  salary = c(100,200,300),
  start_data = c('2018-10-10','2018-10-12','2018-10-12'),
  stringsAsFactors = FALSE
)
emp_data
summary(emp_data)
