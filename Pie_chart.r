library(plotly)
library(dplyr)
library(plyr)
house_df <- read.csv("USA_Housing.csv")
house_df$Avg..Area.House.Age <- round(house_df$Avg..Area.House.Age)
house_df$Price <- round_any(house_df$Price, 100)

fig <- plot_ly(house_df, labels = ~Avg..Area.House.Age, values = ~Price, type = 'pie')
fig <- fig %>% layout(title = 'Percentage of house price sum in different house age',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig
