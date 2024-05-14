1. Вывести общее ко-во поставщиков не из UK и не из China
SELECT 
Count(*) As total_suppliers
FROM Suppliers
WHERE
	NOT Country IN ('UK', 'China')

2. Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5
SELECT
    MAX(Price) AS max_price,
    MIN(Price) AS min_price,
    AVG(Price) AS avg_price
FROM Products
WHERE CategoryID in (3,5)

3. Вывести общую сумму проданных товаров
SELECT
    SUM(Products.Price) AS total_sales_amount
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
4.Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилия менеджера, название компании перевозчика)
SELECT 
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperID
FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID
5. Вывести сумму, на которую было отправлено товаров клиентам в Germany
?????

