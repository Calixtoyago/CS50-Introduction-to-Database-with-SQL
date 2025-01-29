CREATE VIEW IF NOT EXISTS "current_collections" AS
SELECT "id", "title", "accession_number", "acquired"
FROM "collections"
WHERE "deleted" = 0;

CREATE TRIGGER IF NOT EXISTS "delete"
INSTEAD OF DELETE ON "current_collections"
FOR EACH ROW
BEGIN
    UPDATE "collections" SET "deleted" = 1
    WHERE "id" = OLD."id";
END;

CREATE TRIGGER IF NOT EXISTS "insert_when_exists"
INSTEAD OF INSERT ON "current_collections"
FOR EACH ROW
WHEN NEW."accession_number" IN (
    SELECT "accession_number" FROM "collections"
)
BEGIN
    UPDATE "collections" SET "deleted" = 0
    WHERE "accession_number" = NEW."accession_number";
END;
