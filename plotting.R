# scripts/plotting.R
# Visualization functions (saved to /visuals)

library(ggplot2)
library(dplyr)
library(rlang)

source("scripts/utils.R")

# Top N cities by overall score
plot_top_cities <- function(df, n = 10,
                            filename = "top_cities_overall_score.png") {
  ensure_dir(project_path("visuals"))
  
  plot_df <- df %>%
    arrange(desc(overall_score)) %>%
    slice_head(n = n) %>%
    arrange(overall_score)
  
  p <- ggplot(plot_df,
              aes(x = overall_score, y = reorder(city, overall_score))) +
    geom_col() +
    labs(
      title = paste("Top", n, "Cities by Overall Score (2021)"),
      x = "Overall Score (0–1)",
      y = "City"
    ) +
    theme_city()
  
  out_path <- project_path("visuals", filename)
  ggsave(out_path, p, width = 8, height = 5, dpi = 300)
  message("Saved plot to: ", out_path)
  
  invisible(p)
}

# Income vs rent scatterplot
plot_income_vs_rent <- function(df,
                                filename = "income_vs_rent_2021.png") {
  ensure_dir(project_path("visuals"))
  
  p <- ggplot(df,
              aes(x = avg_monthly_rent_2021,
                  y = median_income_2021,
                  label = city)) +
    geom_point() +
    geom_text(vjust = -0.5, size = 3) +
    labs(
      title = "Median Income vs Monthly Rent (2021)",
      x = "Average Monthly Rent (2021)",
      y = "Median Income (2021)"
    ) +
    theme_city()
  
  out_path <- project_path("visuals", filename)
  ggsave(out_path, p, width = 8, height = 5, dpi = 300)
  message("Saved plot to: ", out_path)
  
  invisible(p)
}
