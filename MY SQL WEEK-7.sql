USE Bakery;

SELECT * FROM PRODUCT
WHERE  Stock>=15;

SELECT * FROM PRODUCT
WHERE CategoryID = 3;

SELECT * FROM PRODUCT
WHERE Price = 410;

SELECT * FROM PRODUCT
ORDER BY CategoryID DESC;

SELECT COUNT(*) AS Stock
FROM PRODUCT;

SELECT DISTINCT CATEGORYID
FROM PRODUCT;
 
 ------------------------
 
 SELECT * FROM SELLER
 ORDER BY seller_id DESC;
 
 SELECT * FROM SELLER 
 ORDER BY seller_name;
 
 SELECT * FROM INVENTORY 
 WHERE Status = "Available";
 
 SELECT * FROM INVENTORY 
 WHERE Status = "Unavailable";

SELECT count(*) AS stock_quantity
FROM INVENTORY;

SELECT * FROM INVENTORY 
WHERE stock_quantity>=5;

SELECT DISTINCT seller_id 
FROM SELLER;

--------------------------

SELECT * FROM Ordertable
 WHERE TOTAL_PRICE = 1200;
 
 SELECT COUNT(*) AS ORDER_STATUS
 from Ordertable;
 
 SELECT * FROM Ordertable
 WHERE ORDER_STATUS = "Pending";
 
 SELECT * FROM Ordertable
 WHERE ORDER_STATUS = "Shipped";
 
 SELECT * FROM ORDERDETAIL
 ORDER BY UNIT_PRICE ASC;
 
 SELECT DISTINCT PRODUCT_QUANTITY
 FROM ORDERDETAIL;
 
 ----------------------------
 
 SELECT * FROM Payment
 WHERE PaymentMode = "UPI";
 
  SELECT * FROM Payment
 WHERE PaymentMode = "CARD";

 SELECT * FROM Payment
 WHERE PaymentMode = "CASH";
 
 SELECT PaymentID FROM  Payment
 WHERE PaymentStatus = "SUCCESS";
 
 SELECT * FROM  Payment
 WHERE PaymentStatus = "FAILED";
 
 SELECT DISTINCT ORDER_ID 
 FROM Payment;
 
 SELECT PaymentDate FROM  Payment
 ORDER BY PaymentDate DESC;
 
 ------------------------------------
 
 SELECT * FROM REVIEW
 WHERE REVIEW_ID =502;
 
 SELECT REVIEW_DATE FROM REVIEW
 ORDER BY REVIEW_DATE DESC;
 
 SELECT * FROM REVIEW
 ORDER BY CUSTOMER_NAME  DESC;
 
 SELECT * FROM REVIEW
 WHERE REVIEW_TEXT ="Very tasty cake";
 
 
 