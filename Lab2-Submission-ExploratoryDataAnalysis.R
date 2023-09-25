# Loading Dataset ----
library(readr)
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset <- read_csv("data/20230412-20230719-BI1-BBIT4-1-StudentPerformanceDataset.csv")
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)
# Descriptive Statistics ----
# Dimensions ----

dim(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

# Data Types ----

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset, class)


X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$class_group
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$alcohol_or_narcotics
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$financial_wellness
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$romantic_relationships
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq <- X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender
cbind(frequency = table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq),
      percentage = prop.table(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_freq)) *100)

# Measures of Distribution/Dispersion/Spread/Scatter/Variability ----

summary(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset)

### Measure the standard deviation of each variable ----

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], sd)
### The variance of each variable ----

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset[, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)], var)

### Measure the kurtosis of each variable ----

##  The Kurtosis informs you of how often outliers occur in the results.

if (!is.element("e1071", installed.packages()[, 1])) {
  install.packages("e1071", dependencies = TRUE)
}
require("e1071")
sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [, c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],kurtosis, type=2)

### Measure the skewness of each variable ----

sapply(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)],skewness, type=2)

### Measure of covariance 

X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov <- cov(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cov)

###Measure the correlation between variables ----
X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor <- cor(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset [c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99)])
View(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset_cor)

# Mode for Gender

student_performance_dataset_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$gender)))
]
print(student_performance_dataset_mode)

# Mode for students who dropped BI

student_performance_dataset_mode <- names(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$drop_bi_now))[
  which(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$drop_bi_now) == max(table(X20230412_20230719_BI1_BBIT4_1_StudentPerformanceDataset$drop_bi_now)))
]
print(student_performance_dataset_mode)
