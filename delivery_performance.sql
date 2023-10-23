SELECT
DATE(DATE_TRUNC(orders.order_purchase_timestamp, WEEK)) AS purchase_week,
translation.string_field_1 AS product_category,
order_item.seller_id,
orders.order_id,
orders.customer_id,
payments.payment_value,

DATE (TIMESTAMP (orders.order_purchase_timestamp)) AS order_purchase_date, -- shows the purchase date
DATE (TIMESTAMP (orders.order_approved_at)) AS approval_date, -- shows when order was approved
DATE (TIMESTAMP (order_item.shipping_limit_date)) AS shipping_limit_date,-- shows the seller shipping limit date for handling the order over to the logistic partner
DATE (TIMESTAMP (orders.order_delivered_carrier_date)) AS shipping_date, -- shows when selled shipped the order
DATE (TIMESTAMP (orders.order_estimated_delivery_date)) AS order_estimated_delivery_date, -- show the estimated delivery date that was informed to customer at the purchase moment
DATE (TIMESTAMP (orders.order_delivered_customer_date)) AS actual_delivery_date, -- Shows the actual order delivery date to the customer
DATE_DIFF (DATE (TIMESTAMP (orders.order_delivered_carrier_date)),DATE (TIMESTAMP (orders.order_approved_at)), DAY) AS days_from_approval_to_drop_off, -- shows how many days it took for seller to handle order to logistic provider from approval
DATE_DIFF (DATE (TIMESTAMP (orders.order_delivered_customer_date)),DATE (TIMESTAMP (orders.order_delivered_carrier_date)), DAY) AS days_since_drop_off_until_delivery, -- shows how many days it took from drop off to logistic provider until delivery to customer
DATE_DIFF (DATE (TIMESTAMP (orders.order_delivered_customer_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) AS days_since_purchase_until_delivery, -- shows how many days it took since purchase to be delivered
DATE_DIFF (DATE (TIMESTAMP (orders.order_estimated_delivery_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) AS estimated_delivery_days, -- shows in how many days order is estimated to be delivered in days
DATE_DIFF (DATE (TIMESTAMP (orders.order_estimated_delivery_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) - DATE_DIFF (DATE (TIMESTAMP (orders.order_delivered_customer_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) AS day_diff_estimated_vs_actual, -- shows difference between estimated delivery and actual delivery in days

CASE WHEN DATE_DIFF (DATE (TIMESTAMP (order_item.shipping_limit_date)),DATE (TIMESTAMP (orders.order_delivered_carrier_date)), DAY) >=0 THEN 1 ELSE 0 END AS is_shipped_on_time,
CASE WHEN DATE_DIFF (DATE (TIMESTAMP (orders.order_estimated_delivery_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) - DATE_DIFF (DATE (TIMESTAMP (orders.order_delivered_customer_date)),DATE (TIMESTAMP (orders.order_purchase_timestamp)), DAY) >=0 THEN 1 ELSE 0 END AS is_delivered_on_time


FROM
`tc-da-1.olist_db.olist_orders_dataset` orders
JOIN
`tc-da-1.olist_db.olist_order_payments_dataset` payments
ON
orders.order_id = payments.order_id
AND order_purchase_timestamp>='2017-01-01'
JOIN `olist_db.olist_order_items_dataset` AS order_item
ON
orders.order_id = order_item.order_id
AND order_purchase_timestamp>='2017-01-01'
JOIN `olist_db.olist_products_dataset` AS products
ON products.product_id = order_item.product_id
JOIN `olist_db.product_category_name_translation` AS translation
ON translation.string_field_0 = products.product_category_name
WHERE orders.order_approved_at IS NOT null AND orders.order_status = 'delivered' AND orders.order_delivered_customer_date IS NOT NULL

-- WHERE orders.order_id = '1a57108394169c0b47d8f876acc9ba2d'

ORDER BY purchase_week, product_category ASC;
