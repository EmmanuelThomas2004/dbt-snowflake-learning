{{config(materialized='table')}}

SELECT CUSTOMER_ID,
   TOTAL_SALARY FROM 
    {{ref('int_employee_salary')}}
    GROUP BY CUSTOMER_ID