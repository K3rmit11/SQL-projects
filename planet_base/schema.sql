DROP TABLE IF EXISTS planetary_system CASCADE;
DROP TABLE IF EXISTS planet CASCADE;
DROP TABLE IF EXISTS satellite CASCADE;

CREATE TABLE planetary_system (
  id   SERIAL      PRIMARY KEY,
  name VARCHAR(32) NOT NULL,
  star VARCHAR(32) NOT NULL UNIQUE, -- name of its star (case sensitive)
  CHECK (name <> '' AND star <> '')
);

CREATE TABLE planet (
  id         SERIAL      PRIMARY KEY,
  name       VARCHAR(32) NOT NULL,
  population BIGINT      NOT NULL,    -- number of humans living on the planet
  radius     INT         NOT NULL,    -- (in km)
  period     INT         NOT NULL,    -- orbital period of the planet (in Earth day)
  id_system  INT         NOT NULL REFERENCES planetary_system(id),
  CHECK (name <> '' AND population >= 0 AND radius > 0 AND period > 0)
);

CREATE TABLE satellite (
  id        SERIAL      PRIMARY KEY,
  name      VARCHAR(32) NOT NULL,
  radius    INT         NOT NULL,
  id_planet INT         NOT NULL REFERENCES planet(id),
  CHECK (name <> '' AND radius > 0)
);
