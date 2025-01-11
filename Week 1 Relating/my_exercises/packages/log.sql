
-- *** The Lost Letter ***
-- 4. This will show both sender's and recipient's addresses
SELECT * FROM "addresses" WHERE "id" IN (
    -- 3. This query will get all ids related to the given address
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        -- 2. Now this query will get the package's id that has the same address as the sender and with "congratulatory" in the name of the content
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            -- 1. This query will get the id related to the sender's address
            SELECT "id" FROM "addresses"
            WHERE "address" = '900 Somerville Avenue'
        ) AND "contents" LIKE '%congratulatory%'
    )
);

-- *** The Devious Delivery ***
-- I used this query to search for any package that have an empty from_address_id like said in the problem
-- The name of the content is Duck debbuger, w
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

-- This query allows me to see every action that happaned with the package
-- I can see where it was picked and dropped
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
);

-- Now I can make a query using the previous one to get the final location of this package
SELECT * FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    ) AND "action" = 'Drop'
);


-- *** The Forgotten Gift ***

-- With this query I can see what is the mystery gift, searching by the sender's address
SELECT * FROM "packages"
WHERE "from_address_id" = (
    SELECT "id" FROM "addresses"
    WHERE "address" LIKE '109 Tileston Street'
);

-- Now Im looking for where the package is
-- In this query I can see if it was picked or dropped somewhere else
SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" LIKE '109 Tileston Street'
    )
); -- It is possible to see that it went to another location and another driver took it to deliver again

-- Now I got the driver's name which has the mystery gift with
SELECT * FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (
            SELECT "id" FROM "addresses"
            WHERE "address" LIKE '109 Tileston Street'
            )
    ) ORDER BY "timestamp" DESC
    LIMIT 1
);
