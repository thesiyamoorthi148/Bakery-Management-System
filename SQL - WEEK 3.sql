USE Bakery;

CREATE TABLE Seller (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    ProductID INT,
    seller_id INT,
    stock_quantity INT,
    Status VARCHAR(12),
    FOREIGN KEY (seller_id) 
    REFERENCES Seller(seller_id),
    FOREIGN KEY (ProductID )
    REFERENCES Product(ProductID)
);
INSERT INTO Seller VALUES
(1, "KAMALI", 8098530927, "KAMALI@1811GMAIL.COM"),
(2, "DHARSHINI",7869471234,"DHARSHINI@24GMAIL.COM"),
(3,"CHARU",8646591085,"CHARU@48GMAIL.COM"),
(4,"HEMA",9476024564,"HEMA@357GMAIL.COM"),
(5,"PRIYA",9876543210,"PRIYA@GMAIL.COM"),
(6,"DIVYA",9123456780,"DIVYA@GMAIL.COM"),
(7,"KEERTHANA",9988776655,"KEERTHANA@GMAIL.COM"),
(8,"SINDHU",9012345678,"SINDHU@GMAIL.COM"),
(9,"HARINI",9345678901,"HARINI@GMAIL.COM"),
(10,"PAVITHRA",9567890123,"PAVITHRA@GMAIL.COM");
SELECT * FROM Seller;

INSERT INTO Inventory VALUES
(201,20,"Available",1,101),
(202,15,"Available",2,104);

INSERT INTO Inventory VALUES
(203, 20, "Available", 1, 101),
(204, 15, "Available", 2, 102),
(205, 25, "Available", 3, 103),
(206, 10, "Available", 4, 104),
(207, 30, "Available", 5, 105),
(208, 18, "Available", 6, 106),
(209, 22, "Available", 7, 107),
(210, 12, "Available", 8, 108),
(211, 28, "Available", 9, 109),
(212, 16, "Available", 10, 110),
(213, 20, "Available", 1, 111),
(214, 15, "Available", 2, 112),
(215, 25, "Available", 3, 101),
(216, 10, "Available", 4, 102),
(217, 30, "Available", 5, 103),
(218, 18, "Available", 6, 104),
(219, 22, "Available", 7, 105),
(220, 12, "Available", 8, 106),
(221, 28, "Available", 9, 107),
(222, 16, "Available", 10, 108),
(223, 20, "Available", 1, 109),
(224, 15, "Available", 2, 110),
(225, 25, "Available", 3, 111),
(226, 10, "Available", 4, 112),
(227, 30, "Available", 5, 101),
(228, 18, "Available", 6, 102),
(229, 22, "Available", 7, 103),
(230, 12, "Available", 8, 104),
(231, 28, "Available", 9, 105),
(232, 16, "Available", 10, 106);

SELECT * FROM Inventory;

UPDATE PRODUCT
SET STOCK = 0
WHERE PRODUCTID = 121;

UPDATE PRODUCT
SET STOCK = 0
WHERE PRODUCTID = 105;

UPDATE PRODUCT
SET STOCK = 0
WHERE PRODUCTID = 123;

UPDATE Inventory
SET stock_quantity = 35
WHERE inventory_id = 203;

UPDATE Inventory
SET Status = "Unavailable"
WHERE inventory_id = 204;

UPDATE Seller
SET seller_name = "PRIYASHREE"
WHERE seller_id = 5;

UPDATE Seller
SET phone = "9087654321"
WHERE seller_id = 2;

UPDATE Seller
SET email = "charu@gmail.com"
WHERE seller_id = 3;

UPDATE Seller
SET seller_name = "HEMALATHA"
WHERE seller_id = 4;

UPDATE Inventory
SET stock_quantity = 8
WHERE inventory_id = 205;

UPDATE Inventory
SET Status = "Unavailable"
WHERE inventory_id = 206;

UPDATE Inventory
SET stock_quantity = 40
WHERE inventory_id = 207;

UPDATE Inventory
SET seller_id = 6
WHERE inventory_id = 208;

UPDATE Inventory
SET stock_quantity = 5, Status = "Unavailable"
WHERE inventory_id = 209;

DELETE FROM Inventory
WHERE inventory_id=230;

DELETE FROM Inventory
WHERE inventory_id=231;

DELETE FROM Inventory
WHERE inventory_id=232;

SELECT*FROM Inventory
WHERE stock_quantity >20;

SELECT*FROM Inventory
WHERE stock_quantity <20;

SELECT*FROM Inventory
WHERE stock_quantity =0;

SELECT*FROM Inventory
WHERE status ="Unavailable";

SELECT*FROM Inventory
WHERE status ="Available";

SELECT COUNT(*) FROM Inventory
WHERE status ="Available";

SELECT COUNT(*) FROM Inventory
WHERE status ="Unavailable";

SELECT * FROM Inventory
ORDER BY stock_quantity Desc;
