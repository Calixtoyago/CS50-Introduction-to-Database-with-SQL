CREATE INDEX IF NOT EXISTS "students_enrolled" ON "enrollments" ("student_id");

CREATE INDEX IF NOT EXISTS "courses_enrolled" ON "enrollments" ("course_id");

CREATE INDEX IF NOT EXISTS "search_course_by_information"
ON "courses" ("semester", "department", "number");

CREATE INDEX IF NOT EXISTS "courses_satisfaction" ON "satisfies" ("course_id");

