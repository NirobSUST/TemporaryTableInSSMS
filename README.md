
# Temporary Table




## Documentation

What is a temp table?

As its name indicates, temporary tables are used to store data temporarily and they can perform CRUD (Create, Read, Update, and Delete), join, and some other operations like the persistent database tables. 
Temporary tables are dropped when the session that creates the table has closed, or can also be explicitly dropped by users. At the same time, temporary tables can act like physical tables in many ways, which gives us more flexibility. Such as, we can create constraints, indexes, or statistics in these tables. 

Advantages of Temporary Tables:

There are 3 main advantages of using temporary tables in SQL:

# Advantages

1. Simplicity of coding --> Temporary tables behave just like normal ones; you can sort, filter and join them as if they were permanent tables.

2. Speed --> Because SQL Server has less logging and locking overheads for temporary tables (after all, you're the only person who can see or use the temporary table you've created), they execute more quickly.

3. Access rights/security --> You can create a temporary table and insert, delete and update its records without worrying about whether you have sufficient rights to change data in permanent tables, or whether you might be accidentally doing so.


# Disadvantages

1. Not as fast as table variables --> Although using temporary tables is quicker than using permanent ones, there is still an overhead involved compared to using table variables.


2. Can’t update in functions --> You can’t use INSERT, UPDATE or DELETE statements against temporary tables in user-defined functions (you can with table variables). This is NOT a big disadvantage, however!


We test a simple table in two different way :

1. Normal Table --> Which takes Completion Time : 0.8199499s

2. Temporary Table --> Which takes Completion time : 0.4479190s