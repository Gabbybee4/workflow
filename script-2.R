library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 1) +
  scale_x_log10() +
  scale_y_log10() +
  scale_color_brewer(palette = "Set2") +
  labs(
    title = "Diamond prices by carat and cut",
    subtitle = "Larger diamonds tend to cost more across cut qualities",
    x = "Carat (log scale)",
    y = "Price in USD (log scale)",
    color = "Cut quality"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 10, height = 6, dpi = 300)
