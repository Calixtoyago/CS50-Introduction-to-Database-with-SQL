CREATE TABLE IF NOT EXISTS "collections" (
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "accession_number" TEXT NOT NULL UNIQUE,
    "acquired" NUMERIC,
    PRIMARY KEY ("id")
);

INSERT INTO "collections" ("title", "accession_number", "acquired")
VALUES
('Tile Lunette', '06.2437', '1906-11-08'),
('Statuette of a shrew', '01.105', '1901-02-11');
