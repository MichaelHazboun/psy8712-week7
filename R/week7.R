# Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)




# Data Import and Cleaning
week7_tbl <- read_csv("../data/week3.csv", col_names = T) %>%
  mutate(timeStart=ymd_hms(timeStart)) %>%
  filter(q6==1) %>%
  select(-q6)%>%
  mutate(timeSpent=as.numeric(timeEnd-timeStart)) %>%
  mutate(condition=factor(condition, c("A","B","C"),c("Block A", "Block B", "Control"))) %>%
  mutate(gender= factor(gender, c("M","F"),c("Male","Female")))

