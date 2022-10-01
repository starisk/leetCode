# Write your MySQL query statement below
with dist as(
    select a.id
         , a.name
         , ifnull(sum(b.distance), 0) as travelled_distance
      from Users a
      left outer join Rides b
        on a.id = b.user_id
     group by a.id
)

select name
     , travelled_distance
  from dist
 order by travelled_distance desc, name