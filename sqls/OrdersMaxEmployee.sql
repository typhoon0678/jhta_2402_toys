select n.name, e.cnt as orderCount
	from (select employeeID, count(*) as cnt from orders group by employeeID) e
    	inner join (SELECT firstname + " " + lastname as name, employeeID FROM employees) n
    on e.employeeID = n.employeeID
    where e.cnt = (select max(cnt) from (select count(*) as cnt from orders group by employeeID));