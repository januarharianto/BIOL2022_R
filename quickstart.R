# BIOL2022 Biology Experimental Design and Analysis (BEDA)
# Quick-start script for students
#
# Last updated: Jul 2023
#
##########################
# About
##########################
#
# This script can be used with RStudio/Posit Cloud to quickly set up your
# environment for use in BEDA.

# RUN THIS SCRIPT ONLY ONCE (but you can run it again if you need to, just
# takes time to reinstall packages that have already been installed).

# Install necessary packages from CRAN
pkgs <- c(
    "tidyverse", "tidymodels", "palmerpenguins", "rmarkdown", "quarto",
    "shiny", "learnr", "patchwork", "cowplot", "gganimate", "here"
)
install.packages(pkgs)


# Create user directory
library(here)
if (!dir.exists(here("user"))) {
    dir.create(here("user"))
}
