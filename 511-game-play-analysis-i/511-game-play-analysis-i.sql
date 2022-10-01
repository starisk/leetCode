# Write your MySQL query statement below
select a.player_id
     , a.event_date as first_login
  from Activity a
  join (select player_id
             , min(event_date) as first_login
          from Activity
         group by player_id) b
    on a.player_id = b.player_id
   and a.event_date = b.first_login