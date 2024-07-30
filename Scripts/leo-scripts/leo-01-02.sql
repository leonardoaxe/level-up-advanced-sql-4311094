-- list sales people that have no sales
SELECT
  employee.firstName,
  employee.lastName,
  employee.title,
  sales.salesId
FROM employee
-- the left join is going to get all of the employees whether they have any sales or not
-- and if not, they will have a NULL salesId
LEFT JOIN sales
  ON employee.employeeId = sales.employeeId
WHERE employee.title = 'Sales Person'
AND sales.salesId IS NULL;