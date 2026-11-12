-- Customer Analysis Model

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    CITY
FROM {{ ref('stg_customers') }}
WHERE CITY = 'Kochi'
