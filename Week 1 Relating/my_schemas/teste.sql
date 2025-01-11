SELECT * FROM "books"
WHERE "id" IN (
    SELECT "book_id" FROM "translated" WHERE "translator_id" = (
        SELECT "id" FROM "translators" WHERE "name" = 'Sophie Hughes'
    )
    INTERSECT
    SELECT "book_id" FROM "translated" WHERE "translator_id" = (
        SELECT "id" FROM "translators" WHERE "name" = 'Margaret Jull Costa'
    )
);

-- Mostra os autores, seus livros e a editora em uma tabela so
SELECT
    "books"."title" AS "book",
    "authors"."name" AS "author",
    "translators"."name" AS "translator",
    "publishers"."publisher",
    ROUND(AVG("rating"), 2) AS "rating"
FROM "authored"
JOIN "authors" ON "authored"."author_id" = "authors"."id"
JOIN "books" ON "authored"."book_id" = "books"."id"
JOIN "publishers" ON "books"."publisher_id" = "publishers"."id"
JOIN "translated" ON "books"."id" = "translated"."book_id"
JOIN "translators" ON "translated"."translator_id" = "translators"."id"
JOIN "ratings" ON "books"."id" = "ratings"."book_id"
GROUP BY "books"."id"
ORDER BY "rating" DESC, "book";

-- Mostrar apenas os autores que possuem mais de um livro
SELECT
    "authors"."name" AS "author",
    "books"."title" AS "book"
FROM "authored"
JOIN "authors" ON "authored"."author_id" = "authors"."id"
JOIN "books" ON "authored"."book_id" = "books"."id"
WHERE "authors"."id" IN (
    SELECT "author_id"
    FROM "authored"
    GROUP BY "author_id"
    HAVING COUNT("author_id") > 1
)
ORDER BY "author";



