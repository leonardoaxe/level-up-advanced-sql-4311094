-- find all sales with electric cars

-- using double inner joins
SELECT
  model.EngineType,  
  sales.soldDate
FROM sales
INNER JOIN inventory
  ON sales.inventoryId = inventory.inventoryId
INNER JOIN model
  ON inventory.modelId = model.modelId
WHERE model.EngineType = 'Electric'

-- using subqueries
SELECT
  sales.soldDate
  -- i would rather be able to use the model variables
FROM sales
INNER JOIN inventory
  ON inventory.inventoryId = inventory.inventoryId
WHERE inventory.modelId
IN (
  SELECT modelId
  FROM model
  WHERE EngineType = 'Electric'
)