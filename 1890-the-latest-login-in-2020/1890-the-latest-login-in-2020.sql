# Write your MySQL query statement below
select a.user_id
     , a.time_stamp as last_stamp
  from Logins a
  join (select user_id
             , max(time_stamp) as last_stamp
          from Logins
         where date_format(time_stamp, "%Y") = '2020'
         group by user_id) b
    on a.user_id = b.user_id
   and a.time_stamp = b.last_stamp
