# Subqueries

This chapter covers how to use subqueries to enhance your query filtering


## Resources to Browse Before Class

- [Subquery Examples](https://www.youtube.com/watch?v=GpC0XyiJPEo)
- [Subquery Introduction](https://w3resource.com/PostgreSQL/postgresql-subqueries.php)
- [Posgresql Subquery](https://www.postgresqltutorial.com/postgresql-subquery/)

<br>

## About Subqueries: 
Subqueries are essentially queries nested inside of a larger query.

- Subqueries can occur in SELECT, FROM and WHERE clauses.
- They can be nested inside of SELECT, INSERT, UPDATE and DELETE statments.
- A subquery is sometimes referred to as the inner query while the statement containing the subquery is called the outer query.
- The inner query executes first so that it's results can be passed to the outer query.


## Subqueries in the SELECT clause

Example:

```sql
SELECT column_name1 , column_name2,
 column_name3 = (SELECT AVG(column_name) 
   FROM table1 WHERE column_name OPERATOR value)
FROM   table1;
```

Real Life example:
```sql
-- This statment finds the final grade for a student based on the sum of their assignment scores.
SELECT s.student_id, s.FirstName, s.LastName, 
       final_grade = (SELECT sum(score) 
                       FROM assignments
                      WHERE assignments.student_id = s.student_id)
  FROM students s; 
```

<br>

## Subqueries in the WHERE clause

Example:

```sql
SELECT column_name , column_name
FROM   table1 , table2
WHERE  column_name OPERATOR
   (SELECT column_name , column_name
   FROM table1 , table2 
   WHERE column_name OPERATOR value)
```

Real Life example:
```sql
-- This statment finds all teachers whose salaries are greater than the average salary of all teachers.
SELECT teacher_id, first_name, last_name, salary
FROM teachers
WHERE
salary > (SELECT AVG(salary) FROM teachers);
```

<br>


## Subqueries in the FROM clause

Example:

```sql
SELECT t.column_name , t.column_name
FROM   (SELECT t.column_name , t.column_name
   FROM table1 t)

   
```

Real Life example:
```sql
-- This statement retrieves all of the fields of the the teacher table with the use of a subquery in the FROM clause.
SELECT t.first_name, t.last_name FROM (SELECT teacher.first_name, teacher.last_name FROM teachers t);
```

<br>

