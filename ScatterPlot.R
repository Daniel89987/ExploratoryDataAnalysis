library(dplyr)
library(plotly)

data_set <- read.csv("USA_Housing.csv")
plot_ly(data = data_set, x = ~Area.Population, y = ~Price, 
        text = ~Address, type = "scatter", mode = "markers") %>%
  layout(title = "House Price and the population in the houses' area")
