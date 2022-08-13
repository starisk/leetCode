# Write your MySQL query statement below
SELECT NAME AS Customers
  FROM CUSTOMERS A
 WHERE NOT EXISTS (SELECT * 
                     FROM ORDERS B
                    WHERE A.ID = B.CUSTOMERID)