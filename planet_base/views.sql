CREATE OR REPLACE VIEW view_nearest_planet_to_sun(planet) AS SELECT planet.name FROM planet
JOIN planetary_system ON planet.id_system = planetary_system.id
WHERE planetary_system.star ILIKE 'sun'
ORDER BY planet.period
LIMIT 3;

CREATE OR REPLACE VIEW view_nb_satellite_per_planet(planet, "number of satellites") AS SELECT planet.name, count(number_of_satellites.id) AS "number of satellites" FROM planet
LEFT JOIN (SELECT * FROM satellite
WHERE radius >= 500) AS number_of_satellites ON planet.id = number_of_satellites.id_planet
GROUP BY planet.name
ORDER BY "number of satellites", planet.name;


CREATE OR REPLACE VIEW view_average_period(system , average_period) AS SELECT planetary_system.name, COALESCE(ROUND(AVG(planet.period), 2), 0) AS AP FROM planetary_system
LEFT JOIN planet ON planetary_system.id = planet.id_system
GROUP BY planetary_system.name
ORDER BY AP, planetary_system.name;


CREATE OR REPLACE VIEW view_biggest_entities( type, system, name, radius) AS SELECT 'planet' AS type, planetary_system.name AS system, planet.name AS name, planet.radius AS radius FROM planet
JOIN planetary_system ON planet.id_system = planetary_system.id
UNION SELECT 'satellite' AS type, planetary_system.name AS system, satellite.name AS name, satellite.radius AS radius FROM satellite
JOIN planet ON satellite.id_planet = planet.id
JOIN planetary_system ON planet.id_system = planetary_system.id
ORDER BY radius DESC, name
LIMIT 10;
