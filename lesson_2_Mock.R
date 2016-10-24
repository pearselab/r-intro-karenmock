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





