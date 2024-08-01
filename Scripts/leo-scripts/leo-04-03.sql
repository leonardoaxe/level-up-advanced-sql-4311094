-- number of cars sold this month and the previous

SELECT
  strftime('%Y-%m', soldDate) AS MonthSold,
  COUNT(*) AS NumberCarsSold,
  LAG (COUNT(*), 1, 0 ) OVER
  calMonth AS LastMonthCarsSold
FROM sales
GROUP BY strftime('%Y-%m', soldDate)
WINDOW calMonth AS (
  ORDER BY strftime('%Y-%m', soldDate)
  )
ORDER BY strftime('%Y-%m', soldDate)