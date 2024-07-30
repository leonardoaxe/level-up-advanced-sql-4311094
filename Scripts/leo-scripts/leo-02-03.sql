-- employees that made at least 5 sales (this year)

SELECT
  employee.firstName,
  employee.lastName,
  count(*) AS totalCarsSold
FROM employee
INNER JOIN sales
  ON employee.employeeId = sales.employeeId
WHERE strftime('%Y', sales.soldDate) = '2022'
GROUP BY
  employee.firstName,
  employee.lastName
HAVING count(*) > 5
ORDER BY totalCarsSold DESC;