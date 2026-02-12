print("Name: Shailendra C | Roll No: 23BAD108")

library(ggplot2)
library(dplyr)
library(RColorBrewer)

file_path <- "4.traffic_accidents.csv" 
data <- read.csv(file_path)

accident_summary <- data %>%
  group_by(Location, Accident_Type, Severity) %>%
  summarise(Frequency = n(), .groups = 'drop')

accident_summary$Severity <- factor(accident_summary$Severity, 
                                    levels = c("Minor", "Major", "Fatal"))

plot <- ggplot(accident_summary, aes(x = Location, 
                                     y = Frequency, 
                                     size = Frequency, 
                                     color = Severity, 
                                     shape = Accident_Type)) +
  geom_jitter(width = 0.2, height = 0, alpha = 0.8) + 
  scale_size_continuous(range = c(5, 15)) + 
  scale_color_brewer(palette = "YlOrRd") +  
  theme_minimal() +
  labs(title = "Traffic Analytics: Accident Severity and Frequency by Location",
       x = "Location Type",
       y = "Frequency of Accidents",
       size = "Accident Frequency",
       color = "Severity Level",
       shape = "Accident Type") +
  theme(plot.title = element_text(size = 14, face = "bold"))

print(plot)


