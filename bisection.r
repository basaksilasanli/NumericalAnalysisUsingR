fun <- function(x) {
  return(x^3-x-1)
}

a = as.double(readline(prompt = "Enter first estimation "))
b = as.double(readline(prompt = "Enter second estimation "))


y1 = fun(a)
y2 = fun(b)

if (y1*y2 > 0) {
  
  print("wrong input")
  
}

c = (a + b) / 2

i = 0

options (digits = 6)

while ( abs((b-a)/2) < 0.00001) {
  i<-i+1
  
  y1 = fun(a)
  y2 = fun(b)
  y3 = fun(c)
  
  print(i)
  print(c)
  
  if( (y1*y3) < 0) {
    b = c
  }
  
  else{
    a = c
  }
  c = (a + b) / 2 
  
  
  
}
