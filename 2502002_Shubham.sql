create database RetailDB;

use RetailDB;

--Create Customer Table
Create Table Customers(
CustomerID INT NOT NULL PRIMARY KEY,
CutomerName VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
SignupDate DATE
);

-- Renaming Column Name CustomerID

EXEC sp_rename 'Customers.CustmerID', 'CustomerID', 'COLUMN';

--Create Product Table
Create Table Products(
ProductID INT NOT NULL PRIMARY KEY,
ProductName VARCHAR(255),
Category VARCHAR(255),
Price DECIMAL(10,2)
);

-- Create Order Table
Create Table Orders(
OrderID INT PRIMARY KEY NOT NULL,
CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
OrderDate DATE,
OrderStatus VARCHAR(50)
);

--Create Order Details Table
Create Table OrderDeatils(
OrderDetailID INT NOT NULL PRIMARY KEY,
OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
Quantity INT
);
--Renaming the Table Name 
EXEC sp_rename 'OrderDeatils','OrderDetails';

-- Inserting Values in Customers Table
Insert INTO Customers (CustomerID,CustomerName,City,State,SignupDate)
Values (1,'Shubham','Delhi','Delhi','2023-01-10');

select * from Customers

Insert INTO Customers (CustomerID,CustomerName,City,State,SignupDate)

Values (2,'Amit','Mumbai','Maharashtra','2023-02-15'),
(3,'Neha','Lucknow','UP','2023-03-20'),
(4,'Rahul','Bangalore','Karnataka','2023-04-05'),
(5,'Priya','Chennai','Tamil Nadu','2023-05-18'),
(6,'Rohit','Pune','Maharashtra','2023-06-12'),
(7,'Anjali','Hyderabad','Telangana','2023-07-25'),
(8,'Vikas','Jaipur','Rajasthan','2023-08-09'),
(9,'Sneha','Kolkata','West Bengal','2023-09-14'),
(10,'Karan','Ahmedabad','Gujarat','2023-10-20'),
(11,'Pooja','Delhi','Delhi','2023-11-02'),
(12,'Arjun','Mumbai','Maharashtra','2023-12-11'),
(13,'Meena','Lucknow','UP','2024-01-05'),
(14,'Suresh','Chennai','Tamil Nadu','2024-01-20'),
(15,'Riya','Bangalore','Karnataka','2024-02-01'),
(16,'Akash','Delhi','Delhi','2024-02-05'),
(17,'Nisha','Mumbai','Maharashtra','2024-02-10'),
(18,'Deepak','Lucknow','UP','2024-02-15'),
(19,'Simran','Chandigarh','Punjab','2024-02-18'),
(20,'Manish','Patna','Bihar','2024-02-20'),
(21,'Ritu','Bhopal','Madhya Pradesh','2024-02-22'),
(22,'Sanjay','Indore','Madhya Pradesh','2024-02-25'),
(23,'Kavita','Nagpur','Maharashtra','2024-03-01'),
(24,'Varun','Surat','Gujarat','2024-03-03'),
(25,'Payal','Jaipur','Rajasthan','2024-03-05'),
(26,'Nitin','Kanpur','UP','2024-03-08'),
(27,'Pankaj','Agra','UP','2024-03-10'),
(28,'Alok','Ranchi','Jharkhand','2024-03-12'),
(29,'Sunita','Raipur','Chhattisgarh','2024-03-15'),
(30,'Gaurav','Noida','UP','2024-03-18'),
(31,'Komal','Gurgaon','Haryana','2024-03-20'),
(32,'Tarun','Faridabad','Haryana','2024-03-22'),
(33,'Seema','Amritsar','Punjab','2024-03-25'),
(34,'Ankit','Meerut','UP','2024-03-28'),
(35,'Rakesh','Varanasi','UP','2024-04-01'),
(36,'Bhavna','Udaipur','Rajasthan','2024-04-03'),
(37,'Kunal','Jodhpur','Rajasthan','2024-04-05'),
(38,'Divya','Dehradun','Uttarakhand','2024-04-08'),
(39,'Harsh','Shimla','Himachal Pradesh','2024-04-10'),
(40,'Isha','Goa','Goa','2024-04-12'),
(41,'Mohit','Delhi','Delhi','2024-04-15'),
(42,'Preeti','Mumbai','Maharashtra','2024-04-18'),
(43,'Yash','Pune','Maharashtra','2024-04-20'),
(44,'Tina','Hyderabad','Telangana','2024-04-22'),
(45,'Aarti','Chennai','Tamil Nadu','2024-04-25'),
(46,'Rohan','Bangalore','Karnataka','2024-04-28'),
(47,'Snehal','Ahmedabad','Gujarat','2024-05-01'),
(48,'Vineet','Lucknow','UP','2024-05-03'),
(49,'Kritika','Jaipur','Rajasthan','2024-05-05'),
(50,'Aditya','Patna','Bihar','2024-05-08');

SELECT * FROM Customers;

