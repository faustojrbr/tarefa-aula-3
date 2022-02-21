library(rvest)
library(janitor)
library(lubridate)
library(tidyverse)

lista = read_html("http://hungergamestales.fandom.com/wiki/List_of_Winners")
winners = lista %>%
  html_element("#mw-content-text > div > table:nth-child(2)") %>%
  html_table()

ggplot(data = winners) + 
  geom_point(mapping = aes(x = District, y = Age))

ggplot(data = winners) + 
  geom_point(mapping = aes(x = Gender, y = Age))
