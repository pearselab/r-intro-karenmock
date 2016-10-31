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

# Q11: Modify your box function to build boxes of arbitrary text, taking dimensions specified 
# in terms of dimensions, not the text. For example, box("wdp", 3, 9, "hey") might produce:
#   wdpwdpwdp
#   w  hey  w
#   wdpwdpwdp
# skipped this one, I'm done with boxes 

# In ecology, hurdle models are often used to model the abundance of species found on surveys. They
# first model the probability that a species will be present at a site (drawn, for example, from a 
# Bernoulli distribution) and then model the abundance for any species that is present (drawn, for 
# example, from the Poisson distribution). Write a function that simulates the abundance of a species 
# at n sites given a probability of presence (p) and that its abundance is drawn from a Poisson with 
# a given λ. Hint: there is no Bernoulli distribution in R, but the Bernoulli is a special case of 
# what distribution?...

# Bernoulli is a special case of the binomial distribution. Random variable which takes the value 1 
# with success probability of p and the value 0 with failure probability of q=1-p

# my original answer
# the prob that a species will NOT be present at a set of n sites (trials)
# is given by pbinom (x, size, prob) where x is 0. The inverse is the prob that x is not 0.
# inputs:
# s = number of sites (i.e. trials)
# b = baseline prob of presence (= inverse of prob absence, or 0 observations)
# l = lambda, the rate of encounter

# s = number of sites
# b = baseline prob of presence
# l = lambda, the rate of encounter

s <- 
b <- 
l <-
sp_ab <- function (s,b,l) {
  p <- dbinom(0,s,b))  # this is the prob that the species is absent
  return (qpois(p,l))  # this is the number of observations expected
}
sp_ab(100,.1,.05)

# my answer after lots of help
# just discovered (through Paul) that a 'hurdle model' is a 2-step simulation.
# Here, the first hurdle is presence/absence on the site and the second abundance.  
# Since it is a sumulation, each observation is one site
# first get a random draw from binomial for one site, one query (?)***, like a single coin flip
# parameters n = 1 site, size = 1 query, prob = p

sp_ab <- function (num_sites, prob_pres) {
    for (i in 1:num_sites) {
      rbinom(1,1,p)
    }
 


# Q13) An ecologist really likes your hurdle function (will you never learn?). 
# Write them a function that simulates lots of species (each with their own p and λ) 
# across n sites. Return the results in a matrix where each species is a column, and 
# each site a row (this is the standard used for ecology data in R).

# Q14) Professor Savitzky approaches you with a delicate problem. A member of faculty 
# became disoriented during fieldwork, and is now believed to be randomly wandering somewhere 
# in the desert surrounding Logan. He is modelling their progress through time in five minute 
# intervals, assuming they cover a random, Normally-distributed distance in latitude and longitude 
# in each interval. Could you simulate this process 100 times and plot it for him?

  wandering <- function (n) { # n = number of 5-min iterations to test
    dist_lat <- 0  
    dist_long <- 0
    lat_vector <- c() #to set as vector
    long_vector <- c()
    t <-0 # to initiate
    while (t < n) {
      dist_lat <- (dist_lat + rnorm(1,0)) # presume 1 km sd; default sd = 1
      dist_long <- (dist_long + rnorm(1,0))
      lat_vector <- c(lat_vector, dist_lat) # need 2 difft vars for lat since dist_lat is the new position and lat_vector is the vector
      long_vector <- c(long_vector, dist_long)
      t <- t+1
    }
    plot (lat_vector, long_vector, type = "l")
  }
  wandering(100)
  
# Q15) Professor Savitzky is deeply concerned to realise that the member of faculty was, in fact, 
# at the top of a steep mountain in the fog. Approximately 5 miles away, in all directions, from 
# the faculty member’s starting point is a deadly cliff! He asks if you could run your simulation 
# to see how long, on average, until the faculty member plummets to their doom.
# 1mi = 1.61k

# for a single simulation
wandering <- function (n) { # n = number of 5-min iterations to test
  dist_lat <- 0  
  dist_long <- 0
  lat_vector <- c() #to set as vector
  long_vector <- c()
  t <-0 # to initiate
  while (t < n) {
    dist_lat <- (dist_lat + rnorm(1,0)) # presume 1 km sd; default sd = 1
    dist_long <- (dist_long + rnorm(1,0))
    lat_vector <- c(lat_vector, dist_lat) # need 2 difft vars for lat since dist_lat is the new position and lat_vector is the vector
    long_vector <- c(long_vector, dist_long)
    t <- t+1
    if (dist_lat > 1.6 | dist_long >1.6) {
      cat ("Time to cliff is", t*5, "minutes")
      time <- (t*5)   # ** not sure how go get this variable outside the function
      break
    } 
  }
}
wandering(100)

# attempt for  multiple simulations
avg_cliff_time <- function (max_iters, n_sims) {
  for (i in 1:n_sims) {
    cliff_time_vect <- c()
    dist_lat <- 0  
    dist_long <- 0
    lat_vector <- c() #to set as vector
    long_vector <- c()
    t <-0 # to initiate
    while (t < max_iters) {
      dist_lat <- (dist_lat + rnorm(1,0))
      dist_long <- (dist_long + rnorm(1,0))
      lat_vector <- c(lat_vector, dist_lat) # need 2 difft vars for lat since dist_lat is the new position and lat_vector is the vector
      long_vector <- c(long_vector, dist_long)
      t <- t+1
      if (dist_lat > 1.6 | dist_long >1.6) {
        cliff_time_vect <- c(cliff_time_vect, t*5)
        break
      } else {
        next  # return to while statement?
      } 
    } 
    Average_Time <- ave(cliff_time_vect)
    print ("Average Cliff Time is", Average_Time)
  } 
}
avg_cliff_time (100,20) # **getting error statement that I don't understand

# another attempt, trying to figure out how to increment a vector outside the
# function, with 'time', which is inside the function.
wandering <- function (n) { # n = number of 5-min iterations to test
  dist_lat <- 0  
  dist_long <- 0
  lat_vector <- c() #to set as vector
  long_vector <- c()
  t <-0 # to initiate
  while (t < n) {
    dist_lat <- (dist_lat + rnorm(1,0)) # presume 1 km sd; default sd = 1
    dist_long <- (dist_long + rnorm(1,0))
    lat_vector <- c(lat_vector, dist_lat) # need 2 difft vars for lat since dist_lat is the new position and lat_vector is the vector
    long_vector <- c(long_vector, dist_long)
    t <- t+1
    if (dist_lat > 1.6 | dist_long >1.6) {
      cat ("Time to cliff is", t*5, "minutes")
      time <- (t*5)   # ** not sure how go get this variable outside the function
      break
    } 
  }
}
wandering(100)

# Q16) Sadly, by the time you have completed your simulations the faculty member has perished. 
# Professor Savitzky is keen to ensure this will never happen again, and so has suggested each 
# faculty member be attached, via rubber band, to a pole at the centre of the site whenever 
# conducting fieldwork 3. He assures you that you can model this by assuming that the faculty 
# member, at each time-step, moves α× distance-from-pole latitudinally and longitudinally (in 
# addition to the rate of movement you’ve already simulated) each time-step. Simulate this, 
# and see how strong the rubber band (α) must be to keep the faculty member safe for at least a day.
