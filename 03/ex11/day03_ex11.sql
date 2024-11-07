UPDATE menu SET price = ROUND(price-(price*0.1), 0) 
	WHERE pizza_name='greek pizza'