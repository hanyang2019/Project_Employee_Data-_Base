# **_ANALYSIS OF EMPLOYEE DATABASE_**
## **_Description_**
Database Employee was created in postgresSQL. Six tables in CSV format were imported into this database. An Entity Relationship Diagram (ERD) was created via [QUICKDBD](https://www.quickdatabasediagrams.com/) (employee ERD.sql).
![ERD](https://github.com/hanyang2019/Project_Employee_Data-_Base/blob/master/employee%20ERD.png?raw=true)
## **_Analysis_**
### **SQL Query**
8 queries were conducted in postgreSQL (employee_query.sql).

### **Execute SQL Query via SQLalchemy**
Installed 3 required packages before starting.
```
pip install SQLAlchemy
```
```
brew install postgresql
```
```
pip install psycopg2
````
8 queries were conducted via SQLalchemy in Jupyter Notebook (employee_query_HY.ipynb).

One additional query was conducted to investigate the relationship of job title and its average salary.

![Average_Salary_by_Title](https://github.com/hanyang2019/Project_Employee_Data-_Base/blob/master/Average_Salary_by_Title.png?raw=true)
