USE Bakery;

SELECT * FROM Ordertable;

SELECT * FROM      ORDERDETAIL;

SELECT  Ordertable.ORDER_ID,
    ORDERDETAIL.ProductID,
    ORDERDETAIL.PRODUCT_QUANTITY
FROM Ordertable
INNER JOIN ORDERDETAIL
ON Ordertable.ORDER_ID = ORDERDETAIL.ORDER_ID;


SELECT  Ordertable.ORDER_ID,
    ORDERDETAIL.ProductID,
    ORDERDETAIL.PRODUCT_QUANTITY
FROM Ordertable
LEFT JOIN ORDERDETAIL
ON Ordertable.ORDER_ID = ORDERDETAIL.ORDER_ID;


 SELECT Ordertable.ORDER_ID,
    ORDERDETAIL.ProductID,
    ORDERDETAIL.PRODUCT_QUANTITY
FROM Ordertable
RIGHT JOIN ORDERDETAIL
ON Ordertable.ORDER_ID = ORDERDETAIL.ORDER_ID;



SELECT Ordertable.ORDER_ID,
       Ordertable.TOTAL_PRICE,
       Payment.PaymentMode,
       Payment.PaymentAmount
FROM Ordertable
INNER JOIN Payment
ON Ordertable.ORDER_ID = Payment.ORDER_ID;

SELECT Product.ProductName,
       Category.CategoryName
FROM Product
INNER JOIN Category
ON Product.CategoryID = Category.CategoryID;



SELECT Ordertable.ORDER_ID,
       Product.ProductName,
       ORDERDETAIL.PRODUCT_QUANTITY,
       Payment.PaymentStatus 
FROM Ordertable
INNER JOIN ORDERDETAIL
ON Ordertable.ORDER_ID = ORDERDETAIL.ORDER_ID
INNER JOIN Product
ON ORDERDETAIL.ProductID= Product.ProductName
LEFT JOIN Payment
ON Ordertable.ORDER_ID = Payment.ORDER_ID;   
