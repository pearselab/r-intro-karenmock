# LESSON 2 EXERCISES 2.6

# Q1) Write a loop that prints out the numbers from 20 to 10
nums <- function(x,y) {
  print(x:y)
}
nums(20,10)

# Q2) Write a loop that print out only the numbers from 20 to 10 that are even
#   this requires a modulus operator, x%%y, 
#   which will return 1 or more if the remainder of x/y is a number and otherwise will return 0
nums <- function(x,y) {
  all <- (x:y)
  print(all)
  for (i in all) {
    if (i%%2 == 0) {
      print (i)
    }
  }
}
nums(20,10)
# an alternative from CR
is.even <- function(x){
  x %% 2 == 0 }
for (i in 20:10){
  if (is.even(i)){
    print(i)
  }
}
# another alternative from CR
seq(20, 10, by=-2)

# Q3) Write a function that calculates whether a number is a prime number 
# (hint: what does 2 %% 3 give you?)
# If we have a number, n, then the first immediate way to test if it is prime is to 
# divide every number less than n into n and if none divide then answer Yes.
isprime <- function (x) {
  all_less <- (2:(x-1))  #creates a vector of all numbers less than x down to 2
  mod_test <- (x%%all_less) #creates a vector of modulos, if not prime, one or more will be 0
  if (0 %in% mod_test == TRUE) {
    print ("This is not a prime number.")
  } else {
    print ("This is a prime number.")
  }
}
# tests if 2:7, 9,11, and 31 were successful
isprime(2)
isprime(3)
isprime(4)
isprime(5)
isprime(6)
isprime(7)
isprime(9)
isprime(11)
isprime(31)

# Q4: Write a loop that prints out the numbers from 1 to 20, printing “Good: NUMBER” 
# if the number is divisible by five and “Job: NUMBER” if then number is prime, and nothing otherwise.
list <- 1:20
for (i in list) {
  if (i%%5 == 0) {
    print (paste0("Good: ", i))
  } else {
    all_less <- (2:(i-1))  #creates a vector of all numbers less than x down to 2
    mod_test <- (i%%all_less) #creates a vector of modulos, if not prime, one or more will be 0
    if (0 %in% mod_test == TRUE) {
      print (paste0("Job: ", i))
    } else {
      print (i) # added to see numbers in neither category
    }
  }
}

# Q5: A biologist is modelling population growth using a Gompertz curve, which is defined as 
# y(t) = a*e^(-b*e^(-c*t)) where y is population size, t is time, a and b are parameters, and e is the 
# exponential function. Write them a function that calculates population size at any time for any 
# values of its parameters.
# a  asymptote, b = displacement on x-axis, c = growth rate
gompertz <- function (a,b,c,t) {  # *** do these have to be in the order they are called by the fx?
  pop_size <- a*exp(-b*exp(-c*t))
  print (pop_size)
}
gompertz(233,22,.8,2)  # no idea if the scale of the numbers is correct but it does return an answer

# Q6: The biologist likes your function so much they want you to write another function that plots the 
# progress of the population over a given length of time. Write it for them.
GompFun <- function (a,b,c,d) { # a,b,c = constants, d = # time steps
  pop_vector <- numeric(d) # creates a vector of 30 zeros
  for (i in 1:d) {
    pop_vector [i] <- a*exp(-b*exp(-c*i))
  }
  plot(1:d, pop_vector, col = color)
}
GompFun(280,100,.4,30)

# Q7: The biologist has fallen in love with your plotting function, but wants to colour y values 
# above a as blue, and y values above b as red. Change your function to allow that.
# ***didn't know enough about the Gompertz fx to test the values > a, so abandoned that aspect
GompFun <- function (a,b,c,d) { # a,b,c = constants, d = # time steps
  pop_vector <- numeric(d) # creates a vector of 30 zeros
  color <- rep("black",d)
  for (i in 1:d) {
    pop_vector [i] <- a*exp(-b*exp(-c*i))
    if (pop_vector[i] > b) {
      color[i] <- "red"  #now the color vector will have a mix of black and red
    }
  }
  plot(1:d, pop_vector, col = color)
}
GompFun(280,100,.4,30)

# Q8: You are beginning to suspect the biologist is taking advantage of you. Modify your function 
# to plot in purple any y value that's above a and b. 
# Hint: try putting 3==3 & 2==2 and 3==4 | 2==2 into an if statement and see what you get. 
# Using this construction may make this simpler.
# ***did not do this as could not evaluate when the pop was > a
# ***did not understand the 'hint' in the question

# Q9: Write a function that draws boxes of a specified width and height that look like this 
# (height 3, width 5):
  # *****
  # *   *
  # *****
# variables: desired width, height
box <- function(w,h) {
  # create 2 types of lines
  top <- c(rep("*",w),"\n")
  cat(top)  # print top line
  mid <- c("*",c(rep(" ",w-2),"*"))
  for (i in 1:h-2) {
    cat(noquote(mid),"\n")
  }
  cat(top)
}
box(5,10)

# Q10: Modify your box function to put text centred inside the box, like this:
#   *************
#   *           *
#   * some text *
#   *           *
#   *************

txtbox <- function(w,h,t) {
  top <- c(rep("*",w),"\n")
  cat(top) # print top line 
  linesover <- (round(h/2,0))-3 # number of lines to go above text
  linesunder <- h-linesover-4
  leftsp <- round((w-2-nchar(t))/2) # spaces between * and text to left
  rightsp <- w-leftsp-nchar(t)-1 # spaces between text and text to right
  if (w < (nchar(t)+4)) {
    print (noquote("ERROR:box width too small for text"))
  }
  for (i in 1:linesover) {  # print lines over text
    cat("*",c(rep(" ",(w-2)),"*","\n"))
    }
  cat("*",rep(" ",leftsp),noquote(t),rep(" ",rightsp),"*","\n")
  for (i in 1:linesunder) { # print lines under text
    cat("*",c(rep(" ",(w-2)),"*","\n"))
    }
  cat(top) # print top line
  }
txtbox (8,6,"grr")
# there are some problems with height that I am not going to bother to fix

           
  
    
  }
  txtline <-
  undertxt <-
  mid <- c("*",c(rep(" ",w-2),"*"))
  txtline <- c("*",c(rep(" ",w-5),t,c(rep(" ",w-5),"*")))
  
  
  for (i in seq(1:h-2-len) {
    cat(noquote(mid),"\n")
  }
  cat(top) # print bottom line
}
txtbox(15,15, "grrr")


# Q11: Modify your box function to build boxes of arbitrary text, taking dimensions specified 
# in terms of dimensions, not the text. For example, box("wdp", 3, 9, "hey") might produce:
#   wdpwdpwdp
#   w  hey  w
#   wdpwdpwdp

# In ecology, hurdle models are often used to model the abundance of species found on surveys. They
# first model the probability that a species will be present at a site (drawn, for example, from a 
# Bernoulli distribution) and then model the abundance for any species that is present (drawn, for 
# example, from the Poisson distribution). Write a function that simulates the abundance of a species 
# at n sites given a probability of presence (p) and that its abundance is drawn from a Poisson with 
# a given λ. Hint: there is no Bernoulli distribution in R, but the Bernoulli is a special case of 
# what distribution?...



