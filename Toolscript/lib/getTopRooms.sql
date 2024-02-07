WITH RankedRooms AS (
  SELECT *
  FROM roomstats
  ORDER BY floor_area DESC
  LIMIT 5
)
SELECT *
FROM RankedRooms
ORDER BY energy_used desc;
