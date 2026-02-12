print("Name: Shailendra C | Roll No: 23BAD108")

data <- read.csv("7.social_media_interactions.csv")

x_data <- data$Likes
y_data <- data$Shares

plot(x_data, y_data,
     main = "Task 1: Alpha Blending (Transparency)",
     xlab = "Likes",
     ylab = "Shares",
     pch = 19,
     col = rgb(0, 0, 1, 0.2))

plot(jitter(x_data, factor=2), jitter(y_data, factor=2),
     main = "Task 2: Jittering (Noise Added)",
     xlab = "Likes (Jittered)",
     ylab = "Shares (Jittered)",
     pch = 19,
     col = rgb(1, 0, 0, 0.2))

smoothScatter(x_data, y_data,
              main = "Task 3: Aggregation (Density Heatmap)",
              xlab = "Likes",
              ylab = "Shares",
              colramp = colorRampPalette(c("white", "cyan", "blue", "darkblue")))
