#if
#if else


tmp_data = c("who", "are", "you")
if("you" %in% tmp_data){
  print("you exist")
} else if("are" %in% tmp_data){
  print("are exist")
} else if("who" %in% tmp_data){
  print("who exist")
} else{
  print("not exist")
}

#ifelse
tmp_data2 <- c(4,5,6,7)
tmpdata3 <- ifelse(tmp_data2 %% 2 ==0, "even", "odd")
tmpdata3

#switch
s <- switch(3, "one", "two", "three")
print(s)

#repeat loop
tmp_data4 <- c("hi", "hello")
count <- 2

repeat {
  print(count)
  count <- count + 1 
  if(count>5){
    break
  }
}

x <- 1
repeat {
  print(x)
  x = x +1 
  if(x ==10){
    break
  }
}

# for loop
tmp_data5 <- 1:10
for(i in tmp_data5){
  print(i)
}

for(j in LETTERS[1:10]){
  print (j)
  if(j == "E"){
    break
  }
}
# break , next

tmp_data5 <- letters[1:10]
tmp_data5
for(i in tmp_data5){
  if (i == "d"){
    next
  }
  print(i)
}




#while loop
 


# gugudan
for(i in c(2:9)){
  print(paste(i, "단"))
  for(j in c(1:9)){
    print(paste(i, " x ", j, " = ", i*j ))
  }
}
  

  
  
  

