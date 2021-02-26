# sql-challenge
This project does data modeling, data engineering and data analysis of historical employee data using PostgreSQL, SQL Alchemy, Python (Pandas, Matplotlib) and Quick Database Diagrams. 
## Data Modeling
A new database is designed to store historical employee data using QuickDatabaseDiagrams.com. The data is normalized to 3rd normal form and has all the necessary primary and foreign keys defined.
- The entity relationship diagram (ERD) for the Employee database is stored in EmployeeSQL\EmployeeDatabaseERD.png.  

## Data Engineering
The Employee database is created in PostgreSQL and populated using PGADMIN4 from CSV files.
- The DB Schema definition is stored in EmployeeSQL\EmployeeDBSchema.sql
- The 6 CSV files used to populate the database are stored in the EmployeeSQL\Data\ folder. 
- Note: The DB tables must be created in the order they appear in the EmployeeDBSchema.sql file and the tables must be populated from the CSV data in the same order (and headers accounted for).

## Data Analysis & Visualization
The historical Employee data is analyzed using SQL queries and brought into Python using SQL Alchemy, where Pandas and Matplotlib are used to visualize Salary and Title data.
- The SQL queries are stored in EmployeeSQL\DAQueries.sql
- The Jupyter Notebook containing all of the Python & SQL Alchemy code is EmployeeSQL\SalaryAlchemy.jpynb
- The Salary histogram (SalaryHistogram.png) and bar chart (SalaryByTitle.png) are also in the EmployeeSQL folder.   
