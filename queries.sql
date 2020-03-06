-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM Product AS P JOIN Category AS C ON P.CategoryId = C.Id
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT Id, ShipName, OrderDate FROM "Order" WHERE (OrderDate < "2012-08-09") Order BY OrderDate DESC
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT P.ProductName, O.ProductId, O.Quantity FROM OrderDetail AS O JOIN Product AS P WHERE (O.OrderId = 10251 ) ORDER BY P.ProductName DESC
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT C.CompanyName, O.Id, E.LastName FROM "Order" AS O JOIN Customer AS C JOIN Employee AS E 