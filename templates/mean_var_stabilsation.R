# This script creates a histogram and boxplot of a single dataset using ggplot2.
library(tidyverse)
library(readxl)
library(patchwork)

# Simulated data below. If you wish to import your own data, comment
# out the code below or remove it.
# To import your own data, use read_csv() or read_excel() depending
# on whether your data is in a .csv or .xlsx file.
#
# ==============================================
# Generate simulated data
set.seed(1543)
x <- rnorm(40, mean = 10, sd = 2)
sample_sizes <- seq(0, 40, by = 1)
means <- sapply(sample_sizes, function(n) mean(sample(x, n)))
vars <- sapply(sample_sizes, function(n) var(sample(x, n)))

df <- tibble(x = sample_sizes, means, vars) |>
    drop_na()
# ==============================================


# Plot means
library(ggplot2)
library(patchwork)
p1 <-
    ggplot(df, aes(x, means)) +
    geom_line() +
    labs(x = "Sample size", y = "Mean value") +
    ggtitle("Mean stabilisation") +
    theme_bw()

p2 <-
    ggplot(df, aes(x, vars)) +
    geom_line() +
    labs(x = "Sample size", y = "Variance") +
    ggtitle("Variance stabilisation") +
    theme_bw()

p1
p2
p1 + p2
