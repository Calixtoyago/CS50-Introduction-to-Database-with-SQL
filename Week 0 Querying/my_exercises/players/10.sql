-- In 10.sql, write SQL query to answer a question of your choice. This query should:
--   Make use of AS to rename a column
--   Involve at least condition, using WHERE
--   Sort by at least one column using ORDER BY

SELECT "first_name", "last_name", "debut" AS "estreia", "final_game" AS "aposentadoria", "birth_city", "birth_country"
FROM "players"
WHERE "debut" >= '2000-01-01'
AND "birth_country" = 'Brazil'
ORDER BY "final_game" DESC, "debut", "first_name";
