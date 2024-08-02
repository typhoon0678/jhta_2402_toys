SELECT customername, count(*) as orderCount
	from orders o inner join customers c
    on o.customerID = c.customerID
    group by customername;