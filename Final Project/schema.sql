-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

---TABLES---

-- Creating books' table
CREATE TABLE IF NOT EXISTS "books" (
    "id" INTEGER,
    "title" TEXT NOT NULL UNIQUE,
    "pages" INTEGER NOT NULL,
    "type" TEXT NOT NULL CHECK("type" IN ('paperbook', 'ebook', 'hq', 'manga')),
    "isbn" TEXT NOT NULL UNIQUE CHECK(LENGTH("isbn") = 13),
    "read" INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY ("id")
);

-- Creating authros' table
CREATE TABLE IF NOT EXISTS "authors" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

-- Creatinf genres' table
CREATE TABLE IF NOT EXISTS "genres" (
    "id" INTEGER,
    "genre" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

-- Creating relation between books and genres
CREATE TABLE IF NOT EXISTS "book_genres" (
    "book_id" INTEGER NOT NULL,
    "genre_id" INTEGER DEFAULT 0,
    FOREIGN KEY ("book_id") REFERENCES "books"("id") ON DELETE CASCADE,
    FOREIGN KEY ("genre_id") REFERENCES "genres"("id") ON DELETE SET DEFAULT
);

-- Creating relation between books and authors
CREATE TABLE IF NOT EXISTS "book_authors" (
    "book_id" INTEGER NOT NULL,
    "author_id" INTEGER DEFAULT 0,
    FOREIGN KEY ("book_id") REFERENCES "books"("id") ON DELETE CASCADE,
    FOREIGN KEY ("author_id") REFERENCES "authors"("id") ON DELETE SET DEFAULT
);

-- Creating ratings' table
CREATE TABLE IF NOT EXISTS "ratings" (
    "book_id" INTEGER,
    "stars" REAL NOT NULL CHECK("stars" BETWEEN 0 AND 5),
    "review" TEXT DEFAULT "No data",
    "finished_date" NUMERIC NOT NULL DEFAULT CURRENT_DATE,
    PRIMARY KEY ("book_id"),
    FOREIGN KEY ("book_id") REFERENCES "books"("id") ON DELETE CASCADE
);


---VIEWS---

-- this view shows the main informations of a book
CREATE VIEW IF NOT EXISTS "my_books" AS
SELECT
    "books"."title",
    "books"."pages",
    "books"."type",
    "books"."isbn",
    group_concat(DISTINCT "authors"."name") AS "authors",
    group_concat(DISTINCT "genres"."genre") AS "genres",
    "books"."read"
FROM "books"
LEFT JOIN "book_authors" ON "books"."id" = "book_authors"."book_id"
LEFT JOIN "authors" ON "book_authors"."author_id" = "authors"."id"
LEFT JOIN "book_genres" ON "books"."id" = "book_genres"."book_id"
LEFT JOIN "genres" ON "book_genres"."genre_id" = "genres"."id"
GROUP BY "books"."id"
ORDER BY "books"."title";

-- this view filter by the book that has been read
CREATE VIEW IF NOT EXISTS "books_read" AS
SELECT * FROM "my_books"
WHERE "read" = 1
GROUP BY "title"
ORDER BY "title";

-- this view filter by the book that hasn't been read
CREATE VIEW IF NOT EXISTS "to_be_read" AS
SELECT * FROM "my_books"
WHERE "read" = 0
GROUP BY "title"
ORDER BY "title";

-- this view shows all reviews in ratings table
CREATE VIEW IF NOT EXISTS "my_reviews" AS
SELECT
    "books"."title",
    "ratings"."stars",
    "ratings"."review",
    "ratings"."finished_date"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
ORDER BY "finished_date" DESC;

-- this view shows the relation between books and authors
CREATE VIEW IF NOT EXISTS "authors_book" AS
SELECT
    "books"."title",
    group_concat(DISTINCT "authors"."name") AS "authors"
FROM "books"
JOIN "book_authors" ON "books"."id" = "book_authors"."book_id"
JOIN "authors" ON "book_authors"."author_id" = "authors"."id"
GROUP BY "books"."id"
ORDER BY "books"."title";

-- this view shows the relation between books and genres
CREATE VIEW IF NOT EXISTS "genres_book" AS
SELECT
    "books"."title",
    group_concat(DISTINCT "genres"."genre") AS "genres"
FROM "books"
JOIN "book_genres" ON "books"."id" = "book_genres"."book_id"
JOIN "genres" ON "book_genres"."genre_id" = "genres"."id"
GROUP BY "books"."id"
ORDER BY "books"."title";

-- this view uses my_books to order by the number of pages in a descending order
CREATE VIEW IF NOT EXISTS "more_pages" AS
SELECT * FROM "my_books"
ORDER BY "pages" DESC;

-- this view uses my_books to order by the number of pages in a ascending order
CREATE VIEW IF NOT EXISTS "fewer_pages" AS
SELECT * FROM "my_books"
ORDER BY "pages" ASC;

-- this views order my_reviews by the finished_date in a ascending order
CREATE VIEW IF NOT EXISTS "recent_reading" AS
SELECT * FROM "my_reviews"
ORDER BY "finished_date";

-- this views order my_reviews by the finished_date in a descending order
CREATE VIEW IF NOT EXISTS "old_reading" AS
SELECT * FROM "my_reviews"
ORDER BY "finished_date" DESC;


---TRIGGERS---

-- this trigger will update the `read` column in `books` table every time a new review is inserted in `ratings` table
CREATE TRIGGER IF NOT EXISTS "book_review"
BEFORE INSERT ON "ratings"
FOR EACH ROW
BEGIN
    UPDATE "books"
    SET "read" = 1
    WHERE "books"."id" = NEW."book_id";
END;

-- this trigger will insert the default value when an author is NULL
CREATE TRIGGER IF NOT EXISTS "default_author"
AFTER INSERT ON "book_authors"
BEGIN
    UPDATE "book_authors"
    SET "author_id" = 0
    WHERE "author_id" IS NULL;
END;

-- this trigger will insert the default value when an author is NULL
CREATE TRIGGER IF NOT EXISTS "default_genre"
AFTER INSERT ON "book_genres"
BEGIN
    UPDATE "book_genres"
    SET "genre_id" = 0
    WHERE "genre_id" IS NULL;
END;


---INDEXES---

CREATE INDEX IF NOT EXISTS "books_search"
ON "books" ("id", "title");

CREATE INDEX IF NOT EXISTS "book_id_authors"
ON "book_authors" ("book_id");

CREATE INDEX IF NOT EXISTS "book_id_genres"
ON "book_genres" ("book_id");

