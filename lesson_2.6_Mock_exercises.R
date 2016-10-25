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


 