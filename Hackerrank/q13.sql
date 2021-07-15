-- Weather Observation Station 9
-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

select distinct city
from station
WHERE LEFT(CITY,1) NOT IN ('A','E','I','O','U');