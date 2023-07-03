with payments as (
    SELECT 
        ID as payment_id, 
        ORDERID as order_id, 
        PAYMENTMETHOD as payment_method, 
        STATUS as payment_status, 
        AMOUNT/100 as payment_amount,
        CREATED as created_at
    FROM {{ source('stripe', 'payment') }}
)

SELECT * FROM PAYMENTS