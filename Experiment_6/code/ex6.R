library(ggplot2)
library(GGally)
library(dplyr)

df <- read.csv("6.retail_business.csv")

colnames(df) <- c("Order_ID", "Region", "Product_Category", "Sales", "Profit", "Discount", "Customer_Segment")

ggparcoord(
  data = df,
  columns = c(4, 5, 6),
  groupColumn = "Customer_Segment",
  scale = "uniminmax",
  title = "Parallel Coordinates: Sales, Profit, Discount by Segment"
) +
  theme_minimal()

ggplot(df, aes(x = Sales, y = Profit, size = Discount, color = Region)) +
  geom_point(alpha = 0.6) +
  scale_size(range = c(3, 10)) +
  labs(
    title = "Bubble Chart: Sales vs Profit",
    subtitle = "Size = Discount Level",
    x = "Sales",
    y = "Profit"
  ) +
  theme_minimal()

ggplot(df, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(size = 2) +
  facet_wrap(~Region) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Trellis Display: Performance by Region",
    x = "Sales",
    y = "Profit"
  ) +
  theme_bw()
