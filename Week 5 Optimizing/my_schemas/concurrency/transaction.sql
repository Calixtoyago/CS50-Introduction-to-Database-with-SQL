-- BEGIN TRANSACTION;
-- UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
-- UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
-- COMMIT;

-- BEGIN TRANSACTION;
-- UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
-- UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
-- ROLLBACK; --wont make the transaction if it inflicts any constraints

BEGIN EXCLUSIVE TRANSACTION:
