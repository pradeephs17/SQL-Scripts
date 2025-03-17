select * from(select *,min(sal)over(partition by deptno)as rnk from empnew)m
union 
select * from empnew
union select * from empnew
