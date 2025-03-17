select * from(select *,min(sal)over(partition by deptno)as rnk from empnew)m


intersect
select * from empnew
intersect select * from empnew
