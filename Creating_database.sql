-- Create Database
Create database ShopDb;
-- Creates Customers Table
CREATE TABLE Customer (
	CustomerID INT NOT NULL,
	First_Name VARCHAR (45) NOT NULL,
  Last_Name VARCHAR (45) NOT NULL,
	email VARCHAR (45) NOT NULL ,
	PRIMARY KEY (CustomerID),
  UNIQUE (email)
);

-- Creates Order Table
CREATE TABLE Orders (
  OrderID INT NOT NULL,
  CustomerID INT NOT NULL,
  OrderDate DATE NOT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Creates the Item Table
CREATE TABLE Item (
  ItemID INT NOT NULL,
  Description VARCHAR(100) NOT NULL,
  Price DOUBLE(3,2) NOT NULL,
  PRIMARY KEY (ItemID)
);

-- Creating OrderItem Table
CREATE TABLE OrderItem (
  OrderID INT NOT NULL,
  ItemID INT NOT NULL,
  PRIMARY KEY (OrderID, ItemID),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);
