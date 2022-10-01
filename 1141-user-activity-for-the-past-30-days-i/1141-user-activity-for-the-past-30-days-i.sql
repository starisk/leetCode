# Write your MySQL query statement below
select activity_date as day
     , count(distinct user_id) as active_users
  from Activity
 where activity_date between date_sub(str_to_date('2019-07-27', '%Y-%m-%d'), interval 29 day) and str_to_date('2019-07-27', '%Y-%m-%d')
 group by activity_date
 order by activity_date
