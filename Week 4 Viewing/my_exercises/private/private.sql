CREATE VIEW "message" AS
SELECT substr("sentence", 98, 4) AS "phrase" FROM "sentences" WHERE "id" = 14
UNION ALL
SELECT substr("sentence", 3, 5) FROM "sentences" WHERE "id" = 114
UNION ALL
SELECT substr("sentence", 72, 9) FROM "sentences" WHERE "id" = 618
UNION ALL
SELECT substr("sentence", 7, 3) FROM "sentences" WHERE "id" = 630
UNION ALL
SELECT substr("sentence", 12, 5) FROM "sentences" WHERE "id" = 932
UNION ALL
SELECT substr("sentence", 50, 7) FROM "sentences" WHERE "id" = 2230
UNION ALL
SELECT substr("sentence", 44, 10) FROM "sentences" WHERE "id" = 2346
UNION ALL
SELECT substr("sentence", 14, 5) FROM "sentences" WHERE "id" = 3041;

-- CREATE TABLE IF NOT EXISTS "phrases" (
--     "id" INTEGER,
--     "phrase" TEXT NOT NULL,
--     PRIMARY KEY("id")
-- );

-- -- INSERT INTO "phrases" ("phrase")
-- -- VALUES
-- -- (SELECT substr("sentence", 98, 4) FROM "sentences" WHERE "id" = 14)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 3, 5) FROM "sentences" WHERE "id" = 114)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 72, 9) FROM "sentences" WHERE "id" = 618)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 7, 3) FROM "sentences" WHERE "id" = 630)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 12, 5) FROM "sentences" WHERE "id" = 932)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 50, 7) FROM "sentences" WHERE "id" = 2230)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 44, 10) FROM "sentences" WHERE "id" = 2346)
-- -- UNION ALL
-- -- (SELECT substr("sentence", 14, 5) FROM "sentences" WHERE "id" = 3041);

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 98, 4) FROM "sentences" WHERE "id" = 14;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 3, 5) FROM "sentences" WHERE "id" = 114;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 72, 9) FROM "sentences" WHERE "id" = 618;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 7, 3) FROM "sentences" WHERE "id" = 630;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 12, 5) FROM "sentences" WHERE "id" = 932;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 50, 7) FROM "sentences" WHERE "id" = 2230;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 44, 10) FROM "sentences" WHERE "id" = 2346;

-- INSERT INTO "phrases" ("phrase")
-- SELECT substr("sentence", 14, 5) FROM "sentences" WHERE "id" = 3041;

