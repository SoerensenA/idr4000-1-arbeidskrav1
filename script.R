data <- read_xlsx("data/humac-data.xlsx") %>%
  select(fp, timepoint, leg, pt.60) %>%
  pivot_wider(names_from = timepoint, values_from = pt.60) %>%
  mutate(diff = pre - post) %>%
  summarise(s = sd(diff),
            te = s / sqrt(2),
            m = mean(c(pre, post)),
            cv = (te / m) * 100) %>%
  print()
