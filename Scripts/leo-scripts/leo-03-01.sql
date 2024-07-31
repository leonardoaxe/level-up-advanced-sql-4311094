-- create a report with total sales per year

WITH expression AS (
  SELECT
    strftime('%Y', sales.soldDate) AS soldYear,
    salesAmount
  FROM sales
  )
SELECT
  soldYear,
  FORMAT("$%.2f", sum(salesAmount)) AS totalSalesYear
FROM expression
GROUP BY soldYear
ORDER BY soldYear DESC;