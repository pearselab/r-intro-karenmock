# learning functions
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
identical(changed,unchanged) # returns TRUE; not sure why these weren't changed?***

# compare to this
unchanged <- changed <- c("a","b","c")
for(i in 1:length(changed)) {
  changed[i] <- toupper(changed[i])
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
    break  # 'break' is a 'keyword' ***not sure what that means
  }
}
if(i == max.iter) {  # if the program does not 'break' it will proceed to the max.iter limit
  stop ("Max iteration reached!")
}
i  # this will return different values depending on iteration
# if change the max.iter to 10, will get Error: Max iteration reached!
# this feels a bit like a while loop but it will not get into infinite looping 
#   because of the break built in

# could make this much simpler and prevent having an error message: ***was that meant 
#   to be a challenge with the tools introduced so far?

