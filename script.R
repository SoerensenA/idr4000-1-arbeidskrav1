# Tests

# New commit
library(gt)


dat %>% 
  mutate(pt.60 = as.character(pt.60),
         ttp.60 = as.character(ttp.60)) %>% 
  pivot_longer(names_to = "variable",
  values_to = "values",
  cols = c(pt.60, ttp.60, pt.120, ttp.120, pt.240, ttp.240, pt.360, ttp.360, pt.480, ttp.480, pt.iso, ttp.iso)) %>%
  pivot_wider(names_from = timepoint, values_from = values) %>% 
  mutate(pre = as.numeric(pre),
         post = as.numeric(post)) %>% 
  group_by(variable, leg) %>% 
  colMeans()
 

 
  
  
  
  