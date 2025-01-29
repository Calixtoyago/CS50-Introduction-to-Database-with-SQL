WITH "average_book_ratings" AS (
     SELECT "book_id", "title", "year", ROUND(AVG("rating"), 2) AS "rating"
     FROM "ratings"
     JOIN "books" ON "ratings"."book_id" = "books"."id"
     GROUP BY "book_id"
 )
 SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
 FROM "average_book_ratings"
 GROUP BY "year";

SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM (
    SELECT "book_id", ROUND(AVG("rating"), 2) AS "rating"
    FROM "ratings"
    GROUP BY "book_id"
) AS "book_ratings"
JOIN "books" ON "book_ratings"."book_id" = "books"."id"
GROUP BY "year";
