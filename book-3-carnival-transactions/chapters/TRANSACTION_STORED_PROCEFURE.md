# Using Transactions in Procedures

Talk about how a complex stored procedure could have a series of statements that must all be executed successfully, and if any statement fails, anything that happened previously must be undone, or rolled back.

Contextual examples:

* Bank cash transfers _(debit/credit)_
* Inventory updates _(purchase confirmation, update inventory status, ship item)_
* Hiring an employee _(new employee record, new department/employee record, payroll record created)_
* etc...