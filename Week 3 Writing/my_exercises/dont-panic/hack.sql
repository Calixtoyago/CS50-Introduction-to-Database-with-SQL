UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

DELETE FROM "user_logs"
WHERE
    "type" = 'update'
    AND "old_username" = 'admin'
    AND "new_password" = '982c0381c279d139fd221fce974916e7';

INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password")
VALUES
('update', 'admin', 'admin',
(SELECT "new_password" FROM "user_logs" WHERE "new_username" = 'admin' AND "type" = 'insert'),
(SELECT "password" FROM "users" WHERE "username" = 'emily33')
);

