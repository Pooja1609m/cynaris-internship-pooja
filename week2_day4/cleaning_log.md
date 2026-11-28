
# Data Cleaning Log – Week 2 Day 4

## Cleaning Operations

1. Loaded the original sales dataset.
2. Created a copy to preserve the original data.
3. Identified missing values using isnull().sum().
4. Filled missing numeric values using median.
5. Filled missing text values using mode.
6. Removed duplicate records using drop_duplicates().
7. Detected outliers using the IQR method.
8. Capped numeric outliers using IQR limits.
9. Standardised text by removing extra spaces and converting to lowercase.

## Before and After Comparison

- Original rows: 120
- Cleaned rows: 120
- Missing values before: 0
- Missing values after: 0
- Duplicate rows before: 0
- Duplicate rows after: 0

## Note

Cleaning decisions should be reviewed to ensure that genuine
business values are not incorrectly changed.
