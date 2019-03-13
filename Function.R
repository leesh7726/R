# Function

myadd <- function(){
  c<- 1 + 2
  print(c)
}

myadd()


myadd1 <- function(a=1, b=1){
  c <- a + b
  print(c)
}
myadd1(3,3)




myfunc <- function(){
  for(i in c(1:5)){
    temp = " "
    for(j in c(1:i))
    {
      
      temp <- paste(temp,"#")
    }
    print(temp)
  }
}

myfunc()

## 강사님 답
for (i in c(1:5)){
  print(paste(rep("#",  times= i), collapse = ""))
}





S