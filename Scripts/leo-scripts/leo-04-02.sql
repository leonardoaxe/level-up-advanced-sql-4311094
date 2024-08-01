-- generate a sales report showing total sales per month
-- and an annual running total

with expression as (
SELECT
  strftime('%Y', soldDate) AS soldYear, 
  strftime('%m', soldDate) AS soldMonth,
  SUM(salesAmount) AS salesAmount
FROM sales
GROUP BY
  soldYear,
  soldMonth
)
SELECT
  soldYear,
  soldMonth,
  salesAmount,
  SUM(salesAmount) OVER (
    PARTITION BY soldYear 
    ORDER BY soldYear, soldMonth
    ) AS AnnualSales_RunningTotal
FROM expression
ORDER BY
  soldYear,
  soldMonth