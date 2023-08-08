# This script creates scatterplot, with and without grouping, using ggplot2.
library(tidyverse)
library(readxl)
library(patchwork) # for combining plots

# Simulated data below. If you wish to import your own data, comment
# out the code below or remove it.
# To import your own data, use read_csv() or read_excel() depending
# on whether your data is in a .csv or .xlsx file.
#
# ==============================================
# Generate simulated data
set.seed(1955)
df <- data.frame(
    x = c(rnorm(10, mean = 10, sd = 2), rnorm(10, mean = 30, sd = 4)),
    y = c(rnorm(10, mean = 10, sd = 2), rnorm(10, mean = 30, sd = 4)),
    Group = c(rep("A", 10), rep("B", 10))
)
# ==============================================

# make the linear trends in above data more evident


# Plot the data
p1 <- ggplot(df, aes(x, y)) +
    geom_point() +
    geom_smooth(method = "lm") +
    labs(x = "X variable", y = "Y variable") +
    ggtitle("Scatterplot of data") +
    theme_bw()

p2 <- ggplot(df, aes(x, y, colour = Group)) +
    geom_point() +
    geom_smooth(method = "lm") +
    labs(x = "X variable", y = "Y variable") +
    ggtitle("Scatterplot of each group in data") +
    # add colour theme
    scale_color_brewer(palette = "Set1") +
    theme_bw()

p1
p2
p1 / p2
