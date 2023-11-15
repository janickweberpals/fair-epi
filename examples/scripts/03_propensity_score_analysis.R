# load data
library(smdi)
library(gtsummary)
library(tidyverse)
library(here)

# load pre-queried and cleaned cohort data (smdi_data)
data <- smdi_data_complete

# TEST CHANGES MADE IN LASSO_VARIABLE_SELECTION BRANCH

# step 1: compute propensity of exposure assignment
exposure_form <- as.formula(paste("exposure ~ ", paste(colnames(data %>% dplyr::select(-exposure)), collapse = " + ")))

exposure_fit <- stats::glm(
  exposure_form,
  data = data,
  family = "binomial"
)

odds_table <- exposure_fit %>% 
  gtsummary::tbl_regression(exponentiate = T)

# step 2: compute propensity scores and visualize overlap before matching
exposure_plot <- data %>% 
  dplyr::mutate(ps = fitted(exposure_fit))

# plot density/overlap before matching
ps_plot <- exposure_plot %>% 
  ggplot2::ggplot(ggplot2::aes(x = ps, fill = factor(exposure))) +
  ggplot2::geom_density(alpha = .5) +
  ggplot2::theme_bw() +
  ggplot2::labs(
    title = "Propensity score overlap",
    x = "Pr(exposure)",
    y = "Density",
    fill = "Exposed"
    )

png(filename = here("figures", "Figure_1_propensity_score_overlap.png"), width = 15, height = 10, units = "in", res=600)
ps_plot + ggplot2::theme(plot.title=element_text(size=70))
dev.off()
