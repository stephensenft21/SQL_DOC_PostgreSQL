# Views

A view is virtual table that is the result set of a query. We can query this virtual table just like we would other tables in the database. This table is not physically saved on the disc and each time we access the view, the query for the view executes. 

## Resources to Browse Before Class

- [PostgreSQL Managing Views](https://www.postgresqltutorial.com/managing-postgresql-views/)
- [PostgreSQL Views](https://www.tutorialspoint.com/postgresql/postgresql_views.htm)
- [Video: SQL Views & Complex Queries](https://www.youtube.com/watch?v=8jU8SrAPn9c)
- [Video: Views in SQL](https://www.youtube.com/watch?v=VQpmOmZO2mo)

## Creating A View

We can create a view by using the `CREATE VIEW` statement. A view will need to be named when it is created.

To create a view for employees and the dealerships they work at:

```sql
CREATE VIEW employee_dealership_names AS
  SELECT 
    e.first_name,
    e.last_name,
    d.business_name
  FROM employees e
  INNER JOIN dealershipemployees de ON e.employee_id = de.employee_id
  INNER JOIN dealerships d ON d.dealership_id = de.dealership_id;
```

## Using a View

Now that the view is created, whenever you need to access this data, you can just run the following select statement:

```sql
SELECT
	*
FROM
	employee_dealership_names;
```

## Advantages of Using Views

- Views can simplify complex queries that contain data from multiple tables and/or do aggregate functions.
- A view can limit the degree of exposure of the underlying tables to the outer world. If you have a table with sensitive information. You can create a view that limits the data shown from the table and give users only the view.
- Views can simplify the presented data. You could have a different view for smaller, filtered subsets of data from a larger table.
- Because only the query is stored and not the result set, they take up very little storage space.

## Practice: Carnival

1. Create a view that lists all vehicle body types, makes and models.
1. Create a view that shows the total number of employees for each employee type.
1. Create a view that lists all customers without exposing their emails, phone numbers and street address.
1. Create a view named `sales2018` that shows the total number of sales for each sales type for the year 2018.
1. Create a view that shows the employee at each dealership with the most number of sales.
