--A parent asks you for advice on finding the best public school districts in Massachusetts.
--In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures
--  and an above-average percentage of teachers rated “exemplary”.
--Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
--Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

SELECT
    "districts"."name",
    "staff_evaluations"."exemplary",
    "expenditures"."per_pupil_expenditure"
FROM
    "districts"
JOIN "staff_evaluations"  ON "districts"."id" = "staff_evaluations"."district_id"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
WHERE
    "staff_evaluations"."exemplary" > (
        SELECT AVG("exemplary") FROM "staff_evaluations"
    )
AND
    "expenditures"."per_pupil_expenditure" > (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures"
    )
AND
    "districts"."type" LIKE 'Public%'
ORDER BY "staff_evaluations"."exemplary" DESC, "expenditures"."per_pupil_expenditure" DESC
;
