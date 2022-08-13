# Write your MySQL query statement below
SELECT NAME
     , POPULATION
     , AREA
  FROM World
 WHERE POPULATION >= 25000000
    OR AREA >= 3000000