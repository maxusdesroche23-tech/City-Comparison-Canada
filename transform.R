# scripts/transform.R
# Combine datasets and compute indicators for comparison

library(dplyr)
library(rlang)

source("scripts/utils.R")

# Join income, rent, population, labour force, and occupations by "city"
combine_city_data <- function(income_df,
                              rent_df,
                              population_df,
                              labour_df,
                              occupations_df) {
  df <- income_df %>%
    left_join(rent_df,       by = "city") %>%
    left_join(population_df, by = "city") %>%
    left_join(labour_df,     by = "city") %>%
    left_join(occupations_df,by = "city")
  
  df
}

# Compute indicators and overall score
compute_indicators <- function(df) {
  df %>%
    mutate(
      # Simple affordability index: income / (annual rent)
      affordability_index = median_income_2021 / (avg_monthly_rent_2021 * 12),
      
      income_index   = normalize_01(median_income_2021),
      rent_index     = 1 - normalize_01(avg_monthly_rent_2021), # lower rent = better
      labour_index   = normalize_01(labour_force_participation_2021),
      affordability_norm = normalize_01(affordability_index),
      
      # Overall score (equal weight)
      overall_score = rowMeans(
        cbind(income_index, rent_index, labour_index, affordability_norm),
        na.rm = TRUE
      )
    )
}

# Rank cities by score and return top N
rank_cities <- function(df, n = 10) {
  df %>%
    arrange(desc(overall_score)) %>%
    dplyr::slice_head(n = n)
}