--Insert Values in Products Table
INSERT INTO Products VALUES
(101,'Laptop','Electronics',50000),
(102,'Mobile','Electronics',20000),
(103,'Headphones','Accessories',2000),
(104,'Tablet','Electronics',30000),
(105,'Smart Watch','Accessories',5000),
(106,'Keyboard','Accessories',1500),
(107,'Mouse','Accessories',800),
(108,'Monitor','Electronics',15000),
(109,'Printer','Electronics',12000),
(110,'Speaker','Accessories',2500),
(111,'Camera','Electronics',45000),
(112,'Tripod','Accessories',3000),
(113,'Power Bank','Accessories',1200),
(114,'Charger','Accessories',800),
(115,'USB Cable','Accessories',300),
(116,'Hard Disk','Electronics',6000),
(117,'SSD','Electronics',7000),
(118,'Router','Electronics',2500),
(119,'Modem','Electronics',2000),
(120,'Projector','Electronics',40000),
(121,'Webcam','Accessories',3500),
(122,'Microphone','Accessories',4000),
(123,'Gaming Mouse','Accessories',2000),
(124,'Gaming Keyboard','Accessories',3500),
(125,'Graphics Card','Electronics',60000),
(126,'Motherboard','Electronics',15000),
(127,'Processor','Electronics',25000),
(128,'RAM','Electronics',8000),
(129,'Cooling Fan','Accessories',1200),
(130,'Cabinet','Accessories',5000),
(131,'Smart TV','Electronics',55000),
(132,'Soundbar','Accessories',10000),
(133,'Bluetooth Speaker','Accessories',3000),
(134,'Earbuds','Accessories',2500),
(135,'Fitness Band','Accessories',4000),
(136,'Drone','Electronics',70000),
(137,'VR Headset','Electronics',35000),
(138,'Tablet Cover','Accessories',700),
(139,'Laptop Bag','Accessories',1500),
(140,'Screen Protector','Accessories',300),
(141,'Extension Board','Accessories',600),
(142,'Smart Bulb','Electronics',1200),
(143,'Smart Plug','Electronics',1500),
(144,'Air Purifier','Electronics',10000),
(145,'Electric Kettle','Electronics',2000),
(146,'Induction Cooktop','Electronics',3000),
(147,'Hair Dryer','Electronics',2500),
(148,'Trimmer','Electronics',2000),
(149,'Iron','Electronics',1800),
(150,'Washing Machine','Electronics',25000);

SELECT * FROM Products;

-- Insert Values in Order Table
INSERT INTO Orders(OrderID,CustomerID,OrderDate,OrderStatus)
VALUES (201,1,'2024-01-10','Completed'),
(202,2,'2024-01-12','Completed'),
(203,3,'2024-01-15','Completed'),
(204,4,'2024-01-18','Pending'),
(205,5,'2024-01-20','Completed'),
(206,6,'2024-02-02','Completed'),
(207,7,'2024-02-05','Completed'),
(208,8,'2024-02-08','Completed'),
(209,9,'2024-02-10','Pending'),
(210,10,'2024-02-15','Completed'),
(211,11,'2024-02-18','Completed'),
(212,12,'2024-02-20','Completed'),
(213,13,'2024-03-01','Completed'),
(214,14,'2024-03-05','Completed'),
(215,15,'2024-03-08','Completed'),
(216,1,'2024-03-10','Completed'),
(217,2,'2024-03-12','Completed'),
(218,3,'2024-03-15','Completed'),
(219,4,'2024-03-18','Completed'),
(220,5,'2024-03-20','Completed'),
(221,6,'2024-03-22','Completed'),
(222,7,'2024-03-25','Completed'),
(223,8,'2024-03-28','Pending'),
(224,9,'2024-04-01','Completed'),
(225,10,'2024-04-03','Completed'),
(226,11,'2024-04-05','Completed'),
(227,12,'2024-04-08','Completed'),
(228,13,'2024-04-10','Pending'),
(229,14,'2024-04-12','Completed'),
(230,15,'2024-04-15','Completed'),
(231,16,'2024-04-18','Completed'),
(232,17,'2024-04-20','Completed'),
(233,18,'2024-04-22','Pending'),
(234,19,'2024-04-25','Completed'),
(235,20,'2024-04-28','Completed'),
(236,21,'2024-05-01','Completed'),
(237,22,'2024-05-03','Completed'),
(238,23,'2024-05-05','Pending'),
(239,24,'2024-05-08','Completed'),
(240,25,'2024-05-10','Completed'),
(241,26,'2024-05-12','Completed'),
(242,27,'2024-05-15','Completed'),
(243,28,'2024-05-18','Pending'),
(244,29,'2024-05-20','Completed'),
(245,30,'2024-05-22','Completed'),
(246,31,'2024-05-25','Completed'),
(247,32,'2024-05-28','Completed'),
(248,33,'2024-06-01','Pending'),
(249,34,'2024-06-03','Completed'),
(250,35,'2024-06-05','Completed');

SELECT * FROM Orders;

