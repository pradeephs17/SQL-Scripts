--SQL Operators

---All columns and All data

Select * from employee

--Specific Columns All Data

Select emp_id,emp_name,job_name,Salary from Employee

--All columns Specific Data

Caluses in SQL Server:

Where, Having,Group by, order by, Top  

Select emp_id,emp_name,job_name,Salary from Employee where dep_id=1002

---Specific Columns Specific Data

Select Sno,Sname from Student Where Courseid=2

Select (1.0*5)/2,5%2


Operators are used to perform some Task:

1. Arithematic Operators: +,-,*,/,%

	Addition(+): Adds values on the either side of the operator
	Subtraction(-): Subtract Right hand Operand from left hand Operand
	Multiplication(*): Multiples the Values on either side of the Operator
	Division(/):Division the Left hand Operand by Right Hand operand.
	%(Modulus): Divides Left hand operand by right hand operand on returns remainder.


	Select 10+10 as Addition,100-10 Substraction,100/10 as Division,103%10 Modulo,10*10 as Multiplication
	Select 10+NUll as Addition,100-Null Substraction,100/Null as Division,103%Null Modulo,10*Null as Multiplication

	Isnull: Isnull(expr1,Expr2)---Oracle NVL
	Isnull: If the expr1 is null then it will return Expr2 else expr1.

	Nullif: Nullif(expr1,expr2)
	If expr1 and expr2 are equal then null else expr1

	Select 10+Isnull(Null,0)
	Select 10*Isnull(Null,1)
	Select 10/Isnull(Null,1)

	Select 10/nullif(0,0)
	
	Select 0/1

	Select *,Salary/Nullif(commission,0) from employee

	   	  	
	Select 10+isnull(Null,0) as Addition
	Select 10*isnull(Null,1) as Multiplication
	Select 10/nullif(0,0) as Multiplication


2. Logical Operators: 
	Logical operators combine the result of two component conditions to produce a single result. 
	The logical operators are

And operator:

	1)	It returns true if both the conditions are true.
	2)	It returns false if either condition false

Or operator:

	1)	It returns true if either of condition is true.
	2)	It returns false if both conditions false

Not operator:

	1)	It returns true if the given condition is false
	2)	It returns false if the given condition is true.


/*Comparison Operators or Relational Operators*/

	Comparison operators are used in the WHERE clause to determine which records to select.

1)	=  (Equal to):Syntax: Expression=expression

	Compares the Equality of two expressions. If the expressions are not of the same datatype, 
	the datatype of the one expression must be implicitly convertible to the datatype of the other.

2)	<>  or != (Not Equal to):Syntax: Expression<>Expression

	Compares two expressions. If the left operand is not equal to the right operand then it results true else false. 
	Both expressions should be of the same data type.

3)	>  (Greater Than):Synatx: Expression>Expression

	Compares Two expressions, results true if the left operand value is greater than the right Operand else False. 
	Both the expressions should have the same datatype.

4)	< (Less Than):Synatx: Expression<Expression

	Compares Two expressions, results true if the left operand value is Less than the right Operand else False. 
	Both the expressions should have the same datatype.

5)	>= (Greater than or Equal to): Synatx: Expression>=Expression

	Compares Two expressions, results true if the left operand value is greater than or equal to the right Operand 
	else False.Both the expressions should have the same datatype.

6)	<= (Less than or Equal to): Synatx: Expression<=Expression

	Compares Two expressions, results true if the left operand value is less than or equal to the right Operand 
	else False. Both the expressions should have the same datatype.

7)	IN Operator:  
	
	It matches the values in the list.IN condition is used to help reduce the need to use multiple 
	OR conditions in a SELECT, INSERT, UPDATE, or DELETE statement. The Operator can be used on any datatype.

9)	Between: 

	Between is used to display the rows based on the range of values. 
	The lower limit should be declared first.

10)	Like:

		a.	It is used for Pattern matching.
		b.	Use the like condition to perform wildcard. 
		c.	The available wild cards are % and _.
		d.	% Represents any sequence of zero or More Character.
		e.	_Represents any single character, Only at that Position.
		f.	The wild card symbols can be used in any of the combination with literal Character.
