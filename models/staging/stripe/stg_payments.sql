SELECT "ID",
	   "ORDERID" as order_id,
	   "PAYMENTMETHOD",
	   "STATUS", 
	   "AMOUNT",
	   "CREATED"
	FROM public.stripe_payments
