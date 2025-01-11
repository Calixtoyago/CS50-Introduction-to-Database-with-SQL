UPDATE "votes" SET "title" = trim("title"); -- remove espaços desnecessários

UPDATE "votes" SET "title" = upper("title"); -- torna tudo maiusculo

UPDATE "votes" SET "title" = 'FARMERS WORKING AT DAWN'
WHERE "title" LIKE '% WORKING %';

UPDATE "votes" SET "title" = 'IMAGINATIVE LANDSCAPE'
WHERE "title" LIKE '% LANDSCAPE';

UPDATE "votes" SET "title" = 'PROFUSION OF FLOWERS'
WHERE "title" LIKE 'PROFUSION%';

SELECT "title", COUNT("title") FROM "votes" GROUP BY "title";
