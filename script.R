<<<<<<< HEAD
data <- read_xlsx("data/humac-data.xlsx") %>%
  select(fp, timepoint, leg, pt.60) %>%
  pivot_wider(names_from = timepoint, values_from = pt.60) %>%
  mutate(diff = pre - post) %>%
  summarise(s = sd(diff),
            te = s / sqrt(2),
            m = mean(c(pre, post)),
            cv = (te / m) * 100) %>%
  print()
=======
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
 
<<<<<<< HEAD
>>>>>>> 97088a4c7c04bee840657d10a1a5669b2af90e1e
=======

>>>>>>> e2986a65d68ead82e23cdef65290acd098e723a3
