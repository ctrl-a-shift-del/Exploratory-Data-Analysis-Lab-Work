library(ggplot2)
library(GGally)

file_path <- "3.healthcare_data.csv" 
data <- read.csv(file_path)

data$Age_Group <- cut(data$Age, 
                      breaks = c(0, 35, 55, 100), 
                      labels = c("Young", "Middle-Aged", "Senior"))

selected_vars <- data[, c("Age", "BMI", "Blood_Pressure", "Glucose_Level", "Age_Group")]

plot <- ggpairs(selected_vars, 
                columns = 1:4, 
                aes(color = Age_Group, alpha = 0.6),
                title = "Multivariate Analysis of Health Indicators")

print(plot)

print("Correlation Matrix:")
cor_matrix <- cor(data[, c("Age", "BMI", "Blood_Pressure", "Glucose_Level")])
print(cor_matrix)


