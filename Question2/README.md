In this task I found some errors that deviate from what the function should do. 
This function uses a query in an SQL-type relational database and adds each item to a table. 
Afterwards, it must print all the data received from the query
First, I added a line after the query that checks for returning no data from the query
Afterwards, the original code printed only the first result of the query, without iterating through the entire table.
I added a while loop so that, as long as resultId.next() returns true (we still have elements in the table), printing is performed.
Afterwards, to avoid memory leaks, I added a method to the resultId table that frees the allocated memory (In the official language documentation, this removal is done automatically, but just to be sure)