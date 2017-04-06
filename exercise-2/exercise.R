# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a,b) {
  diff <- (abs(length(a)-length(b)))
  return (paste0("The difference in lengths is ", diff))
}

# Pass two vectors of different length to your `CompareLength` function
a <- c(1:3)
b <- c(1:10)
CompareLength(a,b)
# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  longer <- "first"
  if (length(a) < length(b)){
    longer<- "second"
  }
  return (paste0("Your ", longer," vector is longer by ", diff <- (abs(length(a)-length(b)))," elements"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(a,b)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeNamedDifference <- function(a,b) {
  longer <- deparse(substitute(a))
  if (length(a) < length(b)){
    longer<- deparse(substitute(b))
  }
  return (paste0("Vector ", longer," is longer by ", diff <- (abs(length(a)-length(b)))," elements"))
}
c<- c(1:3)
d <- c(1:10)
DescribeNamedDifference(c,d)

