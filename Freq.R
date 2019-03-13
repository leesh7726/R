




tmp_data <- data.frame(
  age <- c(76,56,45,20,20,76)
)
tmp_data$age

cut(tmp_data$age, breaks = (1:11)*10)
#10 ~ 110세까지 데이터를 잘라서 빈도 찾기


table(cut(tmp_data$age, breaks = (1:11)*10))
#테이블형태로 출력