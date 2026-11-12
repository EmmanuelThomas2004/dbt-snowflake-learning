SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    c.CITY,
    c.COUNTRY,
    o.ORDER_DATE,
    o.ORDER_STATUS,
    o.TOTAL_AMOUNT
FROM {{ ref('stg_orders') }} AS o
LEFT JOIN {{ ref('stg_customers') }} AS c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID