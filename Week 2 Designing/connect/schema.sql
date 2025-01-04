DROP TABLE IF EXISTS "users";
DROP TABLE IF EXISTS "schools";
DROP TABLE IF EXISTS "companies";
DROP TABLE IF EXISTS "users_connections";
DROP TABLE IF EXISTS "schools_connections";
DROP TABLE IF EXISTS "companies_connections";


CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "type" TEXT NOT NULL,
    "year_foundation" INTEGER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE "users_connections" (
    "user_a" INTEGER CHECK("user_a" != "user_b"),
    "user_b" INTEGER CHECK("user_b" != "user_a"),
    FOREIGN KEY ("user_a") REFERENCES "users"("id"),
    FOREIGN KEY ("user_b") REFERENCES "users"("id")
);

CREATE TABLE "schools_connections" (
    "school_id" INTEGER,
    "user_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "degree_type" TEXT,
    FOREIGN KEY ("school_id") REFERENCES "schools"("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id")
);

CREATE TABLE "companies_connections" (
    "company_id" INTEGER,
    "user_id" INTEGER,
    "start_date" NUMERIC,
    "end_date" NUMERIC,
    "title" TEXT,
    FOREIGN KEY ("company_id") REFERENCES "companies"("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id")
);
