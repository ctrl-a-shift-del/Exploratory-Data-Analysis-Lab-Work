# Experiment 1: Implementation of Data Charts

## Description
This experiment focuses on designing appropriate data charts to analyze and compare academic performance indicators. The analysis utilizes a dataset of student marks across various subjects and internal assessments to identify performance trends and grade distributions.

## Files Included
* `ex1.R`: The source code for data preprocessing and visualization.
* `1.student_performance.csv`: The dataset containing student rolls, subjects, internal test scores, and final grades.
* `figures/`: Directory containing the generated charts.

## Visualization Outputs
The following visualizations were generated to address the laboratory objectives:

1.  **Subject-wise Average Marks (Bar Chart):**
    * **Objective:** To compare the average performance of students across five distinct subjects.
    * **Insight:** Identified specific subjects (e.g., DAA) with lower average scores compared to practical subjects like Python.

2.  **Performance Trend (Line Chart):**
    * **Objective:** To analyze the progression of marks from Internal Test 1 to Internal Test 2.
    * **Insight:** Visualized the slope of improvement or decline in performance for each subject.

3.  **Grade Distribution (Pie Chart):**
    * **Objective:** To illustrate the proportional distribution of final grades (A, B, C, D).
    * **Insight:** Provided a high-level summary of overall student success rates.

## Dependencies
* `ggplot2`
* `dplyr`
* `tidyr`