DROP TABLE IF EXISTS creature CASCADE;
DROP TABLE IF EXISTS creature_template CASCADE;
DROP TABLE IF EXISTS quest CASCADE;
DROP TABLE IF EXISTS character CASCADE;
DROP TABLE IF EXISTS character_quests CASCADE;

CREATE TABLE creature_template (
    id       SERIAL      NOT NULL,
    name     VARCHAR(64) NOT NULL DEFAULT '', -- name of the creature
    level    INT         NOT NULL DEFAULT 0, -- level of the creature
    model_id INT         NOT NULL DEFAULT 0, -- 3D model of the creature
    exp      INT         NOT NULL DEFAULT 0, -- experience awarded when killed
    health   INT         NOT NULL DEFAULT 0, -- health points
    speed    INT         NOT NULL DEFAULT 0, -- walking speed
    attack   INT         NOT NULL DEFAULT 0, -- attack power
    gold     INT         NOT NULL DEFAULT 0, -- gold awarded when killed

    PRIMARY KEY (id)
);

CREATE TABLE creature (
    id          SERIAL NOT NULL,
    gid         INT    NOT NULL DEFAULT 0, -- creature template id
    pos_x       FLOAT  NOT NULL DEFAULT 0, -- creature position on x
    pos_y       FLOAT  NOT NULL DEFAULT 0, -- creature position on y
    pos_z       FLOAT  NOT NULL DEFAULT 0, -- creature position on z

    PRIMARY KEY (id),
    FOREIGN KEY (gid) REFERENCES creature_template(id)
);

CREATE TABLE quest (
    id              SERIAL NOT NULL,
    level_min       INT    NOT NULL DEFAULT 0, -- minimum level required
    title           TEXT   DEFAULT NULL, -- quest title
    objective_text  TEXT   DEFAULT NULL, -- quest objective text
    completion_text TEXT   DEFAULT NULL, -- quest completion text
    creature_start  INT    NOT NULL DEFAULT 0, -- gives you the quest
    creature_end    INT    NOT NULL DEFAULT 0, -- ends the quest
    gold            INT    NOT NULL DEFAULT 0, -- gold reward
    xp              INT    NOT NULL DEFAULT 0, -- experience reward

    PRIMARY KEY (id),
    FOREIGN KEY (creature_start) REFERENCES creature(id),
    FOREIGN KEY (creature_end) REFERENCES creature(id)
);

CREATE TABLE character (
    id         SERIAL      NOT NULL,
    name       VARCHAR(64) NOT NULL DEFAULT '' UNIQUE, -- name of the character
    lastconn   TIMESTAMP   NOT NULL, -- last connection timestamp
    password   VARCHAR(64) NOT NULL DEFAULT '', -- hashed password (sha1)
    gold       INT         NOT NULL DEFAULT 0, -- gold owned
    race       SMALLINT    NOT NULL DEFAULT 0, -- 0=human, 1=gnome, 2=elf...
    blessed    SMALLINT    NOT NULL DEFAULT 0, -- 0=none, 1=blessed
    level      INT         NOT NULL DEFAULT 0, -- level of the character
    xp         INT         NOT NULL DEFAULT 0, -- experience. it accumulates
                                               -- and is not reset to 0 when
                                               -- you level up.
    position_x INT         NOT NULL DEFAULT 0,
    position_y INT         NOT NULL DEFAULT 0,
    position_z INT         NOT NULL DEFAULT 0,
    health     INT         NOT NULL DEFAULT 0, -- current health
    max_health INT         NOT NULL DEFAULT 0, -- maximum health
    attack     INT         NOT NULL DEFAULT 0, -- attack power

    PRIMARY KEY (id)
);

-- This table contains interactions between the characters and the quest. When
-- a character accepts a quest, the quest is inserted in this table. When
-- completed, the 'complete' field is set to 1
CREATE TABLE character_quests (
    id            SERIAL   NOT NULL,
    character_id  INT      NOT NULL DEFAULT 0,
    quest_id      INT      NOT NULL DEFAULT 0,
    complete      SMALLINT NOT NULL DEFAULT 0,

    PRIMARY KEY (id)
);
