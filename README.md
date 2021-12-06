# SQL-Challenge

## Background 

As a hypothetical data engineer, I was tasked to research employees of the corportation from 1980's to 1990's. The database of employees from that period are kept in six CSV files. I designed tables to hold the data within the imported CSV files to extract information to analyze. 

## Data Modeling 

I created an ERD of the tables utilizing QuickDataBaseDiagrams.com 

![employee_ERD](https://user-images.githubusercontent.com/86134771/144899060-d7daef55-d931-49ad-803a-819017d0b08e.png)


## Data Engineering 

Used the information from the six CSV files to create individual table schemas in corresponding order while also specifying primary keys, foreign keys, and other constraints. 

## Data Analysis 

I used the complete database to answer the following questions: 

-List the following details of each employee: employee number, last name, first name, sex, and salary.


-List first name, last name, and hire date for employees who were hired in 1986.


-List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


-List the department of each employee with the following information: employee number, last name, first name, and department name.


-List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-List all employees in the Sales department, including their employee number, last name, first name, and department name.


-List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
