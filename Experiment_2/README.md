# Experiment 2: Implementation of Data Visualization Techniques

## Description
This experiment explores data distribution and variability using advanced visualization techniques. The scenario involves analyzing e-commerce transaction data to understand customer spending behavior, detect outliers, and identify seasonal sales patterns.

## Files Included
* `ex2.R`: The source code for date parsing, outlier detection, and plotting.
* `2.ecommerce_transactions.csv`: The dataset containing transaction IDs, dates, categories, and amounts.
* `figures`: Directory containing the generated charts.

## Visualization Outputs
The following visualizations were implemented:

1.  **Distribution of Transaction Amounts (Histogram):**
    * **Objective:** To visualize the frequency distribution of purchase amounts.
    * **Observation:** The data exhibits a right-skewed distribution, indicating a high frequency of lower-value transactions and fewer high-value purchases.

2.  **Outlier Detection (Boxplot):**
    * **Objective:** To identify anomalies in transaction amounts across product categories.
    * **Observation:** Detected specific high-value outliers in categories such as Clothing, indicating potential VIP customer activity or anomalies.

3.  **Monthly Sales Intensity (Heatmap):**
    * **Objective:** To display the density of sales across different months and product categories.
    * **Observation:** highlighted seasonal trends and peak sales periods for specific categories like Electronics.

## Dependencies
* `ggplot2`
* `dplyr`
* `lubridate`