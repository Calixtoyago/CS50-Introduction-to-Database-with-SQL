WITH "common_friends" AS (
    SELECT "friend_id"
    FROM "friends"
    WHERE "user_id" = (
        SELECT "id" FROM "users"
        WHERE "username" = 'lovelytrust487'
    )
    INTERSECT
    SELECT "friend_id"
    FROM "friends"
    WHERE "user_id" = (
        SELECT "id" FROM "users"
        WHERE "username" = 'exceptionalinspiration482'
    )
)
SELECT * FROM "common_friends";

EXPLAIN QUERY PLAN
WITH "common_friends" AS (
    SELECT "friend_id"
    FROM "friends"
    WHERE "user_id" = (
        SELECT "id" FROM "users"
        WHERE "username" = 'lovelytrust487'
    )
    INTERSECT
    SELECT "friend_id"
    FROM "friends"
    WHERE "user_id" = (
        SELECT "id" FROM "users"
        WHERE "username" = 'exceptionalinspiration482'
    )
)
SELECT * FROM "common_friends";


