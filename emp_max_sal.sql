select * from(select *,max(sal)over(order by sal desc)as rnk from empnew)m
union
select * from empnew