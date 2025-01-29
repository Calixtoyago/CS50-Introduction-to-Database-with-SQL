DROP VIEW IF EXISTS "book_ratings";

CREATE VIEW IF NOT EXISTS "longlist" AS
SELECT "name", "title" FROM "authors"
JOIN "authored" ON "authors"."id" = "authored"."author_id"
JOIN "books" ON "books"."id" = "authored"."book_id"
ORDER BY "title" ASC;

CREATE VIEW IF NOT EXISTS "book_ratings" AS
SELECT "book_id", "title", "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "book_id";

CREATE TEMPORARY VIEW "year_ratings" AS
SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "book_ratings"
GROUP BY "year";
