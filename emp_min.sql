select * from(select *,min(sal)over(partition by deptno)as rnk from empnew)m
intersection
select * from empnew
intersection
select * from empnew

