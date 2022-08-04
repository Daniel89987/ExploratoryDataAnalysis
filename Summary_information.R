library(dplyr)

my_dataset <- read.csv("USA_Housing.csv")

# A function that takes in a dataset and returns a list of the max house price.
summary_info <- list()
max_house <- max(my_dataset$Price)
summary_info$max_house_price <- max_house

# A function that takes in a dataset and returns a list of the min house price.
min_house <- min(my_dataset$Price)
summary_info$min_house_price <- min_house

# A function that takes in a dataset and returns a list of the total average
# house pricing.
total_house <- select(my_dataset, Price)
avg_house <- (sum(total_house)) / (nrow(total_house))
summary_info$avg_house_price <- avg_house


# A function that takes in a dataset and returns a list of the total average
# of household income.
total_income <- select(my_dataset, Avg..Area.Income)
avg_income <- (sum(total_income)) / (nrow(total_income))
summary_info$avg_area_income <- avg_income

# A function that takes in a dataset and returns a list of the total average
# of house age.
total_age <- select(my_dataset, Avg..Area.House.Age)
avg_age <- (sum(total_age)) / (nrow(total_age))
summary_info$avg_house_age <- avg_age
