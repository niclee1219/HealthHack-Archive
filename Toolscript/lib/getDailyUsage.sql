

WITH rankeddays AS (
  SELECT *
  FROM "DayEnergyUsed"
  ORDER BY day
  LIMIT 14
)
SELECT *
FROM rankeddays
ORDER BY id;