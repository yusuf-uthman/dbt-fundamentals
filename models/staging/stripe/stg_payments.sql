SELECT "ID" as payment_id,
	   "ORDERID" as order_id,
	   "PAYMENTMETHOD" as payment_method,
	   "STATUS", 
       --Amount is in cents so we divide by 100 to get the dollar value
	   "AMOUNT"/100 as amount,
	   "CREATED" as created_at
	FROM public.stripe_payments
