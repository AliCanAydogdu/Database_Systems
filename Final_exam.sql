#Grouping
1-)
a-)
select Customer.First_Name, count(orders.CustomerID)
from customer, orders
where customer.CustomerID = orders.CustomerID
group by customer.CustomerID

#Selecting special
b-)
select customer.First_Name, sum(item.price)
from customer, orders, orderitem, item
where customer.CustomerID = orders.CustomerID
and orders.OrderID = orderitem.OrderID
and orderitem.ItemID = item.ItemID
group by customer.CustomerID

2-)
select customer.First_Name, item.Description
from customer, orders, orderitem, item
where customer.CustomerID = orders.CustomerID
and orders.OrderID = orderitem.OrderID
and orderitem.ItemID = item.ItemID

3-)
ALTER TABLE customer
ADD Phone_Number int(10);

#Add Phone_Number Column
4-)
alter table customer
add constraint PhoneNumberCheck check(Phone_Number like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]');

#Create a View
5-)
CREATE VIEW `New_View` AS
select customer.First_Name, item.Description
from customer, orders, orderitem, item
where customer.CustomerID = orders.CustomerID
and orders.OrderID = orderitem.OrderID
and orderitem.ItemID = item.ItemID;