--Insert Values in OrderDetails Table
INSERT INTO OrderDetails VALUES
(1,201,101,1),
(2,201,103,2),
(3,202,102,1),
(4,202,105,1),
(5,203,104,1),
(6,203,106,2),
(7,204,107,3),
(8,205,108,1),
(9,206,109,1),
(10,207,110,2),
(11,208,101,1),
(12,209,102,2),
(13,210,103,3),
(14,211,104,1),
(15,212,105,2),
(16,213,106,2),
(17,214,107,3),
(18,215,108,1),
(19,216,109,1),
(20,217,110,2),
(21,218,101,1),
(22,219,102,1),
(23,220,103,2),
(24,216,104,1),
(25,217,105,1),
(26,218,106,2),
(27,219,107,1),
(28,220,108,1),
(29,201,109,1),
(30,202,110,2),
(31,221,111,1),
(32,221,112,2),
(33,222,113,3),
(34,223,114,2),
(35,224,115,4),
(36,225,116,1),
(37,226,117,2),
(38,227,118,1),
(39,228,119,2),
(40,229,120,1),
(41,230,121,2),
(42,231,122,1),
(43,232,123,2),
(44,233,124,1),
(45,234,125,1),
(46,235,126,2),
(47,236,127,1),
(48,237,128,2),
(49,238,129,3),
(50,239,130,1);

SELECT * FROM OrderDetails;

--Basic SELECT and FILTER Queries
--All Customers
SELECT * FROM Customers;

-- Filter Cutsomer from Delhi
SELECT * FROM Customers
WHERE City = 'Delhi';

--Product Price Above 30000
SELECT * FROM Products
WHERE Price>30000;

-- Completed Orders
SELECT * FROM Orders
WHERE OrderStatus ='Completed';

--Update and Delete

--Update Price
UPDATE Products
SET Price =55000
WHERE ProductName = 'Laptop';

SELECT * FROM Products
Where ProductName ='Laptop';

--Delete a record
DELETE FROM Customers
WHERE CustomerID=50;

SELECT CustomerID FROM Customers
WHERE CustomerID=50;

--Total Sales Revenue
SELECT * from OrderDetails;

SELECT SUM(p.Price * od.Quantity) AS TotalRevenue FROM OrderDetails od
JOIN Products p  ON p.ProductID= od.ProductID;

--Average Order Value
SELECT AVG(p.Price * od.Quantity) AS AvgOrderValue FROM OrderDetails od
JOIN Products p ON p.ProductId = od.ProductID;

--Sales by Product Category
SELECT p.Category, SUM(p.Price*od.Quantity) AS TotalSales
FROM Products p
JOIN OrderDetails od ON od.ProductID =p.ProductID
GROUP BY p.Category;

--Sales By City
SELECT c.City ,SUM(p.Price*od.Quantity) AS SalesByCity
FROM Customers c
JOIN Orders o ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON p.ProductID =od.ProductID
GROUP BY c.City;


-- Order-level report JOIN Tables

 SELECT o.OrderID,c.CustomerName,p.ProductName,od.Quantity
 FROM Orders o
 JOIN Customers c ON o.CustomerID =c.CustomerID
 JOIN OrderDetails od ON o.OrderID = od.OrderID
 JOIN Products p ON  od.ProductID =p.ProductID;

 --Customer Level Report
 SELECT c.CustomerID,c.CustomerName,c.City,o.OrderDate,Count(o.OrderID) AS TotalOrders
 FROM Orders o
 JOIN Customers c ON c.CustomerID = o.CustomerID
 JOIN OrderDetails od ON od.OrderID =o.OrderID
 JOIN Products p ON p.ProductID = od.ProductID
 Group by c.CustomerID,c.CustomerName,c.City,o.OrderDate;

 --Repeated Customers
 SELECT c.CustomerID, c.CustomerName,COUNT(o.OrderID) AS TotalOrders FROM Customers c
 JOIN Orders o ON c.CustomerID = o.CustomerID
 JOIN OrderDetails od ON o.OrderID = od.OrderID
 JOIN Products p ON p.ProductID = od.ProductID
 GROUP BY c.CustomerName,c.CustomerID
 HAVING COUNT(o.OrderID) > 1;

 --High Value Customers
 SELECT c.CustomerID, c.CustomerName,SUM(p.price*od.Quantity) AS TotalSpent FROM Customers c
 JOIN Orders o ON c.CustomerID = o.CustomerID
 JOIN OrderDetails od ON o.OrderID = od.OrderID
 JOIN Products p ON p.ProductID = od.ProductID
 GROUP BY c.CustomerName,c.CustomerID
 ORDER BY TotalSpent DESC;

 --Monthaly Sales
 SELECT MONTH(o.OrderDate) AS Months, SUM(p.Price *od.Quantity) AS Sales FROM Orders o
 JOIN OrderDetails od ON o.OrderID =od.OrderID
 JOIN Products p ON od.ProductID = p.ProductID
 GROUP BY MONTH(o.OrderDate)
 ORDER BY Months ;

 -- Products Never Ordered
 SELECT ProductName 
 FROM Products 
 WHERE ProductID NOT IN 
		(SELECT ProductID FROM OrderDetails);