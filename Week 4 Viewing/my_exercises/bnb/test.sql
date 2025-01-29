-- no_descriptions test
SELECT COUNT(*) AS "total listings" FROM "no_descriptions";


-- one_bedroom test
WITH "group of 4" AS (
    SELECT COUNT(*) AS "group of 4" FROM "one_bedrooms"
    WHERE "accommodates" >= 4
),
"total one bedrooms" AS (
    SELECT COUNT(*) AS "total one bedroosm" FROM "one_bedrooms"
)
SELECT * FROM "group of 4"
UNION ALL
SELECT * FROM "total one bedrooms";


-- available test
SELECT COUNT(*) FROM "available"
WHERE "date" = '2023-12-31';


-- frequenly_reviewed test
SELECT * FROM "frequently_reviewed"
LIMIT 1;


-- june_vacancies test
SELECT COUNT(*) FROM "june_vacancies";
