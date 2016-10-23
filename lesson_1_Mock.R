################################################
## Exercises ###################################
################################################
 
# c   - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

# cat - concatenate to a print statement
x <- c(1,4,8)
cat("The mean of x is ",mean(x), "\n")

# cbind - binds columns; combines objects by columns
M <- matrix (c(1:3,4:6,7:9), nrow =3, ncol = 3)
N <- c("One", "Two", "Three")
NM <- cbind (N,M) 
NM

# col,row - with [], specifies an index of a vector or matrix
M <- matrix (c(1:3,4:6,7:9), nrow =3, ncol = 3)
M1 <- M[3,2]
M1

# cut - divides the range of x into intervals and codes the values in x by interval.
x <- (1:20)
y <- cut(x,4)
y

# diff - a vector of 'lagged differences', or number of integers between numbers
x <- c(2,4,8,22,48)
diff(x)  #returns (2,4,14,26)

# dim - to retrieve or set the dimension of an object
x <- 1:12
dim(x) <- c(3,4)
x

# rownames, colnames, names - to get or set the names of an object
letters
names(letters) <- c(1:26)
letters

# expand.grid - systematically generates a dataframe by filing in 
#   with all the possible combination of the provided vectors.
require(utils)
y <- expand.grid(height = seq(60, 80, 5), weight = seq(100, 300, 50),
            sex = c("Male","Female"))
y

# eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", 
#   not ?%*%, as this is an operator, and document the function, not the maths
#   The eigen command computes the eigenvalues and eigenvectors of matrices. 
#   The 
cbind(c(1,-1), c(-1,1))
eigen(cbind(c(1,-1), c(-1,1))) #returns parallel matrix of eigenvalues
upper.tri(cbind(c(1,-1), c(-1,1)))  #returns a parallel matrix of logicals wrt matrix position
diag(cbind(c(1,-1), c(-1,1))) # returns the diagonal of a matrix
# the %*% operator multiplies a matrix by its transpose.
# the %x% is the form of a binary operator
# %%, %in%, %*% are binary operators (respectively modulo, match, and matrix multiply)
  
# gl - generate factor levels
#   can specify the number of levels, the number of replications, pattern, and labels
#   gl(n,k,length(n*k...); n = number of levels, k = number of reps
test <- gl(3,2,labels = c("green","red","yellow"))
test  # generates green, green, red, red, yellow, yellow
test1 <- gl(2, 8, labels = c("Control", "Treat"))
test1 # generates 8 controls and 8 treatments
test2 <- gl(2, 1, 20)
test2 # generates a string 20 chars long (1 2 1 2 1 2 1 2...)
test3 <- gl(2, 2, 20)
test3 # generates a string 20 chars long (1 1 2 2 1 1 2 2 ...)

# identical - a way to test two object for being exactly equal.  Returns logical.
#   identical (x,y,...)
x <- 123
y <- c(1,2,3)
identical(x,y)  # returns "FALSE"

# image - Creates a grid of colored or gray-scale rectangles with colors 
#   corresponding to the values in z. This can be used to display 
#   three-dimensional or spatial data aka images.
#   image (x,y,z...) where x & y are grid locations and z is the matrix 
#     containing the values to plot
# there aren't any comprehensible examples of this command without a plethora of 
# other commands...will need to wait until I have a specific application.

# library - loads and attached add-on packages (same with 'require')
#   usage: library (package,...)
library () # lists all available packages
library (ggplot2)  # attaches package 'ggplot2'
require (ggplot2)  # does the same thing

# length - get or set the length of vectors (including lists) and factors
x <- c(1:50)
length(x) # returns 50

# jitter - adds a small amount of noise to a numeric vector, e.g. for mapping to avoid 
#     perfect overlap of identical points
x <- c(1,1,2,2,3,3,4,4)
y <- jitter (x)
y

# ls; what does rm(list=ls()) do? - ls (and 'objects') returns a vector of object names in
# a specified environment
ls() # returns current object names
rm(list=ls()) # removes these objects
ls() # now returns 'character(0)'since there are no objects

# mean, median, max, min - returns the mean, median, max or min of an R object
x <-1:50
x
mean(x) #returns 25.5

