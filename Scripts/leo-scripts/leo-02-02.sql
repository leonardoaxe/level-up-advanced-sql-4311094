-- least and most expensive sale for each employee

SELECT
  employee.employeeId,
  employee.firstName,
  employee.lastName,
  MIN(salesAmount) AS leastExpensiveSale,
  MAX(salesAmount) AS mostExpensiveSale
FROM employee
INNER JOIN sales
  ON employee.employeeId = sales.employeeId
WHERE strftime('%Y', sales.soldDate) = '2022'
GROUP BY
  employee.employeeId,
  employee.firstName,
  employee.lastName