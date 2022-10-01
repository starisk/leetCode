# Write your MySQL query statement below
with time as(
    select emp_id
         , event_day
         , out_time - in_time as total
      from Employees
)

select event_day as day
     , emp_id
     , sum(total) as total_time
  from time
 group by event_day, emp_id