![sql](https://imgix.datadoghq.com/img/blog/monitor-azure-sql-databases-datadog/2016-azure-sql-integrations-1.png?fit=crop&w=1200&h=630)
# **_EMPLOYEE DATABASE_**
## **_Background_**
Conduct a research project on employees of a corporation from the 1980s and 1990s which are stored in six CSV files.

Design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 
## **_Objectives_**
1. Data Modeling
Inspect the CSVs and sketch out an ERD of the tables. 

2. Data Engineering
* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
* Import each CSV file into the corresponding SQL table.

3. Data Analysis
* List the following details of each employee: employee number, last name, first name, gender, and salary.
* List employees who were hired in 1986.
•	List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
* List the department of each employee with the following information: employee number, last name, first name, and department name.
* List all employees whose first name is "Hercules" and last names begin with "B."
* List all employees in the Sales department, including their employee number, last name, first name, and department name.
* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## **_Results_**
1. Database Employee was created in postgresSQL. Six tables in CSV format were imported into this database. An Entity Relationship Diagram (ERD) was created via [QUICKDBD](https://www.quickdatabasediagrams.com/) (employee ERD.sql).
![ERD](https://github.com/hanyang2019/Project_Employee_Database/blob/master/Images/employee%20ERD.png?raw=true)

2. Eight queries were conducted in postgreSQL (employee_query.sql).

3. Execute SQL Query via SQLalchemy
* Installed 3 required packages before starting.
  ```
  pip install SQLAlchemy
  ```
  ```
  brew install postgresql
  ```
  ```
  pip install psycopg2
  ````
* Eight queries were conducted via SQLalchemy in Jupyter Notebook (employee_query_HY.ipynb).

* One additional query was conducted to investigate the relationship of job title and its average salary.

  ![Average_Salary_by_Title](https://github.com/hanyang2019/Project_Employee_Database/blob/master/Images/Average_Salary_by_Title.png?raw=true)
