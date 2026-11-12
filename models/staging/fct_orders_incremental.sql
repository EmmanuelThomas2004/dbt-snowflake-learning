
{{ config(materialized = 'incremental',unique_key = 'ORDER_ID') }}
SELECT  ORDER_ID,
    CUSTOMER_ID,
    ORDER_DATE,
    ORDER_STATUS,
    TOTAL_AMOUNT FROM {{ ref('stg_orders') }}

    {% if is_incremental() %}
    WHERE ORDER_DATE > 
    (SELECT MAX(ORDER_DATE) FROM {{this}})

    {% endif %}
