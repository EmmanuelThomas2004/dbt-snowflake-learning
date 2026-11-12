SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY,
    COUNTRY,
    REGISTRATION_DATE
FROM {{ ref('stg_customers') }}