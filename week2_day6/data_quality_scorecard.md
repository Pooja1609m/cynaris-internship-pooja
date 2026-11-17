# Data Quality Scorecard

## Dataset Information
- Dataset: Week 2 Sales Dataset
- Total Records: 120
- Total Columns: 8
- Producer: Data Analyst
- Consumer: BI Dashboard Team

## Six DAMA Data Quality Dimensions

| Dimension | Passed Rows | Failed Rows | Pass Percentage |
|---|---:|---:|---:|
| Completeness | 120 | 0 | 100.0% |
| Accuracy | 120 | 0 | 100.0% |
| Consistency | 120 | 0 | 100.0% |
| Timeliness | 120 | 0 | 100.0% |
| Uniqueness | 120 | 0 | 100.0% |
| Validity | 120 | 0 | 100.0% |

## Improvement Recommendations

1. Completeness: Fill or investigate missing required values.
2. Accuracy: Validate quantity and sales amount against business rules.
3. Consistency: Standardise date formats and check related records.
4. Timeliness: Monitor data arrival against the two-hour SLA.
5. Uniqueness: Prevent duplicate sale IDs.
6. Validity: Validate region, category and product values against approved lists.

## Privacy and Security
- Restrict access to confidential sales and profit information.
- Review actual data values for possible personal information.
- Mask or tokenise personal identifiers if they are introduced.
- Follow applicable data protection requirements.

## Conclusion
Regular automated quality checks help maintain reliable sales data
for business reporting and BI dashboards.
