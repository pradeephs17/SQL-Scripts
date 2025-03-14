SQL Joins:

What are Joins:

Select * from employee
Select * from department
Select * from sal_grade

EMp_id,Emp_Name,JOb_Name,Salary,dep_id,dep_name,dep_loc,grade

emp_id--employee
emp_name--employee
Job_Name--Employee
Salary--employee
dep_id--Employee
Dep_name--department
dep_loca--department
Grade--sal_grade

1. Joins will establish the relation between multiple tables.
2. The relationship between the tables are temporary.
3. If you want to retreive the data from multiple tables, the common/Key column is required


What are the Types of Joins:

1. Cartesian/Cross Join:

	Extracting the Data from multiple tables without using any join condition then it leads to cartesian/cross join.

	Select * from employee
	Select * from department

	Select * from employee,department
	Select * from department,employee

	Select emp_id,emp_name,job_name,d.dep_id,salary,dep_name 
	from department as d,employee as e


	Select * from employee cross join department

	66666	KRISHNA	CLERK	67832	23-01-1992	1400	NULL	1005

	Insert into employee 
	Values(66666,'KRISHNA','CLERK',67832,'1992-01-23',1400,Null,1005)

2. Self Join: Joining the table with the same table itself is called self join.
3. Inner Join: Joining the tables using key column and will return the matching records

Select 
	*
from Employee as e
Inner join department as d on e.dep_id=d.dep_id

Select 
	e.emp_id,
	e.emp_name,
	e.job_name,
	e.dep_id,
	e.salary,
	d.dep_name,
	d.dep_location
from Employee as e
Inner join department as d on e.dep_id=d.dep_id

4. Outer Join
	a. Left Outer Join : Matched Records+Left side unmatched records

	Select 
		*
	from Employee as e
	Left join department as d on e.dep_id=d.dep_id

extract only match records

	Select 
		*
	from Employee as e
	Left join department as d on e.dep_id=d.dep_id
	Where d.dep_id is not null

extract only unmatched records:

	Select 
		*
	from Employee as e
	Left join department as d on e.dep_id=d.dep_id
	Where d.dep_id is null

	b. Right Outer Join: Matched + unmatched from right side

	Select 
		*
	from Employee as e
	right join department as d on e.dep_id=d.dep_id

	extract only matched records:

	Select 
		*
	from Employee as e
	right join department as d on e.dep_id=d.dep_id
	Where e.dep_id is not null

	extract only unamatched:

	Select 
		*
	from Employee as e
	right join department as d on e.dep_id=d.dep_id
	where e.dep_id is null

	c. Full outer Join: Matched+UN Matched from left+Unmatched from Right

	Select 
		*
	from Employee as e
	Full join department as d on e.dep_id=d.dep_id

	extract only matched records

	Select 
		*
	from Employee as e
	Full join department as d on e.dep_id=d.dep_id
	Where e.dep_id is not null and d.dep_id is not null

	extract only unmatched from left:

	Select 
		*
	from Employee as e
	Full join department as d on e.dep_id=d.dep_id
	Where d.dep_id is null

	extract only unmatched from right:

	
	Select 
		*
	from Employee as e
	Full join department as d on e.dep_id=d.dep_id
	Where e.dep_id is null

	extract unamtached records from left and right:

	
	Select 
		*
	from Employee as e
	Full join department as d on e.dep_id=d.dep_id
	Where d.dep_id is null or e.dep_id is null