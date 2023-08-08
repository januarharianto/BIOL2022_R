# This script creates a histogram and boxplot of grouped data using ggplot2.
library(tidyverse)
library(readxl)

# Simulated data below. If you wish to import your own data, comment
# out the code below or remove it.
# To import your own data, use read_csv() or read_excel() depending
# on whether your data is in a .csv or .xlsx file.
#
# ==============================================
# Generate simulated data
set.seed(1206)
group1 <- rnorm(100, mean = 5, sd = 2)
group2 <- rnorm(100, mean = 7, sd = 2)
# Combine data into a data frame
df <- data.frame(
    value = c(group1, group2),
    group = rep(c("Group 1", "Group 2"), each = 100)
)
# ==============================================


# Create histogram using ggplot2
ggplot(df, aes(x = value, fill = group)) +
    geom_histogram(alpha = 0.5, position = "identity", bins = 20) +
    scale_fill_manual(values = c("#00AFBB", "#E7B800")) +
    labs(
        title = "Histogram of Two Groups",
        x = "Value",
        y = "Frequency",
        fill = "Group"
    ) +
    theme_classic()

ggplot(df, aes(x = group, y = value)) +
    geom_boxplot() +
    labs(
        title = "Histogram of Two Groups",
        x = "Value",
        y = "Frequency",
        fill = "Group"
    ) +
    theme_classic()
