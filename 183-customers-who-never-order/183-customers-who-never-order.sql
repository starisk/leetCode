# Write your MySQL query statement below
SELECT NAME AS Customers
  FROM CUSTOMERS A
  LEFT OUTER JOIN ORDERS B
    ON A.ID = B.CUSTOMERID
 WHERE B.ID IS NULL