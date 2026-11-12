 
 {{config(materialized='ephemeral')}}
SELECT ORDER_ID,
    CUSTOMER_ID,
    SUM(TOTAL_AMOUNT) AS TOTAL_SALARY FROM 
    {{ref("stg_orders")}} GROUP BY EMPLOYEE_ID, CUSTOMER_ID