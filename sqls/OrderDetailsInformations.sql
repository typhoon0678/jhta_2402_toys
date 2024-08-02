SELECT p.productname, 
	p.price, d.quantity, 
    (select customername from customers where 
    	customerID = (select customerID from orders where orderID = d.orderID)) as CustomerName
		FROM Products p inner join orderdetails d
    	ON p.productId = d.productId;