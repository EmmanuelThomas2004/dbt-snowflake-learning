SELECT
    ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    TOTAL_AMOUNT
FROM {{ ref('stg_orders') }}