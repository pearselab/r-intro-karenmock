################################################
## Exercises ###################################
################################################

# trying again
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
  
# gl
# identical
# image
# library
# length
# jitter
# ls; what does rm(list=ls()) do?
# mean, median, max, min
# paste
# read.csv, read.table, write.csv, write.table
# rnorm, pnorm, dnorm, qnorm
# runif, rpois
# rank
# sort, ran
# outer
# rep
# rowSum, colSum
# seq
# source
# which, which.min, which.max
# setdiff, intersect, union
# table
# with; make sure you read the examples as this is a simple function 
#   whose technical explanation can be complex. The data argument to 
#   many plotting functions allows you to do something similar

################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."
