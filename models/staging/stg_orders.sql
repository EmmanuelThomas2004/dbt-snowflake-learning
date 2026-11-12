SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    TOTAL_AMOUNT
FROM {{ source('raw_data', 'ORDERS') }}