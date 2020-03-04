SELECT carrier_id AS carrier, MAX(price) AS max_price
FROM Flights WHERE (origin_city='Seattle WA' and dest_city='New York NY')
or (origin_city='New York NY' and dest_city='Seattle WA')
GROUP BY
carrier;
