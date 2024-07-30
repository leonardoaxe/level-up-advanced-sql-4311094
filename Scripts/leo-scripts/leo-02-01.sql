-- total number of cars sold per employee
SELECT
  employee.employeeId,
  employee.firstName,
  employee.lastName,
  count(*) as totalCarsSold
FROM sales
INNER JOIN employee
  ON sales.employeeId = employee.employeeId
GROUP BY
  employee.employeeId,
  employee.firstName,
  employee.lastName
ORDER BY totalCarsSold DESC;