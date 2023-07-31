############################################################
# BIOL2022 Biology Experimental Design and Analysis (BEDA)
# Quick R guide for students
#
# Last updated: Jul 2023
############################################################
#
# Welcome. This is a quick guide to R for students in BIOL2022. It is not
# intended to be comprehensive, but rather to provide a quick reference for
# common tasks.

# This guide assumes you are using RStudio or Posit Cloud.

# First, notice how we have used the `#` symbol to communicate with you. This is
# called a comment. Comments are ignored by R, and are used to provide
# information to the user. Comments are very useful for explaining what your
# code does, and why you have done it that way. You should use comments
# liberally in your own code.

# Any line that does not start with a `#` symbol is a command that R will
# execute. For example, the following line will print the text "Hello world!" to
# the console:

print("Hello world!") # prints "Hello world!" to the console

# To run the code above, simply ensure that your cursor is on the line you want
# to run, and press Ctrl+Enter (Windows) or Cmd+Enter (Mac). You can also click
# the "Run" button in the top-right corner of the script pane.

# Running code in this way will only run the line that your cursor is on. To run
# multiple lines, you can select them and press Ctrl+Enter/Cmd+Enter, or click
# the "Run" button. Try running the following lines:

print("Hello")
print("world!")

# Alternatively, just press Ctrl+Enter/Cmd+Enter multiple times to run each line
# in turn.

# Section: Data types
# -------------------
# R has several different data types. The most common are:
# - Numeric (e.g. 1, 2, 3, 4, 5)
# - Character (e.g. "a", "b", "c", "d", "e")
# - Factor (e.g. "a", "b", "c", "d", "e"); a special type of character vector
# - Logical (e.g. TRUE, FALSE)
# - Integer (e.g. 1L, 2L, 3L, 4L, 5L)

# When you read data into R, it will automatically assign the appropriate data
# type to each column. You can check the data type of a variable using the
# `class()` function. For example:

class(1) # numeric
class("a") # character
class(as.factor("a")) # factor
class(TRUE) # logical
class(1L) # integer

# Run each line of the code above by placing your cursor on the first line and
# pressing Ctrl+Enter/Cmd+Enter multiple times.

# Section: Vectors
# ----------------
# Vectors are the most basic data structure in R. A vector is a collection of
# values of the same data type. For example, the following is a vector of
# numeric values:

c(1, 2, 3, 4, 5)

# The `c()` function is used to create vectors. The `c()` function can be used
# to combine multiple vectors into a single vector. For example:

c(1, 2, 3, 4, 5) # numeric vector
c("a", "b", "c", "d", "e") # character vector
c(TRUE, FALSE, TRUE, FALSE, TRUE) # logical vector
c(1L, 2L, 3L, 4L, 5L) # integer vector

# You can assign a vector to a variable using the assignment operator `<-`. For
# example:

x <- c(1, 2, 3, 4, 5)
x

# What does the above code actually mean?

# The `<-` operator assigns the value on the right-hand side to the variable on
# the left-hand side. In words, we are saying: I want to save the output of the
# `c(1, 2, 3, 4, 5)` function to a variable called `x`. In the future, whenever
# I refer to `x`, I want R to use the value that was returned by the
# `c(1, 2, 3, 4, 5)` function.

# Let's think about this using more examples. We will assign the value `1` to
# the variable `one`:

one <- 1

# Now, whenever we refer to `one`, R will use the value `1`:

one

# Let's assign the character vector `c("apples", "bananas", "oranges")` to the
# variable `fruit`:
fruit <- c("apples", "bananas", "oranges")

# Now whenever we refer to `fruit`, R will use the character vector
# `c("apples", "bananas", "oranges")`:

fruit

# When you assign a vector to a variable, you can think of it as creating a
# shortcut. For example, instead of typing `c("apples", "bananas", "oranges")`,
# you can just type `fruit`. This is useful because it saves you from having to
# type the same thing over and over again.

# Saved variables are called objects. You can see a list of all objects in your
# workspace using the `ls()` function:

ls() # list all objects in workspace

# Alternatively, look in the "Environment" tab in the top-right pane.

# You can access individual elements of a vector using square brackets `[]`. For
# example:

x[1] # first element
x[2] # second element
x[3] # third element
x[4] # fourth element
x[5] # fifth element

# Notice how we went back to the `x` vector that we created earlier!

# Anyway, you can also access multiple elements of a vector using square
# brackets `[]`. For example:

x[1:3] # first three elements
x[2:4] # second, third, and fourth elements
x[c(1, 3, 5)] # first, third, and fifth elements

# You can also use square brackets `[]` to assign values to elements of a
# vector. For example:

x[1] <- 10 # assign 10 to first element
x

# Section: Data frames
# --------------------
# In most cases, you will be working with data frames. A data frame is a
# collection of vectors of the same length. Each vector represents a column in
# the data frame. For example:

df <- data.frame(
    x = c(1, 2, 3, 4, 5),
    y = c("a", "b", "c", "d", "e"),
    z = c(TRUE, FALSE, TRUE, FALSE, TRUE)
)
df # print data frame

# You can access individual columns of a data frame using the `$` operator.
# For example:

df$x # access column x
df$y # access column y
df$z # access column z

# Notice that the `$` operator returns a vector, so in the end, you are still
# working with vectors.

# END This is the end of the quick guide. Look at the other scripts in this
# directory for more information on specific topics.
