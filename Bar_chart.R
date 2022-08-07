library(dplyr)
library(plotly)

house_age_df <- read.csv("USA_Housing.csv")
house_age_df$Avg..Area.House.Age <- round(house_age_df$Avg..Area.House.Age)
plot_ly(data = house_age_df, x = ~Avg..Area.House.Age, y = ~Area.Population, 
        text = ~Address, type = "bar")
