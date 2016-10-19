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

# cat - concatenate and print
#     - Print output to the screen or to a file. Use cat to print information 
#       to an end-user from a function. cat is also useful for writing 
#       information that is being processed or generated, one or more lines at 
#       a time, to a file.
x <- c(1,4,8)
cat("The mean of x is ",mean(x), "\n")

# cbind
# col,row
# cut
# diff
# dim
# rownames, colnames, names
# expand.grid
# eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", 
#   not ?%*%, as this is an operator, and document the function, not the maths
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
