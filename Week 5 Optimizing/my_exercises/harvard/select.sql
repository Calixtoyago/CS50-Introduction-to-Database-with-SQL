-- -- Find a student’s historical course enrollments, based on their ID:

EXPLAIN QUERY PLAN
SELECT "courses"."title", "courses"."semester"
FROM "enrollments"
JOIN "courses" ON "enrollments"."course_id" = "courses"."id"
JOIN "students" ON "enrollments"."student_id" = "students"."id"
WHERE "students"."id" = 3;


-- --Find all students who enrolled in Computer Science 50 in Fall 2023:
EXPLAIN QUERY PLAN
SELECT "id", "name"
FROM "students"
WHERE "id" IN (
    SELECT "student_id"
    FROM "enrollments"
    WHERE "course_id" = (
        SELECT "id"
        FROM "courses"
        WHERE "courses"."department" = 'Computer Science'
        AND "courses"."number" = 50
        AND "courses"."semester" = 'Fall 2023'
    )
);



-- --Sort courses by most- to least-enrolled in Fall 2023:
EXPLAIN QUERY PLAN
SELECT "courses"."id", "courses"."department", "courses"."number", "courses"."title", COUNT(*) AS "enrollment"
FROM "courses"
JOIN "enrollments" ON "enrollments"."course_id" = "courses"."id"
WHERE "courses"."semester" = 'Fall 2023'
GROUP BY "courses"."id"
ORDER BY "enrollment" DESC;


--Find all computer science courses taught in Spring 2024:
EXPLAIN QUERY PLAN
SELECT "courses"."id", "courses"."department", "courses"."number", "courses"."title"
FROM "courses"
WHERE "courses"."department" = 'Computer Science'
AND "courses"."semester" = 'Spring 2024';



-- -- Find the requirement satisfied by “Advanced Databases” in Fall 2023:
EXPLAIN QUERY PLAN
SELECT "requirements"."name"
FROM "requirements"
WHERE "requirements"."id" = (
    SELECT "requirement_id"
    FROM "satisfies"
    WHERE "course_id" = (
        SELECT "id"
        FROM "courses"
        WHERE "title" = 'Advanced Databases'
        AND "semester" = 'Fall 2023'
    )
);


-- --Find how many courses in each requirement a student has satisfied:
EXPLAIN QUERY PLAN
SELECT "requirements"."name", COUNT(*) AS "courses"
FROM "requirements"
JOIN "satisfies" ON "requirements"."id" = "satisfies"."requirement_id"
WHERE "satisfies"."course_id" IN (
    SELECT "course_id"
    FROM "enrollments"
    WHERE "enrollments"."student_id" = 8
)
GROUP BY "requirements"."name";



-- --Search for a course by title and semester:
EXPLAIN QUERY PLAN
SELECT "department", "number", "title"
FROM "courses"
WHERE "title" LIKE "History%"
AND "semester" = 'Fall 2023';
