install.packages(c("dplyr", "stringr", "ggplot2", "readr", "janitor"))
install.packages("vroom")

# scripts/utils.R
# General utility functions for the City-Comparison-Canada project

library(dplyr)
library(stringr)
library(ggplot2)

# Create directory if it does not exist
ensure_dir <- function(path) {
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }
}

# Project path (assumes your working directory is the project root)
project_path <- function(...) {
  file.path(getwd(), ...)
}

# Base ggplot theme for the project
theme_city <- function() {
  theme_minimal(base_size = 12) +
    theme(
      plot.title = element_text(face = "bold", hjust = 0.5),
      axis.title = element_text(face = "bold"),
      panel.grid.minor = element_blank()
    )
}

# Normalize numeric vector between 0 and 1
normalize_01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  if (diff(rng) == 0) return(rep(0.5, length(x)))
  (x - rng[1]) / (rng[2] - rng[1])
}

