1.
SELECT ORD.orderNumber AS orderNumber,pr.productName AS productName,cus.customerName AS customerName,pay.amount AS amount,pay.checkNumber AS checkNumber
FROM orders AS ORD 
LEFT JOIN orderdetails AS ordd ON ORD.orderNumber = ordd.orderNumber
LEFT JOIN products AS pr ON ordd.productCode = pr.productCode
LEFT JOIN customers AS cus ON ORD.customerNumber= cus.customerNumber
LEFT JOIN payments AS pay ON cus.customerNumber= pay.customerNumber
WHERE ORD.orderNumber = 10100 ORDER BY pay.checkNumber ASC,pr.productCode ASC;

2.
SELECT ORD.orderNumber AS orderNumber,SUM(pay.amount) AS total_paid_amount_for_the_order_10100
FROM orders AS ORD 
LEFT JOIN orderdetails AS ordd ON ORD.orderNumber = ordd.orderNumber
LEFT JOIN products AS pr ON ordd.productCode = pr.productCode
LEFT JOIN customers AS cus ON ORD.customerNumber= cus.customerNumber
LEFT JOIN payments AS pay ON cus.customerNumber= pay.customerNumber
WHERE ORD.orderNumber = 10100 ORDER BY pay.checkNumber ASC,pr.productCode ASC;

3.
SELECT ORD.orderNumber AS orderNumber,pay.checkNumber AS checkNumber
FROM orders AS ORD 
LEFT JOIN orderdetails AS ordd ON ORD.orderNumber = ordd.orderNumber
LEFT JOIN products AS pr ON ordd.productCode = pr.productCode
LEFT JOIN customers AS cus ON ORD.customerNumber= cus.customerNumber
LEFT JOIN payments AS pay ON cus.customerNumber= pay.customerNumber
WHERE ORD.orderNumber = 10100 GROUP BY pay.checkNumber;

4.
SELECT MIN(quantityInStock) AS least_value_in_quantityInStock,
MAX(quantityInStock) AS max_value_in_quantityInStock FROM products;

5.
UPDATE productlines SET htmlDescription = '<Classic Cars>' WHERE productLine = 'Classic Cars';

SELECT prd.productCode, prdl.productLine, prdl.htmlDescription FROM productlines AS prdl
LEFT JOIN products AS prd ON prdl.productLine = prd.productLine 
WHERE prdl.productLine = 'Classic Cars' AND prd.productCode BETWEEN 'S12_3380' AND 's12_3990';

6.
SELECT COUNT(productLine) AS NULL_COUNT FROM productlines WHERE htmlDescription IS NULL;

7.
SELECT DATE_FORMAT('2019-07-18 12:49:24', '%e-%b-%a')AS output;

8.
SELECT amount AS amount  FROM payments ORDER BY amount DESC LIMIT 2,1

9.
SELECT contactFirstName FROM customers WHERE contactFirstName LIKE 'C%a';

10.
SELECT prdl.* FROM productlines AS prdl
LEFT JOIN products AS prd ON prdl.productLine = prd.productLine 
WHERE prdl.productLine <> prd.productLine;






