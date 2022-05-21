CREATE OR REPLACE FUNCTION space_travel(origin int, destination int, quantity bigint)
returns BOOLEAN AS
$$
BEGIN
    IF quantity > 0 AND quantity <= (SELECT population FROM planet WHERE origin = id) AND destination IN (SELECT planet.id FROM planet WHERE planet.id_system = (SELECT planet.id_system FROM planet WHERE planet.id = origin)) 
    THEN
        UPDATE planet
        SET population = population - quantity
        WHERE id = origin;
        UPDATE planet
        SET population = population + quantity
        WHERE id = destination;
        return true;
    else
        return false;
    END IF;
END;
$$ language plpgsql;

CREATE OR REPLACE function list_satellite_inf_750(sys int)
returns TABLE (satellite varchar(32), planet varchar(32), radius int) AS
$$
BEGIN
    RETURN query (SELECT satellite.name AS satellite, planet.name AS planet, satellite.radius AS radius
    FROM satellite, planet
    WHERE satellite.radius <= 750 AND planet.id_system = sys AND planet.id = satellite.id_planet
    ORDER BY  planet.name, radius DESC, satellite.name);
END;
$$ language plpgsql;
