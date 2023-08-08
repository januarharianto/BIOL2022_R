# This script creates a histogram and boxplot of a single dataset using ggplot2.
library(tidyverse)
library(readxl)

# Simulated data below. If you wish to import your own data, comment
# out the code below or remove it.
# To import your own data, use read_csv() or read_excel() depending
# on whether your data is in a .csv or .xlsx file.
#
# ==============================================
# Generate simulated data
set.seed(1213)
df <- tibble(x = rnorm(100, mean = 5, sd = 2))
# ==============================================

# Create histogram using ggplot2
ggplot(df, aes(x = x)) +
    geom_histogram(alpha = 0.5, position = "identity", bins = 20) +
    labs(
        title = "Histogram of a Single Dataset",
        x = "Value",
        y = "Frequency"
    ) +
    theme_classic()

# Create boxplot using ggplot2
ggplot(df, aes(y = "", x = x)) +
    geom_boxplot(alpha = 0.5) +
    labs(
        title = "Boxplot of a Single Dataset",
        x = "",
        y = "Value"
    ) +
    theme_classic()
