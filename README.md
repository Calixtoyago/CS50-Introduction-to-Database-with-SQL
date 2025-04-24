# CS50's Introduction to Database with SQL

This repository contains all my files from this CS50 course.
It is organized by the weeks of the course and the files I used for each activity.

 **my_exercices** - A folder created to contain my solutions for each exercise, with each folder representing a different problem set and its respective solutions.
 
 **my_schemas** - A folder created to store what I worked on during the lessons.
 
 **src** - A folder that contains all the material used by the teacher during the lessons.


## Week 0 Querying
This first week I learnt the concepts of SQL queries and how to use it to search for datas in a database

1️⃣ **Concepts**: Learned the fundamentals of databases and how data is structured and managed.
2️⃣ **SQL & SQLite**: Explored SQL as a query language and SQLite as a lightweight database system.
3️⃣ **SELECT**: Learned to retrieve specific data from tables using the SELECT statement.

[Week 0 - Querying](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%200%20Querying)

---

## Week 1 - Relating  
This week I learned how to connect data across multiple tables and work with relationships in databases.  

1️⃣ **Relationships**: Understood how tables are linked using primary and foreign keys.  
2️⃣ **Joins**: Learned to combine data from multiple tables using INNER JOIN, LEFT JOIN, and more.  
3️⃣ **SET Operations**: Explored how to use UNION, INTERSECT, and EXCEPT to manipulate and combine results from multiple queries.  
4️⃣ **Referential Integrity**: Explored how constraints like FOREIGN KEY ensure consistent relationships between tables.  

[Week 1 - Relating](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%201%20Relating)

---

## Week 2 - Designing  
This week I focused on designing and modifying database structures and schemas.  

1️⃣ **Database Schema**: Learned how to define tables, columns, and data types.  
2️⃣ **Normalization**: Explored how to organize data to reduce redundancy and improve consistency.  
3️⃣ **Constraints**: Understood how to enforce rules on data with PRIMARY KEY, UNIQUE, NOT NULL, and CHECK constraints.  
4️⃣ **Altering Tables**: Practiced modifying tables, adding or removing columns, and updating constraints to adapt to evolving requirements.  

[Week 2 - Designing](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%202%20Designing)

---

## Week 3 - Writing  
This week I practiced writing complex queries, inserting data, and automating tasks in the database.  

1️⃣ **INSERT INTO**: Learned how to add new rows of data into tables.  
2️⃣ **UPDATE**: Practiced updating existing rows in a table to reflect changes.  
3️⃣ **Subqueries**: Learned to use queries within queries to retrieve data efficiently.  
4️⃣ **Views**: Explored creating reusable virtual tables to simplify complex queries.  
5️⃣ **Triggers**: Discovered how to automate actions in response to specific events in the database.  

[Week 3 - Writing](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%203%20Writing)

---

## Week 4 - Viewing
This week I learned how to create and use `VIEW`to improve the database `SELECT`queries.

1️⃣**CREATE VIEW**: Learned how to create those views.
2️⃣**Common Table Expression (CTE)**: Practiced some CTE to improve and make a query more readable.
3️⃣**CREATE TEMPORARY VIEW**: Just like the `CREATE VIEW` but this one is used while the database is activated.

[Week 4 - Viewing](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%204%20Viewing)

---

## Week 5 - Optimizing
This week I focused on how to improve the search speed of my queries using `INDEX`.

1️⃣**CREATE INDEX**: This was the main syntax on this week, it's used to improve and optimize queries in the database.
2️⃣**EXPLAIN QUERY PLAN**: This command show us how sqlite is searching some information from a `SELECT`query.
3️⃣**BEGIN TRANSACTION**: Practice how to do multiples changes in datas at the same time.

[Week 5 - Optimizing](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week%205%20Optimizing)

---

## Week 6 - Scaling
THis week I worked on scaling sqlite3 databases to MySQL and PostgreSQL

1️⃣**MySQL and PostgreSQL**: Learnt how to create, modify and manage those DBMS.
2️⃣**Access Control**: Give differents permissions to users in the database.
3️⃣**Scalability**: I differentiated vertical scaling from horizontal scaling, and I explored techniques like Read Replicas and Sharding.

[Week 6 - Scaling](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Week_6_Scaling)

---

## Final Project
This is my CS50's Introduction to Databases with SQL final project, where I demonstrate the skills and knowledge I acquired during the course.

1️⃣**Books catalog**: Created a database to register and review my readings
2️⃣**Funcionalities**: The user can add, remove, edit, rate and review the books
3️⃣**Entities**: It has books, authors and genres as its main entities

[Final Project](https://github.com/Calixtoyago/CS50-Introduction-to-Database-with-SQL/tree/main/Final_Project)

---