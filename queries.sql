SELECT DISTINCT orderNumber FROM `orderdetails` 
WHERE productCode LIKE "S18%" and priceEach >100;



SELECT * FROM `payments` 
WHERE paymentDate LIKE '%-05' or day(paymentDate)=6;



SELECT * FROM `customers` 
WHERE country='USA' and phone like '%5555%' 
ORDER by creditLimit DESC
LIMIT 1 OFFSET 4;