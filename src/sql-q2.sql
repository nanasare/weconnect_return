SELECT DISTINCT(flight_num) AS flight_num FROM Flights
WHERE day_of_week_id=1 AND (origin_city='Seattle WA' and dest_city='Boston MA')
AND carrier_id='AS';