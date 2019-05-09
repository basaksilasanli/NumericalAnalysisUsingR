fun <- function(x) {
    return(x^3-x-1)
}
a = as.double(readline(prompt = "Enter first estimation "))
b = as.double(readline(prompt = "Enter second estimation "))

y1 = fun(a)
y2 = fun(b)

w = (y2*a - y1*b) / (y2 - y1)

if ( y1*y2 > 0) {
  
    print("wrong input")
}

i = 0
options(digits = 6)

while ( abs(fun(w)) > 0.00001) {
    i<-i+1
    y1 = fun(a)
    y2 = fun(b) 
    y3 = fun(w)
    
    print(i)
    print (w)
    print(y3)
  
  
    
    if( (y1*y3) <= 0) {
        b = w
    }
    else {
        a = w
    }
    w = ( fun(b) * a - fun(a)*b ) / (fun(b) - fun(a))
    
    
    
}
