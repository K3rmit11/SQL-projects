CREATE TABLE IF NOT EXISTS student(id SERIAL PRIMARY KEY,date VARCHAR(32) ,
        "old population" BIGINT, "new population" BIGINT);

CREATE OR REPLACE FUNCTION population_evolution()
RETURNS trigger AS
$$
BEGIN
        IF (OLD.population IS DISTINCT FROM NEW.population AND OLD.name = 'Earth')  THEN
           INSERT INTO student
           VALUES(default, to_char(current_timestamp,'DD/MM/YYYY HH24:MI:SS'), OLD.population, NEW.POPULATION);
        END IF;
        return NEW;
END;
$$LANGUAGE plpgsql;

CREATE TRIGGER store_earth_population_updates
AFTER UPDATE ON planet
FOR EACH ROW
EXECUTE PROCEDURE population_evolution();

CREATE OR REPLACE VIEW view_earth_population_evolution AS
select * FROM student
ORDER BY id;