11)	Is Null: It returns the Null values result Set. This is only the operator that can be used for testing the nulls.
12)	IsNotNull: It returns the Nonnull value result set. 


/* Sample Table to Create */

Create Table employee
(
emp_id int,
emp_name Varchar(100),
job_name  Varchar(100), 
manager_id 	int,
hire_date  Date, 
salary  int,
commission 	int,
dep_id int,
)

Insert into employee
Select 68319 as emp_id,'KAYLING' as emp_name,'PRESIDENT'  as Job_name,Null as manager_id,'1991-11-18' as Hire_Date,6000 as Salary,Null as Commission,1001 as dep_id
Union all Select 66928 as emp_id,'BLAZE' as emp_name,'MANAGER'  as Job_name,68319 as manager_id,'1991-05-01' as Hire_Date,2750 as Salary,Null as Commission,3001 as dep_id
Union all Select 67832 as emp_id,'CLARE' as emp_name,'MANAGER'  as Job_name,68319 as manager_id,'1991-06-09' as Hire_Date,2550 as Salary,Null as Commission,1001 as dep_id
Union all Select 65646 as emp_id,'JONAS' as emp_name,'MANAGER'  as Job_name,68319 as manager_id,'1991-04-02' as Hire_Date,2957 as Salary,Null as Commission,2001 as dep_id
Union all Select 67858 as emp_id,'SCARLET' as emp_name,'ANALYST'  as Job_name,65646 as manager_id,'1997-04-19' as Hire_Date,3100 as Salary,Null as Commission,2001 as dep_id
Union all Select 69062 as emp_id,'FRANK' as emp_name,'ANALYST'  as Job_name,65646 as manager_id,'1991-12-03' as Hire_Date,3100 as Salary,Null as Commission,2001 as dep_id
Union all Select 63679 as emp_id,'SANDRINE' as emp_name,'CLERK'  as Job_name,69062 as manager_id,'1990-12-18' as Hire_Date,900 as Salary,Null as Commission,2001 as dep_id
Union all Select 64989 as emp_id,'ADELYN' as emp_name,'SALESMAN'  as Job_name,66928 as manager_id,'1991-02-20' as Hire_Date,1700 as Salary,400 as Commission,3001 as dep_id
Union all Select 65271 as emp_id,'WADE' as emp_name,'SALESMAN'  as Job_name,66928 as manager_id,'1991-02-22' as Hire_Date,1350 as Salary,600 as Commission,3001 as dep_id
Union all Select 66564 as emp_id,'MADDEN' as emp_name,'SALESMAN'  as Job_name,66928 as manager_id,'1991-09-28' as Hire_Date,1350 as Salary,1500 as Commission,3001 as dep_id
Union all Select 68454 as emp_id,'TUCKER' as emp_name,'SALESMAN'  as Job_name,66928 as manager_id,'1991-09-08' as Hire_Date,1600 as Salary,0 as Commission,3001 as dep_id
Union all Select 68736 as emp_id,'ADNRES' as emp_name,'CLERK'  as Job_name,67858 as manager_id,'1997-05-23' as Hire_Date,1200 as Salary,Null as Commission,2001 as dep_id
Union all Select 69000 as emp_id,'JULIUS' as emp_name,'CLERK'  as Job_name,66928 as manager_id,'1991-12-03' as Hire_Date,1050 as Salary,Null as Commission,3001 as dep_id
Union all Select 69324 as emp_id,'MARKER' as emp_name,'CLERK'  as Job_name,67832 as manager_id,'1992-01-23' as Hire_Date,1400 as Salary,Null as Commission,1001 as dep_id


Create Table department
(
dep_id	 int,
Dep_name Varchar(100),	
Dep_Location Varchar(100)
)

Insert into department
Values(1001,'Finance','Sydney'),
	  (2001,'Audit','Melbourne'),
	  (3001,'Marketing','Perth'),
	  (4001,'Production','Brisbane')	
		
Create Table sal_grade
(
Grade int,	
Min_sal	int,
Max_Sal int
)

Insert into sal_grade
Values(1,800,1300),
	  (2,1301,1500),
	  (3,1501,2100),
	  (4,2101,3100),
	  (5,3101,9999)












