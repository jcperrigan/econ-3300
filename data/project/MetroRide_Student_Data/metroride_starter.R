# MetroRide data: minimal R starter code

library(tidyverse)

customers <- read_csv("customers.csv", show_col_types = FALSE)
rides <- read_csv("rides.csv", show_col_types = FALSE)
marketing <- read_csv("marketing_experiment.csv", show_col_types = FALSE)
dictionary <- read_csv("data_dictionary.csv", show_col_types = FALSE)

# Basic checks
glimpse(customers)
glimpse(rides)
glimpse(marketing)

n_distinct(customers$customer_id)
n_distinct(rides$ride_id)
count(marketing, treatment_group)

# Add customer characteristics to each ride request when needed.
rides_with_customers <- rides |>
  left_join(customers, by = "customer_id")

# Priority Pickup experimental sample.
priority_sample <- rides_with_customers |>
  filter(priority_eligible == 1)

# Randomized marketing assignment plus pretreatment customer characteristics.
marketing_with_customers <- marketing |>
  left_join(customers, by = "customer_id")

# Example descriptive summaries—not final econometric models.
priority_sample |>
  mutate(expected_minutes_saved = standard_estimated_wait_min - priority_estimated_wait_min) |>
  group_by(priority_surcharge) |>
  summarize(selection_rate = mean(priority_selected), n = n())

marketing_with_customers |>
  group_by(treatment_group) |>
  summarize(
    booking_rate = mean(booked_within_30d),
    average_rides = mean(rides_within_30d),
    average_gross_spend = mean(gross_spend_within_30d),
    average_net_revenue = mean(net_revenue_within_30d),
    n = n()
  )

