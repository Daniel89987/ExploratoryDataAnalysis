library(dplyr)

housing_df <- read.csv("USA_Housing.csv")

housing_df$Avg..Area.House.Age <- round(housing_df$Avg..Area.House.Age)

df_group_price <- housing_df %>% group_by(Avg..Area.House.Age) %>%
  summarise(total_avg_income = round(sum(Avg..Area.Income)),
            total_avg_price = round(sum(Price)),
            .groups = "drop")