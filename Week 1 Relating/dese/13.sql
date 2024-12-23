--In 13.sql, write a SQL query to answer a question you have about the data! The query should:
--Involve at least one JOIN or subquery

SELECT
    "districts"."city",
    "schools"."name",
    "expenditures"."pupils",
    "graduation_rates"."graduated"
FROM
    "districts"
JOIN "schools" ON "districts"."id" = "schools"."district_id"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
WHERE
    "expenditures"."pupils" IN (
        SELECT AVG("pupils") FROM "expenditures"
        GROUP BY "district_id"
    )
ORDER BY
    "expenditures"."pupils" DESC,
    "districts"."city",
    "graduation_rates"."graduated" DESC
;

