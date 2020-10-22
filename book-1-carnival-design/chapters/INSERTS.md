# Inserting Data

This chapter covers the `INSERT INTO` statement. Discuss order of operations in the context of the relationships (i.e. data with an external dependecy should be created first).

## Resources to Browse Before Class

- [PostgreSQL INSERT](https://www.postgresqltutorial.com/postgresql-insert/)
- [PostgreSQL INSERT Multiple Rows](https://www.postgresqltutorial.com/postgresql-insert-multiple-rows/)
- [Inserting Data into Tables](https://www.youtube.com/watch?v=Tet3Z7Yb2gg)
- [INSERT INTO Statement](https://www.youtube.com/watch?v=VkabxQgtGsA)
- [SQL INSERT Statement](https://www.geeksforgeeks.org/sql-insert-statement/)

## INSERT INTO

The INSERT INTO statement is used to add new records to a table. Provide values for the columns (that will not auto-increment, i.e., PK) when you are adding a new row.

Let's add a new sales type and add a new record for a sale that is of the newly added sales type.


```sql
-- INSERT statement to add a new sale:
INSERT INTO public.sales(sales_type_id, vehicle_id, employee_id, dealership_id, price, invoice_number)
VALUES (3, 21, 12, 7, 55999, 123477289);

-- INSERT statement to add a new sales type:
INSERT INTO public.salestypes(name)
VALUES ('Rent');
```

Now if you run the above INSERTs together you will get the following error:

```
ERROR:  insert or update on table "sales" violates foreign key constraint "sales_sales_type_id_fkey"
DETAIL:  Key (sales_type_id)=(3) is not present in table "salestypes".
```
Because the new sales record that is being added is dependent on the sales type already existing and therefore having a primary key, we must run the INSERT statement for the sales type first. 

The FK constraint`sales_type_id` on the Sales table with will not let you reference a sales type that does not exist.

## Inserting Multiple Rows

You can add multiple records in a single INSERT statement with the following syntax:

```sql
INSERT INTO 
public.sales(sales_type_id, vehicle_id, employee_id, dealership_id, price, invoice_number)
VALUES 
(3, 21, 12, 7, 55999, 123477289),
(3, 14, 3, 7, 19999, 232727349),
(3, 6, 75, 7, 39500, 8635482010);
```

## Practice: Carnival

1.  Pick two of your friends or family and write a single INSERT statement to add both of them to the Customers table.
1. Think of your dream car. In order to add this car to the Vehicles table, you might need to add data to the VehicleTypes table. Make sure the statements are ordered so that you can execute all your INSERT statements together.
1. Use INSERT statements to add a new employee with the following info. This employee works shifts at the first three dealerships listed in your Dealerships table:

    - Name: Kennie Maharg
    - Email: kmaharge@com.com	
    - Phone: 598-678-4885
    - Role: Customer Service
