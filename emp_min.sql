select * from(select *,min(sal)over(order by sal desc)as rnk from empnew)x
