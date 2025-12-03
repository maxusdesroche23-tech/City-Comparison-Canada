# scripts/cleaning.R
# Data cleaning functions

library(dplyr)
library(janitor)
library(stringr)
library(rlang)

# Clean column names to snake_case
clean_colnames <- function(df) {
  janitor::clean_names(df)
}

# Clean city names (trim + Title Case)
clean_city_names <- function(df, city_col = "city") {
  df %>%
    mutate(
      !!sym(city_col) := !!sym(city_col) |>
        as.character() |>
        str_trim() |>
        str_to_title()
    )
}

# Remove rows with missing key columns
drop_na_key_cols <- function(df, cols = c("city")) {
  df %>% tidyr::drop_na(dplyr::all_of(cols))
}

