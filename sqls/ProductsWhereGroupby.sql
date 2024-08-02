SELECT categoryID, count(*) as productCount 
	FROM Products 
    group by categoryID 
    having count(*) >= 10;