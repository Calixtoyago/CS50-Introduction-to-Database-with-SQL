SELECT COUNT("id") AS "rural districts", SUM("families") AS "families"
FROM "rural";

SELECT * FROM "by_district"
ORDER BY "families";

SELECT * FROM "most_populated" LIMIT 1;
