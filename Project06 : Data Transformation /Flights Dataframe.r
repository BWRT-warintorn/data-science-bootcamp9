## transform nyflights13
library(nycflights13)
library(tidyverse) #dplyr
## sk 5 questions about this dataset
data("flights")
data("airlines")
# instuction, manual
# ?flights
##################################
fli <- flights
air <- airlines
View(fli)
View(air)
##################################
# eq.1
fli %>% 
  count(carrier) %>%
  left_join(air, by= "carrier") %>%
  arrange(desc(n))
# eq.2
fli %>%
  group_by(carrier) %>%
  summarise( avg_distance_2013 = mean(distance)) %>%
  arrange(desc(avg_distance_2013))
# eq.3
fli %>%
  filter(dep_delay > 0 & dep_delay != "NA" ) %>%
  group_by(carrier) %>%
  summarise(avg_dep_delay = mean(dep_delay)) %>%
  arrange(desc(avg_dep_delay))
# eq.4
fli %>%
  filter(origin != "NA" & dest != "NA") %>%
  group_by(origin,dest) %>%
  summarise(count=n(),
            avg_hour = mean(hour)) %>%
  arrange(desc(count)) %>% 
  head(10)
# eq. 5
fli %>%
  group_by(month) %>%
  count(month) %>%
  mutate(flights_per_day = n/30.5)
