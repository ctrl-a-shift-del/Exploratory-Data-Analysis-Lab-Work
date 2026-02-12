print("Name: Shailendra C | Roll No: 23BAD108")

library(ggplot2)
library(dplyr)
library(lubridate)

df <- read.csv("2.ecommerce_transactions.csv")

df$Transaction_Date <- parse_date_time(df$Transaction_Date, orders = c("dmy", "mdy", "ymd"))

df$Month <- month(df$Transaction_Date, label = TRUE, abbr = TRUE)
df$Product_Category <- as.factor(df$Product_Category)


ggplot(df, aes(x = Transaction_Amount)) +
  geom_histogram(binwidth = 500, fill = "steelblue", color = "white") +
  labs(title = "Distribution of Transaction Amounts", x = "Amount", y = "Count") +
  theme_minimal()

ggplot(df, aes(x = Product_Category, y = Transaction_Amount, fill = Product_Category)) +
  geom_boxplot() +
  labs(title = "Outlier Detection: Amount by Category", y = "Transaction Amount") +
  theme_minimal()

heatmap_data <- df %>%
  group_by(Month, Product_Category) %>%
  summarise(Sales_Count = n(), .groups = 'drop')

ggplot(heatmap_data, aes(x = Month, y = Product_Category, fill = Sales_Count)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Heatmap of Monthly Sales Intensity", fill = "Sales") +
  theme_minimal()


