SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    UNIT_PRICE,
    STOCK_QUANTITY
FROM {{ ref('stg_products') }}