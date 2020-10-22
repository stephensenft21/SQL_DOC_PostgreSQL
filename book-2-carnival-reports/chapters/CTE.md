# Common Table Expressions

This chapter covers *Common Table Expressions* (CTE) and how to use it as an alternative to subqueries.

## Resources to Browse Before Class

- [Intro to Common Table Expressions](https://www.postgresqltutorial.com/postgresql-cte/)
- [SQL WITH Statements](https://www.youtube.com/watch?v=_SanZ41uTlw)
- [Subquieries and CTEs](https://www.youtube.com/watch?v=V3sa01sgcLU)
- [PosgresSQL WITH Clause](https://www.tutorialspoint.com/postgresql/postgresql_with_clause.htm)
- [Recursive CTEs in Posgres](https://www.citusdata.com/blog/2018/05/15/fun-with-sql-recursive-ctes/)

## What is a CTE?

A Common Table Expression (CTE) is a temporary result set that you can reference within another SQL statement. Some people consider the use of CTEs to provide a more readable query in comparison to subqueries.
- It can be used within a SELECT, INSERT, UPDATE or DELETE. 
- They result set is only accesible during runtime of the query.
- It is made up of using a WITH Statement and then a subsequent SQL statement.
- They can be used recursively (WITH RECURSIVE).


Basic Syntax WITH query is as follows where *name_for_summary_data* is the name given to the WITH clause result set.
```sql
WITH
   name_for_summary_data AS (SELECT Statement)
   SELECT columns
   FROM name_for_summary_data
   WHERE conditions <=> (
      SELECT column
      FROM name_for_summary_data)
   [ORDER BY columns]
```

Real Life example:

```sql
-- This finds all english teachers
WITH school_teachers AS
(SELECT teacher_id, first_name, last_name, class_subject FROM teachers)

SELECT * FROM school_teachers WHERE class_subject = 'english';

```