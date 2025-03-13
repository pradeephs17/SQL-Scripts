select * from(select *,max(sal)over(parttion by deptno)as rnk from empnew)m