# paste - concatenates vectors after converting to character
x <- 1:3
class(x)
y <- c("A","B","C","D")
class(y)
z <- paste(x,y) # combines first element of x with first element of y, recycles elements if needed
z   #returns "1 A" "2 B" "3 C" "1 D", where the 1 from the shorter vector is re-used
class(z) # returns 'character'


# read.csv, read.table - these are data input commands that create dataframes from incoming data
# usage: read.csv(filename,...)

# write.csv, write.table - converts an object (x) to a dataframe and prints it to a file
# usage: write.csv(x, file = "",...)

# rnorm - random generation of elements in a normal distribution
# usage: rnorm(n, mean = 0, sd = 1) where n is the number of observations
rnorm(4) # returns 4 numbers from this normal distribution

# dnorm - returns a vector of probability densities given x, a vector of quantiles for the normal dist
# usage: dnorm(x, mean = 0, sd = 1, log = FALSE) where x is a vector of quantiles (just numbers in the dist)
x <- rnorm(4)
x
dnorm(x) # returns a list of probabilities

# pnorm - Given a number or a list it computes the probability that a normally distributed random number 
#   will be less than that number. This function also goes by the rather ominous title of the ?Cumulative 
#   Distribution Function.? 
#   lower.tail option: logical; if TRUE (default), probabilities are P[X = x] otherwise, P[X > x].
#   usage: pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE) where q is a vector of quantiles
pnorm(0) # returns 0.5, there is .50 prob that a normally distributed random # (mean0, sd1) will be <0 
pnorm(0,mean=2) # returns 0.0227, .02 prob that a normally distributed random # (mean2, sd1) will be <0 
pnorm(1) # returns 0.841; .84 prob that a normally dist'd random # (mean0, sd1) will be <1
Pnorm(-1) # returns 0.159; .15 prob that a normally dist'd random # (mean0, sd1) will be <-1 
x <- rnorm(4) 
x
pnorm(x)  # gives the prob's that the normally dist random # is less than x
pnorm(x, lower.tail = FALSE) # gives the prob's that the normally dist random # is greater than x

# qnorm = inverse of pnorm; you give it a probability and it returns the number whose cumulative distribution
#   matches the probability.For e.g. if you have a normally dist'd random variable with mean0 and sd1, then
#   if you give the function a probability it returns the associated Z-score.
qnorm(0.5)  #returns 0, since the variable with cumulative density 0.5 is 0
qnorm(0.975)  #returns 1.96, the number with cumulative density 0.975

# rpois = random generation for the poisson distribution with parameter lambda
#   usage:  rpois (n,lambda) where n = the number of random variables to return and lambda is the rate parameter
rpois(5, 1)  # returns 5 numbers on both sides of 1.  Guessing that these represent sample estimates of lambda

# runif  - If you want to generate a decimal number where any value (including fractional values) between the 
#   stated minimum and maximum is equally likely, use the runif function.  This function generates values from 
#   the Uniform distribution.  Default is min=0, max=1. Here's how to generate one random number between 5.0 and 7.5:
x1 <- runif(1, 5.0, 7.5)
x1
# If you want to generate multiple random values, don't use a loop.  You can generate several values at once by 
#   specifying the number of values you want as the first argument to runif.  Here's how to generate 10 values 
#   between 5.0 and 7.5:
x2 <- runif(10, 5.0, 7.5)
x2
# By contrast, rnorm(n, mean = , sd = ) is used to generate n normal random numbers with arguments mean and sd, while 
#   runif(n, min = , max = ) is used to generate n uniform random numbers lie in the interval (min, max).

# rank - ranks the values in a vector, with different options for handling ties.
r1 <- rank(x1 <- c(3, 1, 4, 15, 92))
r1   #returns the vector 2,1,3,4,5...the rank order of the variables in x1

# sort  - sorts a vector or factor into ascending or descending order.
#   usage: sort (x, decreasing = FALSE) where x is the vector to be sorted
#   original list had 'sort, ran', I think this was supposed to be a contrast with 'rank'
x1 <- c(3, 1, 4, 15, 92)
sort(x1)
x1   #does not change the order of the original vector; would want to rename new vector to preserve order

# outer - this command returns the outer product of 2 arrays but the help file in indecipherable.
#   hopefully if this is a common command, we'll learn it in the context of an example.

