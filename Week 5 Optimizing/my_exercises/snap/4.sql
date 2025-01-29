WITH "most_popular" AS (
    SELECT "to_user_id", COUNT(*) AS "messages"
    FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY "messages" DESC
    LIMIT 1
)
SELECT "username" FROM "users"
WHERE "id" = (
    SELECT "to_user_id"
    FROM "most_popular"
);

EXPLAIN QUERY PLAN
WITH "most_popular" AS (
    SELECT "to_user_id", COUNT(*) AS "messages"
    FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY "messages" DESC
    LIMIT 1
)
SELECT "username" FROM "users"
WHERE "id" = (
    SELECT "to_user_id"
    FROM "most_popular"
);
