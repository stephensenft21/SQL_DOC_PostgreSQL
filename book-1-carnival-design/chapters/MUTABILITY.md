# Mutable and Immutable Data

Immutable data is information that should never be updated.

Mutable data is the opposite. Information that is expected to change over time.

It is important to think about and discuss which information in your database will mutate over time and which should not. Relational databases are mutable by nature, which means that it is possible for any value to change, given that it doesn't violate any contraints that you have defined.

## Immutable Example

Imagine that you are designing a financial database that keeps track of customers and their bank accounts.

### Customer Table

|id|first_name|last_name|ssn|address|
|--|--|--|--|--|
|1|Mark|Williams|331-03-2019|100 Mulberry Way|
|2|Denise|McIntyre|501-30-1022|404 Main St|
|3|Jamal|Akton|177-35-5521|542 Cider Ave|
|4|Mikayla|Appleton|209-99-8711|58 Fiona Way|

Which of these fields are possible to change over time?

1. Last name
1. Address

Which of these fields will likely not change over time?

1. Social security number
1. First name

### Account Table

|id|acct_num|customer_id|date_opened|
|--|--|--|--|
|1|48578934590432|2|1998-05-04|
|2|94375848982882|1|2015-07-29|
|3|42582959194741|4|2004-11-12|
|4|49578594482784|3|2002-01-20|

Which of these fields are possible to change over time?

1. None

Which of these fields will likely not change over time?

1. All of them

What if the customer closes their account to create another one? Should you simply update the existing record with the new account number and date? Absolutely not, because all of their past transactions on the original account are no longer tied to a unique record in the Account table.

## Carnival Immutability

There are ways that you can actually prevent fields in your database from changing that you will learn later in the course.

1. Triggers
1. Privilege management

Even if you never implement those mechanisms, ensuring that everyone on the database and application teams understands which data should never be changed protects you from having invalid data and bugs.

Your task is to examine the database and identify any fields that you think should be immutable to ensure consistency and integrity of your database.

Write them down and be prepared to discuss with your teammates and instructors why you chose those fields.