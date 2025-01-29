CREATE INDEX IF NOT EXISTS "title_index" ON "movies" ("title");

CREATE INDEX IF NOT EXISTS "name_index" ON "people" ("name");

CREATE INDEX IF NOT EXISTS "stars_index" ON "stars" ("person_id");

CREATE INDEX IF NOT EXISTS "person_index" ON "stars" ("person_id", "movie_id");

CREATE INDEX IF NOT EXISTS "recents" ON "movies" ("title")
WHERE "year" = 2023;
