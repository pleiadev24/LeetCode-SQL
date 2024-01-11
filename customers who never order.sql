SELECT DISTINCT Customers.name as Customers
FROM Customers
LEFT JOIN Orders
ON Customers.id=Orders.customerid
WHERE Orders.CustomerId IS NULL;
