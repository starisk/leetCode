with tmp as(
    select salary
         , rank() over (order by salary desc) as ranking
      from employee
)

select if(max(ranking) = 1, null, salary) as SecondHighestSalary
  from tmp
 where ranking != 1
 limit 1