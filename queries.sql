-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Category.CategoryName
FROM Product 
JOIN Category


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.Id, shipper.CompanyName
from [order] as o
join shipper on shipper.Id = o.ShipVia
where o.OrderDate < date('2012-08-09');

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT OrderDetail.OrderId,Product.ProductName,OrderDetail.Quantity
From Product
JOIN OrderDetail
where OrderDetail.OrderId = 10251
order by Product.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT OrderDetail.OrderId , Customer.CompanyName , Employee.LastName
From OrderDetail
JOIN Customer
JOIN Employee