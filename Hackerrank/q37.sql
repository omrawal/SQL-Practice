-- Weather Observation Station 19
-- 
-- -- Consider p1(a,b)  and p1(c,d) to be two points on a 2D plane.

-- a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the euclidian distance between points p1 and p2 and round it to a scale of 4 decimal places.

select round(sqrt(pow((max(lat_n)-min(lat_n)),2)+pow((max(long_w)-min(long_w)),2)),4)
from station