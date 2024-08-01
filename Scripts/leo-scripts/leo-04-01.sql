-- for each sales person rank the car models by how much they sold

SELECT
  employee.firstName,
  employee.lastName,
  model.model,
  count(model) AS NumberSold,
  rank() OVER (
    PARTITION BY sales.employeeId 
    ORDER BY count(model) desc
  ) AS Rank
FROM sales
INNER JOIN employee
  ON sales.employeeId = employee.employeeId
INNER JOIN inventory
  ON inventory.inventoryId = sales.inventoryId
INNER JOIN model
  ON model.modelId = inventory.modelId
GROUP BY
  employee.firstName,
  employee.lastName,
  model.model