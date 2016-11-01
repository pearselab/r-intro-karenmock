# SESSION 2

# CONTROL FLOWS AND FUNCTIONS

# curly bracket contents are a 'block', containing expressions that get executed as a group
# the 'if' statement must return a logical vector
value <- 4
x <- "cat"
if(is.numeric(value)){
  print ("Good news!")
}
is.numeric(value)

if(value>=8) {
  print ("greater than or equal to 8")
}

if(!is.numeric(value1)) {
  print ("not number")
}


# don't always have to use curly brackets

value <- 5
if(value < 5)
  print("Less than five!")

# LOOPS

# this is a while loop; continuously executes a block with a single instruction
# until the condition is not met.  Each run is called an iteration.
value <- 0
while(value <= 10) {
  value <- value +1
}  # every loop, value goes up by 1 til it gets to be 11
print ("Finished")
value

# if accidentally get into an infinite loop, hit esc repeatedly or 
# click the red cross on the console (not seeing that)
# for loops are safer

# for loops
for (i in 1:10) {
  print (i) 
} 
# means “take this block and run it for each element in 1:10, starting with the first one”
# i is the traditional loop index, with j and then k for nested loops
# common to use loop indices and not to loop directly over the vector of interest
# this is fine:
for(each in letters) {
  print (each)
}
# but this is better: (in above format it it impossible to modify anything in the vector
# you are looping over)  Not really getting that.
for (i in 1:length(letters)) {
  print (letters[i])
}

# as an example of why using a loop index is a good idea
unchanged <- c("a","b","c")
changed <- c("a","b","c")
for(each in changed) {
  each <- toupper(each)
}
identical(changed,unchanged) # returns TRUE; indexes not permanently changed

# compare to this
unchanged <- changed <- c("a","b","c")
for(i in 1:length(changed)) {
  changed[i] <- toupper(changed[i])  #here making a change to the index of the vector 'changed' by using []
}
identical(changed,unchanged) # returns FALSE
changed # returns upper case letters
unchanged # returns lower case letters

# ADVANCED LOOPING

# to break out of a loop at a certain point:
value <- 0
max.iter <- 10
goal <- 2
for (i in 1:max.iter) {
  value <- rnorm(1) # random generation from norm dist with mean0 sd1
  if(value > goal) {
    break  # 'break' is a 'keyword' in loops
  }
}
if(i == max.iter) {  # if the program does not 'break' it will proceed to the max.iter limit
  stop ("Max iteration reached!")
}
i  # this will return different values depending on iteration
# if change the max.iter to 10, will get Error: Max iteration reached!
# this feels a bit like a while loop but it will not get into infinite looping 
#   because of the break built in

# exploring the 'next' command; this code will only print random numbers if they are over a threshold
value <- 0
threshold <- 1
for (i in 1:10) {  #this is just 10 trials
  value <- rnorm(1)  #for a random variate normally dist'd with mean0 and sd1
  if(value <= threshold) {  # goes on to next trial if less than threshold
    next
  }
  print(value)  
}

# FUNCTIONS
# x is the input to the function;the function command itself is a function
# the stuff in the curly brackets is the function
double <- function (x) {  
  doubled <- x * 2  # this is the body of the function
  return (doubled) # return statement is after the work of the function
}
double(4)
double(5)

# illustration of the way R functions are 'call by value'
x <- 4
double <- function(x) {
  x <- x*2
  print (x) # if add this you can see how x was changed temporariy
  return (x)
}
double (x) # the output gives a number, but x is not changed even though in the function it was changed.
print (x)  # so x has not changed because its definition was changed INSIDE the function

# ARGUMENTS AND INVISIBILITY  

change.text <- function (text, before = "Will says", after = "", upper=FALSE) { 
  # upper=FALSE just means the character variables are not upper case
  # here defining the variables within the function
  text <- paste(before, text, after)
  if (upper) {  # can use curly brackets here or not
    text <- toupper(text)
    }
  return(text)
}
change.text("brush your teeth") # returns 'Will says brush your teeth'
# now change order of the elements
change.text ("brush your teeth", "Will's mum says") #these are now the first and 2nd arguments for the fx
change.text ("ALRIGHT MUM", upper=FALSE)  # returns 'WILL SAYS ALRIGHT MUM' if upper = TRUE

change.text <- function(text, person = c("will", "mum")) {
  person <- match.arg(person)
  text <- paste(person, "says", text)
  return(text)
}
change.text ("hi")  # default is the first element, 'will'
change.text ("hi", "will")  # returns 'will says hi' - here specifying which element
change.text ("hi", "mum") # returns 'mum says hi'


# invisible returns: the fx will only return a value if it's asked to store it as a variable
bond.james.bond <- function (x) invisible(x)
felix.leiter <- function(x) return(x)
bond.james.bond(10)
secret <- bond.james.bond(10) # nothing prints here, not asked to print or return
print(secret) # now prints 10; so 'secret' exists
felix.leiter(10) # prints 10 since this functioin includes return






