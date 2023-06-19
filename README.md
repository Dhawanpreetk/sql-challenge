# Sql Challenge Analaysis of Employees data 

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I had to design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 
1. Data modeling, 
2. Data engineering 
3. Data analysis

# Data Modelling 

For Data modelling 
## used quickdatabasediagrams.com and created the following diagram
Created 6 different tables visual and there column names assigned Primary keys for each table and Foreign keys as needed to connect the data. 

Used various data types for different data 


<img width="652" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/51410a7c-3667-4274-97f7-a5c225946997">




# Data Engineering 

Actually Created the Schema in pgadmin for all the six tables and created Primary Keys ,Foreign keys and composite keys 
1.Departments
2.Dept_employee
3.Manager
4.Employee
5.Salaries
6.Title

<img width="539" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/b7edc12a-3df4-4934-adb3-c67884b64985">


Imported the data from the csv files for each respective table mentioned above.


# Data Analaysis

1. List the employee number, last name, first name, sex, and salary of each employee.

   <img width="746" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/44e1814f-3a6a-446a-bd04-43d6006ebae9">


2.List the first name, last name, and hire date for the employees who were hired in 1986.

<img width="608" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/7768dbea-9972-4dbf-9ab6-d4e4f106ef0a">


3.List the manager of each department along with their department number, department name, employee number, last name, and first name.


<img width="696" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/989f8804-7499-4792-a9f6-24fd66ab2929">


4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

<img width="741" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/daaf0091-089c-48b7-8824-4b3be6305cc5">




5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

<img width="534" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/5b959e90-9509-44b8-9d61-e886495ea7dd">


6.List each employee in the Sales department, including their employee number, last name, and first name.

<img width="679" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/fd0bdc32-82fa-48a3-8cab-e029ea71fe44">



7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img width="619" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/89d61b0e-f023-44fa-bac3-bc33238228f6">


8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

<img width="530" alt="image" src="https://github.com/Dhawanpreetk/sql-challenge/assets/130263833/4693e125-4330-48e4-a10b-2c0239366c0b">




