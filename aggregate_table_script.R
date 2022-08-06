library(dplyr)

housing_df <- read.csv("USA_Housing.csv")

housing_df$Avg..Area.House.Age <- round(housing_df$Avg..Area.House.Age)

df_group_price <- housing_df %>% group_by(Avg..Area.House.Age) %>%
  summarise(total_population = round(sum(Area.Population)),
            .groups = "drop")