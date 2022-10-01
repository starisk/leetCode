# Write your MySQL query statement below
select a.user_id as buyer_id
     , join_date
     , count(distinct b.order_id) as orders_in_2019
  from Users a
  left join Orders b
    on a.user_id = b.buyer_id
   and date_format(order_date, '%Y') = '2019'
 group by a.user_id