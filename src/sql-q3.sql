WITH reach AS (SELECT dest_city AS d_city,origin_city AS o_city FROM Flights
WHERE origin_city='Seattle WA'),

direct AS (SELECT dest_city AS direct_dest, origin_city AS direct_origin FROM Flights
WHERE direct_dest NOT IN (SELECT DISTINCT(d_city) FROM reach))

SELECT DISTINCT(direct_dest) AS city 
FROM 
(SELECT direct_dest, direct_origin FROM direct
WHERE direct_origin NOT IN (SELECT DISTINCT(d_city) FROM reach));
