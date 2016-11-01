dexter <- list(length=60, weight=40, breed="mongrel")
class(dexter) # returns 'list'
class(dexter) <- "dog"
class(dexter) # returns 'dog'

# this is a good way to structure a new class (here, 'dog')
new.dog <- function(weight, breed){  
  output <- list(weight=weight, breed=breed)  
  class(output) <- "dog"
  return(output)
}
dog(40,"mongrel")  

print.dog <- function(x, ...){  # a function that defines a method for a particular class
  cat("This ", x$breed, "weighs ", x$weight, "kg\n")
}