install.packages("ROpenDota")
library("ROpenDota")
library("tidyverse")
library(lubridate)
test_datensatz <- get_matches(111140177,5000)
test_datensatz <- test_datensatz %>% filter(game_mode == 22)

seconds_to_period(48000)
test_datensatz$duration <- test_datensatz$duration / 60
test_datensatz$start_time <- as.POSIXct(test_datensatz$start_time, origin="1970-01-01")

test_datensatz$day <- as.Date(test_datensatz$start_time)
test_datensatz$time <- format(test_datensatz$start_time, "%H:%M:%S")

test_datensatz <- test_datensatz %>% filter(day > "2022-01-01")
test_datensatz$site <- ifelse(test_datensatz$player_slot <= 127, 1 , 0)
test_datensatz$site <- redddddd
