-- Creating a temporary table
CREATE TABLE "meteorites_temp" (
    "name" TEXT UNIQUE,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" REAL DEFAULT NULL,
    "discovery" TEXT,
    "year" INTEGER DEFAULT NULL,
    "lat" REAL DEFAULT NULL,
    "long" REAL DEFAULT NULL,
    PRIMARY KEY ("id")
);

-- Importing from meteorites.csv
.import --csv --skip 1 meteorites.csv meteorites_temp

-- Updating empty values into NULL
UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = '';

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = '';

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = '';

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = '';


-- Rounding values
UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2);

UPDATE "meteorites_temp"
SET "lat" = ROUND("lat", 2);

UPDATE "meteorites_temp"
SET "long" = ROUND("long", 2);


-- Deleting nametype Relict
DELETE FROM "meteorites_temp"
WHERE "nametype" = 'Relict';


-- Creating meteorites table
CREATE TABLE "meteorites"(
    "id" INTEGER,
    "name" TEXT UNIQUE,
    "class" TEXT,
    "mass" REAL DEFAULT NULL,
    "discovery" TEXT CHECK("discovery" IN ('Fell', 'Found')),
    "year" INTEGER DEFAULT NULL,
    "lat" REAL DEFAULT NULL,
    "long" REAL DEFAULT NULL,
    PRIMARY KEY ("id")
);

-- Inserting into the final table
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
ORDER BY "year" ASC, "name" ASC;


-- Dropping temporary table
DROP TABLE "meteorites_temp";
