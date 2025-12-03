# scripts/load_data.R
# Load datasets from /data

library(readr)
library(dplyr)

file.exists("scripts/utils.R")
getwd()


source("scripts/utils.R")

# income_2021.csv: city, median_income_2021
load_income_data <- function(filename = "income_2021.csv") {
  path <- project_path("data", filename)
  if (!file.exists(path)) stop(paste("File not found:", path))
  readr::read_csv(path, show_col_types = FALSE)
}

# rent_2021.csv: city, avg_monthly_rent_2021
load_rent_data <- function(filename = "rent_2021.csv") {
  path <- project_path("data", filename)
  if (!file.exists(path)) stop(paste("File not found:", path))
  readr::read_csv(path, show_col_types = FALSE)
}

# population_2021.csv: city, population_2021
load_population_data <- function(filename = "population_2021.csv") {
  path <- project_path("data", filename)
  if (!file.exists(path)) stop(paste("File not found:", path))
  readr::read_csv(path, show_col_types = FALSE)
}

# labour_force_2021.csv: city, labour_force_participation_2021
load_labour_force_data <- function(filename = "labour_force_2021.csv") {
  path <- project_path("data", filename)
  if (!file.exists(path)) stop(paste("File not found:", path))
  readr::read_csv(path, show_col_types = FALSE)
}

# occupations_2021.csv: city + occupation percentages
load_occupations_data <- function(filename = "occupations_2021.csv") {
  path <- project_path("data", filename)
  if (!file.exists(path)) stop(paste("File not found:", path))
  readr::read_csv(path, show_col_types = FALSE)
}

