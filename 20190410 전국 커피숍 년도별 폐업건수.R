
a <- read.csv("coffee.csv")
a$stateOfbusiness == "폐업 등"
data <- subset(a,a$stateOfbusiness == "폐업 등")
data$endYear = round(data$dateOfclosure/10000)
install.packages("dplyr")
library(dplyr)
d <- data %>% group_by(endYear)  %>% summarise(total = n())
plot(d)
