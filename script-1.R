library(tidyverse)

print(sum(1:10))

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(trim = FALSE, alpha = 0.8, color = "white") +
  geom_boxplot(width = 0.12, outlier.shape = NA, alpha = 0.7) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Diamond prices across cut quality",
    subtitle = "Price distributions for the ggplot2 diamonds dataset",
    x = "Cut quality",
    y = "Price (USD)"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 6, dpi = 300)
