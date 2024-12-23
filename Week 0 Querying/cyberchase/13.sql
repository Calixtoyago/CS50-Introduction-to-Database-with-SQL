-- In 13.sql, write a SQL query to explore a question of your choice. This query should:
--   Involve at least one condition, using WHERE with AND or OR

SELECT "season", "episode_in_season", "title", "air_date" FROM "episodes"
WHERE ("season" BETWEEN 2 AND 9)
AND ("air_date" > '2004-01-01')
ORDER BY "title";
