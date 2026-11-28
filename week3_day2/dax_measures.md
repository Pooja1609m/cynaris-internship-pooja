# Week 3 – Day 2: DAX Basics

## 1. Total Sales Measure

```dax
Total Sales = SUM(day5_sales[sales_amount])
```

**Explanation:** Calculates the total sales revenue by adding all values in the sales_amount column.

## 2. CALCULATE() – South Region Sales

```dax
South Sales =
CALCULATE(
    [Total Sales],
    day5_sales[region] = "South"
)
```

**Explanation:** CALCULATE() evaluates total sales after applying a filter. This measure calculates sales only for the South region.

## 3. YTD Sales Measure

```dax
YTD Sales =
CALCULATE(
    [Total Sales],
    DATESYTD(day5_sales[sale_date])
)
```

**Explanation:** Calculates Year-to-Date sales from the beginning of the year up to the selected date.

## 4. Running Total Calculated Column

```dax
Running Total =
CALCULATE(
    SUM(day5_sales[sales_amount]),
    FILTER(
        day5_sales,
        day5_sales[sale_date] <= EARLIER(day5_sales[sale_date])
    )
)
```

**Explanation:** Calculates cumulative sales up to the current row's date. EARLIER() refers to the current row context.

## 5. Profit Margin % Calculated Column

```dax
Profit Margin % =
DIVIDE(
    day5_sales[profit],
    day5_sales[sales_amount],
    0
) * 100
```

**Explanation:** Calculates profit as a percentage of sales. DIVIDE() safely handles division by zero.

## Important DAX Concepts

### Measure vs Calculated Column

- Measure: Calculates values dynamically based on filters and selections.
- Calculated Column: Creates a new column with a calculated value for each row.

### Row Context

Row context means DAX evaluates a formula for an individual row.

### Filter Context

Filter context means DAX calculates results based on applied filters.

### Context Transition

Context transition occurs when CALCULATE() converts row context into filter context.

## Conclusion

DAX helps create dynamic calculations and business reports in Power BI. It is useful for analysing sales, profit, growth and business performance.
