# Write your MySQL query statement below
with tmp as(
    select a.employee_id
      from employees a
      left outer join salaries b
        on a.employee_id = b.employee_id
     where b.salary is null
    union distinct
    select b.employee_id
      from salaries b
      left outer join employees a
        on a.employee_id = b.employee_id
     where a.name is null
)

select * from tmp order by employee_id
 