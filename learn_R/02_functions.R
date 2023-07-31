############################################################
# BIOL2022 Biology Experimental Design and Analysis (BEDA)
# Running functions in R
#
# Last updated: Jul 2023
############################################################
#
# Welcome. This is a quick guide to running functions in R for students in
# BIOL2022.

# This guide assumes you are using RStudio or Posit Cloud.

# Section: Functions
# ------------------
# R has many built-in functions that you can use to perform common tasks. For
# example, the `print()` function will print its argument to the console.

# Functions are identified by their name, followed by parentheses. The
# parentheses contain the function's arguments. For example, the `print()`
# function takes a single argument, which is the text to print to the console.
# The following line will print the text "Hello world!" to the console:

print("Hello world!") # prints "Hello world!" to the console

# The power of functions is that they can be used to perform complex tasks with
# a single line of code. For example, the `mean()` function will calculate the
# mean of its argument. The following line will calculate the mean of the
# numbers 1, 2, 3, 4, and 5:

mean(1:5) # calculates the mean of 1, 2, 3, 4, and 5

# The `mean()` function takes a single argument, which is a vector of numbers.
# The `:` operator is used to create a vector of numbers. For example, the
# following line will create a vector of numbers from 1 to 5:

1:5 # creates a vector of numbers from 1 to 5

# Believe it or not, the above line is also a function call. The `:` operator is
# actually a function called `seq.int()`. The following line is equivalent to
# the above line:

seq.int(1, 5) # creates a vector of numbers from 1 to 5

# Section: Arguments
# ------------------
# Functions can take zero or more arguments. For example, the `print()` function
# takes a single argument, which is the text to print to the console. The
# `mean()` function takes a single argument, which is a vector of numbers. The
# `seq.int()` function takes two arguments, which are the start and end of the
# sequence.

# To find out what arguments a function takes, check the documentation. For
# example, the documentation for the `mean()` function can be found by typing
# `?mean` into the console and pressing Enter. The documentation for the
# `seq.int()` function can be found by typing `?seq.int` into the console and
# pressing Enter.

?mean # displays the documentation for the `mean()` function
?seq.int # displays the documentation for the `seq.int()` function

# The documentation for a function will tell you what arguments the function
# takes, and what each argument does. For example, the documentation for the
# `mean()` function tells us that the `mean()` function takes the following
# arguments:
# - `x`: a numeric vector
# - `trim`: the fraction (0 to 0.5) of observations to be trimmed from each end
#   of `x` before the mean is computed. Values of trim outside that range are
#   taken as the nearest endpoint.
# - `na.rm`: a logical value indicating whether NA values should be stripped
#   before the computation proceeds.
# - `...`: further arguments passed to or from other methods.

# Reading the documentation for a function is a very important skill. You should
# always read the documentation for a function before using it.

# Section: Getting new functions
# ------------------------------
# R comes with many built-in functions, but you can also install new functions
# from the internet. This is done by installing packages.

# Packages are collections of functions that are designed to work together. For
# example, the `tidyverse` package is a collection of functions that are
# designed to make data analysis easier. The `ggplot2` package is a collection
# of functions that are designed to make plotting easier.

# To install a package, use the `install.packages()` function. For example, the
# following line will install the `ggplot2` package:

install.packages("ggplot2") # installs the `ggplot2` package

# You only need to install a package once. After you have installed a package,
# you can load it into your R session using the `library()` function. For
# example, the following line will load the `ggplot2` package:

library(ggplot2) # loads the `ggplot2` package

# Once you have loaded a package, you can use the functions in that package. For
# example, the `ggplot2` package contains a function called `ggplot()`. The
# following line will create a plot using the `ggplot()` function:

ggplot() # creates a plot using the `ggplot()` function

# For now, don't worry about what the above line does. We will cover plotting in
# more detail later. The important thing to note is that the `ggplot()` function
# would have created a plot that contains no data on the Plots tab in RStudio.
# (It did something!)

# END
# This is the end of the guide on functions.
