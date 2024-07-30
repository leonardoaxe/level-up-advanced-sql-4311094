-- list all customers and their sales (even if some data has been deleted)

-- customers with sales
SELECT
  customer.customerId,
  sales.salesId
FROM customer
JOIN sales
  ON customer.customerId = sales.customerId

-- customer with no sales
UNION
SELECT
  customer.customerId,
  sales.salesId
FROM customer
LEFT JOIN sales
  ON customer.customerId = sales.customerId
WHERE sales.customerId IS NULL

-- sales with no customer
UNION
SELECT
  customer.customerId,
  sales.salesId
FROM customer
RIGHT JOIN sales
  ON customer.customerId = sales.customerId
WHERE customer.customerId IS NULL;