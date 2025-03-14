--Stored Procedures

Procedure ia program which contains set of SQL Statements


Create Procedure usp_Refresh_emp_dept as 

Begin 

Select * from employee

Select * from department

end

--How to execute the Procedure

Execute usp_Refresh_emp_dept

--How to check the definition of the procedure

Sp_helptext 'usp_Refresh_emp_dept'

---How to modify the Procedure

Alter Procedure usp_Refresh_emp_dept as 

Begin 

Select * from employee Where dep_id=1001

Select * from department Where dep_id=1001

end



Alter Procedure usp_Refresh_emp_dept as 

Begin 

Declare @time Datetime

Set @time=Getdate()

Select * from employee Where dep_id=2001

Set @time=Getdate()

Select * from department Where dep_id=2001

Set @time=Getdate()

end

---How to create a procedure with parameters

Parameter: The parameter is used to store the value. 
		   The Parameter values will not change throught the program execution. 
Variable: The variable is also used to store the value.
		The variable value can be changed.
Parameters in sql server are two types:
1. IN: It will accept the input from user
2. Out: it will store the output from the procedure

---Procedure With IN Parameter

Alter Procedure usp_Refresh_emp_dept @dep_id int as 

Begin 

Select * from employee Where dep_id=@dep_id

Select * from department Where dep_id=@dep_id

end

execute usp_Refresh_emp_dept 4001

---procedure with Multiple IN Parameters

Alter Procedure usp_Refresh_emp_dept @dep_id int,@Job Varchar(100) as 

Begin 

Select * from employee Where dep_id=@dep_id and Job_Name=@Job
order by 1 desc

Select * from department Where dep_id=@dep_id

Select * from employee1

end

execute usp_Refresh_emp_dept 2001,'MANAGER'

execute usp_Refresh_emp_dept @Job='Manager',@dep_id=2001


----Procedure With Out Parameters

PF is 20% salary
PT is 5% salary

Create Procedure usp_employee_PF_PT @empid int,@PF int out,@PT int out

as

Begin

Select @PF=(Salary*20/100),@PT=(Salary*5/100) 
from employee where emp_id=@empid

end

Declare @EPF int
Declare @EPT int
execute usp_employee_PF_PT 66928,@EPF out,@EPT out

print @EPF
Print @EPT


Select * from employee where emp_id=66928


----How prcoedure can be dropped

Drop procedure usp_employee_PF_PT


Select 
	*
from @Left_Table
Join @RightTable on @Left_Condition=@Right_Condition


Drop  table Std

Create Table Std(Sno int)

Insert into