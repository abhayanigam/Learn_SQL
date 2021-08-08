-- SQL - Indexes

/*
	SQL CREATE INDEX Statement
		The CREATE INDEX statement is used to create indexes in tables.
		Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.
	
    The CREATE INDEX Command
		The basic syntax of a CREATE INDEX is as follows.

		CREATE INDEX index_name ON table_name;
			Single-Column Indexes
			A single-column index is created based on only one table column. The basic syntax is as follows.

				CREATE INDEX index_name
				ON table_name (column_name);
                
	Unique Indexes
		Unique indexes are used not only for performance, but also for data integrity. A unique index does not allow any duplicate values to be inserted into the table. The basic syntax is as follows.

			CREATE UNIQUE INDEX index_name
			on table_name (column_name);
            
	Composite Indexes
		A composite index is an index on two or more columns of a table. Its basic syntax is as follows.

			CREATE INDEX index_name
			on table_name (column1, column2);
*/

