WITH "best_friends" AS (
    SELECT "to_user_id", COUNT(*) AS "messages" FROM "messages"
    WHERE "from_user_id" = (
        SELECT "id" FROM "users"
        WHERE "username" = 'creativewisdom377'
    )
    GROUP BY "to_user_id"
    ORDER BY "messages" DESC
    LIMIT 3
)
SELECT "to_user_id" FROM "best_friends";

EXPLAIN QUERY PLAN
SELECT "to_user_id", COUNT(*) AS "messages" FROM "messages"
WHERE "from_user_id" = (
    SELECT "id" FROM "users"
    WHERE "username" = 'creativewisdom377'
)
GROUP BY "to_user_id"
ORDER BY "messages" DESC
LIMIT 3;