# rep - replicates values in a vectorl, with additional options such as times = and each =
rep(1:4, times=2)  # returns 12341234, replicates the vector two times
rep(1:4, each =2)  # returns 11223344, replicates each element in the vector two times
rep(1:4, c(2,2,2,2))  # same result as previous
rep(1:4, c(2,4,1,1))  # returns 1 1 2 2 2 2 3 4; so can control the # of times each element is replicated

# rowSum, colSum - Compute column sums across rows of a numeric matrix-like object for each level of a grouping variable.
x <- matrix(runif(100), ncol = 5) #generates a matrix containing 100 numbers between 0 and 1, in 5 colummns (20 rows)
x
group <- rep(c(1:10),each=2) # returns 1  1  2  2  3  3  4  4  5  5  6  6  7  7  8  8  9  9 10 10
group
xsum <- rowsum(x,group) # collapses into a 5X10 matrix, summing values in rows in same group, with 10 groups
xsum
# 'colSum' does not appear to be a legitimate command

# seq - generates regular sequences, with several options
seq(0, 1, length.out = 11) # returns a sequence of 11 numbers evenly spaced from 0.0 to 1.1
seq(1, 6, by = 3) # returns 1,4
seq(1, 6, by = 4) # returns 1,5
seq(1,10, by = 2) # returns odd numbers

# source - source causes R to accept its input from the named file or URL or connection. 
#   usage: source (file, ...options)
#   don't have a good source for an example...

# which, which.min, which.max - Gives the TRUE indices of a logical object, allowing for array indices.
letters
which(letters == "b")  # returns the position in the vector for which this is true, i.e. 2
ll <- c(TRUE, FALSE, TRUE, NA, FALSE, FALSE, TRUE)
which(ll) # returns the elements of the vector ll which are 'TRUE' (i.e. 1,3,7)
which(1:10 > 3) # returns 4,5,6,7,8,9,10
which.max(1:10) # returns 10 for 10th element, not the number 10
x <- c(1,2,3,5,6,8,8)
which.max(x)  # returns 6 for the 6th element, which is 8

# setdiff, intersect, union  - returns a SET of differences, equality, and membership on two vectors x and y
#   the difference between two sets is order-dependent. It is the material that is in the first named set, 
#   that is not in the second named set. Thus setdiff(A,B) gives a different answer than setdiff(B,A).
x <- c(1:20)
y <- c(10:30)
d1 <- setdiff(x,y) # returns 1 through 9; the elements that are in the first set but not the second
d2 <- setdiff(y,x) # returns 21 through 30
intersect (x,y)  # returns 10-20
union (x,y) # returns 10 through 20

# table - builds a contingency table of the counts at each combination of factor levels
test <- read.csv("smoker.csv") # this file is from http://www.cyclismo.org/tutorial/R/_static/smoker.csv, in folder with HW
table(test) # creates a table with cols high, low, middle and rows current, former, never.  Very handy data summary

# with; make sure you read the examples as this is a simple function 
#   whose technical explanation can be complex. The data argument to 
#   many plotting functions allows you to do something similar.
#   Seems to refer to a specific dataset, doing a command on that dataset.
#   Not sure when this will be handy.
with(test, dim(test))  # returns the dimensions of 'test'.

################################################
## Bonus exercises #############################
################################################

# find the following items in the text below (bonus question: it’s the opening of what book?). 
# A tale of two cities
# Once you’ve done that, use strsplit to cut the entire string into sections on each new line 
# (what’s the regex code for that?) and then repeat the exercise using grepl (which won’t take long).

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."

#   All instances of “the”
bonus.text.words <- strsplit(bonus.text," ")[[1]]  # split the first element of the vector
bonus.text.words # the lines are now split out into individual words but still a single vector
length(bonus.text.words) # returns 112, so now individual words are split out
the_instances <- grep("the", bonus.text.words) # doesn't work because it is a single element, still needs to be split up
length(the_instances)  # returns 15

#   What lines end with vowels
#     first split text into lines
bonus.text.lines <- strsplit(bonus.text, "\n")[[1]]
length (bonus.text.lines)  # returns 
#     now use regular expressions to answer the question about lines
grep()



#   What lines begin with “was” 
#   Where “it” is written twice in a row
#   Where three vowels are written in a row inside a single word
#   All the words that come after the word “the”

x <- c("16_24cat", "25_34cat", "35_44catch", "45_54Cat", "55_104fat")
grep(pattern = "cat", x = x)


