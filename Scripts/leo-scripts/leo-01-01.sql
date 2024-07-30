-- list employees and their managers with first and last name
SELECT
  employee.firstName,
  employee.lastName,
  manager.firstName as managerFirstName,
  manager.lastName as managerLastName
FROM employee
INNER JOIN employee manager
  ON employee.managerId = manager.employeeId
