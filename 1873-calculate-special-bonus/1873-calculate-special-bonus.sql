# Write your MySQL query statement below
SELECT EMPLOYEE_ID AS employee_id
     , CASE WHEN (EMPLOYEE_ID % 2 = 1 AND NAME NOT LIKE 'M%')
            THEN SALARY
       ELSE 0
       END AS bonus
  FROM EMPLOYEES
 ORDER BY EMPLOYEE_ID