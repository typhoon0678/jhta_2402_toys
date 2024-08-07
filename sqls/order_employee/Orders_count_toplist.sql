SELECT E.EMPLOYEEID AS ID, (LASTNAME + " " + FIRSTNAME) AS NAME, IIF(ISNULL(O_COUNT) = FALSE, O_COUNT, 0) AS "ORDER COUNT"
FROM EMPLOYEES E
	LEFT JOIN (
    	SELECT EMPLOYEEID, COUNT(*) AS O_COUNT
        FROM ORDERS
        GROUP BY EMPLOYEEID
    ) O
    ON E.EMPLOYEEID = O.EMPLOYEEID
ORDER BY O_COUNT DESC
;