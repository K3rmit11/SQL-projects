SELECT surname, customer.name ,concat(destination.country,', ', destination.city) AS "destination", hotel.name AS hotel FROM destination, customer , hotel

WHERE destination.acronym = customer.top_destination AND destination.hotel_id = hotel.id
ORDER BY surname, name, destination ,hotel;

