# Filtering Data

When getting data from the database using a `SELECT` statement, we can used the keyword `WHERE` to add at least one condition. All data returned by the `SELECT` statement must meet the condition(s). By specifying a `WHERE` clause, we can filter the data returned. The `WHERE` clause can also be used with `INSERT`, 'UPDATE` and `DELETE` statements.

## Resources to Browse Before ClassVideos to Watch Before Class

- [PostgreSQL WHERE](https://www.postgresqltutorial.com/postgresql-where/)
- [PostgreSQL IN](https://www.postgresqltutorial.com/postgresql-in/)
- [PostgreSQL BETWEEN](https://www.postgresqltutorial.com/postgresql-between/)
- [PostgreSQL LIKE](https://www.postgresqltutorial.com/postgresql-like/)
- [PostgreSQL IS NULL](https://www.postgresqltutorial.com/postgresql-is-null/)
- [Video: Adding a Filter](https://www.youtube.com/watch?v=EZerV-IODUQ)
- [Video: Data Filters in Postgresql](https://www.youtube.com/watch?v=JNLptMLaaDE)

## Examples of the `WHERE` clause

Try running these against your Carnival database.

#### Customers who are from Texas:

```sql
SELECT
	last_name, first_name, city, state
FROM
	customers
WHERE
	state = 'TX';
```

#### Customers who are from Houston, TX:

```sql
SELECT
	last_name, first_name, city, state
FROM
	customers
WHERE
	city = 'Houston' AND state = 'TX';
```

#### Customers who are from Texas or Tennessee:

```sql
SELECT
	last_name, first_name, city, state
FROM
	customers
WHERE
	state = 'TX' OR state = 'TN';
```

For providing a list of values in the `WHERE` clause, use `IN`.

#### Customers who are from Texas, Tennessee or California:

```sql
SELECT
	last_name, first_name, city, state
FROM
	customers
WHERE
	state IN ('TX', 'TN', 'CA');
```

For pattern matching, use `LIKE`. The `%` is a wildcard that means anything can come after the "C".

#### Customers who are from states that start with the letter C:

```sql
SELECT
	last_name, first_name, city, state
FROM
	customers
WHERE
	state LIKE 'C%';
```

#### Customers whose last name is greater than 5 characters and first name is less than or equal to 7 characters:

```sql
SELECT
	last_name, first_name
FROM
	customers
WHERE
	LENGTH(last_name) > 5 AND LENGTH(first_name) <= 7;
```

If you want to specify a range in the `WHERE` clause, use `BETWEEN`.

#### Customers whose company name has between 10 and 20 characters (greater than or equal to 10 and less than or equal to 20):

```sql
SELECT
	last_name, first_name, company_name
FROM
	customers
WHERE
	LENGTH(company_name) BETWEEN 10 AND 20;
```

#### Customers whose company name is null:

Because `NULL` is not equal to any value (even itself), this will not work.

```sql
SELECT
	last_name, first_name, company_name
FROM
	customers
WHERE
	company_name = NULL;
```
Instead, we do the following.

```sql
SELECT
	last_name, first_name, company_name
FROM
	customers
WHERE
	company_name IS NULL;
```


## Practice: Carnival
1. Get a list of sales records where the sale was a lease.
1. Get a list of sales where the purchase date is within the last two years.
1. Get a list of sales where the deposit was above 5000 or the customer payed with American Express.
1. Get a list of employees whose first names start with "M" or ends with "E".
1. Get a list of employees whose phone numbers have the 600 area code.
