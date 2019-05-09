secant <- function(fun, x0, x1, tol=10^-4, niter=500) {
options(digits = 6 )  
  for ( i in 1:niter ) {
    
    x2 <- x1-fun(x1)*(x1-x0)/(fun(x1)-fun(x0))
    print(f(x2))
    if (abs(fun(x2)) < tol)
      return(x2)
    
    x0 <- x1
    x1 <- x2
  }
  stop("exceeded allowed number of iteractions")
}
