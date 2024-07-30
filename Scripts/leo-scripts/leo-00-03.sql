SELECT firstName, lastName, title
FROM employee
LIMIT 5;

SELECT model, EngineType
FROM model
LIMIT 5;

-- get the schema from the employee table
SELECT sql
FROM sqlite_schema
WHERE name='employee';