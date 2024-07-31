-- create a report with amount of sales per employee per month in 2021

SELECT
  employee.firstName,
  employee.lastName,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '01'
    THEN salesAmount
  END
  ) AS janSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '02'
    THEN salesAmount
  END
  ) AS febSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '03'
    THEN salesAmount
  END
  ) AS marSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '04'
    THEN salesAmount
  END
  ) AS aprSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '05'
    THEN salesAmount
  END
  ) AS maySales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '06'
    THEN salesAmount
  END
  ) AS junSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '07'
    THEN salesAmount
  END
  ) AS julSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '08'
    THEN salesAmount
  END
  ) AS augSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '09'
    THEN salesAmount
  END
  ) AS sepSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '10'
    THEN salesAmount
  END
  ) AS octSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '11'
    THEN salesAmount
  END
  ) AS novSales,
  SUM(
  CASE
    WHEN strftime('%m', sales.soldDate) = '12'
    THEN salesAmount
  END
  ) AS decSales
FROM sales
INNER JOIN employee
  ON employee.employeeId = sales.employeeId
WHERE strftime('%Y', sales.soldDate) = '2021'
GROUP BY
  employee.firstName,
  employee.lastName
ORDER BY
  employee.firstName,
  employee.lastName