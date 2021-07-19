-- Revising Aggregations - The Count Function
-- Query a count of the number of cities in CITY having a Population larger than 1_00_000.
select count(*)
from city
where population >100000