SELECT id,
CASE WHEN end_date < now() THEN 'Done'
        WHEN start_date > now() THEN 'Booked'
        ELSE 'Ongoing'
    END AS "trip status"
FROM booking
ORDER BY "trip status", id;
